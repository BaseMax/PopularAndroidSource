package com.mapbox.mapboxsdk.location;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.view.animation.Interpolator;
import java.util.List;

class MapboxAnimatorSetProvider {
    private static MapboxAnimatorSetProvider instance;

    private MapboxAnimatorSetProvider() {
    }

    static MapboxAnimatorSetProvider getInstance() {
        if (instance == null) {
            instance = new MapboxAnimatorSetProvider();
        }
        return instance;
    }

    /* access modifiers changed from: package-private */
    public void startAnimation(List<Animator> list, Interpolator interpolator, long j) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(list);
        animatorSet.setInterpolator(interpolator);
        animatorSet.setDuration(j);
        animatorSet.start();
    }
}
