package com.mapbox.mapboxsdk.maps;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Handler;
import android.text.TextUtils;
import com.mapbox.geojson.Feature;
import com.mapbox.geojson.Geometry;
import com.mapbox.mapboxsdk.LibraryLoader;
import com.mapbox.mapboxsdk.MapStrictMode;
import com.mapbox.mapboxsdk.annotations.Marker;
import com.mapbox.mapboxsdk.annotations.Polygon;
import com.mapbox.mapboxsdk.annotations.Polyline;
import com.mapbox.mapboxsdk.camera.CameraPosition;
import com.mapbox.mapboxsdk.exceptions.CalledFromWorkerThreadException;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.geometry.LatLngBounds;
import com.mapbox.mapboxsdk.geometry.ProjectedMeters;
import com.mapbox.mapboxsdk.log.Logger;
import com.mapbox.mapboxsdk.maps.MapboxMap;
import com.mapbox.mapboxsdk.maps.renderer.MapRenderer;
import com.mapbox.mapboxsdk.storage.FileSource;
import com.mapbox.mapboxsdk.style.expressions.Expression;
import com.mapbox.mapboxsdk.style.layers.CannotAddLayerException;
import com.mapbox.mapboxsdk.style.layers.Layer;
import com.mapbox.mapboxsdk.style.layers.TransitionOptions;
import com.mapbox.mapboxsdk.style.light.Light;
import com.mapbox.mapboxsdk.style.sources.CannotAddSourceException;
import com.mapbox.mapboxsdk.style.sources.Source;
import com.mapbox.mapboxsdk.utils.BitmapUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

final class NativeMapView implements NativeMap {
    private static final String TAG = "Mbgl-NativeMapView";
    private boolean destroyed;
    private final FileSource fileSource;
    /* access modifiers changed from: private */
    public final MapRenderer mapRenderer;
    private long nativePtr;
    private final float pixelRatio;
    private MapboxMap.SnapshotReadyCallback snapshotReadyCallback;
    private StateCallback stateCallback;
    private final Thread thread;
    private ViewCallback viewCallback;

    interface StateCallback extends StyleCallback {
        void onCameraDidChange(boolean z);

        void onCameraIsChanging();

        void onCameraWillChange(boolean z);

        boolean onCanRemoveUnusedStyleImage(String str);

        void onDidBecomeIdle();

        void onDidFailLoadingMap(String str);

        void onDidFinishLoadingMap();

        void onDidFinishRenderingFrame(boolean z);

        void onDidFinishRenderingMap(boolean z);

        void onSourceChanged(String str);

        void onStyleImageMissing(String str);

        void onWillStartRenderingFrame();

        void onWillStartRenderingMap();
    }

    interface StyleCallback {
        void onDidFinishLoadingStyle();

        void onWillStartLoadingMap();
    }

    public interface ViewCallback {
        Bitmap getViewContent();
    }

    private native void nativeAddAnnotationIcon(String str, int i, int i2, float f, byte[] bArr);

    private native void nativeAddImage(String str, Bitmap bitmap, float f, boolean z);

    private native void nativeAddImages(Image[] imageArr);

    private native void nativeAddLayer(long j, String str) throws CannotAddLayerException;

    private native void nativeAddLayerAbove(long j, String str) throws CannotAddLayerException;

    private native void nativeAddLayerAt(long j, int i) throws CannotAddLayerException;

    private native long[] nativeAddMarkers(Marker[] markerArr);

    private native long[] nativeAddPolygons(Polygon[] polygonArr);

    private native long[] nativeAddPolylines(Polyline[] polylineArr);

    private native void nativeAddSource(Source source, long j) throws CannotAddSourceException;

    private native void nativeCancelTransitions();

    private native void nativeCycleDebugOptions();

    private native void nativeDestroy();

    private native void nativeEaseTo(double d, double d2, double d3, long j, double d4, double d5, boolean z);

    private native void nativeFlyTo(double d, double d2, double d3, long j, double d4, double d5);

    private native double nativeGetBearing();

    private native CameraPosition nativeGetCameraForGeometry(Geometry geometry, double d, double d2, double d3, double d4, double d5, double d6);

    private native CameraPosition nativeGetCameraForLatLngBounds(LatLngBounds latLngBounds, double d, double d2, double d3, double d4, double d5, double d6);

