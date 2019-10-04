package com.mapbox.mapboxsdk.location;

import android.content.Context;
import android.location.Location;
import android.view.MotionEvent;
import com.mapbox.android.b.a;
import com.mapbox.android.b.d;
import com.mapbox.android.b.l;
import com.mapbox.mapboxsdk.camera.CameraPosition;
import com.mapbox.mapboxsdk.camera.CameraUpdate;
import com.mapbox.mapboxsdk.camera.CameraUpdateFactory;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.location.MapboxAnimator;
import com.mapbox.mapboxsdk.maps.MapboxMap;
import com.mapbox.mapboxsdk.maps.Transform;
import java.util.HashSet;
import java.util.Set;

final class LocationCameraController {
    private boolean adjustFocalPoint;
    /* access modifiers changed from: private */
    public int cameraMode;
    private final MapboxAnimator.AnimationsValueChangeListener<Float> compassBearingValueListener = new MapboxAnimator.AnimationsValueChangeListener<Float>() {
        public void onNewAnimationValue(Float f) {
            if (LocationCameraController.this.cameraMode == 32 || LocationCameraController.this.cameraMode == 16) {
                LocationCameraController.this.setBearing(f.floatValue());
            }
        }
    };
    private final MapboxAnimator.AnimationsValueChangeListener<Float> gpsBearingValueListener = new MapboxAnimator.AnimationsValueChangeListener<Float>() {
        public void onNewAnimationValue(Float f) {
            if (!(LocationCameraController.this.cameraMode == 36 && LocationCameraController.this.mapboxMap.getCameraPosition().bearing == 0.0d)) {
                LocationCameraController.this.setBearing(f.floatValue());
            }
        }
    };
    private final a initialGesturesManager;
    private final OnCameraTrackingChangedListener internalCameraTrackingChangedListener;
    private final a internalGesturesManager;
    /* access modifiers changed from: private */
    public boolean isTransitioning;
    private final MapboxAnimator.AnimationsValueChangeListener<LatLng> latLngValueListener = new MapboxAnimator.AnimationsValueChangeListener<LatLng>() {
        public void onNewAnimationValue(LatLng latLng) {
            LocationCameraController.this.setLatLng(latLng);
        }
    };
    /* access modifiers changed from: private */
    public final MapboxMap mapboxMap;
    private final d moveGestureDetector;
    private final OnCameraMoveInvalidateListener onCameraMoveInvalidateListener;
    private MapboxMap.OnFlingListener onFlingListener = new MapboxMap.OnFlingListener() {
        public void onFling() {
            LocationCameraController.this.setCameraMode(8);
        }
    };
    MapboxMap.OnMoveListener onMoveListener = new MapboxMap.OnMoveListener() {
        private boolean interrupt;

        public void onMoveBegin(d dVar) {
            if (!LocationCameraController.this.options.trackingGesturesManagement() || dVar.getPointersCount() <= 1 || dVar.getMoveThreshold() == LocationCameraController.this.options.trackingMultiFingerMoveThreshold() || !LocationCameraController.this.isLocationTracking()) {
                LocationCameraController.this.setCameraMode(8);
                return;
            }
            dVar.setMoveThreshold(LocationCameraController.this.options.trackingMultiFingerMoveThreshold());
            this.interrupt = true;
        }

        public void onMove(d dVar) {
            if (this.interrupt) {
                dVar.interrupt();
                return;
            }
            if (LocationCameraController.this.isLocationTracking() || LocationCameraController.this.isBearingTracking()) {
                LocationCameraController.this.setCameraMode(8);
                dVar.interrupt();
            }
        }

        public void onMoveEnd(d dVar) {
            if (LocationCameraController.this.options.trackingGesturesManagement() && !this.interrupt && LocationCameraController.this.isLocationTracking()) {
                dVar.setMoveThreshold(LocationCameraController.this.options.trackingInitialMoveThreshold());
            }
            this.interrupt = false;
        }
    };
    private MapboxMap.OnRotateListener onRotateListener = new MapboxMap.OnRotateListener() {
        public void onRotate(l lVar) {
        }

        public void onRotateEnd(l lVar) {
        }

        public void onRotateBegin(l lVar) {
            if (LocationCameraController.this.isBearingTracking()) {
                LocationCameraController.this.setCameraMode(8);
            }
        }
    };
    /* access modifiers changed from: private */
    public LocationComponentOptions options;
    private final MapboxAnimator.AnimationsValueChangeListener<Float> tiltValueListener = new MapboxAnimator.AnimationsValueChangeListener<Float>() {
        public void onNewAnimationValue(Float f) {
            LocationCameraController.this.setTilt(f.floatValue());
        }
    };
    private final Transform transform;
    private final MapboxAnimator.AnimationsValueChangeListener<Float> zoomValueListener = new MapboxAnimator.AnimationsValueChangeListener<Float>() {
        public void onNewAnimationValue(Float f) {
            LocationCameraController.this.setZoom(f.floatValue());
        }
    };

