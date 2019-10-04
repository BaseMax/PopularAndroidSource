package com.mapbox.mapboxsdk.maps;

import android.graphics.PointF;
import android.os.Handler;
import com.mapbox.mapboxsdk.camera.CameraPosition;
import com.mapbox.mapboxsdk.camera.CameraUpdate;
import com.mapbox.mapboxsdk.camera.CameraUpdateFactory;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.log.Logger;
import com.mapbox.mapboxsdk.maps.MapView;
import com.mapbox.mapboxsdk.maps.MapboxMap;

public final class Transform implements MapView.OnCameraDidChangeListener {
    private static final String TAG = "Mbgl-Transform";
    private MapboxMap.CancelableCallback cameraCancelableCallback;
    /* access modifiers changed from: private */
    public CameraChangeDispatcher cameraChangeDispatcher;
    private CameraPosition cameraPosition;
    private final Handler handler = new Handler();
    /* access modifiers changed from: private */
    public final MapView mapView;
    private final MapView.OnCameraDidChangeListener moveByChangeListener = new MapView.OnCameraDidChangeListener() {
        public void onCameraDidChange(boolean z) {
            if (z) {
                Transform.this.cameraChangeDispatcher.onCameraIdle();
                Transform.this.mapView.removeOnCameraDidChangeListener(this);
            }
        }
    };
    private final NativeMap nativeMap;

    Transform(MapView mapView2, NativeMap nativeMap2, CameraChangeDispatcher cameraChangeDispatcher2) {
        this.mapView = mapView2;
        this.nativeMap = nativeMap2;
        this.cameraChangeDispatcher = cameraChangeDispatcher2;
    }

    /* access modifiers changed from: package-private */
    public final void initialise(MapboxMap mapboxMap, MapboxMapOptions mapboxMapOptions) {
        CameraPosition camera = mapboxMapOptions.getCamera();
        if (camera != null && !camera.equals(CameraPosition.DEFAULT)) {
            moveCamera(mapboxMap, CameraUpdateFactory.newCameraPosition(camera), null);
        }
        setMinZoom(mapboxMapOptions.getMinZoomPreference());
        setMaxZoom(mapboxMapOptions.getMaxZoomPreference());
    }

    public final CameraPosition getCameraPosition() {
        if (this.cameraPosition == null) {
            this.cameraPosition = invalidateCameraPosition();
        }
        return this.cameraPosition;
    }

    public final void onCameraDidChange(boolean z) {
        if (z) {
            invalidateCameraPosition();
            final MapboxMap.CancelableCallback cancelableCallback = this.cameraCancelableCallback;
            if (cancelableCallback != null) {
                this.cameraCancelableCallback = null;
                this.handler.post(new Runnable() {
                    public void run() {
                        cancelableCallback.onFinish();
                    }
                });
            }
            this.cameraChangeDispatcher.onCameraIdle();
            this.mapView.removeOnCameraDidChangeListener(this);
        }
    }

    public final void moveCamera(MapboxMap mapboxMap, CameraUpdate cameraUpdate, final MapboxMap.CancelableCallback cancelableCallback) {
        CameraPosition cameraPosition2 = cameraUpdate.getCameraPosition(mapboxMap);
        if (isValidCameraPosition(cameraPosition2)) {
            cancelTransitions();
            this.cameraChangeDispatcher.onCameraMoveStarted(3);
            this.nativeMap.jumpTo(cameraPosition2.target, cameraPosition2.zoom, cameraPosition2.tilt, cameraPosition2.bearing);
            this.cameraChangeDispatcher.onCameraIdle();
            invalidateCameraPosition();
            this.handler.post(new Runnable() {
                public void run() {
                    MapboxMap.CancelableCallback cancelableCallback = cancelableCallback;
                    if (cancelableCallback != null) {
                        cancelableCallback.onFinish();
                    }
                }
            });
        }
    }

    /* access modifiers changed from: package-private */
    public final void easeCamera(MapboxMap mapboxMap, CameraUpdate cameraUpdate, int i, boolean z, MapboxMap.CancelableCallback cancelableCallback) {
        MapboxMap mapboxMap2 = mapboxMap;
        MapboxMap.CancelableCallback cancelableCallback2 = cancelableCallback;
        CameraPosition cameraPosition2 = cameraUpdate.getCameraPosition(mapboxMap);
        if (isValidCameraPosition(cameraPosition2)) {
            cancelTransitions();
            this.cameraChangeDispatcher.onCameraMoveStarted(3);
            if (cancelableCallback2 != null) {
                this.cameraCancelableCallback = cancelableCallback2;
            }
            this.mapView.addOnCameraDidChangeListener(this);
            this.nativeMap.easeTo(cameraPosition2.target, cameraPosition2.zoom, cameraPosition2.bearing, cameraPosition2.tilt, (long) i, z);
        }
    }

    public final void animateCamera(MapboxMap mapboxMap, CameraUpdate cameraUpdate, int i, MapboxMap.CancelableCallback cancelableCallback) {
        CameraPosition cameraPosition2 = cameraUpdate.getCameraPosition(mapboxMap);
        if (isValidCameraPosition(cameraPosition2)) {
            cancelTransitions();
            this.cameraChangeDispatcher.onCameraMoveStarted(3);
            if (cancelableCallback != null) {
                this.cameraCancelableCallback = cancelableCallback;
            }
            this.mapView.addOnCameraDidChangeListener(this);
            this.nativeMap.flyTo(cameraPosition2.target, cameraPosition2.zoom, cameraPosition2.bearing, cameraPosition2.tilt, (long) i);
        }
    }

