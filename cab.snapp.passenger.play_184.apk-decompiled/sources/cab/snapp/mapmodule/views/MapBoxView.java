package cab.snapp.mapmodule.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.PointerIconCompat;
import cab.snapp.mapmodule.a;
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
import cab.snapp.mapmodule.a.b.c;
import cab.snapp.snappuikit.SnappPlateNumberView;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.geojson.Point;
import com.mapbox.mapboxsdk.camera.CameraPosition;
import com.mapbox.mapboxsdk.camera.CameraUpdateFactory;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.geometry.LatLngBounds;
import com.mapbox.mapboxsdk.location.LocationComponent;
import com.mapbox.mapboxsdk.location.LocationComponentActivationOptions;
import com.mapbox.mapboxsdk.maps.MapView;
import com.mapbox.mapboxsdk.maps.MapboxMap;
import com.mapbox.mapboxsdk.maps.OnMapReadyCallback;
import com.mapbox.mapboxsdk.maps.Style;
import com.mapbox.mapboxsdk.style.layers.Layer;
import com.mapbox.mapboxsdk.style.layers.PropertyFactory;
import com.mapbox.mapboxsdk.style.layers.PropertyValue;
import com.mapbox.mapboxsdk.style.layers.SymbolLayer;
import com.mapbox.mapboxsdk.style.sources.GeoJsonSource;
import io.reactivex.b.b;
import io.reactivex.e.g;
import java.util.HashMap;
import java.util.Map;

public class MapBoxView extends MapView {
    public static final int ANIMATION_DURATION = 250;

    /* renamed from: a  reason: collision with root package name */
    private final int f322a = 18;

    /* renamed from: b  reason: collision with root package name */
    private final int f323b = 8;
    private final String c = "VEHICLE_ID_KEY";
    private final String d = "MARKER_ID_KEY";
    private int e;
    private ScaleGestureDetector f;
    /* access modifiers changed from: private */
    public MapboxMap g;
    private b h = new b();
    private Map<String, SymbolLayer> i = new HashMap();
    /* access modifiers changed from: private */
    public Map<String, SymbolLayer> j = new HashMap();
    private MapboxMap.OnCameraIdleListener k = new MapboxMap.OnCameraIdleListener() {
        public final void onCameraIdle() {
            MapBoxView.this.f();
        }
    };
    private MapboxMap.OnCameraMoveStartedListener l = new MapboxMap.OnCameraMoveStartedListener() {
        public final void onCameraMoveStarted(int i) {
            MapBoxView.this.a(i);
        }
    };
    private MapboxMap.OnCameraMoveCanceledListener m = new MapboxMap.OnCameraMoveCanceledListener() {
        public final void onCameraMoveCanceled() {
            MapBoxView.this.e();
        }
    };
    private MapboxMap.OnMapClickListener n = new MapboxMap.OnMapClickListener() {
        public final boolean onMapClick(LatLng latLng) {
            return MapBoxView.this.a(latLng);
        }
    };

