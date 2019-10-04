package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.math.MathUtils;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.List;

abstract class HeaderScrollingViewBehavior extends ViewOffsetBehavior<View> {

    /* renamed from: a  reason: collision with root package name */
    final Rect f3793a = new Rect();

    /* renamed from: b  reason: collision with root package name */
    final Rect f3794b = new Rect();
    int c = 0;
    private int d;

    /* access modifiers changed from: package-private */
    public float a(View view) {
        return 1.0f;
    }

    /* access modifiers changed from: package-private */
    public abstract View a(List<View> list);

    public HeaderScrollingViewBehavior() {
    }

    public HeaderScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
        int i5 = view.getLayoutParams().height;
        if (i5 == -1 || i5 == -2) {
            View a2 = a(coordinatorLayout.getDependencies(view));
            if (a2 != null) {
                if (!ViewCompat.getFitsSystemWindows(a2) || ViewCompat.getFitsSystemWindows(view)) {
                    View view2 = view;
                } else {
                    View view3 = view;
                    ViewCompat.setFitsSystemWindows(view, true);
                    if (ViewCompat.getFitsSystemWindows(view)) {
                        view.requestLayout();
                        return true;
                    }
                }
                int size = View.MeasureSpec.getSize(i3);
                if (size == 0) {
                    size = coordinatorLayout.getHeight();
                }
                coordinatorLayout.onMeasureChild(view, i, i2, View.MeasureSpec.makeMeasureSpec((size - a2.getMeasuredHeight()) + b(a2), i5 == -1 ? 1073741824 : Integer.MIN_VALUE), i4);
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public final void a(CoordinatorLayout coordinatorLayout, View view, int i) {
        View a2 = a(coordinatorLayout.getDependencies(view));
        if (a2 != null) {
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) view.getLayoutParams();
            Rect rect = this.f3793a;
            rect.set(coordinatorLayout.getPaddingLeft() + layoutParams.leftMargin, a2.getBottom() + layoutParams.topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - layoutParams.rightMargin, ((coordinatorLayout.getHeight() + a2.getBottom()) - coordinatorLayout.getPaddingBottom()) - layoutParams.bottomMargin);
            WindowInsetsCompat lastWindowInsets = coordinatorLayout.getLastWindowInsets();
            if (lastWindowInsets != null && ViewCompat.getFitsSystemWindows(coordinatorLayout) && !ViewCompat.getFitsSystemWindows(view)) {
                rect.left += lastWindowInsets.getSystemWindowInsetLeft();
                rect.right -= lastWindowInsets.getSystemWindowInsetRight();
            }
            Rect rect2 = this.f3794b;
            int i2 = layoutParams.gravity;
            GravityCompat.apply(i2 == 0 ? 8388659 : i2, view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
            int c2 = c(a2);
            view.layout(rect2.left, rect2.top - c2, rect2.right, rect2.bottom - c2);
            this.c = rect2.top - a2.getBottom();
            return;
        }
        super.a(coordinatorLayout, view, i);
        this.c = 0;
    }

    /* access modifiers changed from: package-private */
    public final int c(View view) {
        if (this.d == 0) {
            return 0;
        }
        float a2 = a(view);
        int i = this.d;
        return MathUtils.clamp((int) (a2 * ((float) i)), 0, i);
    }

    /* access modifiers changed from: package-private */
    public int b(View view) {
        return view.getMeasuredHeight();
    }

    public final void setOverlayTop(int i) {
        this.d = i;
    }

    public final int getOverlayTop() {
        return this.d;
    }
}