    private native CameraPosition nativeGetCameraPosition();

    private native float[] nativeGetContentPadding();

    private native boolean nativeGetDebug();

    private native Bitmap nativeGetImage(String str);

    private native LatLng nativeGetLatLng();

    private native Layer nativeGetLayer(String str);

    private native Layer[] nativeGetLayers();

    private native Light nativeGetLight();

    private native double nativeGetMaxZoom();

    private native double nativeGetMetersPerPixelAtLatitude(double d, double d2);

    private native double nativeGetMinZoom();

    private native double nativeGetPitch();

    private native boolean nativeGetPrefetchTiles();

    private native Source nativeGetSource(String str);

    private native Source[] nativeGetSources();

    private native String nativeGetStyleJson();

    private native String nativeGetStyleUrl();

    private native double nativeGetTopOffsetPixelsForAnnotationSymbol(String str);

    private native long nativeGetTransitionDelay();

    private native long nativeGetTransitionDuration();

    private native TransitionOptions nativeGetTransitionOptions();

    private native double nativeGetZoom();

    private native void nativeInitialize(NativeMapView nativeMapView, FileSource fileSource2, MapRenderer mapRenderer2, float f, boolean z);

    private native boolean nativeIsFullyLoaded();

    private native void nativeJumpTo(double d, double d2, double d3, double d4, double d5);

    private native LatLng nativeLatLngForPixel(float f, float f2);

    private native LatLng nativeLatLngForProjectedMeters(double d, double d2);

    private native void nativeMoveBy(double d, double d2, long j);

    private native void nativeOnLowMemory();

    private native PointF nativePixelForLatLng(double d, double d2);

    private native ProjectedMeters nativeProjectedMetersForLatLng(double d, double d2);

    private native long[] nativeQueryPointAnnotations(RectF rectF);

    private native Feature[] nativeQueryRenderedFeaturesForBox(float f, float f2, float f3, float f4, String[] strArr, Object[] objArr);

    private native Feature[] nativeQueryRenderedFeaturesForPoint(float f, float f2, String[] strArr, Object[] objArr);

    private native long[] nativeQueryShapeAnnotations(RectF rectF);

    private native void nativeRemoveAnnotationIcon(String str);

    private native void nativeRemoveAnnotations(long[] jArr);

    private native void nativeRemoveImage(String str);

    private native boolean nativeRemoveLayer(long j);

    private native boolean nativeRemoveLayerAt(int i);

    private native boolean nativeRemoveSource(Source source, long j);

    private native void nativeResetNorth();

    private native void nativeResetPosition();

    private native void nativeResetZoom();

    private native void nativeResizeView(int i, int i2);

    private native void nativeRotateBy(double d, double d2, double d3, double d4, long j);

    private native void nativeSetBearing(double d, long j);

    private native void nativeSetBearingXY(double d, double d2, double d3, long j);

    private native void nativeSetContentPadding(float f, float f2, float f3, float f4);

    private native void nativeSetDebug(boolean z);

    private native void nativeSetGestureInProgress(boolean z);

    private native void nativeSetLatLng(double d, double d2, long j);

    private native void nativeSetLatLngBounds(LatLngBounds latLngBounds);

    private native void nativeSetMaxZoom(double d);

    private native void nativeSetMinZoom(double d);

    private native void nativeSetPitch(double d, long j);

    private native void nativeSetPrefetchTiles(boolean z);

    private native void nativeSetReachability(boolean z);

    private native void nativeSetStyleJson(String str);

    private native void nativeSetStyleUrl(String str);

    private native void nativeSetTransitionDelay(long j);

    private native void nativeSetTransitionDuration(long j);

    private native void nativeSetTransitionOptions(TransitionOptions transitionOptions);

    private native void nativeSetVisibleCoordinateBounds(LatLng[] latLngArr, RectF rectF, double d, long j);

    private native void nativeSetZoom(double d, double d2, double d3, long j);

    private native void nativeTakeSnapshot();

    private native void nativeUpdateMarker(long j, double d, double d2, String str);

    private native void nativeUpdatePolygon(long j, Polygon polygon);

    private native void nativeUpdatePolyline(long j, Polyline polyline);

    static {
        LibraryLoader.load();
    }

