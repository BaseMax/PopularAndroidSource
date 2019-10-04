package com.mapbox.mapboxsdk.location;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;

abstract class MapboxAnimator<K> extends ValueAnimator implements ValueAnimator.AnimatorUpdateListener {
    static final int ANIMATOR_CAMERA_COMPASS_BEARING = 5;
    static final int ANIMATOR_CAMERA_GPS_BEARING = 4;
    static final int ANIMATOR_CAMERA_LATLNG = 1;
    static final int ANIMATOR_LAYER_ACCURACY = 6;
    static final int ANIMATOR_LAYER_COMPASS_BEARING = 3;
    static final int ANIMATOR_LAYER_GPS_BEARING = 2;
    static final int ANIMATOR_LAYER_LATLNG = 0;
    static final int ANIMATOR_TILT = 8;
    static final int ANIMATOR_ZOOM = 7;
    private K animatedValue;
    private final double minUpdateInterval;
    private final K target;
    private long timeElapsed;
    private final AnimationsValueChangeListener<K> updateListener;

    interface AnimationsValueChangeListener<K> {
        void onNewAnimationValue(K k);
    }

    class AnimatorListener extends AnimatorListenerAdapter {
        private AnimatorListener() {
        }

        public void onAnimationEnd(Animator animator) {
            MapboxAnimator.this.postUpdates();
        }
    }

    /* access modifiers changed from: package-private */
    public abstract TypeEvaluator provideEvaluator();

    MapboxAnimator(K k, K k2, AnimationsValueChangeListener<K> animationsValueChangeListener, int i) {
        double d = (double) i;
        Double.isNaN(d);
        this.minUpdateInterval = 1.0E9d / d;
        setObjectValues(new Object[]{k, k2});
        setEvaluator(provideEvaluator());
        this.updateListener = animationsValueChangeListener;
        this.target = k2;
        addUpdateListener(this);
        addListener(new AnimatorListener());
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.animatedValue = valueAnimator.getAnimatedValue();
        long nanoTime = System.nanoTime();
        if (((double) (nanoTime - this.timeElapsed)) >= this.minUpdateInterval) {
            postUpdates();
            this.timeElapsed = nanoTime;
        }
    }

    /* access modifiers changed from: private */
    public void postUpdates() {
        this.updateListener.onNewAnimationValue(this.animatedValue);
    }

    /* access modifiers changed from: package-private */
    public K getTarget() {
        return this.target;
    }
}
