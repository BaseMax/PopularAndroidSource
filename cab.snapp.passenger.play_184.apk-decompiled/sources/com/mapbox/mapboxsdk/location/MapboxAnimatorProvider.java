package com.mapbox.mapboxsdk.location;

import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.location.MapboxAnimator;
import com.mapbox.mapboxsdk.maps.MapboxMap;

final class MapboxAnimatorProvider {
    private static MapboxAnimatorProvider INSTANCE;

    private MapboxAnimatorProvider() {
    }

    public static MapboxAnimatorProvider getInstance() {
        if (INSTANCE == null) {
            INSTANCE = new MapboxAnimatorProvider();
        }
        return INSTANCE;
    }

    /* access modifiers changed from: package-private */
    public final MapboxLatLngAnimator latLngAnimator(LatLng latLng, LatLng latLng2, MapboxAnimator.AnimationsValueChangeListener animationsValueChangeListener, int i) {
        return new MapboxLatLngAnimator(latLng, latLng2, animationsValueChangeListener, i);
    }

    /* access modifiers changed from: package-private */
    public final MapboxFloatAnimator floatAnimator(Float f, Float f2, MapboxAnimator.AnimationsValueChangeListener animationsValueChangeListener, int i) {
        return new MapboxFloatAnimator(f, f2, animationsValueChangeListener, i);
    }

    /* access modifiers changed from: package-private */
    public final MapboxCameraAnimatorAdapter cameraAnimator(Float f, Float f2, MapboxAnimator.AnimationsValueChangeListener animationsValueChangeListener, MapboxMap.CancelableCallback cancelableCallback) {
        return new MapboxCameraAnimatorAdapter(f, f2, animationsValueChangeListener, cancelableCallback);
    }
}