    private boolean isValidCameraPosition(CameraPosition cameraPosition2) {
        return cameraPosition2 != null && !cameraPosition2.equals(this.cameraPosition);
    }

    /* access modifiers changed from: package-private */
    public final CameraPosition invalidateCameraPosition() {
        NativeMap nativeMap2 = this.nativeMap;
        if (nativeMap2 != null) {
            CameraPosition cameraPosition2 = nativeMap2.getCameraPosition();
            CameraPosition cameraPosition3 = this.cameraPosition;
            if (cameraPosition3 != null && !cameraPosition3.equals(cameraPosition2)) {
                this.cameraChangeDispatcher.onCameraMove();
            }
            this.cameraPosition = cameraPosition2;
        }
        return this.cameraPosition;
    }

    /* access modifiers changed from: package-private */
    public final void cancelTransitions() {
        this.cameraChangeDispatcher.onCameraMoveCanceled();
        final MapboxMap.CancelableCallback cancelableCallback = this.cameraCancelableCallback;
        if (cancelableCallback != null) {
            this.cameraChangeDispatcher.onCameraIdle();
            this.cameraCancelableCallback = null;
            this.handler.post(new Runnable() {
                public void run() {
                    cancelableCallback.onCancel();
                }
            });
        }
        this.nativeMap.cancelTransitions();
        this.cameraChangeDispatcher.onCameraIdle();
    }

    /* access modifiers changed from: package-private */
    public final void resetNorth() {
        cancelTransitions();
        this.nativeMap.resetNorth();
    }

    /* access modifiers changed from: package-private */
    public final double getRawZoom() {
        return this.nativeMap.getZoom();
    }

    /* access modifiers changed from: package-private */
    public final void zoomBy(double d, PointF pointF) {
        setZoom(this.nativeMap.getZoom() + d, pointF);
    }

    /* access modifiers changed from: package-private */
    public final void setZoom(double d, PointF pointF) {
        this.nativeMap.setZoom(d, pointF, 0);
    }

    /* access modifiers changed from: package-private */
    public final double getBearing() {
        double d = -this.nativeMap.getBearing();
        while (d > 360.0d) {
            d -= 360.0d;
        }
        while (d < 0.0d) {
            d += 360.0d;
        }
        return d;
    }

    /* access modifiers changed from: package-private */
    public final double getRawBearing() {
        return this.nativeMap.getBearing();
    }

    /* access modifiers changed from: package-private */
    public final void setBearing(double d) {
        this.nativeMap.setBearing(d, 0);
    }

    /* access modifiers changed from: package-private */
    public final void setBearing(double d, float f, float f2) {
        this.nativeMap.setBearing(d, (double) f, (double) f2, 0);
    }

    /* access modifiers changed from: package-private */
    public final void setBearing(double d, float f, float f2, long j) {
        this.nativeMap.setBearing(d, (double) f, (double) f2, j);
    }

    /* access modifiers changed from: package-private */
    public final LatLng getLatLng() {
        return this.nativeMap.getLatLng();
    }

    /* access modifiers changed from: package-private */
    public final double getTilt() {
        return this.nativeMap.getPitch();
    }

    /* access modifiers changed from: package-private */
    public final void setTilt(Double d) {
        this.nativeMap.setPitch(d.doubleValue(), 0);
    }

    /* access modifiers changed from: package-private */
    public final LatLng getCenterCoordinate() {
        return this.nativeMap.getLatLng();
    }

    /* access modifiers changed from: package-private */
    public final void setCenterCoordinate(LatLng latLng) {
        this.nativeMap.setLatLng(latLng, 0);
    }

    /* access modifiers changed from: package-private */
    public final void setGestureInProgress(boolean z) {
        this.nativeMap.setGestureInProgress(z);
        if (!z) {
            invalidateCameraPosition();
        }
    }

    /* access modifiers changed from: package-private */
    public final void moveBy(double d, double d2, long j) {
        if (j > 0) {
            this.mapView.addOnCameraDidChangeListener(this.moveByChangeListener);
        }
        this.nativeMap.moveBy(d, d2, j);
    }

    /* access modifiers changed from: package-private */
    public final void setMinZoom(double d) {
        if (d < 0.0d || d > 25.5d) {
            Logger.e(TAG, String.format("Not setting minZoomPreference, value is in unsupported range: %s", new Object[]{Double.valueOf(d)}));
            return;
        }
        this.nativeMap.setMinZoom(d);
    }

    /* access modifiers changed from: package-private */
    public final double getMinZoom() {
        return this.nativeMap.getMinZoom();
    }

    /* access modifiers changed from: package-private */
    public final void setMaxZoom(double d) {
        if (d < 0.0d || d > 25.5d) {
            Logger.e(TAG, String.format("Not setting maxZoomPreference, value is in unsupported range: %s", new Object[]{Double.valueOf(d)}));
            return;
        }
        this.nativeMap.setMaxZoom(d);
    }

    /* access modifiers changed from: package-private */
    public final double getMaxZoom() {
        return this.nativeMap.getMaxZoom();
    }
}
