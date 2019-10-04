package cab.snapp.mapmodule.units.mapbox;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.View;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.PointerIconCompat;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.mapmodule.a.a.b;
import cab.snapp.mapmodule.a.a.d;
import cab.snapp.mapmodule.a.a.e;
import cab.snapp.mapmodule.a.a.f;
import cab.snapp.mapmodule.a.a.h;
import cab.snapp.mapmodule.a.a.i;
import cab.snapp.mapmodule.a.a.j;
import cab.snapp.mapmodule.a.a.k;
import cab.snapp.mapmodule.a.a.l;
import cab.snapp.mapmodule.a.a.m;
import cab.snapp.mapmodule.a.a.n;
import cab.snapp.mapmodule.a.a.o;
import cab.snapp.mapmodule.a.a.p;
import cab.snapp.mapmodule.a.a.q;
import cab.snapp.mapmodule.a.a.r;
import cab.snapp.mapmodule.a.a.s;
import cab.snapp.mapmodule.a.a.t;
import cab.snapp.snappuikit.SnappPlateNumberView;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.geojson.Point;
import com.mapbox.mapboxsdk.camera.CameraPosition;
import com.mapbox.mapboxsdk.camera.CameraUpdateFactory;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.geometry.LatLngBounds;
import com.mapbox.mapboxsdk.maps.MapboxMap;
import com.mapbox.mapboxsdk.style.layers.Layer;
import com.mapbox.mapboxsdk.style.layers.PropertyFactory;
import com.mapbox.mapboxsdk.style.layers.PropertyValue;
import com.mapbox.mapboxsdk.style.layers.SymbolLayer;
import com.mapbox.mapboxsdk.style.sources.GeoJsonSource;
import io.reactivex.b.c;
import io.reactivex.e.g;
import java.util.HashMap;
import java.util.Map;

public class a extends BaseInteractor<c, b> {

    /* renamed from: a  reason: collision with root package name */
    private final int f286a = 18;

    /* renamed from: b  reason: collision with root package name */
    private final int f287b = 4;
    private final String c = "VEHICLE_ID_KEY";
    private final String d = "MARKER_ID_KEY";
    /* access modifiers changed from: private */
    public int e = 0;
    /* access modifiers changed from: private */
    public MapboxMap f;
    private c g;
    private Map<String, SymbolLayer> h = new HashMap();
    /* access modifiers changed from: private */
    public Map<String, SymbolLayer> i = new HashMap();

