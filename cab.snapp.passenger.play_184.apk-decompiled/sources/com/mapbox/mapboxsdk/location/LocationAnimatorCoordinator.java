package com.mapbox.mapboxsdk.location;

import android.animation.Animator;
import android.location.Location;
import android.os.SystemClock;
import android.util.SparseArray;
import android.view.animation.LinearInterpolator;
import androidx.appcompat.widget.ActivityChooserView;
import com.mapbox.mapboxsdk.camera.CameraPosition;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.location.MapboxAnimator;
import com.mapbox.mapboxsdk.log.Logger;
import com.mapbox.mapboxsdk.maps.MapboxMap;
import com.mapbox.mapboxsdk.maps.Projection;
import java.util.ArrayList;
import java.util.Set;

final class LocationAnimatorCoordinator {
    private static final String TAG = "Mbgl-LocationAnimatorCoordinator";
    private boolean accuracyAnimationEnabled;
    final SparseArray<MapboxAnimator> animatorArray = new SparseArray<>();
    private final MapboxAnimatorProvider animatorProvider;
    private final MapboxAnimatorSetProvider animatorSetProvider;
    private boolean compassAnimationEnabled;
    private float durationMultiplier;
    final SparseArray<MapboxAnimator.AnimationsValueChangeListener> listeners = new SparseArray<>();
    private long locationUpdateTimestamp = -1;
    int maxAnimationFps = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    private float previousAccuracyRadius = -1.0f;
    private float previousCompassBearing = -1.0f;
    private Location previousLocation;
    private final Projection projection;

    private float checkGpsNorth(boolean z, float f) {
        if (z) {
            return 0.0f;
        }
        return f;
    }

    LocationAnimatorCoordinator(Projection projection2, MapboxAnimatorSetProvider mapboxAnimatorSetProvider, MapboxAnimatorProvider mapboxAnimatorProvider) {
        this.projection = projection2;
        this.animatorProvider = mapboxAnimatorProvider;
        this.animatorSetProvider = mapboxAnimatorSetProvider;
    }

    /* access modifiers changed from: package-private */
    public final void updateAnimatorListenerHolders(Set<AnimatorListenerHolder> set) {
        this.listeners.clear();
        for (AnimatorListenerHolder next : set) {
            this.listeners.append(next.getAnimatorType(), next.getListener());
        }
    }

    /* access modifiers changed from: package-private */
    public final void feedNewLocation(Location location, CameraPosition cameraPosition, boolean z) {
        if (this.previousLocation == null) {
            this.previousLocation = location;
            this.locationUpdateTimestamp = SystemClock.elapsedRealtime() - 750;
        }
        LatLng previousLayerLatLng = getPreviousLayerLatLng();
        float previousLayerGpsBearing = getPreviousLayerGpsBearing();
        LatLng latLng = cameraPosition.target;
        float f = (float) cameraPosition.bearing;
        LatLng latLng2 = new LatLng(location);
        float bearing = location.getBearing();
        float checkGpsNorth = checkGpsNorth(z, location.getBearing());
        updateLayerAnimators(previousLayerLatLng, latLng2, previousLayerGpsBearing, bearing);
        updateCameraAnimators(latLng, f, latLng2, checkGpsNorth);
        boolean z2 = Utils.immediateAnimation(this.projection, latLng, latLng2) || Utils.immediateAnimation(this.projection, previousLayerLatLng, latLng2);
        long j = 0;
        if (!z2) {
            long j2 = this.locationUpdateTimestamp;
            this.locationUpdateTimestamp = SystemClock.elapsedRealtime();
            if (j2 != 0) {
                j = (long) (((float) (this.locationUpdateTimestamp - j2)) * this.durationMultiplier);
            }
            j = Math.min(j, 2000);
        }
        playAnimators(j, 0, 2, 1, 4);
        this.previousLocation = location;
    }

    /* access modifiers changed from: package-private */
    public final void feedNewCompassBearing(float f, CameraPosition cameraPosition) {
        if (this.previousCompassBearing < 0.0f) {
            this.previousCompassBearing = f;
        }
        updateCompassAnimators(f, getPreviousLayerCompassBearing(), (float) cameraPosition.bearing);
        playAnimators(this.compassAnimationEnabled ? 500 : 0, 3, 5);
        this.previousCompassBearing = f;
    }

    /* access modifiers changed from: package-private */
    public final void feedNewAccuracyRadius(float f, boolean z) {
        if (this.previousAccuracyRadius < 0.0f) {
            this.previousAccuracyRadius = f;
        }
        updateAccuracyAnimators(f, getPreviousAccuracyRadius());
        playAnimators((z || !this.accuracyAnimationEnabled) ? 0 : 250, 6);
        this.previousAccuracyRadius = f;
    }

    /* access modifiers changed from: package-private */
    public final void feedNewZoomLevel(double d, CameraPosition cameraPosition, long j, MapboxMap.CancelableCallback cancelableCallback) {
        updateZoomAnimator((float) d, (float) cameraPosition.zoom, cancelableCallback);
        playAnimators(j, 7);
    }

