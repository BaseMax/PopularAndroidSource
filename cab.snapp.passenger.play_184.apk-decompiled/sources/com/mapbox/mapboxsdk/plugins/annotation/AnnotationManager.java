package com.mapbox.mapboxsdk.plugins.annotation;

import android.graphics.PointF;
import androidx.collection.LongSparseArray;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.log.Logger;
import com.mapbox.mapboxsdk.maps.MapView;
import com.mapbox.mapboxsdk.maps.MapboxMap;
import com.mapbox.mapboxsdk.maps.Style;
import com.mapbox.mapboxsdk.plugins.annotation.Annotation;
import com.mapbox.mapboxsdk.plugins.annotation.OnAnnotationClickListener;
import com.mapbox.mapboxsdk.plugins.annotation.OnAnnotationDragListener;
import com.mapbox.mapboxsdk.plugins.annotation.OnAnnotationLongClickListener;
import com.mapbox.mapboxsdk.plugins.annotation.Options;
import com.mapbox.mapboxsdk.style.expressions.Expression;
import com.mapbox.mapboxsdk.style.layers.Layer;
import com.mapbox.mapboxsdk.style.layers.PropertyValue;
import com.mapbox.mapboxsdk.style.sources.GeoJsonOptions;
import com.mapbox.mapboxsdk.style.sources.GeoJsonSource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public abstract class AnnotationManager<L extends Layer, T extends Annotation, S extends Options<T>, D extends OnAnnotationDragListener<T>, U extends OnAnnotationClickListener<T>, V extends OnAnnotationLongClickListener<T>> {
    private static final String TAG = "AnnotationManager";
    protected final LongSparseArray<T> annotations = new LongSparseArray<>();
    private String belowLayerId;
    /* access modifiers changed from: private */
    public final List<U> clickListeners = new ArrayList();
    final Map<String, PropertyValue> constantPropertyUsageMap = new HashMap();
    private CoreElementProvider<L> coreElementProvider;
    private long currentId;
    final Map<String, Boolean> dataDrivenPropertyUsageMap = new HashMap();
    private final List<D> dragListeners = new ArrayList();
    private final DraggableAnnotationController<T, D> draggableAnnotationController;
    private GeoJsonSource geoJsonSource;
    protected L layer;
    Expression layerFilter;
    /* access modifiers changed from: private */
    public final List<V> longClickListeners = new ArrayList();
    private final AnnotationManager<L, T, S, D, U, V>.MapClickResolver mapClickResolver;
    protected final MapboxMap mapboxMap;
    /* access modifiers changed from: private */
    public Style style;

    class MapClickResolver implements MapboxMap.OnMapClickListener, MapboxMap.OnMapLongClickListener {
        private MapClickResolver() {
        }

        public boolean onMapClick(LatLng latLng) {
            if (AnnotationManager.this.clickListeners.isEmpty()) {
                return false;
            }
            Annotation access$400 = AnnotationManager.this.queryMapForFeatures(latLng);
            if (access$400 != null) {
                for (OnAnnotationClickListener onAnnotationClick : AnnotationManager.this.clickListeners) {
                    onAnnotationClick.onAnnotationClick(access$400);
                }
            }
            return false;
        }

        public boolean onMapLongClick(LatLng latLng) {
            if (AnnotationManager.this.longClickListeners.isEmpty()) {
                return false;
            }
            Annotation access$400 = AnnotationManager.this.queryMapForFeatures(latLng);
            if (access$400 != null) {
                for (OnAnnotationLongClickListener onAnnotationLongClick : AnnotationManager.this.longClickListeners) {
                    onAnnotationLongClick.onAnnotationLongClick(access$400);
                }
            }
            return false;
        }
    }

    /* access modifiers changed from: package-private */
    public abstract String getAnnotationIdKey();

    /* access modifiers changed from: package-private */
    public abstract void initializeDataDrivenPropertyMap();

    /* access modifiers changed from: protected */
    public abstract void setDataDrivenPropertyIsUsed(String str);

    /* access modifiers changed from: package-private */
    public abstract void setFilter(Expression expression);

    protected AnnotationManager(MapView mapView, final MapboxMap mapboxMap2, Style style2, CoreElementProvider<L> coreElementProvider2, DraggableAnnotationController<T, D> draggableAnnotationController2, String str, final GeoJsonOptions geoJsonOptions) {
        this.mapboxMap = mapboxMap2;
        this.style = style2;
        this.belowLayerId = str;
        this.coreElementProvider = coreElementProvider2;
        if (style2.isFullyLoaded()) {
            AnnotationManager<L, T, S, D, U, V>.MapClickResolver mapClickResolver2 = new MapClickResolver();
            this.mapClickResolver = mapClickResolver2;
            mapboxMap2.addOnMapClickListener(mapClickResolver2);
            mapboxMap2.addOnMapLongClickListener(this.mapClickResolver);
            this.draggableAnnotationController = draggableAnnotationController2;
            draggableAnnotationController2.injectAnnotationManager(this);
            initializeSourcesAndLayers(geoJsonOptions);
            mapView.addOnDidFinishLoadingStyleListener(new MapView.OnDidFinishLoadingStyleListener() {
                public void onDidFinishLoadingStyle() {
                    mapboxMap2.getStyle(new Style.OnStyleLoaded() {
                        public void onStyleLoaded(Style style) {
                            Style unused = AnnotationManager.this.style = style;
                            AnnotationManager.this.initializeSourcesAndLayers(geoJsonOptions);
                        }
                    });
                }
            });
            return;
        }
        throw new RuntimeException("The style has to be non-null and fully loaded.");
    }

    public LongSparseArray<T> getAnnotations() {
        return this.annotations;
    }

    public T create(S s) {
        T build = s.build(this.currentId, this);
        this.annotations.put(build.getId(), build);
        this.currentId++;
        updateSource();
        return build;
    }

    public List<T> create(List<S> list) {
        ArrayList arrayList = new ArrayList();
        for (S build : list) {
            Annotation build2 = build.build(this.currentId, this);
            arrayList.add(build2);
            this.annotations.put(build2.getId(), build2);
            this.currentId++;
        }
        updateSource();
        return arrayList;
    }

    public void delete(T t) {
        this.annotations.remove(t.getId());
        updateSource();
    }

    public void delete(List<T> list) {
        for (T id : list) {
            this.annotations.remove(id.getId());
        }
        updateSource();
    }

    public void deleteAll() {
        this.annotations.clear();
        updateSource();
    }

    public void update(T t) {
        if (this.annotations.containsValue(t)) {
            this.annotations.put(t.getId(), t);
            updateSource();
            return;
        }
        Logger.e(TAG, "Can't update annotation: " + t.toString() + ", the annotation isn't active annotation.");
    }

    public void update(List<T> list) {
        for (T t : list) {
            this.annotations.put(t.getId(), t);
        }
        updateSource();
    }

    public void updateSource() {
        this.draggableAnnotationController.onSourceUpdated();
        internalUpdateSource();
    }

    /* access modifiers changed from: package-private */
    public void internalUpdateSource() {
        if (this.style.isFullyLoaded()) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < this.annotations.size(); i++) {
                Annotation annotation = (Annotation) this.annotations.valueAt(i);
                arrayList.add(Feature.fromGeometry(annotation.getGeometry(), annotation.getFeature()));
                annotation.setUsedDataDrivenProperties();
            }
            this.geoJsonSource.setGeoJson(FeatureCollection.fromFeatures((List<Feature>) arrayList));
        }
    }

    /* access modifiers changed from: package-private */
    public void enableDataDrivenProperty(String str) {
        if (this.dataDrivenPropertyUsageMap.get(str).equals(Boolean.FALSE)) {
            this.dataDrivenPropertyUsageMap.put(str, Boolean.TRUE);
            setDataDrivenPropertyIsUsed(str);
        }
    }

    public void addDragListener(D d) {
        this.dragListeners.add(d);
    }

    public void removeDragListener(D d) {
        this.dragListeners.remove(d);
    }

    public void addClickListener(U u) {
        this.clickListeners.add(u);
    }

    public void removeClickListener(U u) {
        this.clickListeners.remove(u);
    }

    public void addLongClickListener(V v) {
        this.longClickListeners.add(v);
    }

    public void removeLongClickListener(V v) {
        this.longClickListeners.remove(v);
    }

    /* access modifiers changed from: package-private */
    public List<U> getClickListeners() {
        return this.clickListeners;
    }

    /* access modifiers changed from: package-private */
    public List<V> getLongClickListeners() {
        return this.longClickListeners;
    }

    /* access modifiers changed from: package-private */
    public List<D> getDragListeners() {
        return this.dragListeners;
    }

    public void onDestroy() {
        this.mapboxMap.removeOnMapClickListener(this.mapClickResolver);
        this.mapboxMap.removeOnMapLongClickListener(this.mapClickResolver);
        this.dragListeners.clear();
        this.clickListeners.clear();
        this.longClickListeners.clear();
    }

    /* access modifiers changed from: private */
    public void initializeSourcesAndLayers(GeoJsonOptions geoJsonOptions) {
        this.geoJsonSource = this.coreElementProvider.getSource(geoJsonOptions);
        this.layer = this.coreElementProvider.getLayer();
        this.style.addSource(this.geoJsonSource);
        String str = this.belowLayerId;
        if (str == null) {
            this.style.addLayer(this.layer);
        } else {
            this.style.addLayerBelow(this.layer, str);
        }
        initializeDataDrivenPropertyMap();
        this.layer.setProperties((PropertyValue[]) this.constantPropertyUsageMap.values().toArray(new PropertyValue[0]));
        Expression expression = this.layerFilter;
        if (expression != null) {
            setFilter(expression);
        }
        updateSource();
    }

    /* access modifiers changed from: private */
    public T queryMapForFeatures(LatLng latLng) {
        return queryMapForFeatures(this.mapboxMap.getProjection().toScreenLocation(latLng));
    }

    /* access modifiers changed from: package-private */
    public T queryMapForFeatures(PointF pointF) {
        List<Feature> queryRenderedFeatures = this.mapboxMap.queryRenderedFeatures(pointF, this.coreElementProvider.getLayerId());
        if (queryRenderedFeatures.isEmpty()) {
            return null;
        }
        return (Annotation) this.annotations.get(queryRenderedFeatures.get(0).getProperty(getAnnotationIdKey()).getAsLong());
    }
}