    public NativeMapView(Context context, boolean z, ViewCallback viewCallback2, StateCallback stateCallback2, MapRenderer mapRenderer2) {
        this(context, context.getResources().getDisplayMetrics().density, z, viewCallback2, stateCallback2, mapRenderer2);
    }

    public NativeMapView(Context context, float f, boolean z, ViewCallback viewCallback2, StateCallback stateCallback2, MapRenderer mapRenderer2) {
        this.destroyed = false;
        this.nativePtr = 0;
        this.mapRenderer = mapRenderer2;
        this.viewCallback = viewCallback2;
        this.fileSource = FileSource.getInstance(context);
        this.pixelRatio = f;
        this.thread = Thread.currentThread();
        this.stateCallback = stateCallback2;
        nativeInitialize(this, this.fileSource, mapRenderer2, f, z);
    }

    private boolean checkState(String str) {
        if (this.thread == Thread.currentThread()) {
            if (this.destroyed && !TextUtils.isEmpty(str)) {
                String format = String.format("You're calling `%s` after the `MapView` was destroyed, were you invoking it after `onDestroy()`?", new Object[]{str});
                Logger.e(TAG, format);
                MapStrictMode.strictModeViolation(format);
            }
            return this.destroyed;
        }
        throw new CalledFromWorkerThreadException(String.format("Map interactions should happen on the UI thread. Method invoked from wrong thread is %s.", new Object[]{str}));
    }

    public final void destroy() {
        this.destroyed = true;
        this.viewCallback = null;
        nativeDestroy();
    }

    public final void resizeView(int i, int i2) {
        if (!checkState("resizeView")) {
            int ceil = (int) Math.ceil((double) (((float) i) / this.pixelRatio));
            int ceil2 = (int) Math.ceil((double) (((float) i2) / this.pixelRatio));
            if (ceil < 0) {
                throw new IllegalArgumentException("width cannot be negative.");
            } else if (ceil2 >= 0) {
                if (ceil > 65535) {
                    Logger.e(TAG, String.format("Device returned an out of range width size, capping value at 65535 instead of %s", new Object[]{Integer.valueOf(ceil)}));
                    ceil = 65535;
                }
                if (ceil2 > 65535) {
                    Logger.e(TAG, String.format("Device returned an out of range height size, capping value at 65535 instead of %s", new Object[]{Integer.valueOf(ceil2)}));
                    ceil2 = 65535;
                }
                nativeResizeView(ceil, ceil2);
            } else {
                throw new IllegalArgumentException("height cannot be negative.");
            }
        }
    }

    public final void setStyleUri(String str) {
        if (!checkState("setStyleUri")) {
            nativeSetStyleUrl(str);
        }
    }

    public final String getStyleUri() {
        if (checkState("getStyleUri")) {
            return "";
        }
        return nativeGetStyleUrl();
    }

    public final void setStyleJson(String str) {
        if (!checkState("setStyleJson")) {
            nativeSetStyleJson(str);
        }
    }

    public final String getStyleJson() {
        if (checkState("getStyleJson")) {
            return "";
        }
        return nativeGetStyleJson();
    }

    public final void setLatLngBounds(LatLngBounds latLngBounds) {
        if (!checkState("setLatLngBounds")) {
            nativeSetLatLngBounds(latLngBounds);
        }
    }

    public final void cancelTransitions() {
        if (!checkState("cancelTransitions")) {
            nativeCancelTransitions();
        }
    }

    public final void setGestureInProgress(boolean z) {
        if (!checkState("setGestureInProgress")) {
            nativeSetGestureInProgress(z);
        }
    }

    public final void moveBy(double d, double d2, long j) {
        if (!checkState("moveBy")) {
            float f = this.pixelRatio;
            double d3 = (double) f;
            Double.isNaN(d3);
            double d4 = (double) f;
            Double.isNaN(d4);
            nativeMoveBy(d / d3, d2 / d4, j);
        }
    }

    public final void setLatLng(LatLng latLng, long j) {
        if (!checkState("setLatLng")) {
            nativeSetLatLng(latLng.getLatitude(), latLng.getLongitude(), j);
        }
    }

    public final LatLng getLatLng() {
        if (checkState("")) {
            return new LatLng();
        }
        return nativeGetLatLng();
    }

