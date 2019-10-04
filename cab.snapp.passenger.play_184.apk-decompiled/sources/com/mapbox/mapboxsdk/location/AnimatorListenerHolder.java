package com.mapbox.mapboxsdk.location;

import com.mapbox.mapboxsdk.location.MapboxAnimator;

class AnimatorListenerHolder {
    private final int animatorType;
    private final MapboxAnimator.AnimationsValueChangeListener listener;

    AnimatorListenerHolder(int i, MapboxAnimator.AnimationsValueChangeListener animationsValueChangeListener) {
        this.animatorType = i;
        this.listener = animationsValueChangeListener;
    }

    public int getAnimatorType() {
        return this.animatorType;
    }

    public MapboxAnimator.AnimationsValueChangeListener getListener() {
        return this.listener;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            AnimatorListenerHolder animatorListenerHolder = (AnimatorListenerHolder) obj;
            if (this.animatorType != animatorListenerHolder.animatorType) {
                return false;
            }
            MapboxAnimator.AnimationsValueChangeListener animationsValueChangeListener = this.listener;
            MapboxAnimator.AnimationsValueChangeListener animationsValueChangeListener2 = animatorListenerHolder.listener;
            if (animationsValueChangeListener != null) {
                return animationsValueChangeListener.equals(animationsValueChangeListener2);
            }
            if (animationsValueChangeListener2 == null) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i = this.animatorType * 31;
        MapboxAnimator.AnimationsValueChangeListener animationsValueChangeListener = this.listener;
        return i + (animationsValueChangeListener != null ? animationsValueChangeListener.hashCode() : 0);
    }
}