    public void onUnitCreated() {
        super.onUnitCreated();
        if (this.g == null) {
            this.g = cab.snapp.mapmodule.a.getInstance().getCommandsPublishSubject().subscribe(new g() {
                public final void accept(Object obj) {
                    a.this.a((m) obj);
                }
            });
            addDisposable(this.g);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(m mVar) throws Exception {
        m mVar2 = mVar;
        if (mVar2.id == this.e) {
            MapBoxController mapBoxController = (MapBoxController) getController();
            if (!(this.f == null || mapBoxController == null || mapBoxController.getContext() == null || getPresenter() == null)) {
                int i2 = 0;
                switch (mVar2.commandType) {
                    case 1000:
                        MapboxMap mapboxMap = this.f;
                        if (!(mapboxMap == null || mapboxMap.getStyle() == null)) {
                            for (Layer next : this.i.values()) {
                                mapboxMap.getStyle().removeLayer(next);
                                mapboxMap.getStyle().removeSource(next.getId());
                                mapboxMap.getStyle().removeImage(next.getId());
                            }
                            for (Layer next2 : this.h.values()) {
                                mapboxMap.getStyle().removeLayer(next2);
                                mapboxMap.getStyle().removeSource(next2.getId());
                                mapboxMap.getStyle().removeImage(next2.getId());
                            }
                            break;
                        }
                    case 1001:
                        if (this.f.getStyle() != null) {
                            cab.snapp.mapmodule.a.a.a aVar = (cab.snapp.mapmodule.a.a.a) mVar2;
                            Bitmap decodeResource = BitmapFactory.decodeResource(mapBoxController.getResources(), aVar.icon);
                            Feature fromGeometry = Feature.fromGeometry(Point.fromLngLat(aVar.longitude, aVar.latitude));
                            fromGeometry.addStringProperty("MARKER_ID_KEY", aVar.markerTag);
                            GeoJsonSource geoJsonSource = new GeoJsonSource(aVar.markerTag, fromGeometry);
                            if (this.f.getStyle() != null) {
                                if (this.f.getStyle().getSource(aVar.markerTag) == null) {
                                    this.f.getStyle().addImage(aVar.markerTag, decodeResource);
                                    this.f.getStyle().addSource(geoJsonSource);
                                } else {
                                    ((GeoJsonSource) this.f.getStyle().getSource(aVar.markerTag)).setGeoJson(fromGeometry);
                                }
                                if (this.f.getStyle().getLayer(aVar.markerTag) == null) {
                                    SymbolLayer withProperties = new SymbolLayer(aVar.markerTag, aVar.markerTag).withProperties(PropertyFactory.iconImage(aVar.markerTag), PropertyFactory.iconAllowOverlap(Boolean.TRUE), PropertyFactory.iconSize(Float.valueOf(1.0f)));
                                    this.f.getStyle().addLayer(withProperties);
                                    this.h.put(aVar.markerTag, withProperties);
                                    return;
                                }
                                this.f.getStyle().getLayer(aVar.markerTag).setProperties(new PropertyValue[0]);
                                return;
                            }
                        }
                        break;
                    case 1002:
                        if (this.f.getStyle() != null) {
                            d dVar = (d) mVar2;
                            this.f.getStyle().addImage(dVar.markerTag, BitmapFactory.decodeResource(mapBoxController.getResources(), dVar.icon));
                            Feature fromGeometry2 = Feature.fromGeometry(Point.fromLngLat(dVar.longitude, dVar.latitude));
                            fromGeometry2.addStringProperty("VEHICLE_ID_KEY", dVar.markerTag);
                            GeoJsonSource geoJsonSource2 = new GeoJsonSource(dVar.markerTag, FeatureCollection.fromFeature(fromGeometry2));
                            if (this.f.getStyle().getSource(dVar.markerTag) == null) {
                                this.f.getStyle().addSource(geoJsonSource2);
                            }
                            if (this.f.getStyle().getLayer(dVar.markerTag) == null) {
                                SymbolLayer withProperties2 = new SymbolLayer(dVar.markerTag, dVar.markerTag).withProperties(PropertyFactory.iconImage(dVar.markerTag), PropertyFactory.iconRotate(Float.valueOf(dVar.rotation)), PropertyFactory.iconOpacity(Float.valueOf(dVar.alpha)), PropertyFactory.iconSize(Float.valueOf(1.0f)), PropertyFactory.iconAllowOverlap(Boolean.TRUE), PropertyFactory.iconIgnorePlacement(Boolean.TRUE));
                                this.f.getStyle().addLayer(withProperties2);
                                this.i.put(dVar.markerTag, withProperties2);
                                return;
                            }
                            this.f.getStyle().getLayer(dVar.markerTag).setProperties(PropertyFactory.iconImage(dVar.markerTag), PropertyFactory.iconRotate(Float.valueOf(dVar.rotation)), PropertyFactory.iconOpacity(Float.valueOf(dVar.alpha)), PropertyFactory.iconSize(Float.valueOf(1.0f)), PropertyFactory.iconAllowOverlap(Boolean.TRUE), PropertyFactory.iconIgnorePlacement(Boolean.TRUE));
                            this.i.put(dVar.markerTag, (SymbolLayer) this.f.getStyle().getLayer(dVar.markerTag));
                            return;
                        }
                        break;
                    case 1003:
                        if (this.f.getStyle() != null) {
                            p pVar = (p) mVar2;
                            Layer layer = this.i.get(pVar.markerTag);
                            if (layer != null) {
                                this.f.getStyle().removeLayer(layer);
                                this.f.getStyle().removeSource(layer.getId());
                                this.f.getStyle().removeImage(layer.getId());
                                return;
                            }
                            Layer layer2 = this.f.getStyle().getLayer(pVar.markerTag);
                            if (layer2 != null) {
                                this.f.getStyle().removeLayer(layer2);
                                this.f.getStyle().removeSource(layer2.getId());
                                this.f.getStyle().removeImage(layer2.getId());
                            }
                            return;
                        }
                        break;
                    case 1004:
                        h hVar = (h) mVar2;
                        SymbolLayer symbolLayer = this.i.get(hVar.markerTag);
                        if (symbolLayer != null) {
                            symbolLayer.setProperties(PropertyFactory.iconOpacity(Float.valueOf(hVar.alpha)));
                            return;
                        }
                        break;
                    case 1005:
                        i iVar = (i) mVar2;
                        SymbolLayer symbolLayer2 = this.i.get(iVar.markerTag);
                        if (symbolLayer2 != null) {
                            symbolLayer2.setProperties(PropertyFactory.iconRotate(Float.valueOf(iVar.rotation)));
                            return;
                        }
                        break;
                    case 1006:
                        j jVar = (j) mVar2;
                        if (jVar.zoomLevel <= 18.0f && jVar.zoomLevel >= 4.0f) {
                            this.f.animateCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(jVar.latitude, jVar.longitude), (double) jVar.zoomLevel), 250, new MapboxMap.CancelableCallback() {
                                public final void onCancel() {
                                    cab.snapp.mapmodule.a.getInstance().getEventsPublishSubject().onNext(new cab.snapp.mapmodule.a.b.c(a.this.e, SnappPlateNumberView.ZONE_MAKU_NEW));
                                }

                                public final void onFinish() {
                                    cab.snapp.mapmodule.a.getInstance().getEventsPublishSubject().onNext(new cab.snapp.mapmodule.a.b.c(a.this.e, SnappPlateNumberView.ZONE_KISH_NEW));
                                }
                            });
                            return;
                        }
                    case 1007:
                        n nVar = (n) mVar2;
                        this.f.animateCamera(CameraUpdateFactory.newLatLng(new LatLng(nVar.latitude, nVar.longitude)), 250, new MapboxMap.CancelableCallback() {
                            public final void onCancel() {
                                cab.snapp.mapmodule.a.getInstance().getEventsPublishSubject().onNext(new cab.snapp.mapmodule.a.b.c(a.this.e, 2009));
                            }

                            public final void onFinish() {
                                cab.snapp.mapmodule.a.getInstance().getEventsPublishSubject().onNext(new cab.snapp.mapmodule.a.b.c(a.this.e, 2008));
                            }
                        });
                        return;
                    case 1008:
                        q qVar = (q) mVar2;
                        double d2 = (double) (qVar.y / 100000.0f);
                        double d3 = (double) (qVar.x / 100000.0f);
                        LatLng latLng = this.f.getCameraPosition().target;
                        double latitude = latLng.getLatitude();
                        Double.isNaN(d2);
                        double d4 = latitude + d2;
                        double longitude = latLng.getLongitude();
                        Double.isNaN(d3);
                        this.f.animateCamera(CameraUpdateFactory.newLatLng(new LatLng(d4, longitude + d3)), 250, new MapboxMap.CancelableCallback() {
                            public final void onCancel() {
                                cab.snapp.mapmodule.a.getInstance().getEventsPublishSubject().onNext(new cab.snapp.mapmodule.a.b.c(a.this.e, 2011));
                            }

                            public final void onFinish() {
                                cab.snapp.mapmodule.a.getInstance().getEventsPublishSubject().onNext(new cab.snapp.mapmodule.a.b.c(a.this.e, 2010));
                            }
                        });
                        return;
                    case 1009:
                        e eVar = (e) mVar2;
                        this.f.easeCamera(CameraUpdateFactory.newLatLng(new LatLng(eVar.latitude, eVar.longitude)), 250);
                        return;
                    case 1010:
                        r rVar = (r) mVar2;
                        if (this.f.getCameraPosition() != null && rVar.zoomLevel >= 4.0f && rVar.zoomLevel <= 18.0f) {
                            this.f.easeCamera(CameraUpdateFactory.newLatLngZoom(this.f.getCameraPosition().target, (double) rVar.zoomLevel), 250);
                            return;
                        }
                    case 1011:
                        this.f.getUiSettings().setScrollGesturesEnabled(false);
                        this.f.getUiSettings().setZoomGesturesEnabled(false);
                        return;
                    case 1012:
                        this.f.getUiSettings().setScrollGesturesEnabled(true);
                        this.f.getUiSettings().setZoomGesturesEnabled(true);
                        return;
                    case 1013:
                        s sVar = (s) mVar2;
                        if (sVar.longitudes.size() == sVar.latitudes.size() || sVar.latitudes.size() >= 2) {
                            try {
                                LatLngBounds.Builder builder = new LatLngBounds.Builder();
                                while (i2 < sVar.latitudes.size()) {
                                    builder.include(new LatLng(sVar.latitudes.get(i2).doubleValue(), sVar.longitudes.get(i2).doubleValue()));
                                    i2++;
                                }
                                this.f.animateCamera(CameraUpdateFactory.newLatLngBounds(builder.build(), sVar.padding), 250);
                                return;
                            } catch (IllegalStateException e2) {
                                e2.printStackTrace();
                                return;
                            }
                        }
                    case 1014:
                        for (SymbolLayer properties : this.i.values()) {
                            properties.setProperties(PropertyFactory.iconOpacity(Float.valueOf(0.0f)));
                        }
                        return;
                    case 1015:
                        for (SymbolLayer properties2 : this.i.values()) {
                            properties2.setProperties(PropertyFactory.iconOpacity(Float.valueOf(1.0f)));
                        }
                        return;
                    case PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW:
                        final l lVar = (l) mVar2;
                        final SymbolLayer symbolLayer3 = this.i.get(lVar.markerTag);
                        if (symbolLayer3 != null) {
                            ValueAnimator valueAnimator = new ValueAnimator();
                            valueAnimator.setObjectValues(new Object[]{Float.valueOf(1.0f), Float.valueOf(0.0f)});
                            valueAnimator.setDuration(250);
                            valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                    symbolLayer3.setProperties(PropertyFactory.iconOpacity(Float.valueOf(((Float) valueAnimator.getAnimatedValue()).floatValue())));
                                }
                            });
                            valueAnimator.addListener(new AnimatorListenerAdapter() {
                                public final void onAnimationEnd(Animator animator) {
                                    super.onAnimationEnd(animator);
                                    a.this.f.getStyle().removeLayer((Layer) symbolLayer3);
                                    a.this.i.remove(lVar.markerTag);
                                }
                            });
                            valueAnimator.start();
                            return;
                        }
                        break;
                    case PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW:
                        final SymbolLayer symbolLayer4 = this.i.get(((k) mVar2).markerTag);
                        if (symbolLayer4 != null) {
                            ValueAnimator valueAnimator2 = new ValueAnimator();
                            valueAnimator2.setObjectValues(new Object[]{Float.valueOf(0.0f), Float.valueOf(1.0f)});
                            valueAnimator2.setDuration(250);
                            valueAnimator2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                    symbolLayer4.setProperties(PropertyFactory.iconOpacity(Float.valueOf(((Float) valueAnimator.getAnimatedValue()).floatValue())));
                                }
                            });
                            valueAnimator2.start();
                            return;
                        }
                        break;
                    case PointerIconCompat.TYPE_ZOOM_IN:
                    case PointerIconCompat.TYPE_ZOOM_OUT:
                        break;
                    case PointerIconCompat.TYPE_GRAB:
                        try {
                            ((b) getPresenter()).setLocationLayerEnabled(true);
                            return;
                        } catch (Exception e3) {
                            e3.printStackTrace();
                            return;
                        }
                    case PointerIconCompat.TYPE_GRABBING:
                        try {
                            ((b) getPresenter()).setLocationLayerEnabled(false);
                            return;
                        } catch (Exception e4) {
                            e4.printStackTrace();
                            break;
                        }
                    case 1022:
                        f fVar = (f) mVar2;
                        this.f.easeCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(fVar.latitude, fVar.longitude), (double) fVar.zoom), 250);
                        return;
                    case 1023:
                        o oVar = (o) mVar2;
                        this.f.animateCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(oVar.latitude, oVar.longitude), (double) oVar.zoom), 250, new MapboxMap.CancelableCallback() {
                            public final void onCancel() {
                                cab.snapp.mapmodule.a.getInstance().getEventsPublishSubject().onNext(new cab.snapp.mapmodule.a.b.c(a.this.e, 2009));
                            }

                            public final void onFinish() {
                                cab.snapp.mapmodule.a.getInstance().getEventsPublishSubject().onNext(new cab.snapp.mapmodule.a.b.c(a.this.e, 2008));
                            }
                        });
                        return;
                    case 1024:
                        if (this.f.getStyle() != null) {
                            for (Layer next3 : this.i.values()) {
                                this.f.getStyle().removeLayer(next3);
                                this.f.getStyle().removeSource(next3.getId());
                                this.f.getStyle().removeImage(next3.getId());
                            }
                            this.i.clear();
                            return;
                        }
                        break;
                    case InputDeviceCompat.SOURCE_GAMEPAD:
                        if (this.f.getStyle() != null) {
                            b bVar = (b) mVar2;
                            Bitmap decodeResource2 = BitmapFactory.decodeResource(mapBoxController.getResources(), bVar.icon);
                            LatLng latLng2 = this.f.getCameraPosition().target;
                            Feature fromGeometry3 = Feature.fromGeometry(Point.fromLngLat(latLng2.getLongitude(), latLng2.getLatitude()));
                            fromGeometry3.addStringProperty("MARKER_ID_KEY", bVar.markerTag);
                            GeoJsonSource geoJsonSource3 = new GeoJsonSource(bVar.markerTag, fromGeometry3);
                            if (this.f.getStyle() != null) {
                                if (this.f.getStyle().getSource(bVar.markerTag) == null) {
                                    this.f.getStyle().addImage(bVar.markerTag, decodeResource2);
                                    this.f.getStyle().addSource(geoJsonSource3);
                                } else {
                                    ((GeoJsonSource) this.f.getStyle().getSource(bVar.markerTag)).setGeoJson(fromGeometry3);
                                }
                                if (this.f.getStyle().getLayer(bVar.markerTag) == null) {
                                    SymbolLayer withProperties3 = new SymbolLayer(bVar.markerTag, bVar.markerTag).withProperties(PropertyFactory.iconImage(bVar.markerTag), PropertyFactory.iconAllowOverlap(Boolean.TRUE), PropertyFactory.iconAnchor("center"), PropertyFactory.iconSize(Float.valueOf(1.0f)));
                                    this.f.getStyle().addLayer(withProperties3);
                                    this.h.put(bVar.markerTag, withProperties3);
                                    return;
                                }
                                this.f.getStyle().getLayer(bVar.markerTag).setProperties(new PropertyValue[0]);
                                return;
                            }
                        }
                        break;
                    case 1027:
                        t tVar = (t) mVar2;
                        if (tVar.longitudes.size() == tVar.latitudes.size() || tVar.latitudes.size() >= 2) {
                            try {
                                LatLngBounds.Builder builder2 = new LatLngBounds.Builder();
                                while (i2 < tVar.latitudes.size()) {
                                    builder2.include(new LatLng(tVar.latitudes.get(i2).doubleValue(), tVar.longitudes.get(i2).doubleValue()));
                                    i2++;
                                }
                                this.f.animateCamera(CameraUpdateFactory.newLatLngBounds(builder2.build(), tVar.paddingLeft, tVar.paddingTop, tVar.paddingRight, tVar.paddingBottom), 250);
                                return;
                            } catch (IllegalStateException e5) {
                                e5.printStackTrace();
                                return;
                            }
                        }
                    case 1028:
                        if (this.f.getStyle() != null) {
                            cab.snapp.mapmodule.a.a.c cVar = (cab.snapp.mapmodule.a.a.c) mVar2;
                            this.f.getStyle().addImage(cab.snapp.mapmodule.a.ORIGIN_MARKER_TAG, BitmapFactory.decodeResource(mapBoxController.getResources(), cVar.icon));
                            Feature fromGeometry4 = Feature.fromGeometry(Point.fromLngLat(cVar.longitude, cVar.latitude));
                            fromGeometry4.addStringProperty("MARKER_ID_KEY", cab.snapp.mapmodule.a.ORIGIN_MARKER_TAG);
                            GeoJsonSource geoJsonSource4 = new GeoJsonSource(cab.snapp.mapmodule.a.ORIGIN_MARKER_TAG, FeatureCollection.fromFeature(fromGeometry4));
                            SymbolLayer withProperties4 = new SymbolLayer(cab.snapp.mapmodule.a.ORIGIN_MARKER_TAG, cab.snapp.mapmodule.a.ORIGIN_MARKER_TAG).withProperties(PropertyFactory.iconImage(cab.snapp.mapmodule.a.ORIGIN_MARKER_TAG), PropertyFactory.iconAllowOverlap(Boolean.TRUE), PropertyFactory.iconAnchor("bottom"), PropertyFactory.iconSize(Float.valueOf(1.0f)));
                            if (this.f.getStyle().getSource(cab.snapp.mapmodule.a.ORIGIN_MARKER_TAG) == null) {
                                this.f.getStyle().addSource(geoJsonSource4);
                            }
                            if (this.f.getStyle().getLayer(cab.snapp.mapmodule.a.ORIGIN_MARKER_TAG) == null) {
                                this.f.getStyle().addLayer(withProperties4);
                                this.h.put(cab.snapp.mapmodule.a.ORIGIN_MARKER_TAG, withProperties4);
                                return;
                            }
                        }
                        break;
                    case 1029:
                        if (this.f.getStyle() != null) {
                            cab.snapp.mapmodule.a.a.c cVar2 = (cab.snapp.mapmodule.a.a.c) mVar2;
                            this.f.getStyle().addImage(cab.snapp.mapmodule.a.DESTINATION_MARKER_TAG, BitmapFactory.decodeResource(mapBoxController.getResources(), cVar2.icon));
                            Feature fromGeometry5 = Feature.fromGeometry(Point.fromLngLat(cVar2.longitude, cVar2.latitude));
                            fromGeometry5.addStringProperty("MARKER_ID_KEY", cab.snapp.mapmodule.a.DESTINATION_MARKER_TAG);
                            GeoJsonSource geoJsonSource5 = new GeoJsonSource(cab.snapp.mapmodule.a.DESTINATION_MARKER_TAG, FeatureCollection.fromFeature(fromGeometry5));
                            if (this.f.getStyle().getSource(cab.snapp.mapmodule.a.DESTINATION_MARKER_TAG) == null) {
                                this.f.getStyle().addSource(geoJsonSource5);
                            }
                            if (this.f.getStyle().getLayer(cab.snapp.mapmodule.a.DESTINATION_MARKER_TAG) == null) {
                                SymbolLayer withProperties5 = new SymbolLayer(cab.snapp.mapmodule.a.DESTINATION_MARKER_TAG, cab.snapp.mapmodule.a.DESTINATION_MARKER_TAG).withProperties(PropertyFactory.iconImage(cab.snapp.mapmodule.a.DESTINATION_MARKER_TAG), PropertyFactory.iconAllowOverlap(Boolean.TRUE), PropertyFactory.iconAnchor("bottom"), PropertyFactory.iconSize(Float.valueOf(1.0f)));
                                this.f.getStyle().addLayer(withProperties5);
                                this.h.put(cab.snapp.mapmodule.a.DESTINATION_MARKER_TAG, withProperties5);
                                return;
                            }
                        }
                        break;
                    case 1030:
                        if (this.f.getStyle() != null) {
                            cab.snapp.mapmodule.a.a.c cVar3 = (cab.snapp.mapmodule.a.a.c) mVar2;
                            this.f.getStyle().addImage(cab.snapp.mapmodule.a.SECOND_DESTINATION_MARKER_TAG, BitmapFactory.decodeResource(mapBoxController.getResources(), cVar3.icon));
                            Feature fromGeometry6 = Feature.fromGeometry(Point.fromLngLat(cVar3.longitude, cVar3.latitude));
                            fromGeometry6.addStringProperty("MARKER_ID_KEY", cab.snapp.mapmodule.a.SECOND_DESTINATION_MARKER_TAG);
                            GeoJsonSource geoJsonSource6 = new GeoJsonSource(cab.snapp.mapmodule.a.SECOND_DESTINATION_MARKER_TAG, FeatureCollection.fromFeature(fromGeometry6));
                            if (this.f.getStyle().getSource(cab.snapp.mapmodule.a.SECOND_DESTINATION_MARKER_TAG) == null) {
                                this.f.getStyle().addSource(geoJsonSource6);
                            }
                            if (this.f.getStyle().getLayer(cab.snapp.mapmodule.a.SECOND_DESTINATION_MARKER_TAG) == null) {
                                SymbolLayer withProperties6 = new SymbolLayer(cab.snapp.mapmodule.a.SECOND_DESTINATION_MARKER_TAG, cab.snapp.mapmodule.a.SECOND_DESTINATION_MARKER_TAG).withProperties(PropertyFactory.iconImage(cab.snapp.mapmodule.a.SECOND_DESTINATION_MARKER_TAG), PropertyFactory.iconAllowOverlap(Boolean.TRUE), PropertyFactory.iconAnchor("bottom"), PropertyFactory.iconSize(Float.valueOf(1.0f)));
                                this.f.getStyle().addLayer(withProperties6);
                                this.h.put(cab.snapp.mapmodule.a.SECOND_DESTINATION_MARKER_TAG, withProperties6);
                                return;
                            }
                        }
                        break;
                }
            }
        }
    }

    public void setMap(MapboxMap mapboxMap) {
        if (!(getController() == null || getController().getView() == null || getController().getView().getParent() == null || getController().getView().getParent().getParent() == null || getController().getView().getParent().getParent().getParent() == null || !(getController().getView().getParent().getParent().getParent() instanceof View))) {
            this.e = ((View) getController().getView().getParent().getParent().getParent()).getId();
        }
        this.f = mapboxMap;
        this.f.getUiSettings().setRotateGesturesEnabled(false);
        this.f.getUiSettings().setTiltGesturesEnabled(false);
        this.f.getUiSettings().setLogoGravity(8388691);
        this.f.setMinZoomPreference(4.0d);
        this.f.setMaxZoomPreference(18.0d);
        this.f.addOnCameraIdleListener(new MapboxMap.OnCameraIdleListener() {
            public final void onCameraIdle() {
                a.this.b();
            }
        });
        this.f.addOnCameraMoveStartedListener(new MapboxMap.OnCameraMoveStartedListener() {
            public final void onCameraMoveStarted(int i) {
                a.this.a(i);
            }
        });
        this.f.addOnCameraMoveCancelListener(new MapboxMap.OnCameraMoveCanceledListener() {
            public final void onCameraMoveCanceled() {
                a.this.a();
            }
        });
        this.f.addOnMapClickListener(new MapboxMap.OnMapClickListener() {
            public final boolean onMapClick(LatLng latLng) {
                return a.this.a(latLng);
            }
        });
        cab.snapp.mapmodule.a.getInstance().getEventsPublishSubject().onNext(new cab.snapp.mapmodule.a.b.c(this.e, 2012));
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b() {
        cab.snapp.mapmodule.a.getInstance().getEventsPublishSubject().onNext(new cab.snapp.mapmodule.a.b.c(this.e, SnappPlateNumberView.ZONE_ANZALI_NEW));
        LatLng latLng = this.f.getCameraPosition().target;
        CameraPosition cameraPosition = this.f.getCameraPosition();
        cab.snapp.mapmodule.a.b.a aVar = new cab.snapp.mapmodule.a.b.a(this.e, latLng.getLatitude(), latLng.getLongitude(), (int) cameraPosition.zoom, (int) cameraPosition.tilt);
        cab.snapp.mapmodule.a.getInstance().getEventsPublishSubject().onNext(aVar);
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(int i2) {
        cab.snapp.mapmodule.a.getInstance().getEventsPublishSubject().onNext(new cab.snapp.mapmodule.a.b.c(this.e, SnappPlateNumberView.ZONE_ARVAND_NEW));
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a() {
        cab.snapp.mapmodule.a.getInstance().getEventsPublishSubject().onNext(new cab.snapp.mapmodule.a.b.c(this.e, SnappPlateNumberView.ZONE_CHABAHAR_NEW));
    }

    /* access modifiers changed from: private */
    public /* synthetic */ boolean a(LatLng latLng) {
        cab.snapp.mapmodule.a.b.b bVar = new cab.snapp.mapmodule.a.b.b(this.e, latLng.getLatitude(), latLng.getLongitude());
        cab.snapp.mapmodule.a.getInstance().getEventsPublishSubject().onNext(bVar);
        return true;
    }

    public void zoom(float f2) {
        MapboxMap mapboxMap = this.f;
        if (mapboxMap != null) {
            mapboxMap.moveCamera(CameraUpdateFactory.zoomBy((double) f2));
        }
    }

    public void disableScrolling() {
        MapboxMap mapboxMap = this.f;
        if (mapboxMap != null) {
            mapboxMap.getUiSettings().setScrollGesturesEnabled(false);
        }
    }

    public void enableScrolling() {
        MapboxMap mapboxMap = this.f;
        if (mapboxMap != null) {
            mapboxMap.getUiSettings().setScrollGesturesEnabled(true);
        }
    }
}