    /* access modifiers changed from: private */
    public /* synthetic */ void f() {
        a.getInstance().getEventsPublishSubject().onNext(new c(getId(), SnappPlateNumberView.ZONE_ANZALI_NEW));
        LatLng latLng = this.g.getCameraPosition().target;
        CameraPosition cameraPosition = this.g.getCameraPosition();
        cab.snapp.mapmodule.a.b.a aVar = new cab.snapp.mapmodule.a.b.a(getId(), latLng.getLatitude(), latLng.getLongitude(), (int) cameraPosition.zoom, (int) cameraPosition.tilt);
        a.getInstance().getEventsPublishSubject().onNext(aVar);
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(int i2) {
        a.getInstance().getEventsPublishSubject().onNext(new c(getId(), SnappPlateNumberView.ZONE_ARVAND_NEW));
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void e() {
        a.getInstance().getEventsPublishSubject().onNext(new c(getId(), SnappPlateNumberView.ZONE_CHABAHAR_NEW));
    }

    /* access modifiers changed from: private */
    public /* synthetic */ boolean a(LatLng latLng) {
        cab.snapp.mapmodule.a.b.b bVar = new cab.snapp.mapmodule.a.b.b(getId(), latLng.getLatitude(), latLng.getLongitude());
        a.getInstance().getEventsPublishSubject().onNext(bVar);
        return true;
    }

    public MapBoxView(Context context) {
        super(context);
        a();
    }

    public MapBoxView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public MapBoxView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a();
    }

    private void a() {
        this.h.add(a.getInstance().getCommandsPublishSubject().subscribe(new g() {
            public final void accept(Object obj) {
                MapBoxView.this.a((m) obj);
            }
        }));
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(m mVar) throws Exception {
        if (mVar.id == getId()) {
            int i2 = 0;
            switch (mVar.commandType) {
                case 1000:
                    MapboxMap mapboxMap = this.g;
                    if (!(mapboxMap == null || mapboxMap.getStyle() == null)) {
                        for (Layer next : this.j.values()) {
                            mapboxMap.getStyle().removeLayer(next);
                            mapboxMap.getStyle().removeSource(next.getId());
                            mapboxMap.getStyle().removeImage(next.getId());
                        }
                        for (Layer next2 : this.i.values()) {
                            mapboxMap.getStyle().removeLayer(next2);
                            mapboxMap.getStyle().removeSource(next2.getId());
                            mapboxMap.getStyle().removeImage(next2.getId());
                        }
                        break;
                    }
                case 1001:
                    if (this.g.getStyle() != null) {
                        cab.snapp.mapmodule.a.a.a aVar = (cab.snapp.mapmodule.a.a.a) mVar;
                        this.g.getStyle().addImage(a.ADD_MARKER, BitmapFactory.decodeResource(getResources(), aVar.icon));
                        Feature fromGeometry = Feature.fromGeometry(Point.fromLngLat(aVar.longitude, aVar.latitude));
                        GeoJsonSource geoJsonSource = new GeoJsonSource(aVar.markerTag, fromGeometry);
                        if (this.g.getStyle().getSource(aVar.markerTag) == null) {
                            this.g.getStyle().addSource(geoJsonSource);
                        } else {
                            ((GeoJsonSource) this.g.getStyle().getSource(aVar.markerTag)).setGeoJson(fromGeometry);
                        }
                        if (this.g.getStyle().getLayer(aVar.markerTag) == null) {
                            SymbolLayer withProperties = new SymbolLayer(aVar.markerTag, aVar.markerTag).withProperties(PropertyFactory.iconImage(a.ADD_MARKER));
                            this.g.getStyle().addLayer(withProperties);
                            this.i.put(aVar.markerTag, withProperties);
                            return;
                        }
                    }
                    break;
                case 1002:
                    if (this.g.getStyle() != null) {
                        d dVar = (d) mVar;
                        this.g.getStyle().addImage(dVar.markerTag, BitmapFactory.decodeResource(getResources(), dVar.icon));
                        Feature fromGeometry2 = Feature.fromGeometry(Point.fromLngLat(dVar.longitude, dVar.latitude));
                        fromGeometry2.addStringProperty("VEHICLE_ID_KEY", dVar.markerTag);
                        GeoJsonSource geoJsonSource2 = new GeoJsonSource(dVar.markerTag, FeatureCollection.fromFeature(fromGeometry2));
                        if (this.g.getStyle().getSource(dVar.markerTag) == null) {
                            this.g.getStyle().addSource(geoJsonSource2);
                        }
                        if (this.g.getStyle().getLayer(dVar.markerTag) == null) {
                            SymbolLayer withProperties2 = new SymbolLayer(dVar.markerTag, dVar.markerTag).withProperties(PropertyFactory.iconImage(dVar.markerTag), PropertyFactory.iconRotate(Float.valueOf(dVar.rotation)), PropertyFactory.iconOpacity(Float.valueOf(dVar.alpha)), PropertyFactory.iconSize(Float.valueOf(1.0f)), PropertyFactory.iconAllowOverlap(Boolean.TRUE), PropertyFactory.iconIgnorePlacement(Boolean.TRUE));
                            this.g.getStyle().addLayer(withProperties2);
                            this.j.put(dVar.markerTag, withProperties2);
                            return;
                        }
                        this.g.getStyle().getLayer(dVar.markerTag).setProperties(PropertyFactory.iconImage(dVar.markerTag), PropertyFactory.iconRotate(Float.valueOf(dVar.rotation)), PropertyFactory.iconOpacity(Float.valueOf(dVar.alpha)), PropertyFactory.iconSize(Float.valueOf(1.0f)), PropertyFactory.iconAllowOverlap(Boolean.TRUE), PropertyFactory.iconIgnorePlacement(Boolean.TRUE));
                        this.j.put(dVar.markerTag, (SymbolLayer) this.g.getStyle().getLayer(dVar.markerTag));
                        return;
                    }
                    break;
                case 1003:
                    if (this.g.getStyle() != null) {
                        p pVar = (p) mVar;
                        Layer layer = this.j.get(pVar.markerTag);
                        if (layer != null) {
                            this.g.getStyle().removeLayer(layer);
                            this.g.getStyle().removeSource(layer.getId());
                            this.g.getStyle().removeImage(layer.getId());
                            return;
                        }
                        Layer layer2 = this.g.getStyle().getLayer(pVar.markerTag);
                        if (layer2 != null) {
                            this.g.getStyle().removeLayer(layer2);
                            this.g.getStyle().removeSource(layer2.getId());
                            this.g.getStyle().removeImage(layer2.getId());
                        }
                        return;
                    }
                    break;
                case 1004:
                    h hVar = (h) mVar;
                    SymbolLayer symbolLayer = this.j.get(hVar.markerTag);
                    if (symbolLayer != null) {
                        symbolLayer.setProperties(PropertyFactory.iconOpacity(Float.valueOf(hVar.alpha)));
                        return;
                    }
                    break;
                case 1005:
                    i iVar = (i) mVar;
                    SymbolLayer symbolLayer2 = this.j.get(iVar.markerTag);
                    if (symbolLayer2 != null) {
                        symbolLayer2.setProperties(PropertyFactory.iconRotate(Float.valueOf(iVar.rotation)));
                        return;
                    }
                    break;
                case 1006:
                    j jVar = (j) mVar;
                    if (jVar.zoomLevel <= 18.0f && jVar.zoomLevel >= 8.0f) {
                        this.g.animateCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(jVar.latitude, jVar.longitude), (double) jVar.zoomLevel), 250, new MapboxMap.CancelableCallback() {
                            public final void onCancel() {
                                a.getInstance().getEventsPublishSubject().onNext(new c(MapBoxView.this.getId(), SnappPlateNumberView.ZONE_MAKU_NEW));
                            }

                            public final void onFinish() {
                                a.getInstance().getEventsPublishSubject().onNext(new c(MapBoxView.this.getId(), SnappPlateNumberView.ZONE_KISH_NEW));
                            }
                        });
                        return;
                    }
                case 1007:
                    n nVar = (n) mVar;
                    this.g.animateCamera(CameraUpdateFactory.newLatLng(new LatLng(nVar.latitude, nVar.longitude)), 250, new MapboxMap.CancelableCallback() {
                        public final void onCancel() {
                            a.getInstance().getEventsPublishSubject().onNext(new c(MapBoxView.this.getId(), 2009));
                        }

                        public final void onFinish() {
                            a.getInstance().getEventsPublishSubject().onNext(new c(MapBoxView.this.getId(), 2008));
                        }
                    });
                    return;
                case 1008:
                    q qVar = (q) mVar;
                    double d2 = (double) (qVar.y / 100000.0f);
                    double d3 = (double) (qVar.x / 100000.0f);
                    LatLng latLng = this.g.getCameraPosition().target;
                    double latitude = latLng.getLatitude();
                    Double.isNaN(d2);
                    double d4 = latitude + d2;
                    double longitude = latLng.getLongitude();
                    Double.isNaN(d3);
                    this.g.animateCamera(CameraUpdateFactory.newLatLng(new LatLng(d4, longitude + d3)), 250, new MapboxMap.CancelableCallback() {
                        public final void onCancel() {
                            a.getInstance().getEventsPublishSubject().onNext(new c(MapBoxView.this.getId(), 2011));
                        }

                        public final void onFinish() {
                            a.getInstance().getEventsPublishSubject().onNext(new c(MapBoxView.this.getId(), 2010));
                        }
                    });
                    return;
                case 1009:
                    e eVar = (e) mVar;
                    this.g.easeCamera(CameraUpdateFactory.newLatLng(new LatLng(eVar.latitude, eVar.longitude)), 250);
                    return;
                case 1010:
                    r rVar = (r) mVar;
                    this.g.getCameraPosition();
                    if (rVar.zoomLevel >= 8.0f && rVar.zoomLevel <= 18.0f) {
                        this.g.easeCamera(CameraUpdateFactory.newLatLngZoom(this.g.getCameraPosition().target, (double) rVar.zoomLevel), 250);
                        return;
                    }
                case 1011:
                    this.g.getUiSettings().setScrollGesturesEnabled(false);
                    this.g.getUiSettings().setZoomGesturesEnabled(false);
                    return;
                case 1012:
                    this.g.getUiSettings().setScrollGesturesEnabled(true);
                    this.g.getUiSettings().setZoomGesturesEnabled(true);
                    return;
                case 1013:
                    s sVar = (s) mVar;
                    if (sVar.longitudes.size() == sVar.latitudes.size() || sVar.latitudes.size() >= 2) {
                        try {
                            LatLngBounds.Builder builder = new LatLngBounds.Builder();
                            while (i2 < sVar.latitudes.size()) {
                                builder.include(new LatLng(sVar.latitudes.get(i2).doubleValue(), sVar.longitudes.get(i2).doubleValue()));
                                i2++;
                            }
                            this.g.animateCamera(CameraUpdateFactory.newLatLngBounds(builder.build(), sVar.padding), 250);
                            return;
                        } catch (IllegalStateException e2) {
                            e2.printStackTrace();
                            return;
                        }
                    }
                case 1014:
                    for (SymbolLayer properties : this.j.values()) {
                        properties.setProperties(PropertyFactory.iconOpacity(Float.valueOf(0.0f)));
                    }
                    return;
                case 1015:
                    for (SymbolLayer properties2 : this.j.values()) {
                        properties2.setProperties(PropertyFactory.iconOpacity(Float.valueOf(1.0f)));
                    }
                    return;
                case PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW:
                    final l lVar = (l) mVar;
                    final SymbolLayer symbolLayer3 = this.j.get(lVar.markerTag);
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
                                MapBoxView.this.g.getStyle().removeLayer((Layer) symbolLayer3);
                                MapBoxView.this.j.remove(lVar.markerTag);
                            }
                        });
                        valueAnimator.start();
                        return;
                    }
                    break;
                case PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW:
                    SymbolLayer symbolLayer4 = this.j.get(((k) mVar).markerTag);
                    if (symbolLayer4 != null) {
                        ValueAnimator valueAnimator2 = new ValueAnimator();
                        valueAnimator2.setObjectValues(new Object[]{Float.valueOf(0.0f), Float.valueOf(1.0f)});
                        valueAnimator2.setDuration(250);
                        valueAnimator2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                SymbolLayer.this.setProperties(PropertyFactory.iconOpacity(Float.valueOf(((Float) valueAnimator.getAnimatedValue()).floatValue())));
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
                        this.g.getLocationComponent().setLocationComponentEnabled(true);
                        return;
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        return;
                    }
                case PointerIconCompat.TYPE_GRABBING:
                    try {
                        this.g.getLocationComponent().setLocationComponentEnabled(true);
                        return;
                    } catch (Exception e4) {
                        e4.printStackTrace();
                        break;
                    }
                case 1022:
                    f fVar = (f) mVar;
                    this.g.easeCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(fVar.latitude, fVar.longitude), (double) fVar.zoom), 250);
                    return;
                case 1023:
                    o oVar = (o) mVar;
                    this.g.animateCamera(CameraUpdateFactory.newLatLngZoom(new LatLng(oVar.latitude, oVar.longitude), (double) oVar.zoom), 250, new MapboxMap.CancelableCallback() {
                        public final void onCancel() {
                            a.getInstance().getEventsPublishSubject().onNext(new c(MapBoxView.this.getId(), 2009));
                        }

                        public final void onFinish() {
                            a.getInstance().getEventsPublishSubject().onNext(new c(MapBoxView.this.getId(), 2008));
                        }
                    });
                    return;
                case 1024:
                    if (this.g.getStyle() != null) {
                        for (Layer next3 : this.j.values()) {
                            this.g.getStyle().removeLayer(next3);
                            this.g.getStyle().removeSource(next3.getId());
                            this.g.getStyle().removeImage(next3.getId());
                        }
                        this.j.clear();
                        return;
                    }
                    break;
                case InputDeviceCompat.SOURCE_GAMEPAD:
                    if (this.g.getStyle() != null) {
                        cab.snapp.mapmodule.a.a.b bVar = (cab.snapp.mapmodule.a.a.b) mVar;
                        Bitmap decodeResource = BitmapFactory.decodeResource(getResources(), bVar.icon);
                        LatLng latLng2 = this.g.getCameraPosition().target;
                        Feature fromGeometry3 = Feature.fromGeometry(Point.fromLngLat(latLng2.getLongitude(), latLng2.getLatitude()));
                        fromGeometry3.addStringProperty("MARKER_ID_KEY", bVar.markerTag);
                        GeoJsonSource geoJsonSource3 = new GeoJsonSource(bVar.markerTag, fromGeometry3);
                        if (this.g.getStyle() != null) {
                            if (this.g.getStyle().getSource(bVar.markerTag) == null) {
                                this.g.getStyle().addImage(bVar.markerTag, decodeResource);
                                this.g.getStyle().addSource(geoJsonSource3);
                            } else {
                                ((GeoJsonSource) this.g.getStyle().getSource(bVar.markerTag)).setGeoJson(fromGeometry3);
                            }
                            if (this.g.getStyle().getLayer(bVar.markerTag) == null) {
                                SymbolLayer withProperties3 = new SymbolLayer(bVar.markerTag, bVar.markerTag).withProperties(PropertyFactory.iconImage(bVar.markerTag), PropertyFactory.iconAllowOverlap(Boolean.TRUE), PropertyFactory.iconAnchor("center"), PropertyFactory.iconSize(Float.valueOf(1.0f)));
                                this.g.getStyle().addLayer(withProperties3);
                                this.i.put(bVar.markerTag, withProperties3);
                                return;
                            }
                            this.g.getStyle().getLayer(bVar.markerTag).setProperties(new PropertyValue[0]);
                            return;
                        }
                    }
                    break;
                case 1027:
                    t tVar = (t) mVar;
                    if (tVar.longitudes.size() == tVar.latitudes.size() || tVar.latitudes.size() >= 2) {
                        try {
                            LatLngBounds.Builder builder2 = new LatLngBounds.Builder();
                            while (i2 < tVar.latitudes.size()) {
                                builder2.include(new LatLng(tVar.latitudes.get(i2).doubleValue(), tVar.longitudes.get(i2).doubleValue()));
                                i2++;
                            }
                            this.g.animateCamera(CameraUpdateFactory.newLatLngBounds(builder2.build(), tVar.paddingLeft, tVar.paddingTop, tVar.paddingRight, tVar.paddingBottom), 250);
                            return;
                        } catch (IllegalStateException e5) {
                            e5.printStackTrace();
                            return;
                        }
                    }
                case 1028:
                    if (this.g.getStyle() != null) {
                        cab.snapp.mapmodule.a.a.c cVar = (cab.snapp.mapmodule.a.a.c) mVar;
                        this.g.getStyle().addImage(a.ORIGIN_MARKER_TAG, BitmapFactory.decodeResource(getResources(), cVar.icon));
                        Feature fromGeometry4 = Feature.fromGeometry(Point.fromLngLat(cVar.longitude, cVar.latitude));
                        fromGeometry4.addStringProperty("MARKER_ID_KEY", a.ORIGIN_MARKER_TAG);
                        GeoJsonSource geoJsonSource4 = new GeoJsonSource(a.ORIGIN_MARKER_TAG, FeatureCollection.fromFeature(fromGeometry4));
                        if (this.g.getStyle().getSource(a.ORIGIN_MARKER_TAG) == null) {
                            this.g.getStyle().addSource(geoJsonSource4);
                        }
                        if (this.g.getStyle().getLayer(a.ORIGIN_MARKER_TAG) == null) {
                            this.g.getStyle().addLayer(new SymbolLayer(a.ORIGIN_MARKER_TAG, a.ORIGIN_MARKER_TAG).withProperties(PropertyFactory.iconImage(a.ORIGIN_MARKER_TAG), PropertyFactory.iconAllowOverlap(Boolean.TRUE), PropertyFactory.iconAnchor("bottom"), PropertyFactory.iconSize(Float.valueOf(1.0f))));
                            return;
                        }
                    }
                    break;
                case 1029:
                    if (this.g.getStyle() != null) {
                        cab.snapp.mapmodule.a.a.c cVar2 = (cab.snapp.mapmodule.a.a.c) mVar;
                        this.g.getStyle().addImage(a.DESTINATION_MARKER_TAG, BitmapFactory.decodeResource(getResources(), cVar2.icon));
                        Feature fromGeometry5 = Feature.fromGeometry(Point.fromLngLat(cVar2.longitude, cVar2.latitude));
                        fromGeometry5.addStringProperty("MARKER_ID_KEY", a.DESTINATION_MARKER_TAG);
                        GeoJsonSource geoJsonSource5 = new GeoJsonSource(a.DESTINATION_MARKER_TAG, FeatureCollection.fromFeature(fromGeometry5));
                        if (this.g.getStyle().getSource(a.DESTINATION_MARKER_TAG) == null) {
                            this.g.getStyle().addSource(geoJsonSource5);
                        }
                        if (this.g.getStyle().getLayer(a.DESTINATION_MARKER_TAG) == null) {
                            this.g.getStyle().addLayer(new SymbolLayer(a.DESTINATION_MARKER_TAG, a.DESTINATION_MARKER_TAG).withProperties(PropertyFactory.iconImage(a.DESTINATION_MARKER_TAG), PropertyFactory.iconAllowOverlap(Boolean.TRUE), PropertyFactory.iconAnchor("bottom"), PropertyFactory.iconSize(Float.valueOf(1.0f))));
                            return;
                        }
                    }
                    break;
                case 1030:
                    if (this.g.getStyle() != null) {
                        cab.snapp.mapmodule.a.a.c cVar3 = (cab.snapp.mapmodule.a.a.c) mVar;
                        this.g.getStyle().addImage(a.SECOND_DESTINATION_MARKER_TAG, BitmapFactory.decodeResource(getResources(), cVar3.icon));
                        Feature fromGeometry6 = Feature.fromGeometry(Point.fromLngLat(cVar3.longitude, cVar3.latitude));
                        fromGeometry6.addStringProperty("MARKER_ID_KEY", a.SECOND_DESTINATION_MARKER_TAG);
                        GeoJsonSource geoJsonSource6 = new GeoJsonSource(a.SECOND_DESTINATION_MARKER_TAG, FeatureCollection.fromFeature(fromGeometry6));
                        if (this.g.getStyle().getSource(a.SECOND_DESTINATION_MARKER_TAG) == null) {
                            this.g.getStyle().addSource(geoJsonSource6);
                        }
                        if (this.g.getStyle().getLayer(a.SECOND_DESTINATION_MARKER_TAG) == null) {
                            this.g.getStyle().addLayer(new SymbolLayer(a.SECOND_DESTINATION_MARKER_TAG, a.SECOND_DESTINATION_MARKER_TAG).withProperties(PropertyFactory.iconImage(a.SECOND_DESTINATION_MARKER_TAG), PropertyFactory.iconAllowOverlap(Boolean.TRUE), PropertyFactory.iconAnchor("bottom"), PropertyFactory.iconSize(Float.valueOf(1.0f))));
                            return;
                        }
                    }
                    break;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        try {
            getMapAsync(new OnMapReadyCallback() {
                public final void onMapReady(MapboxMap mapboxMap) {
                    MapBoxView.this.a(mapboxMap);
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(MapboxMap mapboxMap) {
        this.g = mapboxMap;
        if (a.getInstance().getMapStyleUrl() != null) {
            mapboxMap.setStyle(new Style.Builder().fromUrl(a.getInstance().getMapStyleUrl()), (Style.OnStyleLoaded) new Style.OnStyleLoaded() {
                public final void onStyleLoaded(Style style) {
                    MapBoxView.this.c();
                    MapBoxView.this.b();
                    MapBoxView.this.d();
                }
            });
            return;
        }
        c();
        b();
        d();
    }

    public void onAttach(Bundle bundle) {
        onCreate(bundle);
        onStart();
        onResume();
    }

    public void onDetach() {
        onPause();
        onStop();
        onDestroy();
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b bVar = this.h;
        if (bVar != null && !bVar.isDisposed()) {
            this.h.dispose();
        }
        MapboxMap mapboxMap = this.g;
        if (mapboxMap != null) {
            mapboxMap.removeOnCameraIdleListener(this.k);
            this.g.removeOnCameraMoveStartedListener(this.l);
            this.g.removeOnCameraMoveCancelListener(this.m);
            this.g.removeOnMapClickListener(this.n);
        }
    }

    /* access modifiers changed from: private */
    public void b() {
        MapboxMap mapboxMap = this.g;
        if (mapboxMap != null && mapboxMap.getStyle() != null && com.mapbox.android.a.c.b.areLocationPermissionsGranted(getContext())) {
            LocationComponent locationComponent = this.g.getLocationComponent();
            locationComponent.activateLocationComponent(new LocationComponentActivationOptions.Builder(getContext(), this.g.getStyle()).build());
            locationComponent.setLocationComponentEnabled(true);
            locationComponent.setRenderMode(4);
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.f == null) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.e = 1;
        } else if (action == 1) {
            this.e = 0;
        } else if (action == 5) {
            this.e++;
        } else if (action == 6) {
            this.e--;
        }
        if (this.e > 1) {
            MapboxMap mapboxMap = this.g;
            if (mapboxMap != null) {
                mapboxMap.getUiSettings().setScrollGesturesEnabled(false);
            }
            this.f.onTouchEvent(motionEvent);
            return false;
        }
        MapboxMap mapboxMap2 = this.g;
        if (mapboxMap2 != null) {
            mapboxMap2.getUiSettings().setScrollGesturesEnabled(true);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    /* access modifiers changed from: private */
    public void c() {
        this.f = new ScaleGestureDetector(getContext(), new ScaleGestureDetector.OnScaleGestureListener() {

            /* renamed from: b  reason: collision with root package name */
            private float f326b = -1.0f;

            public final boolean onScale(ScaleGestureDetector scaleGestureDetector) {
                float f = this.f326b;
                if (f == -1.0f) {
                    this.f326b = scaleGestureDetector.getCurrentSpan();
                } else {
                    MapBoxView.a(MapBoxView.this, MapBoxView.a(f, scaleGestureDetector.getCurrentSpan()));
                    this.f326b = scaleGestureDetector.getCurrentSpan();
                }
                return false;
            }

            public final boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
                this.f326b = -1.0f;
                return true;
            }

            public final void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
                this.f326b = -1.0f;
            }
        });
    }

    /* access modifiers changed from: private */
    public void d() {
        this.g.getUiSettings().setRotateGesturesEnabled(false);
        this.g.getUiSettings().setTiltGesturesEnabled(false);
        this.g.getUiSettings().setLogoGravity(8388691);
        this.g.setMinZoomPreference(8.0d);
        this.g.setMaxZoomPreference(18.0d);
        this.g.addOnCameraIdleListener(this.k);
        this.g.addOnCameraMoveStartedListener(this.l);
        this.g.addOnCameraMoveCancelListener(this.m);
        this.g.addOnMapClickListener(this.n);
        a.getInstance().getEventsPublishSubject().onNext(new c(getId(), 2012));
    }

    static /* synthetic */ float a(float f2, float f3) {
        return (float) (Math.log((double) (f3 / f2)) / Math.log(1.55d));
    }

    static /* synthetic */ void a(MapBoxView mapBoxView, float f2) {
        MapboxMap mapboxMap = mapBoxView.g;
        if (mapboxMap != null) {
            mapboxMap.moveCamera(CameraUpdateFactory.zoomBy((double) f2));
        }
    }
}