    public final CameraPosition getCameraForLatLngBounds(LatLngBounds latLngBounds, int[] iArr, double d, double d2) {
        if (checkState("getCameraForLatLngBounds")) {
            return null;
        }
        float f = this.pixelRatio;
        return nativeGetCameraForLatLngBounds(latLngBounds, (double) (((float) iArr[1]) / f), (double) (((float) iArr[0]) / f), (double) (((float) iArr[3]) / f), (double) (((float) iArr[2]) / f), d, d2);
    }

    public final CameraPosition getCameraForGeometry(Geometry geometry, int[] iArr, double d, double d2) {
        if (checkState("getCameraForGeometry")) {
            return null;
        }
        float f = this.pixelRatio;
        return nativeGetCameraForGeometry(geometry, (double) (((float) iArr[1]) / f), (double) (((float) iArr[0]) / f), (double) (((float) iArr[3]) / f), (double) (((float) iArr[2]) / f), d, d2);
    }

    public final void resetPosition() {
        if (!checkState("resetPosition")) {
            nativeResetPosition();
        }
    }

    public final double getPitch() {
        if (checkState("getPitch")) {
            return 0.0d;
        }
        return nativeGetPitch();
    }

    public final void setPitch(double d, long j) {
        if (!checkState("setPitch")) {
            nativeSetPitch(d, j);
        }
    }

    public final void setZoom(double d, PointF pointF, long j) {
        if (!checkState("setZoom")) {
            nativeSetZoom(d, (double) (pointF.x / this.pixelRatio), (double) (pointF.y / this.pixelRatio), j);
        }
    }

    public final double getZoom() {
        if (checkState("getZoom")) {
            return 0.0d;
        }
        return nativeGetZoom();
    }

    public final void resetZoom() {
        if (!checkState("resetZoom")) {
            nativeResetZoom();
        }
    }

    public final void setMinZoom(double d) {
        if (!checkState("setMinZoom")) {
            nativeSetMinZoom(d);
        }
    }

    public final double getMinZoom() {
        if (checkState("getMinZoom")) {
            return 0.0d;
        }
        return nativeGetMinZoom();
    }

    public final void setMaxZoom(double d) {
        if (!checkState("setMaxZoom")) {
            nativeSetMaxZoom(d);
        }
    }

    public final double getMaxZoom() {
        if (checkState("getMaxZoom")) {
            return 0.0d;
        }
        return nativeGetMaxZoom();
    }

    public final void rotateBy(double d, double d2, double d3, double d4, long j) {
        if (!checkState("rotateBy")) {
            float f = this.pixelRatio;
            double d5 = (double) f;
            Double.isNaN(d5);
            double d6 = (double) f;
            Double.isNaN(d6);
            nativeRotateBy(d / d5, d2 / d6, d3, d4, j);
        }
    }

    public final void setContentPadding(float[] fArr) {
        if (!checkState("setContentPadding")) {
            float f = fArr[1];
            float f2 = this.pixelRatio;
            nativeSetContentPadding(f / f2, fArr[0] / f2, fArr[3] / f2, fArr[2] / f2);
        }
    }

    public final float[] getContentPadding() {
        if (checkState("getContentPadding")) {
            return new float[]{0.0f, 0.0f, 0.0f, 0.0f};
        }
        float[] nativeGetContentPadding = nativeGetContentPadding();
        float f = nativeGetContentPadding[1];
        float f2 = this.pixelRatio;
        return new float[]{f * f2, nativeGetContentPadding[0] * f2, nativeGetContentPadding[3] * f2, nativeGetContentPadding[2] * f2};
    }

    public final void setBearing(double d, long j) {
        if (!checkState("setBearing")) {
            nativeSetBearing(d, j);
        }
    }

    public final void setBearing(double d, double d2, double d3, long j) {
        if (!checkState("setBearing")) {
            float f = this.pixelRatio;
            double d4 = (double) f;
            Double.isNaN(d4);
            double d5 = (double) f;
            Double.isNaN(d5);
            nativeSetBearingXY(d, d2 / d4, d3 / d5, j);
        }
    }

    public final double getBearing() {
        if (checkState("getBearing")) {
            return 0.0d;
        }
        return nativeGetBearing();
    }

    public final void resetNorth() {
        if (!checkState("resetNorth")) {
            nativeResetNorth();
        }
    }

    public final long addMarker(Marker marker) {
        if (checkState("addMarker")) {
            return 0;
        }
        return nativeAddMarkers(new Marker[]{marker})[0];
    }

