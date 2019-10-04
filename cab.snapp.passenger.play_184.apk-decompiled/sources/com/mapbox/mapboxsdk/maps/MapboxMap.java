package com.mapbox.mapboxsdk.maps;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import com.mapbox.android.b.a;
import com.mapbox.android.b.d;
import com.mapbox.android.b.l;
import com.mapbox.android.b.m;
import com.mapbox.android.b.p;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.Geometry;
import com.mapbox.mapboxsdk.MapStrictMode;
import com.mapbox.mapboxsdk.annotations.Annotation;
import com.mapbox.mapboxsdk.annotations.BaseMarkerOptions;
import com.mapbox.mapboxsdk.annotations.Marker;
import com.mapbox.mapboxsdk.annotations.MarkerOptions;
import com.mapbox.mapboxsdk.annotations.Polygon;
import com.mapbox.mapboxsdk.annotations.PolygonOptions;
import com.mapbox.mapboxsdk.annotations.Polyline;
import com.mapbox.mapboxsdk.annotations.PolylineOptions;
import com.mapbox.mapboxsdk.camera.CameraPosition;
import com.mapbox.mapboxsdk.camera.CameraUpdate;
import com.mapbox.mapboxsdk.camera.CameraUpdateFactory;
import com.mapbox.mapboxsdk.constants.MapboxConstants;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.geometry.LatLngBounds;
import com.mapbox.mapboxsdk.location.LocationComponent;
import com.mapbox.mapboxsdk.log.Logger;
import com.mapbox.mapboxsdk.maps.Style;
import com.mapbox.mapboxsdk.offline.OfflineRegionDefinition;
import com.mapbox.mapboxsdk.style.expressions.Expression;
import java.util.ArrayList;
import java.util.List;

public final class MapboxMap {
    private static final String TAG = "Mbgl-MapboxMap";
    private AnnotationManager annotationManager;
    private final List<Style.OnStyleLoaded> awaitingStyleGetters = new ArrayList();
    private final CameraChangeDispatcher cameraChangeDispatcher;
    private boolean debugActive;
    private final List<OnDeveloperAnimationListener> developerAnimationStartedListeners;
    private LocationComponent locationComponent;
    private final NativeMap nativeMapView;
    private OnFpsChangedListener onFpsChangedListener;
    private final OnGesturesManagerInteractionListener onGesturesManagerInteractionListener;
    private final Projection projection;
    private Style style;
    private Style.OnStyleLoaded styleLoadedCallback;
    private final Transform transform;
    private final UiSettings uiSettings;

    public interface CancelableCallback {
        void onCancel();

        void onFinish();
    }

    @Deprecated
    public interface InfoWindowAdapter {
        View getInfoWindow(Marker marker);
    }

    public interface OnCameraIdleListener {
        void onCameraIdle();
    }

    public interface OnCameraMoveCanceledListener {
        void onCameraMoveCanceled();
    }

    public interface OnCameraMoveListener {
        void onCameraMove();
    }

    public interface OnCameraMoveStartedListener {
        public static final int REASON_API_ANIMATION = 3;
        public static final int REASON_API_GESTURE = 1;
        public static final int REASON_DEVELOPER_ANIMATION = 2;

        void onCameraMoveStarted(int i);
    }

    public interface OnCompassAnimationListener {
        void onCompassAnimation();

        void onCompassAnimationFinished();
    }

    public interface OnDeveloperAnimationListener {
        void onDeveloperAnimationStarted();
    }

    public interface OnFlingListener {
        void onFling();
    }

    public interface OnFpsChangedListener {
        void onFpsChanged(double d);
    }

    interface OnGesturesManagerInteractionListener {
        void cancelAllVelocityAnimations();

        a getGesturesManager();

        void onAddFlingListener(OnFlingListener onFlingListener);

        void onAddMapClickListener(OnMapClickListener onMapClickListener);

        void onAddMapLongClickListener(OnMapLongClickListener onMapLongClickListener);

        void onAddMoveListener(OnMoveListener onMoveListener);

        void onAddRotateListener(OnRotateListener onRotateListener);

        void onAddScaleListener(OnScaleListener onScaleListener);

        void onAddShoveListener(OnShoveListener onShoveListener);

