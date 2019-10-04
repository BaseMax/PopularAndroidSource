package com.google.android.material.a;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;

public final class i {

    /* renamed from: a  reason: collision with root package name */
    private long f3770a = 0;

    /* renamed from: b  reason: collision with root package name */
    private long f3771b = 300;
    private TimeInterpolator c = null;
    private int d = 0;
    private int e = 1;

    public i(long j, long j2) {
        this.f3770a = j;
        this.f3771b = j2;
    }

    public i(long j, long j2, TimeInterpolator timeInterpolator) {
        this.f3770a = j;
        this.f3771b = j2;
        this.c = timeInterpolator;
    }

    public final void apply(Animator animator) {
        animator.setStartDelay(getDelay());
        animator.setDuration(getDuration());
        animator.setInterpolator(getInterpolator());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(getRepeatCount());
            valueAnimator.setRepeatMode(getRepeatMode());
        }
    }

    public final long getDelay() {
        return this.f3770a;
    }

    public final long getDuration() {
        return this.f3771b;
    }

    public final TimeInterpolator getInterpolator() {
        TimeInterpolator timeInterpolator = this.c;
        return timeInterpolator != null ? timeInterpolator : a.FAST_OUT_SLOW_IN_INTERPOLATOR;
    }

    public final int getRepeatCount() {
        return this.d;
    }

    public final int getRepeatMode() {
        return this.e;
    }

    static i a(ValueAnimator valueAnimator) {
        i iVar = new i(valueAnimator.getStartDelay(), valueAnimator.getDuration(), b(valueAnimator));
        iVar.d = valueAnimator.getRepeatCount();
        iVar.e = valueAnimator.getRepeatMode();
        return iVar;
    }

    private static TimeInterpolator b(ValueAnimator valueAnimator) {
        TimeInterpolator interpolator = valueAnimator.getInterpolator();
        if ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) {
            return a.FAST_OUT_SLOW_IN_INTERPOLATOR;
        }
        if (interpolator instanceof AccelerateInterpolator) {
            return a.FAST_OUT_LINEAR_IN_INTERPOLATOR;
        }
        if (interpolator instanceof DecelerateInterpolator) {
            interpolator = a.LINEAR_OUT_SLOW_IN_INTERPOLATOR;
        }
        return interpolator;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        if (getDelay() == iVar.getDelay() && getDuration() == iVar.getDuration() && getRepeatCount() == iVar.getRepeatCount() && getRepeatMode() == iVar.getRepeatMode()) {
            return getInterpolator().getClass().equals(iVar.getInterpolator().getClass());
        }
        return false;
    }

    public final int hashCode() {
        return (((((((((int) (getDelay() ^ (getDelay() >>> 32))) * 31) + ((int) (getDuration() ^ (getDuration() >>> 32)))) * 31) + getInterpolator().getClass().hashCode()) * 31) + getRepeatCount()) * 31) + getRepeatMode();
    }

    public final String toString() {
        return 10 + getClass().getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + getDelay() + " duration: " + getDuration() + " interpolator: " + getInterpolator().getClass() + " repeatCount: " + getRepeatCount() + " repeatMode: " + getRepeatMode() + "}\n";
    }
}