    class LocationGesturesManager extends a {
        LocationGesturesManager(Context context) {
            super(context);
        }

        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (motionEvent != null && motionEvent.getActionMasked() == 1) {
                LocationCameraController.this.adjustGesturesThresholds();
            }
            return super.onTouchEvent(motionEvent);
        }
    }

    LocationCameraController(Context context, MapboxMap mapboxMap2, Transform transform2, OnCameraTrackingChangedListener onCameraTrackingChangedListener, LocationComponentOptions locationComponentOptions, OnCameraMoveInvalidateListener onCameraMoveInvalidateListener2) {
        this.mapboxMap = mapboxMap2;
        this.transform = transform2;
        this.initialGesturesManager = mapboxMap2.getGesturesManager();
        this.internalGesturesManager = new LocationGesturesManager(context);
        this.moveGestureDetector = this.internalGesturesManager.getMoveGestureDetector();
        mapboxMap2.addOnRotateListener(this.onRotateListener);
        mapboxMap2.addOnFlingListener(this.onFlingListener);
        mapboxMap2.addOnMoveListener(this.onMoveListener);
        this.internalCameraTrackingChangedListener = onCameraTrackingChangedListener;
        this.onCameraMoveInvalidateListener = onCameraMoveInvalidateListener2;
        initializeOptions(locationComponentOptions);
    }

    LocationCameraController(MapboxMap mapboxMap2, Transform transform2, d dVar, OnCameraTrackingChangedListener onCameraTrackingChangedListener, OnCameraMoveInvalidateListener onCameraMoveInvalidateListener2, a aVar, a aVar2) {
        this.mapboxMap = mapboxMap2;
        this.transform = transform2;
        this.moveGestureDetector = dVar;
        this.internalCameraTrackingChangedListener = onCameraTrackingChangedListener;
        this.onCameraMoveInvalidateListener = onCameraMoveInvalidateListener2;
        this.internalGesturesManager = aVar2;
        this.initialGesturesManager = aVar;
    }

    /* access modifiers changed from: package-private */
    public final void initializeOptions(LocationComponentOptions locationComponentOptions) {
        this.options = locationComponentOptions;
        if (locationComponentOptions.trackingGesturesManagement()) {
            a gesturesManager = this.mapboxMap.getGesturesManager();
            a aVar = this.internalGesturesManager;
            if (gesturesManager != aVar) {
                this.mapboxMap.setGesturesManager(aVar, true, true);
            }
            adjustGesturesThresholds();
            return;
        }
        a gesturesManager2 = this.mapboxMap.getGesturesManager();
        a aVar2 = this.initialGesturesManager;
        if (gesturesManager2 != aVar2) {
            this.mapboxMap.setGesturesManager(aVar2, true, true);
        }
    }

    /* access modifiers changed from: package-private */
    public final void setCameraMode(int i) {
        setCameraMode(i, null, 750, null, null, null, null);
    }

    /* access modifiers changed from: package-private */
    public final void setCameraMode(int i, Location location, long j, Double d, Double d2, Double d3, OnLocationCameraTransitionListener onLocationCameraTransitionListener) {
        int i2 = i;
        if (this.cameraMode != i2) {
            boolean isLocationTracking = isLocationTracking();
            this.cameraMode = i2;
            if (i2 != 8) {
                this.mapboxMap.cancelTransitions();
            }
            adjustGesturesThresholds();
            notifyCameraTrackingChangeListener(isLocationTracking);
            transitionToCurrentLocation(isLocationTracking, location, j, d, d2, d3, onLocationCameraTransitionListener);
        }
    }

    private void transitionToCurrentLocation(boolean z, Location location, long j, Double d, Double d2, Double d3, final OnLocationCameraTransitionListener onLocationCameraTransitionListener) {
        if (z || !isLocationTracking() || location == null) {
            if (onLocationCameraTransitionListener != null) {
                onLocationCameraTransitionListener.onLocationCameraTransitionFinished(this.cameraMode);
            }
            return;
        }
        this.isTransitioning = true;
        LatLng latLng = new LatLng(location);
        CameraPosition.Builder target = new CameraPosition.Builder().target(latLng);
        if (d != null) {
            target.zoom(d.doubleValue());
        }
        if (d3 != null) {
            target.tilt(d3.doubleValue());
        }
        if (d2 != null) {
            target.bearing(d2.doubleValue());
        } else if (isLocationBearingTracking()) {
            target.bearing(this.cameraMode == 36 ? 0.0d : (double) location.getBearing());
        }
        CameraUpdate newCameraPosition = CameraUpdateFactory.newCameraPosition(target.build());
        AnonymousClass1 r8 = new MapboxMap.CancelableCallback() {
            public void onCancel() {
                boolean unused = LocationCameraController.this.isTransitioning = false;
                OnLocationCameraTransitionListener onLocationCameraTransitionListener = onLocationCameraTransitionListener;
                if (onLocationCameraTransitionListener != null) {
                    onLocationCameraTransitionListener.onLocationCameraTransitionCanceled(LocationCameraController.this.cameraMode);
                }
            }

            public void onFinish() {
                boolean unused = LocationCameraController.this.isTransitioning = false;
                OnLocationCameraTransitionListener onLocationCameraTransitionListener = onLocationCameraTransitionListener;
                if (onLocationCameraTransitionListener != null) {
                    onLocationCameraTransitionListener.onLocationCameraTransitionFinished(LocationCameraController.this.cameraMode);
                }
            }
        };
        if (Utils.immediateAnimation(this.mapboxMap.getProjection(), this.mapboxMap.getCameraPosition().target, latLng)) {
            this.transform.moveCamera(this.mapboxMap, newCameraPosition, r8);
        } else {
            this.transform.animateCamera(this.mapboxMap, newCameraPosition, (int) j, r8);
        }
    }

    /* access modifiers changed from: package-private */
    public final int getCameraMode() {
        return this.cameraMode;
    }

    /* access modifiers changed from: private */
    public void setBearing(float f) {
        if (!this.isTransitioning) {
            this.transform.moveCamera(this.mapboxMap, CameraUpdateFactory.bearingTo((double) f), null);
            this.onCameraMoveInvalidateListener.onInvalidateCameraMove();
        }
    }

    /* access modifiers changed from: private */
    public void setLatLng(LatLng latLng) {
        if (!this.isTransitioning) {
            this.transform.moveCamera(this.mapboxMap, CameraUpdateFactory.newLatLng(latLng), null);
            this.onCameraMoveInvalidateListener.onInvalidateCameraMove();
            if (this.adjustFocalPoint) {
                this.mapboxMap.getUiSettings().setFocalPoint(this.mapboxMap.getProjection().toScreenLocation(latLng));
                this.adjustFocalPoint = false;
            }
        }
    }

    /* access modifiers changed from: private */
    public void setZoom(float f) {
        if (!this.isTransitioning) {
            this.transform.moveCamera(this.mapboxMap, CameraUpdateFactory.zoomTo((double) f), null);
            this.onCameraMoveInvalidateListener.onInvalidateCameraMove();
        }
    }

    /* access modifiers changed from: private */
    public void setTilt(float f) {
        if (!this.isTransitioning) {
            this.transform.moveCamera(this.mapboxMap, CameraUpdateFactory.tiltTo((double) f), null);
            this.onCameraMoveInvalidateListener.onInvalidateCameraMove();
        }
    }

    /* access modifiers changed from: package-private */
    public final Set<AnimatorListenerHolder> getAnimationListeners() {
        HashSet hashSet = new HashSet();
        if (isLocationTracking()) {
            hashSet.add(new AnimatorListenerHolder(1, this.latLngValueListener));
        }
        if (isLocationBearingTracking()) {
            hashSet.add(new AnimatorListenerHolder(4, this.gpsBearingValueListener));
        }
        if (isConsumingCompass()) {
            hashSet.add(new AnimatorListenerHolder(5, this.compassBearingValueListener));
        }
        hashSet.add(new AnimatorListenerHolder(7, this.zoomValueListener));
        hashSet.add(new AnimatorListenerHolder(8, this.tiltValueListener));
        return hashSet;
    }

    /* access modifiers changed from: package-private */
    public final boolean isTransitioning() {
        return this.isTransitioning;
    }

    /* access modifiers changed from: private */
    public void adjustGesturesThresholds() {
        if (this.options.trackingGesturesManagement()) {
            if (isLocationTracking()) {
                this.adjustFocalPoint = true;
                this.moveGestureDetector.setMoveThreshold(this.options.trackingInitialMoveThreshold());
                return;
            }
            this.moveGestureDetector.setMoveThreshold(0.0f);
        }
    }

    /* access modifiers changed from: package-private */
    public final boolean isConsumingCompass() {
        int i = this.cameraMode;
        return i == 32 || i == 16;
    }

    /* access modifiers changed from: private */
    public boolean isLocationTracking() {
        int i = this.cameraMode;
        return i == 24 || i == 32 || i == 34 || i == 36;
    }

    /* access modifiers changed from: private */
    public boolean isBearingTracking() {
        int i = this.cameraMode;
        return i == 16 || i == 32 || i == 22 || i == 34 || i == 36;
    }

    private boolean isLocationBearingTracking() {
        int i = this.cameraMode;
        return i == 34 || i == 36 || i == 22;
    }

    private void notifyCameraTrackingChangeListener(boolean z) {
        this.internalCameraTrackingChangedListener.onCameraTrackingChanged(this.cameraMode);
        if (z && !isLocationTracking()) {
            this.mapboxMap.getUiSettings().setFocalPoint(null);
            this.internalCameraTrackingChangedListener.onCameraTrackingDismissed();
        }
    }
}