        void onRemoveFlingListener(OnFlingListener onFlingListener);

        void onRemoveMapClickListener(OnMapClickListener onMapClickListener);

        void onRemoveMapLongClickListener(OnMapLongClickListener onMapLongClickListener);

        void onRemoveMoveListener(OnMoveListener onMoveListener);

        void onRemoveRotateListener(OnRotateListener onRotateListener);

        void onRemoveScaleListener(OnScaleListener onScaleListener);

        void onRemoveShoveListener(OnShoveListener onShoveListener);

        void setGesturesManager(a aVar, boolean z, boolean z2);
    }

    public interface OnInfoWindowClickListener {
        boolean onInfoWindowClick(Marker marker);
    }

    public interface OnInfoWindowCloseListener {
        void onInfoWindowClose(Marker marker);
    }

    public interface OnInfoWindowLongClickListener {
        void onInfoWindowLongClick(Marker marker);
    }

    public interface OnMapClickListener {
        boolean onMapClick(LatLng latLng);
    }

    public interface OnMapLongClickListener {
        boolean onMapLongClick(LatLng latLng);
    }

    @Deprecated
    public interface OnMarkerClickListener {
        boolean onMarkerClick(Marker marker);
    }

    public interface OnMoveListener {
        void onMove(d dVar);

        void onMoveBegin(d dVar);

        void onMoveEnd(d dVar);
    }

    @Deprecated
    public interface OnPolygonClickListener {
        void onPolygonClick(Polygon polygon);
    }

    @Deprecated
    public interface OnPolylineClickListener {
        void onPolylineClick(Polyline polyline);
    }

    public interface OnRotateListener {
        void onRotate(l lVar);

        void onRotateBegin(l lVar);

        void onRotateEnd(l lVar);
    }

    public interface OnScaleListener {
        void onScale(p pVar);

        void onScaleBegin(p pVar);

        void onScaleEnd(p pVar);
    }

    public interface OnShoveListener {
        void onShove(m mVar);

        void onShoveBegin(m mVar);

        void onShoveEnd(m mVar);
    }

    public interface SnapshotReadyCallback {
        void onSnapshotReady(Bitmap bitmap);
    }

    MapboxMap(NativeMap nativeMap, Transform transform2, UiSettings uiSettings2, Projection projection2, OnGesturesManagerInteractionListener onGesturesManagerInteractionListener2, CameraChangeDispatcher cameraChangeDispatcher2, List<OnDeveloperAnimationListener> list) {
        this.nativeMapView = nativeMap;
        this.uiSettings = uiSettings2;
        this.projection = projection2;
        this.transform = transform2;
        this.onGesturesManagerInteractionListener = onGesturesManagerInteractionListener2;
        this.cameraChangeDispatcher = cameraChangeDispatcher2;
        this.developerAnimationStartedListeners = list;
    }

    /* access modifiers changed from: package-private */
    public final void initialise(Context context, MapboxMapOptions mapboxMapOptions) {
        this.transform.initialise(this, mapboxMapOptions);
        this.uiSettings.initialise(context, mapboxMapOptions);
        setDebugActive(mapboxMapOptions.getDebugActive());
        setApiBaseUrl(mapboxMapOptions);
        setPrefetchesTiles(mapboxMapOptions);
    }

    public final void getStyle(Style.OnStyleLoaded onStyleLoaded) {
        Style style2 = this.style;
        if (style2 == null || !style2.isFullyLoaded()) {
            this.awaitingStyleGetters.add(onStyleLoaded);
        } else {
            onStyleLoaded.onStyleLoaded(this.style);
        }
    }

    public final Style getStyle() {
        Style style2 = this.style;
        if (style2 == null || !style2.isFullyLoaded()) {
            return null;
        }
        return this.style;
    }

    /* access modifiers changed from: package-private */
    public final void onStart() {
        this.locationComponent.onStart();
    }

    /* access modifiers changed from: package-private */
    public final void onStop() {
        this.locationComponent.onStop();
    }