    public final long[] addMarkers(List<Marker> list) {
        if (checkState("addMarkers")) {
            return new long[0];
        }
        return nativeAddMarkers((Marker[]) list.toArray(new Marker[list.size()]));
    }

    public final long addPolyline(Polyline polyline) {
        if (checkState("addPolyline")) {
            return 0;
        }
        return nativeAddPolylines(new Polyline[]{polyline})[0];
    }

    public final long[] addPolylines(List<Polyline> list) {
        if (checkState("addPolylines")) {
            return new long[0];
        }
        return nativeAddPolylines((Polyline[]) list.toArray(new Polyline[list.size()]));
    }

    public final long addPolygon(Polygon polygon) {
        if (checkState("addPolygon")) {
            return 0;
        }
        return nativeAddPolygons(new Polygon[]{polygon})[0];
    }

    public final long[] addPolygons(List<Polygon> list) {
        if (checkState("addPolygons")) {
            return new long[0];
        }
        return nativeAddPolygons((Polygon[]) list.toArray(new Polygon[list.size()]));
    }

    public final void updateMarker(Marker marker) {
        if (!checkState("updateMarker")) {
            LatLng position = marker.getPosition();
            nativeUpdateMarker(marker.getId(), position.getLatitude(), position.getLongitude(), marker.getIcon().getId());
        }
    }

    public final void updatePolygon(Polygon polygon) {
        if (!checkState("updatePolygon")) {
            nativeUpdatePolygon(polygon.getId(), polygon);
        }
    }

    public final void updatePolyline(Polyline polyline) {
        if (!checkState("updatePolyline")) {
            nativeUpdatePolyline(polyline.getId(), polyline);
        }
    }

    public final void removeAnnotation(long j) {
        if (!checkState("removeAnnotation")) {
            removeAnnotations(new long[]{j});
        }
    }

    public final void removeAnnotations(long[] jArr) {
        if (!checkState("removeAnnotations")) {
            nativeRemoveAnnotations(jArr);
        }
    }

    public final long[] queryPointAnnotations(RectF rectF) {
        if (checkState("queryPointAnnotations")) {
            return new long[0];
        }
        return nativeQueryPointAnnotations(rectF);
    }

    public final long[] queryShapeAnnotations(RectF rectF) {
        if (checkState("queryShapeAnnotations")) {
            return new long[0];
        }
        return nativeQueryShapeAnnotations(rectF);
    }

    public final void addAnnotationIcon(String str, int i, int i2, float f, byte[] bArr) {
        if (!checkState("addAnnotationIcon")) {
            nativeAddAnnotationIcon(str, i, i2, f, bArr);
        }
    }

    public final void removeAnnotationIcon(String str) {
        if (!checkState("removeAnnotationIcon")) {
            nativeRemoveAnnotationIcon(str);
        }
    }

    public final void setVisibleCoordinateBounds(LatLng[] latLngArr, RectF rectF, double d, long j) {
        if (!checkState("setVisibleCoordinateBounds")) {
            nativeSetVisibleCoordinateBounds(latLngArr, rectF, d, j);
        }
    }

    public final void onLowMemory() {
        if (!checkState("onLowMemory")) {
            nativeOnLowMemory();
        }
    }

    public final void setDebug(boolean z) {
        if (!checkState("setDebug")) {
            nativeSetDebug(z);
        }
    }

    public final void cycleDebugOptions() {
        if (!checkState("cycleDebugOptions")) {
            nativeCycleDebugOptions();
        }
    }

    public final boolean getDebug() {
        if (checkState("getDebug")) {
            return false;
        }
        return nativeGetDebug();
    }

    public final boolean isFullyLoaded() {
        if (checkState("isFullyLoaded")) {
            return false;
        }
        return nativeIsFullyLoaded();
    }

    public final void setReachability(boolean z) {
        if (!checkState("setReachability")) {
            nativeSetReachability(z);
        }
    }

    public final double getMetersPerPixelAtLatitude(double d) {
        if (checkState("getMetersPerPixelAtLatitude")) {
            return 0.0d;
        }
        double nativeGetMetersPerPixelAtLatitude = nativeGetMetersPerPixelAtLatitude(d, getZoom());
        double d2 = (double) this.pixelRatio;
        Double.isNaN(d2);
        return nativeGetMetersPerPixelAtLatitude / d2;
    }

