package com.mapbox.mapboxsdk.location;

import android.animation.FloatEvaluator;
import android.animation.TypeEvaluator;
import com.mapbox.mapboxsdk.location.MapboxAnimator;

class MapboxFloatAnimator extends MapboxAnimator<Float> {
    MapboxFloatAnimator(Float f, Float f2, MapboxAnimator.AnimationsValueChangeListener animationsValueChangeListener, int i) {
        super(f, f2, animationsValueChangeListener, i);
    }

    /* access modifiers changed from: package-private */
    public TypeEvaluator provideEvaluator() {
        return new FloatEvaluator();
    }
}
