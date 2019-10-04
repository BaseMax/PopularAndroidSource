package com.mapbox.mapboxsdk.plugins.annotation;

import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.mapboxsdk.maps.MapView;
import com.mapbox.mapboxsdk.maps.MapboxMap;
import com.mapbox.mapboxsdk.maps.Style;
import com.mapbox.mapboxsdk.style.expressions.Expression;
import com.mapbox.mapboxsdk.style.layers.FillLayer;
import com.mapbox.mapboxsdk.style.layers.PropertyFactory;
import com.mapbox.mapboxsdk.style.layers.PropertyValue;
import com.mapbox.mapboxsdk.style.sources.GeoJsonOptions;
import java.util.ArrayList;
import java.util.List;

public class FillManager extends AnnotationManager<FillLayer, Fill, FillOptions, OnFillDragListener, OnFillClickListener, OnFillLongClickListener> {
    private static final String PROPERTY_FILL_ANTIALIAS = "fill-antialias";
    private static final String PROPERTY_FILL_TRANSLATE = "fill-translate";
    private static final String PROPERTY_FILL_TRANSLATE_ANCHOR = "fill-translate-anchor";

    /* access modifiers changed from: package-private */
    public String getAnnotationIdKey() {
        return "id";
    }

    public FillManager(MapView mapView, MapboxMap mapboxMap, Style style) {
        this(mapView, mapboxMap, style, null, null);
    }

    public FillManager(MapView mapView, MapboxMap mapboxMap, Style style, String str) {
        this(mapView, mapboxMap, style, str, null);
    }

    public FillManager(MapView mapView, MapboxMap mapboxMap, Style style, String str, GeoJsonOptions geoJsonOptions) {
        this(mapView, mapboxMap, style, new FillElementProvider(), str, geoJsonOptions, new DraggableAnnotationController(mapView, mapboxMap));
    }

    FillManager(MapView mapView, MapboxMap mapboxMap, Style style, CoreElementProvider<FillLayer> coreElementProvider, String str, GeoJsonOptions geoJsonOptions, DraggableAnnotationController<Fill, OnFillDragListener> draggableAnnotationController) {
        super(mapView, mapboxMap, style, coreElementProvider, draggableAnnotationController, str, geoJsonOptions);
    }