    public final ProjectedMeters projectedMetersForLatLng(LatLng latLng) {
        if (checkState("projectedMetersForLatLng")) {
            return null;
        }
        return nativeProjectedMetersForLatLng(latLng.getLatitude(), latLng.getLongitude());
    }

    public final LatLng latLngForProjectedMeters(ProjectedMeters projectedMeters) {
        if (checkState("latLngForProjectedMeters")) {
            return new LatLng();
        }
        return nativeLatLngForProjectedMeters(projectedMeters.getNorthing(), projectedMeters.getEasting());
    }

    public final PointF pixelForLatLng(LatLng latLng) {
        if (checkState("pixelForLatLng")) {
            return new PointF();
        }
        PointF nativePixelForLatLng = nativePixelForLatLng(latLng.getLatitude(), latLng.getLongitude());
        nativePixelForLatLng.set(nativePixelForLatLng.x * this.pixelRatio, nativePixelForLatLng.y * this.pixelRatio);
        return nativePixelForLatLng;
    }

    public final LatLng latLngForPixel(PointF pointF) {
        if (checkState("latLngForPixel")) {
            return new LatLng();
        }
        return nativeLatLngForPixel(pointF.x / this.pixelRatio, pointF.y / this.pixelRatio);
    }

    public final double getTopOffsetPixelsForAnnotationSymbol(String str) {
        if (checkState("getTopOffsetPixelsForAnnotationSymbol")) {
            return 0.0d;
        }
        return nativeGetTopOffsetPixelsForAnnotationSymbol(str);
    }

    public final void jumpTo(LatLng latLng, double d, double d2, double d3) {
        if (!checkState("jumpTo")) {
            nativeJumpTo(d3, latLng.getLatitude(), latLng.getLongitude(), d2, d);
        }
    }

    public final void easeTo(LatLng latLng, double d, double d2, double d3, long j, boolean z) {
        if (!checkState("easeTo")) {
            nativeEaseTo(d2, latLng.getLatitude(), latLng.getLongitude(), j, d3, d, z);
        }
    }

    public final void flyTo(LatLng latLng, double d, double d2, double d3, long j) {
        if (!checkState("flyTo")) {
            nativeFlyTo(d2, latLng.getLatitude(), latLng.getLongitude(), j, d3, d);
        }
    }

    public final CameraPosition getCameraPosition() {
        if (checkState("getCameraValues")) {
            return new CameraPosition.Builder().build();
        }
        return nativeGetCameraPosition();
    }

    public final void setPrefetchTiles(boolean z) {
        if (!checkState("setPrefetchTiles")) {
            nativeSetPrefetchTiles(z);
        }
    }

    public final boolean getPrefetchTiles() {
        if (checkState("getPrefetchTiles")) {
            return false;
        }
        return nativeGetPrefetchTiles();
    }

    public final void setTransitionOptions(TransitionOptions transitionOptions) {
        nativeSetTransitionOptions(transitionOptions);
    }

    public final TransitionOptions getTransitionOptions() {
        return nativeGetTransitionOptions();
    }

    public final List<Layer> getLayers() {
        if (checkState("getLayers")) {
            return new ArrayList();
        }
        return Arrays.asList(nativeGetLayers());
    }

    public final Layer getLayer(String str) {
        if (checkState("getLayer")) {
            return null;
        }
        return nativeGetLayer(str);
    }

    public final void addLayer(Layer layer) {
        if (!checkState("addLayer")) {
            nativeAddLayer(layer.getNativePtr(), null);
        }
    }

    public final void addLayerBelow(Layer layer, String str) {
        if (!checkState("addLayerBelow")) {
            nativeAddLayer(layer.getNativePtr(), str);
        }
    }

    public final void addLayerAbove(Layer layer, String str) {
        if (!checkState("addLayerAbove")) {
            nativeAddLayerAbove(layer.getNativePtr(), str);
        }
    }

    public final void addLayerAt(Layer layer, int i) {
        if (!checkState("addLayerAt")) {
            nativeAddLayerAt(layer.getNativePtr(), i);
        }
    }

    public final boolean removeLayer(String str) {
        if (checkState("removeLayer")) {
            return false;
        }
        Layer layer = getLayer(str);
        if (layer != null) {
            return removeLayer(layer);
        }
        return false;
    }

