package com.mapbox.mapboxsdk.location;

import android.animation.TypeEvaluator;
import com.mapbox.mapboxsdk.geometry.LatLng;
import com.mapbox.mapboxsdk.location.MapboxAnimator;

class MapboxLatLngAnimator extends MapboxAnimator<LatLng> {
    MapboxLatLngAnimator(LatLng latLng, LatLng latLng2, MapboxAnimator.AnimationsValueChangeListener animationsValueChangeListener, int i) {
        super(latLng, latLng2, animationsValueChangeListener, i);
    }

    /* access modifiers changed from: package-private */
    public TypeEvaluator provideEvaluator() {
        return new LatLngEvaluator();
    }
}