    /* access modifiers changed from: package-private */
    public void initializeDataDrivenPropertyMap() {
        this.dataDrivenPropertyUsageMap.put("fill-opacity", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("fill-color", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("fill-outline-color", Boolean.FALSE);
        this.dataDrivenPropertyUsageMap.put("fill-pattern", Boolean.FALSE);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void setDataDrivenPropertyIsUsed(java.lang.String r10) {
        /*
            r9 = this;
            int r0 = r10.hashCode()
            java.lang.String r1 = "fill-outline-color"
            java.lang.String r2 = "fill-pattern"
            java.lang.String r3 = "fill-opacity"
            java.lang.String r4 = "fill-color"
            r5 = 3
            r6 = 2
            r7 = 0
            r8 = 1
            switch(r0) {
                case -1679439207: goto L_0x002c;
                case -1250124351: goto L_0x0024;
                case -774008506: goto L_0x001c;
                case 1201248078: goto L_0x0014;
                default: goto L_0x0013;
            }
        L_0x0013:
            goto L_0x0034
        L_0x0014:
            boolean r10 = r10.equals(r1)
            if (r10 == 0) goto L_0x0034
            r10 = 2
            goto L_0x0035
        L_0x001c:
            boolean r10 = r10.equals(r2)
            if (r10 == 0) goto L_0x0034
            r10 = 3
            goto L_0x0035
        L_0x0024:
            boolean r10 = r10.equals(r3)
            if (r10 == 0) goto L_0x0034
            r10 = 0
            goto L_0x0035
        L_0x002c:
            boolean r10 = r10.equals(r4)
            if (r10 == 0) goto L_0x0034
            r10 = 1
            goto L_0x0035
        L_0x0034:
            r10 = -1
        L_0x0035:
            if (r10 == 0) goto L_0x007a
            if (r10 == r8) goto L_0x0066
            if (r10 == r6) goto L_0x0052
            if (r10 == r5) goto L_0x003e
            goto L_0x0051
        L_0x003e:
            com.mapbox.mapboxsdk.style.layers.Layer r10 = r9.layer
            com.mapbox.mapboxsdk.style.layers.FillLayer r10 = (com.mapbox.mapboxsdk.style.layers.FillLayer) r10
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r0 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r8]
            com.mapbox.mapboxsdk.style.expressions.Expression r1 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r2)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r1 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.fillPattern((com.mapbox.mapboxsdk.style.expressions.Expression) r1)
            r0[r7] = r1
            r10.setProperties(r0)
        L_0x0051:
            return
        L_0x0052:
            com.mapbox.mapboxsdk.style.layers.Layer r10 = r9.layer
            com.mapbox.mapboxsdk.style.layers.FillLayer r10 = (com.mapbox.mapboxsdk.style.layers.FillLayer) r10
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r0 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r8]
            com.mapbox.mapboxsdk.style.expressions.Expression r1 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r1)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r1 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.fillOutlineColor((com.mapbox.mapboxsdk.style.expressions.Expression) r1)
            r0[r7] = r1
            r10.setProperties(r0)
            return
        L_0x0066:
            com.mapbox.mapboxsdk.style.layers.Layer r10 = r9.layer
            com.mapbox.mapboxsdk.style.layers.FillLayer r10 = (com.mapbox.mapboxsdk.style.layers.FillLayer) r10
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r0 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r8]
            com.mapbox.mapboxsdk.style.expressions.Expression r1 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r4)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r1 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.fillColor((com.mapbox.mapboxsdk.style.expressions.Expression) r1)
            r0[r7] = r1
            r10.setProperties(r0)
            return
        L_0x007a:
            com.mapbox.mapboxsdk.style.layers.Layer r10 = r9.layer
            com.mapbox.mapboxsdk.style.layers.FillLayer r10 = (com.mapbox.mapboxsdk.style.layers.FillLayer) r10
            com.mapbox.mapboxsdk.style.layers.PropertyValue[] r0 = new com.mapbox.mapboxsdk.style.layers.PropertyValue[r8]
            com.mapbox.mapboxsdk.style.expressions.Expression r1 = com.mapbox.mapboxsdk.style.expressions.Expression.get((java.lang.String) r3)
            com.mapbox.mapboxsdk.style.layers.PropertyValue r1 = com.mapbox.mapboxsdk.style.layers.PropertyFactory.fillOpacity((com.mapbox.mapboxsdk.style.expressions.Expression) r1)
            r0[r7] = r1
            r10.setProperties(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mapbox.mapboxsdk.plugins.annotation.FillManager.setDataDrivenPropertyIsUsed(java.lang.String):void");
    }

    public List<Fill> create(String str) {
        return create(FeatureCollection.fromJson(str));
    }

    public List<Fill> create(FeatureCollection featureCollection) {
        List<Feature> features = featureCollection.features();
        ArrayList arrayList = new ArrayList();
        if (features != null) {
            for (Feature fromFeature : features) {
                FillOptions fromFeature2 = FillOptions.fromFeature(fromFeature);
                if (fromFeature2 != null) {
                    arrayList.add(fromFeature2);
                }
            }
        }
        return create(arrayList);
    }

    public Boolean getFillAntialias() {
        return (Boolean) ((FillLayer) this.layer).getFillAntialias().value;
    }

    public void setFillAntialias(Boolean bool) {
        PropertyValue<Boolean> fillAntialias = PropertyFactory.fillAntialias(bool);
        this.constantPropertyUsageMap.put(PROPERTY_FILL_ANTIALIAS, fillAntialias);
        ((FillLayer) this.layer).setProperties(fillAntialias);
    }

    public Float[] getFillTranslate() {
        return (Float[]) ((FillLayer) this.layer).getFillTranslate().value;
    }

    public void setFillTranslate(Float[] fArr) {
        PropertyValue<Float[]> fillTranslate = PropertyFactory.fillTranslate(fArr);
        this.constantPropertyUsageMap.put(PROPERTY_FILL_TRANSLATE, fillTranslate);
        ((FillLayer) this.layer).setProperties(fillTranslate);
    }

    public String getFillTranslateAnchor() {
        return (String) ((FillLayer) this.layer).getFillTranslateAnchor().value;
    }

    public void setFillTranslateAnchor(String str) {
        PropertyValue<String> fillTranslateAnchor = PropertyFactory.fillTranslateAnchor(str);
        this.constantPropertyUsageMap.put(PROPERTY_FILL_TRANSLATE_ANCHOR, fillTranslateAnchor);
        ((FillLayer) this.layer).setProperties(fillTranslateAnchor);
    }

    public void setFilter(Expression expression) {
        this.layerFilter = expression;
        ((FillLayer) this.layer).setFilter(this.layerFilter);
    }

    public Expression getFilter() {
        return ((FillLayer) this.layer).getFilter();
    }
}