    public final boolean removeLayer(Layer layer) {
        if (checkState("removeLayer")) {
            return false;
        }
        return nativeRemoveLayer(layer.getNativePtr());
    }

    public final boolean removeLayerAt(int i) {
        if (checkState("removeLayerAt")) {
            return false;
        }
        return nativeRemoveLayerAt(i);
    }

    public final List<Source> getSources() {
        if (checkState("getSources")) {
            return new ArrayList();
        }
        return Arrays.asList(nativeGetSources());
    }

    public final Source getSource(String str) {
        if (checkState("getSource")) {
            return null;
        }
        return nativeGetSource(str);
    }

    public final void addSource(Source source) {
        if (!checkState("addSource")) {
            nativeAddSource(source, source.getNativePtr());
        }
    }

    public final boolean removeSource(String str) {
        if (checkState("removeSource")) {
            return false;
        }
        Source source = getSource(str);
        if (source != null) {
            return removeSource(source);
        }
        return false;
    }

    public final boolean removeSource(Source source) {
        if (checkState("removeSource")) {
            return false;
        }
        return nativeRemoveSource(source, source.getNativePtr());
    }

    public final void addImages(Image[] imageArr) {
        if (!checkState("addImages")) {
            nativeAddImages(imageArr);
        }
    }

    public final void removeImage(String str) {
        if (!checkState("removeImage")) {
            nativeRemoveImage(str);
        }
    }

    public final Bitmap getImage(String str) {
        if (checkState("getImage")) {
            return null;
        }
        return nativeGetImage(str);
    }

    public final List<Feature> queryRenderedFeatures(PointF pointF, String[] strArr, Expression expression) {
        if (checkState("queryRenderedFeatures")) {
            return new ArrayList();
        }
        Feature[] nativeQueryRenderedFeaturesForPoint = nativeQueryRenderedFeaturesForPoint(pointF.x / this.pixelRatio, pointF.y / this.pixelRatio, strArr, expression != null ? expression.toArray() : null);
        return nativeQueryRenderedFeaturesForPoint != null ? Arrays.asList(nativeQueryRenderedFeaturesForPoint) : new ArrayList();
    }

    public final List<Feature> queryRenderedFeatures(RectF rectF, String[] strArr, Expression expression) {
        Object[] objArr;
        if (checkState("queryRenderedFeatures")) {
            return new ArrayList();
        }
        float f = rectF.left / this.pixelRatio;
        float f2 = rectF.top / this.pixelRatio;
        float f3 = rectF.right / this.pixelRatio;
        float f4 = rectF.bottom / this.pixelRatio;
        if (expression != null) {
            objArr = expression.toArray();
        } else {
            objArr = null;
        }
        Feature[] nativeQueryRenderedFeaturesForBox = nativeQueryRenderedFeaturesForBox(f, f2, f3, f4, strArr, objArr);
        return nativeQueryRenderedFeaturesForBox != null ? Arrays.asList(nativeQueryRenderedFeaturesForBox) : new ArrayList();
    }

    public final void setApiBaseUrl(String str) {
        if (!checkState("setApiBaseUrl")) {
            this.fileSource.setApiBaseUrl(str);
        }
    }

    public final Light getLight() {
        if (checkState("getLight")) {
            return null;
        }
        return nativeGetLight();
    }

    public final float getPixelRatio() {
        return this.pixelRatio;
    }

    public final RectF getDensityDependantRectangle(RectF rectF) {
        return new RectF(rectF.left / this.pixelRatio, rectF.top / this.pixelRatio, rectF.right / this.pixelRatio, rectF.bottom / this.pixelRatio);
    }

    private void onCameraWillChange(boolean z) {
        StateCallback stateCallback2 = this.stateCallback;
        if (stateCallback2 != null) {
            stateCallback2.onCameraWillChange(z);
        }
    }

    private void onCameraIsChanging() {
        StateCallback stateCallback2 = this.stateCallback;
        if (stateCallback2 != null) {
            stateCallback2.onCameraIsChanging();
        }
    }

    private void onCameraDidChange(boolean z) {
        StateCallback stateCallback2 = this.stateCallback;
        if (stateCallback2 != null) {
            stateCallback2.onCameraDidChange(z);
        }
    }

    private void onWillStartLoadingMap() {
        StateCallback stateCallback2 = this.stateCallback;
        if (stateCallback2 != null) {
            stateCallback2.onWillStartLoadingMap();
        }
    }