    /* access modifiers changed from: package-private */
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putParcelable(MapboxConstants.STATE_CAMERA_POSITION, this.transform.getCameraPosition());
        bundle.putBoolean(MapboxConstants.STATE_DEBUG_ACTIVE, isDebugActive());
        this.uiSettings.onSaveInstanceState(bundle);
    }

    /* access modifiers changed from: package-private */
    public final void onRestoreInstanceState(Bundle bundle) {
        CameraPosition cameraPosition = (CameraPosition) bundle.getParcelable(MapboxConstants.STATE_CAMERA_POSITION);
        this.uiSettings.onRestoreInstanceState(bundle);
        if (cameraPosition != null) {
            moveCamera(CameraUpdateFactory.newCameraPosition(new CameraPosition.Builder(cameraPosition).build()));
        }
        this.nativeMapView.setDebug(bundle.getBoolean(MapboxConstants.STATE_DEBUG_ACTIVE));
    }

    /* access modifiers changed from: package-private */
    public final void onDestroy() {
        this.locationComponent.onDestroy();
        Style style2 = this.style;
        if (style2 != null) {
            style2.clear();
        }
        this.cameraChangeDispatcher.onDestroy();
    }

    /* access modifiers changed from: package-private */
    public final void onPreMapReady() {
        this.transform.invalidateCameraPosition();
        this.annotationManager.reloadMarkers();
        this.annotationManager.adjustTopOffsetPixels(this);
    }

    /* access modifiers changed from: package-private */
    public final void onPostMapReady() {
        this.transform.invalidateCameraPosition();
    }

    /* access modifiers changed from: package-private */
    public final void onFinishLoadingStyle() {
        notifyStyleLoaded();
    }

    /* access modifiers changed from: package-private */
    public final void onFailLoadingStyle() {
        this.styleLoadedCallback = null;
    }

    /* access modifiers changed from: package-private */
    public final void onUpdateRegionChange() {
        this.annotationManager.update();
    }

    /* access modifiers changed from: package-private */
    public final void onUpdateFullyRendered() {
        CameraPosition invalidateCameraPosition = this.transform.invalidateCameraPosition();
        if (invalidateCameraPosition != null) {
            this.uiSettings.update(invalidateCameraPosition);
        }
    }

    /* access modifiers changed from: package-private */
    public final long getNativeMapPtr() {
        return this.nativeMapView.getNativePtr();
    }

    private void setPrefetchesTiles(MapboxMapOptions mapboxMapOptions) {
        setPrefetchesTiles(mapboxMapOptions.getPrefetchesTiles());
    }

    public final void setPrefetchesTiles(boolean z) {
        this.nativeMapView.setPrefetchTiles(z);
    }

    public final boolean getPrefetchesTiles() {
        return this.nativeMapView.getPrefetchTiles();
    }

    public final void setMinZoomPreference(double d) {
        this.transform.setMinZoom(d);
    }

    public final double getMinZoomLevel() {
        return this.transform.getMinZoom();
    }

    public final void setMaxZoomPreference(double d) {
        this.transform.setMaxZoom(d);
    }

    public final double getMaxZoomLevel() {
        return this.transform.getMaxZoom();
    }

    public final UiSettings getUiSettings() {
        return this.uiSettings;
    }

    public final Projection getProjection() {
        return this.projection;
    }

    public final void cancelTransitions() {
        this.transform.cancelTransitions();
    }

    public final CameraPosition getCameraPosition() {
        return this.transform.getCameraPosition();
    }

    public final void setCameraPosition(CameraPosition cameraPosition) {
        moveCamera(CameraUpdateFactory.newCameraPosition(cameraPosition), null);
    }

    public final void moveCamera(CameraUpdate cameraUpdate) {
        moveCamera(cameraUpdate, null);
    }

    public final void moveCamera(CameraUpdate cameraUpdate, CancelableCallback cancelableCallback) {
        notifyDeveloperAnimationListeners();
        this.transform.moveCamera(this, cameraUpdate, cancelableCallback);
    }

    public final void easeCamera(CameraUpdate cameraUpdate) {
        easeCamera(cameraUpdate, 300);
    }

    public final void easeCamera(CameraUpdate cameraUpdate, CancelableCallback cancelableCallback) {
        easeCamera(cameraUpdate, 300, cancelableCallback);
    }

    public final void easeCamera(CameraUpdate cameraUpdate, int i) {
        easeCamera(cameraUpdate, i, (CancelableCallback) null);
    }

    public final void easeCamera(CameraUpdate cameraUpdate, int i, CancelableCallback cancelableCallback) {
        easeCamera(cameraUpdate, i, true, cancelableCallback);
    }

    public final void easeCamera(CameraUpdate cameraUpdate, int i, boolean z) {
        easeCamera(cameraUpdate, i, z, null);
    }

    public final void easeCamera(CameraUpdate cameraUpdate, int i, boolean z, CancelableCallback cancelableCallback) {
        if (i > 0) {
            notifyDeveloperAnimationListeners();
            this.transform.easeCamera(this, cameraUpdate, i, z, cancelableCallback);
            return;
        }
        throw new IllegalArgumentException("Null duration passed into easeCamera");
    }

    public final void animateCamera(CameraUpdate cameraUpdate) {
        animateCamera(cameraUpdate, 300, null);
    }

    public final void animateCamera(CameraUpdate cameraUpdate, CancelableCallback cancelableCallback) {
        animateCamera(cameraUpdate, 300, cancelableCallback);
    }

    public final void animateCamera(CameraUpdate cameraUpdate, int i) {
        animateCamera(cameraUpdate, i, null);
    }

    public final void animateCamera(CameraUpdate cameraUpdate, int i, CancelableCallback cancelableCallback) {
        if (i > 0) {
            notifyDeveloperAnimationListeners();
            this.transform.animateCamera(this, cameraUpdate, i, cancelableCallback);
            return;
        }
        throw new IllegalArgumentException("Null duration passed into animateCamera");
    }

    public final void scrollBy(float f, float f2) {
        scrollBy(f, f2, 0);
    }

    public final void scrollBy(float f, float f2, long j) {
        notifyDeveloperAnimationListeners();
        this.nativeMapView.moveBy((double) f, (double) f2, j);
    }

    public final void resetNorth() {
        notifyDeveloperAnimationListeners();
        this.transform.resetNorth();
    }

    public final void setFocalBearing(double d, float f, float f2, long j) {
        notifyDeveloperAnimationListeners();
        this.transform.setBearing(d, f, f2, j);
    }

    public final float getHeight() {
        return this.projection.getHeight();
    }

    public final float getWidth() {
        return this.projection.getWidth();
    }

    public final void setOfflineRegionDefinition(OfflineRegionDefinition offlineRegionDefinition) {
        setOfflineRegionDefinition(offlineRegionDefinition, null);
    }

    public final void setOfflineRegionDefinition(OfflineRegionDefinition offlineRegionDefinition, Style.OnStyleLoaded onStyleLoaded) {
        double minZoom = offlineRegionDefinition.getMinZoom();
        double maxZoom = offlineRegionDefinition.getMaxZoom();
        moveCamera(CameraUpdateFactory.newCameraPosition(new CameraPosition.Builder().target(offlineRegionDefinition.getBounds().getCenter()).zoom(minZoom).build()));
        setMinZoomPreference(minZoom);
        setMaxZoomPreference(maxZoom);
        setStyle(new Style.Builder().fromUri(offlineRegionDefinition.getStyleURL()), onStyleLoaded);
    }

    public final boolean isDebugActive() {
        return this.debugActive;
    }

    public final void setDebugActive(boolean z) {
        this.debugActive = z;
        this.nativeMapView.setDebug(z);
    }

    public final void cycleDebugOptions() {
        this.nativeMapView.cycleDebugOptions();
        this.debugActive = this.nativeMapView.getDebug();
    }

    private void setApiBaseUrl(MapboxMapOptions mapboxMapOptions) {
        String apiBaseUrl = mapboxMapOptions.getApiBaseUrl();
        if (!TextUtils.isEmpty(apiBaseUrl)) {
            this.nativeMapView.setApiBaseUrl(apiBaseUrl);
        }
    }

    public final void setStyle(String str) {
        setStyle(str, (Style.OnStyleLoaded) null);
    }

    public final void setStyle(String str, Style.OnStyleLoaded onStyleLoaded) {
        setStyle(new Style.Builder().fromUri(str), onStyleLoaded);
    }

    public final void setStyle(Style.Builder builder) {
        setStyle(builder, (Style.OnStyleLoaded) null);
    }

    public final void setStyle(Style.Builder builder, Style.OnStyleLoaded onStyleLoaded) {
        this.styleLoadedCallback = onStyleLoaded;
        this.locationComponent.onStartLoadingMap();
        Style style2 = this.style;
        if (style2 != null) {
            style2.clear();
        }
        this.style = builder.build(this.nativeMapView);
        if (!TextUtils.isEmpty(builder.getUri())) {
            this.nativeMapView.setStyleUri(builder.getUri());
        } else if (!TextUtils.isEmpty(builder.getJson())) {
            this.nativeMapView.setStyleJson(builder.getJson());
        } else {
            this.nativeMapView.setStyleJson("{\"version\": 8,\"sources\": {},\"layers\": []}");
        }
    }

    /* access modifiers changed from: package-private */
    public final void notifyStyleLoaded() {
        if (!this.nativeMapView.isDestroyed()) {
            Style style2 = this.style;
            if (style2 != null) {
                style2.onDidFinishLoadingStyle();
                this.locationComponent.onFinishLoadingStyle();
                Style.OnStyleLoaded onStyleLoaded = this.styleLoadedCallback;
                if (onStyleLoaded != null) {
                    onStyleLoaded.onStyleLoaded(this.style);
                }
                for (Style.OnStyleLoaded onStyleLoaded2 : this.awaitingStyleGetters) {
                    onStyleLoaded2.onStyleLoaded(this.style);
                }
            } else {
                MapStrictMode.strictModeViolation("No style to provide.");
            }
            this.styleLoadedCallback = null;
            this.awaitingStyleGetters.clear();
        }
    }

    @Deprecated
    public final Marker addMarker(MarkerOptions markerOptions) {
        return this.annotationManager.addMarker(markerOptions, this);
    }

    @Deprecated
    public final Marker addMarker(BaseMarkerOptions baseMarkerOptions) {
        return this.annotationManager.addMarker(baseMarkerOptions, this);
    }

    @Deprecated
    public final List<Marker> addMarkers(List<? extends BaseMarkerOptions> list) {
        return this.annotationManager.addMarkers(list, this);
    }

    @Deprecated
    public final void updateMarker(Marker marker) {
        this.annotationManager.updateMarker(marker, this);
    }

    @Deprecated
    public final Polyline addPolyline(PolylineOptions polylineOptions) {
        return this.annotationManager.addPolyline(polylineOptions, this);
    }

    @Deprecated
    public final List<Polyline> addPolylines(List<PolylineOptions> list) {
        return this.annotationManager.addPolylines(list, this);
    }

    @Deprecated
    public final void updatePolyline(Polyline polyline) {
        this.annotationManager.updatePolyline(polyline);
    }

    @Deprecated
    public final Polygon addPolygon(PolygonOptions polygonOptions) {
        return this.annotationManager.addPolygon(polygonOptions, this);
    }

    @Deprecated
    public final List<Polygon> addPolygons(List<PolygonOptions> list) {
        return this.annotationManager.addPolygons(list, this);
    }

    @Deprecated
    public final void updatePolygon(Polygon polygon) {
        this.annotationManager.updatePolygon(polygon);
    }

    @Deprecated
    public final void removeMarker(Marker marker) {
        this.annotationManager.removeAnnotation((Annotation) marker);
    }

    @Deprecated
    public final void removePolyline(Polyline polyline) {
        this.annotationManager.removeAnnotation((Annotation) polyline);
    }

    @Deprecated
    public final void removePolygon(Polygon polygon) {
        this.annotationManager.removeAnnotation((Annotation) polygon);
    }

    @Deprecated
    public final void removeAnnotation(Annotation annotation) {
        this.annotationManager.removeAnnotation(annotation);
    }

    @Deprecated
    public final void removeAnnotation(long j) {
        this.annotationManager.removeAnnotation(j);
    }

    @Deprecated
    public final void removeAnnotations(List<? extends Annotation> list) {
        this.annotationManager.removeAnnotations(list);
    }

    @Deprecated
    public final void removeAnnotations() {
        this.annotationManager.removeAnnotations();
    }

    @Deprecated
    public final void clear() {
        this.annotationManager.removeAnnotations();
    }

    @Deprecated
    public final Annotation getAnnotation(long j) {
        return this.annotationManager.getAnnotation(j);
    }

    @Deprecated
    public final List<Annotation> getAnnotations() {
        return this.annotationManager.getAnnotations();
    }

    @Deprecated
    public final List<Marker> getMarkers() {
        return this.annotationManager.getMarkers();
    }

    @Deprecated
    public final List<Polygon> getPolygons() {
        return this.annotationManager.getPolygons();
    }

    @Deprecated
    public final List<Polyline> getPolylines() {
        return this.annotationManager.getPolylines();
    }

    @Deprecated
    public final void setOnMarkerClickListener(OnMarkerClickListener onMarkerClickListener) {
        this.annotationManager.setOnMarkerClickListener(onMarkerClickListener);
    }

    @Deprecated
    public final void setOnPolygonClickListener(OnPolygonClickListener onPolygonClickListener) {
        this.annotationManager.setOnPolygonClickListener(onPolygonClickListener);
    }

    @Deprecated
    public final void setOnPolylineClickListener(OnPolylineClickListener onPolylineClickListener) {
        this.annotationManager.setOnPolylineClickListener(onPolylineClickListener);
    }

    @Deprecated
    public final void selectMarker(Marker marker) {
        if (marker == null) {
            Logger.w(TAG, "marker was null, so just returning");
        } else {
            this.annotationManager.selectMarker(marker);
        }
    }

    @Deprecated
    public final void deselectMarkers() {
        this.annotationManager.deselectMarkers();
    }

    @Deprecated
    public final void deselectMarker(Marker marker) {
        this.annotationManager.deselectMarker(marker);
    }

    @Deprecated
    public final List<Marker> getSelectedMarkers() {
        return this.annotationManager.getSelectedMarkers();
    }

    @Deprecated
    public final void setInfoWindowAdapter(InfoWindowAdapter infoWindowAdapter) {
        this.annotationManager.getInfoWindowManager().setInfoWindowAdapter(infoWindowAdapter);
    }

    @Deprecated
    public final InfoWindowAdapter getInfoWindowAdapter() {
        return this.annotationManager.getInfoWindowManager().getInfoWindowAdapter();
    }

    @Deprecated
    public final void setAllowConcurrentMultipleOpenInfoWindows(boolean z) {
        this.annotationManager.getInfoWindowManager().setAllowConcurrentMultipleOpenInfoWindows(z);
    }

    @Deprecated
    public final boolean isAllowConcurrentMultipleOpenInfoWindows() {
        return this.annotationManager.getInfoWindowManager().isAllowConcurrentMultipleOpenInfoWindows();
    }

    public final void setLatLngBoundsForCameraTarget(LatLngBounds latLngBounds) {
        this.nativeMapView.setLatLngBounds(latLngBounds);
    }

    public final CameraPosition getCameraForLatLngBounds(LatLngBounds latLngBounds) {
        return getCameraForLatLngBounds(latLngBounds, new int[]{0, 0, 0, 0});
    }

    public final CameraPosition getCameraForLatLngBounds(LatLngBounds latLngBounds, int[] iArr) {
        return getCameraForLatLngBounds(latLngBounds, iArr, this.transform.getRawBearing(), this.transform.getTilt());
    }

    public final CameraPosition getCameraForLatLngBounds(LatLngBounds latLngBounds, double d, double d2) {
        return getCameraForLatLngBounds(latLngBounds, new int[]{0, 0, 0, 0}, d, d2);
    }

    public final CameraPosition getCameraForLatLngBounds(LatLngBounds latLngBounds, int[] iArr, double d, double d2) {
        return this.nativeMapView.getCameraForLatLngBounds(latLngBounds, iArr, d, d2);
    }

    public final CameraPosition getCameraForGeometry(Geometry geometry) {
        return getCameraForGeometry(geometry, new int[]{0, 0, 0, 0});
    }

    public final CameraPosition getCameraForGeometry(Geometry geometry, int[] iArr) {
        return getCameraForGeometry(geometry, iArr, this.transform.getBearing(), this.transform.getTilt());
    }

    public final CameraPosition getCameraForGeometry(Geometry geometry, double d, double d2) {
        return getCameraForGeometry(geometry, new int[]{0, 0, 0, 0}, d, d2);
    }

    public final CameraPosition getCameraForGeometry(Geometry geometry, int[] iArr, double d, double d2) {
        return this.nativeMapView.getCameraForGeometry(geometry, iArr, d, d2);
    }

    public final void setPadding(int i, int i2, int i3, int i4) {
        this.projection.setContentPadding(new int[]{i, i2, i3, i4});
        this.uiSettings.invalidate();
    }

    public final int[] getPadding() {
        return this.projection.getContentPadding();
    }

    public final void addOnCameraIdleListener(OnCameraIdleListener onCameraIdleListener) {
        this.cameraChangeDispatcher.addOnCameraIdleListener(onCameraIdleListener);
    }

    public final void removeOnCameraIdleListener(OnCameraIdleListener onCameraIdleListener) {
        this.cameraChangeDispatcher.removeOnCameraIdleListener(onCameraIdleListener);
    }

    public final void addOnCameraMoveCancelListener(OnCameraMoveCanceledListener onCameraMoveCanceledListener) {
        this.cameraChangeDispatcher.addOnCameraMoveCancelListener(onCameraMoveCanceledListener);
    }

    public final void removeOnCameraMoveCancelListener(OnCameraMoveCanceledListener onCameraMoveCanceledListener) {
        this.cameraChangeDispatcher.removeOnCameraMoveCancelListener(onCameraMoveCanceledListener);
    }

    public final void addOnCameraMoveStartedListener(OnCameraMoveStartedListener onCameraMoveStartedListener) {
        this.cameraChangeDispatcher.addOnCameraMoveStartedListener(onCameraMoveStartedListener);
    }

    public final void removeOnCameraMoveStartedListener(OnCameraMoveStartedListener onCameraMoveStartedListener) {
        this.cameraChangeDispatcher.removeOnCameraMoveStartedListener(onCameraMoveStartedListener);
    }

    public final void addOnCameraMoveListener(OnCameraMoveListener onCameraMoveListener) {
        this.cameraChangeDispatcher.addOnCameraMoveListener(onCameraMoveListener);
    }

    public final void removeOnCameraMoveListener(OnCameraMoveListener onCameraMoveListener) {
        this.cameraChangeDispatcher.removeOnCameraMoveListener(onCameraMoveListener);
    }

    public final void setOnFpsChangedListener(OnFpsChangedListener onFpsChangedListener2) {
        this.onFpsChangedListener = onFpsChangedListener2;
        this.nativeMapView.setOnFpsChangedListener(onFpsChangedListener2);
    }

    /* access modifiers changed from: package-private */
    public final OnFpsChangedListener getOnFpsChangedListener() {
        return this.onFpsChangedListener;
    }

    public final void addOnFlingListener(OnFlingListener onFlingListener) {
        this.onGesturesManagerInteractionListener.onAddFlingListener(onFlingListener);
    }

    public final void removeOnFlingListener(OnFlingListener onFlingListener) {
        this.onGesturesManagerInteractionListener.onRemoveFlingListener(onFlingListener);
    }

    public final void addOnMoveListener(OnMoveListener onMoveListener) {
        this.onGesturesManagerInteractionListener.onAddMoveListener(onMoveListener);
    }

    public final void removeOnMoveListener(OnMoveListener onMoveListener) {
        this.onGesturesManagerInteractionListener.onRemoveMoveListener(onMoveListener);
    }

    public final void addOnRotateListener(OnRotateListener onRotateListener) {
        this.onGesturesManagerInteractionListener.onAddRotateListener(onRotateListener);
    }

    public final void removeOnRotateListener(OnRotateListener onRotateListener) {
        this.onGesturesManagerInteractionListener.onRemoveRotateListener(onRotateListener);
    }

    public final void addOnScaleListener(OnScaleListener onScaleListener) {
        this.onGesturesManagerInteractionListener.onAddScaleListener(onScaleListener);
    }

    public final void removeOnScaleListener(OnScaleListener onScaleListener) {
        this.onGesturesManagerInteractionListener.onRemoveScaleListener(onScaleListener);
    }

    public final void addOnShoveListener(OnShoveListener onShoveListener) {
        this.onGesturesManagerInteractionListener.onAddShoveListener(onShoveListener);
    }

    public final void removeOnShoveListener(OnShoveListener onShoveListener) {
        this.onGesturesManagerInteractionListener.onRemoveShoveListener(onShoveListener);
    }

    public final void setGesturesManager(a aVar, boolean z, boolean z2) {
        this.onGesturesManagerInteractionListener.setGesturesManager(aVar, z, z2);
    }

    public final a getGesturesManager() {
        return this.onGesturesManagerInteractionListener.getGesturesManager();
    }

    public final void cancelAllVelocityAnimations() {
        this.onGesturesManagerInteractionListener.cancelAllVelocityAnimations();
    }

    public final void addOnMapClickListener(OnMapClickListener onMapClickListener) {
        this.onGesturesManagerInteractionListener.onAddMapClickListener(onMapClickListener);
    }

    public final void removeOnMapClickListener(OnMapClickListener onMapClickListener) {
        this.onGesturesManagerInteractionListener.onRemoveMapClickListener(onMapClickListener);
    }

    public final void addOnMapLongClickListener(OnMapLongClickListener onMapLongClickListener) {
        this.onGesturesManagerInteractionListener.onAddMapLongClickListener(onMapLongClickListener);
    }

    public final void removeOnMapLongClickListener(OnMapLongClickListener onMapLongClickListener) {
        this.onGesturesManagerInteractionListener.onRemoveMapLongClickListener(onMapLongClickListener);
    }

    public final void setOnInfoWindowClickListener(OnInfoWindowClickListener onInfoWindowClickListener) {
        this.annotationManager.getInfoWindowManager().setOnInfoWindowClickListener(onInfoWindowClickListener);
    }

    public final OnInfoWindowClickListener getOnInfoWindowClickListener() {
        return this.annotationManager.getInfoWindowManager().getOnInfoWindowClickListener();
    }

    public final void setOnInfoWindowLongClickListener(OnInfoWindowLongClickListener onInfoWindowLongClickListener) {
        this.annotationManager.getInfoWindowManager().setOnInfoWindowLongClickListener(onInfoWindowLongClickListener);
    }

    public final OnInfoWindowLongClickListener getOnInfoWindowLongClickListener() {
        return this.annotationManager.getInfoWindowManager().getOnInfoWindowLongClickListener();
    }

    public final void setOnInfoWindowCloseListener(OnInfoWindowCloseListener onInfoWindowCloseListener) {
        this.annotationManager.getInfoWindowManager().setOnInfoWindowCloseListener(onInfoWindowCloseListener);
    }

    public final OnInfoWindowCloseListener getOnInfoWindowCloseListener() {
        return this.annotationManager.getInfoWindowManager().getOnInfoWindowCloseListener();
    }

    public final void snapshot(SnapshotReadyCallback snapshotReadyCallback) {
        this.nativeMapView.addSnapshotCallback(snapshotReadyCallback);
    }

    public final List<Feature> queryRenderedFeatures(PointF pointF, String... strArr) {
        return this.nativeMapView.queryRenderedFeatures(pointF, strArr, (Expression) null);
    }

    public final List<Feature> queryRenderedFeatures(PointF pointF, Expression expression, String... strArr) {
        return this.nativeMapView.queryRenderedFeatures(pointF, strArr, expression);
    }

    public final List<Feature> queryRenderedFeatures(RectF rectF, String... strArr) {
        return this.nativeMapView.queryRenderedFeatures(rectF, strArr, (Expression) null);
    }

    public final List<Feature> queryRenderedFeatures(RectF rectF, Expression expression, String... strArr) {
        return this.nativeMapView.queryRenderedFeatures(rectF, strArr, expression);
    }

    /* access modifiers changed from: package-private */
    public final void injectLocationComponent(LocationComponent locationComponent2) {
        this.locationComponent = locationComponent2;
    }

    /* access modifiers changed from: package-private */
    public final void injectAnnotationManager(AnnotationManager annotationManager2) {
        this.annotationManager = annotationManager2.bind(this);
    }

    public final LocationComponent getLocationComponent() {
        return this.locationComponent;
    }

    /* access modifiers changed from: package-private */
    public final Transform getTransform() {
        return this.transform;
    }

    private void notifyDeveloperAnimationListeners() {
        for (OnDeveloperAnimationListener onDeveloperAnimationStarted : this.developerAnimationStartedListeners) {
            onDeveloperAnimationStarted.onDeveloperAnimationStarted();
        }
    }
}