    /* access modifiers changed from: package-private */
    public final void feedNewTilt(double d, CameraPosition cameraPosition, long j, MapboxMap.CancelableCallback cancelableCallback) {
        updateTiltAnimator((float) d, (float) cameraPosition.tilt, cancelableCallback);
        playAnimators(j, 8);
    }

    private LatLng getPreviousLayerLatLng() {
        MapboxAnimator mapboxAnimator = this.animatorArray.get(0);
        if (mapboxAnimator != null) {
            return (LatLng) mapboxAnimator.getAnimatedValue();
        }
        return new LatLng(this.previousLocation);
    }

    private float getPreviousLayerGpsBearing() {
        MapboxFloatAnimator mapboxFloatAnimator = (MapboxFloatAnimator) this.animatorArray.get(2);
        if (mapboxFloatAnimator != null) {
            return ((Float) mapboxFloatAnimator.getAnimatedValue()).floatValue();
        }
        return this.previousLocation.getBearing();
    }

    private float getPreviousLayerCompassBearing() {
        MapboxFloatAnimator mapboxFloatAnimator = (MapboxFloatAnimator) this.animatorArray.get(3);
        if (mapboxFloatAnimator != null) {
            return ((Float) mapboxFloatAnimator.getAnimatedValue()).floatValue();
        }
        return this.previousCompassBearing;
    }

    private float getPreviousAccuracyRadius() {
        MapboxAnimator mapboxAnimator = this.animatorArray.get(6);
        if (mapboxAnimator != null) {
            return ((Float) mapboxAnimator.getAnimatedValue()).floatValue();
        }
        return this.previousAccuracyRadius;
    }

    private void updateLayerAnimators(LatLng latLng, LatLng latLng2, float f, float f2) {
        createNewLatLngAnimator(0, latLng, latLng2);
        float normalize = Utils.normalize(f);
        createNewFloatAnimator(2, normalize, Utils.shortestRotation(f2, normalize));
    }

    private void updateCameraAnimators(LatLng latLng, float f, LatLng latLng2, float f2) {
        createNewLatLngAnimator(1, latLng, latLng2);
        createNewFloatAnimator(4, f, Utils.shortestRotation(f2, f));
    }

    private void updateCompassAnimators(float f, float f2, float f3) {
        createNewFloatAnimator(3, f2, Utils.shortestRotation(f, f2));
        createNewFloatAnimator(5, f3, Utils.shortestRotation(f, f3));
    }

    private void updateAccuracyAnimators(float f, float f2) {
        createNewFloatAnimator(6, f2, f);
    }

    private void updateZoomAnimator(float f, float f2, MapboxMap.CancelableCallback cancelableCallback) {
        createNewCameraAdapterAnimator(7, f2, f, cancelableCallback);
    }

    private void updateTiltAnimator(float f, float f2, MapboxMap.CancelableCallback cancelableCallback) {
        createNewCameraAdapterAnimator(8, f2, f, cancelableCallback);
    }

    private void createNewLatLngAnimator(int i, LatLng latLng, LatLng latLng2) {
        cancelAnimator(i);
        MapboxAnimator.AnimationsValueChangeListener animationsValueChangeListener = this.listeners.get(i);
        if (animationsValueChangeListener != null) {
            this.animatorArray.put(i, this.animatorProvider.latLngAnimator(latLng, latLng2, animationsValueChangeListener, this.maxAnimationFps));
        }
    }

    private void createNewFloatAnimator(int i, float f, float f2) {
        cancelAnimator(i);
        MapboxAnimator.AnimationsValueChangeListener animationsValueChangeListener = this.listeners.get(i);
        if (animationsValueChangeListener != null) {
            this.animatorArray.put(i, this.animatorProvider.floatAnimator(Float.valueOf(f), Float.valueOf(f2), animationsValueChangeListener, this.maxAnimationFps));
        }
    }

    private void createNewCameraAdapterAnimator(int i, float f, float f2, MapboxMap.CancelableCallback cancelableCallback) {
        cancelAnimator(i);
        MapboxAnimator.AnimationsValueChangeListener animationsValueChangeListener = this.listeners.get(i);
        if (animationsValueChangeListener != null) {
            this.animatorArray.put(i, this.animatorProvider.cameraAnimator(Float.valueOf(f), Float.valueOf(f2), animationsValueChangeListener, cancelableCallback));
        }
    }

    private void playAnimators(long j, int... iArr) {
        ArrayList arrayList = new ArrayList();
        for (int i : iArr) {
            Animator animator = this.animatorArray.get(i);
            if (animator != null) {
                arrayList.add(animator);
            }
        }
        this.animatorSetProvider.startAnimation(arrayList, new LinearInterpolator(), j);
    }

