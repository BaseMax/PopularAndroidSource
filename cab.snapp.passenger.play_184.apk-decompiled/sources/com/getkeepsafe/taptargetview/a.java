package com.getkeepsafe.taptargetview;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;

final class a {

    /* renamed from: a  reason: collision with root package name */
    final ValueAnimator f2503a;

    /* renamed from: b  reason: collision with root package name */
    C0054a f2504b;

    /* renamed from: com.getkeepsafe.taptargetview.a$a  reason: collision with other inner class name */
    interface C0054a {
        void onEnd();
    }

    interface b {
        void onUpdate(float f);
    }

    protected a() {
        this(false);
    }

    protected a(boolean z) {
        if (z) {
            this.f2503a = ValueAnimator.ofFloat(new float[]{1.0f, 0.0f});
        } else {
            this.f2503a = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
        }
    }

    public final a delayBy(long j) {
        this.f2503a.setStartDelay(j);
        return this;
    }

    public final a duration(long j) {
        this.f2503a.setDuration(j);
        return this;
    }

    public final a interpolator(TimeInterpolator timeInterpolator) {
        this.f2503a.setInterpolator(timeInterpolator);
        return this;
    }

    public final a repeat(int i) {
        this.f2503a.setRepeatCount(i);
        return this;
    }

    public final a onUpdate(final b bVar) {
        this.f2503a.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                bVar.onUpdate(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        return this;
    }

    public final a onEnd(C0054a aVar) {
        this.f2504b = aVar;
        return this;
    }

    public final ValueAnimator build() {
        if (this.f2504b != null) {
            this.f2503a.addListener(new AnimatorListenerAdapter() {
                public final void onAnimationEnd(Animator animator) {
                    a.this.f2504b.onEnd();
                }
            });
        }
        return this.f2503a;
    }
}