    private void onDidFinishLoadingMap() {
        StateCallback stateCallback2 = this.stateCallback;
        if (stateCallback2 != null) {
            stateCallback2.onDidFinishLoadingMap();
        }
    }

    private void onDidFailLoadingMap(String str) {
        StateCallback stateCallback2 = this.stateCallback;
        if (stateCallback2 != null) {
            stateCallback2.onDidFailLoadingMap(str);
        }
    }

    private void onWillStartRenderingFrame() {
        StateCallback stateCallback2 = this.stateCallback;
        if (stateCallback2 != null) {
            stateCallback2.onWillStartRenderingFrame();
        }
    }

    private void onDidFinishRenderingFrame(boolean z) {
        StateCallback stateCallback2 = this.stateCallback;
        if (stateCallback2 != null) {
            stateCallback2.onDidFinishRenderingFrame(z);
        }
    }

    private void onWillStartRenderingMap() {
        StateCallback stateCallback2 = this.stateCallback;
        if (stateCallback2 != null) {
            stateCallback2.onWillStartRenderingMap();
        }
    }

    private void onDidFinishRenderingMap(boolean z) {
        StateCallback stateCallback2 = this.stateCallback;
        if (stateCallback2 != null) {
            stateCallback2.onDidFinishRenderingMap(z);
        }
    }

    private void onDidBecomeIdle() {
        StateCallback stateCallback2 = this.stateCallback;
        if (stateCallback2 != null) {
            stateCallback2.onDidBecomeIdle();
        }
    }

    private void onDidFinishLoadingStyle() {
        StateCallback stateCallback2 = this.stateCallback;
        if (stateCallback2 != null) {
            stateCallback2.onDidFinishLoadingStyle();
        }
    }

    private void onSourceChanged(String str) {
        StateCallback stateCallback2 = this.stateCallback;
        if (stateCallback2 != null) {
            stateCallback2.onSourceChanged(str);
        }
    }

    private void onStyleImageMissing(String str) {
        StateCallback stateCallback2 = this.stateCallback;
        if (stateCallback2 != null) {
            stateCallback2.onStyleImageMissing(str);
        }
    }

    private boolean onCanRemoveUnusedStyleImage(String str) {
        StateCallback stateCallback2 = this.stateCallback;
        if (stateCallback2 != null) {
            return stateCallback2.onCanRemoveUnusedStyleImage(str);
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public final void onSnapshotReady(Bitmap bitmap) {
        if (!checkState("OnSnapshotReady")) {
            try {
                if (!(this.snapshotReadyCallback == null || bitmap == null)) {
                    if (this.viewCallback == null) {
                        this.snapshotReadyCallback.onSnapshotReady(bitmap);
                        return;
                    }
                    Bitmap viewContent = this.viewCallback.getViewContent();
                    if (viewContent != null) {
                        this.snapshotReadyCallback.onSnapshotReady(BitmapUtils.mergeBitmap(bitmap, viewContent));
                    }
                }
            } catch (Throwable th) {
                Logger.e(TAG, "Exception in onSnapshotReady", th);
                throw th;
            }
        }
    }

    public final long getNativePtr() {
        return this.nativePtr;
    }

    public final void addSnapshotCallback(MapboxMap.SnapshotReadyCallback snapshotReadyCallback2) {
        if (!checkState("addSnapshotCallback")) {
            this.snapshotReadyCallback = snapshotReadyCallback2;
            nativeTakeSnapshot();
        }
    }

    public final void setOnFpsChangedListener(final MapboxMap.OnFpsChangedListener onFpsChangedListener) {
        final Handler handler = new Handler();
        this.mapRenderer.queueEvent(new Runnable() {
            public void run() {
                if (onFpsChangedListener != null) {
                    NativeMapView.this.mapRenderer.setOnFpsChangedListener(new MapboxMap.OnFpsChangedListener() {
                        public void onFpsChanged(final double d) {
                            handler.post(new Runnable() {
                                public void run() {
                                    onFpsChangedListener.onFpsChanged(d);
                                }
                            });
                        }
                    });
                } else {
                    NativeMapView.this.mapRenderer.setOnFpsChangedListener(null);
                }
            }
        });
    }

    public final boolean isDestroyed() {
        return this.destroyed;
    }
}