    /* access modifiers changed from: package-private */
    public final void resetAllCameraAnimations(CameraPosition cameraPosition, boolean z) {
        resetCameraCompassAnimation(cameraPosition);
        playAnimators(resetCameraLocationAnimations(cameraPosition, z) ? 0 : 750, 1, 4);
    }

    private boolean resetCameraLocationAnimations(CameraPosition cameraPosition, boolean z) {
        resetCameraGpsBearingAnimation(cameraPosition, z);
        return resetCameraLatLngAnimation(cameraPosition);
    }

    private boolean resetCameraLatLngAnimation(CameraPosition cameraPosition) {
        MapboxLatLngAnimator mapboxLatLngAnimator = (MapboxLatLngAnimator) this.animatorArray.get(1);
        if (mapboxLatLngAnimator == null) {
            return false;
        }
        LatLng latLng = (LatLng) mapboxLatLngAnimator.getTarget();
        LatLng latLng2 = cameraPosition.target;
        createNewLatLngAnimator(1, latLng2, latLng);
        return Utils.immediateAnimation(this.projection, latLng2, latLng);
    }

    private void resetCameraGpsBearingAnimation(CameraPosition cameraPosition, boolean z) {
        MapboxFloatAnimator mapboxFloatAnimator = (MapboxFloatAnimator) this.animatorArray.get(4);
        if (mapboxFloatAnimator != null) {
            float checkGpsNorth = checkGpsNorth(z, ((Float) mapboxFloatAnimator.getTarget()).floatValue());
            float f = (float) cameraPosition.bearing;
            createNewFloatAnimator(4, f, Utils.shortestRotation(checkGpsNorth, f));
        }
    }

    private void resetCameraCompassAnimation(CameraPosition cameraPosition) {
        MapboxFloatAnimator mapboxFloatAnimator = (MapboxFloatAnimator) this.animatorArray.get(5);
        if (mapboxFloatAnimator != null) {
            float floatValue = ((Float) mapboxFloatAnimator.getTarget()).floatValue();
            float f = (float) cameraPosition.bearing;
            createNewFloatAnimator(5, f, Utils.shortestRotation(floatValue, f));
        }
    }

    /* access modifiers changed from: package-private */
    public final void resetAllLayerAnimations() {
        MapboxLatLngAnimator mapboxLatLngAnimator = (MapboxLatLngAnimator) this.animatorArray.get(0);
        MapboxFloatAnimator mapboxFloatAnimator = (MapboxFloatAnimator) this.animatorArray.get(2);
        MapboxFloatAnimator mapboxFloatAnimator2 = (MapboxFloatAnimator) this.animatorArray.get(3);
        if (!(mapboxLatLngAnimator == null || mapboxFloatAnimator == null)) {
            createNewLatLngAnimator(0, (LatLng) mapboxLatLngAnimator.getAnimatedValue(), (LatLng) mapboxLatLngAnimator.getTarget());
            createNewFloatAnimator(2, ((Float) mapboxFloatAnimator.getAnimatedValue()).floatValue(), ((Float) mapboxFloatAnimator.getTarget()).floatValue());
            playAnimators(mapboxLatLngAnimator.getDuration() - mapboxLatLngAnimator.getCurrentPlayTime(), 0, 2);
        }
        if (mapboxFloatAnimator2 != null) {
            createNewFloatAnimator(3, getPreviousLayerCompassBearing(), ((Float) mapboxFloatAnimator2.getTarget()).floatValue());
            playAnimators(this.compassAnimationEnabled ? 500 : 0, 3);
        }
    }

    /* access modifiers changed from: package-private */
    public final void cancelZoomAnimation() {
        cancelAnimator(7);
    }

    /* access modifiers changed from: package-private */
    public final void cancelTiltAnimation() {
        cancelAnimator(8);
    }

    /* access modifiers changed from: package-private */
    public final void cancelAllAnimations() {
        for (int i = 0; i < this.animatorArray.size(); i++) {
            cancelAnimator(this.animatorArray.keyAt(i));
        }
    }

    private void cancelAnimator(int i) {
        MapboxAnimator mapboxAnimator = this.animatorArray.get(i);
        if (mapboxAnimator != null) {
            mapboxAnimator.cancel();
            mapboxAnimator.removeAllUpdateListeners();
            mapboxAnimator.removeAllListeners();
            this.animatorArray.put(i, null);
        }
    }

    /* access modifiers changed from: package-private */
    public final void setTrackingAnimationDurationMultiplier(float f) {
        this.durationMultiplier = f;
    }

    /* access modifiers changed from: package-private */
    public final void setCompassAnimationEnabled(boolean z) {
        this.compassAnimationEnabled = z;
    }

    /* access modifiers changed from: package-private */
    public final void setAccuracyAnimationEnabled(boolean z) {
        this.accuracyAnimationEnabled = z;
    }

    /* access modifiers changed from: package-private */
    public final void setMaxAnimationFps(int i) {
        if (i <= 0) {
            Logger.e(TAG, "Max animation FPS cannot be less or equal to 0.");
        } else {
            this.maxAnimationFps = i;
        }
    }
}
