package com.google.android.material.behavior;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import c.e.a.c.a.a;

public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.b<V> {

    /* renamed from: a  reason: collision with root package name */
    public int f13311a = 0;

    /* renamed from: b  reason: collision with root package name */
    public int f13312b = 2;

    /* renamed from: c  reason: collision with root package name */
    public ViewPropertyAnimator f13313c;

    public HideBottomViewOnScrollBehavior() {
    }

    public void b(V v) {
        ViewPropertyAnimator viewPropertyAnimator = this.f13313c;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.f13312b = 2;
        a(v, 0, 225, a.f11187d);
    }

    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v, int i2) {
        this.f13311a = v.getMeasuredHeight();
        return super.onLayoutChild(coordinatorLayout, v, i2);
    }

    public void onNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i2, int i3, int i4, int i5) {
        if (this.f13312b != 1 && i3 > 0) {
            a(v);
        } else if (this.f13312b != 2 && i3 < 0) {
            b(v);
        }
    }

    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i2) {
        return i2 == 2;
    }

    public void a(V v) {
        ViewPropertyAnimator viewPropertyAnimator = this.f13313c;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.f13312b = 1;
        a(v, this.f13311a, 175, a.f11186c);
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public final void a(V v, int i2, long j2, TimeInterpolator timeInterpolator) {
        this.f13313c = v.animate().translationY((float) i2).setInterpolator(timeInterpolator).setDuration(j2).setListener(new a(this));
    }
}
