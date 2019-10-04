package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

class ViewOffsetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: a  reason: collision with root package name */
    private a f3795a;

    /* renamed from: b  reason: collision with root package name */
    private int f3796b = 0;
    private int c = 0;

    public ViewOffsetBehavior() {
    }

    public ViewOffsetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v, int i) {
        a(coordinatorLayout, v, i);
        if (this.f3795a == null) {
            this.f3795a = new a(v);
        }
        this.f3795a.onViewLayout();
        int i2 = this.f3796b;
        if (i2 != 0) {
            this.f3795a.setTopAndBottomOffset(i2);
            this.f3796b = 0;
        }
        int i3 = this.c;
        if (i3 != 0) {
            this.f3795a.setLeftAndRightOffset(i3);
            this.c = 0;
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public void a(CoordinatorLayout coordinatorLayout, V v, int i) {
        coordinatorLayout.onLayoutChild(v, i);
    }

    public boolean setTopAndBottomOffset(int i) {
        a aVar = this.f3795a;
        if (aVar != null) {
            return aVar.setTopAndBottomOffset(i);
        }
        this.f3796b = i;
        return false;
    }

    public boolean setLeftAndRightOffset(int i) {
        a aVar = this.f3795a;
        if (aVar != null) {
            return aVar.setLeftAndRightOffset(i);
        }
        this.c = i;
        return false;
    }

    public int getTopAndBottomOffset() {
        a aVar = this.f3795a;
        if (aVar != null) {
            return aVar.getTopAndBottomOffset();
        }
        return 0;
    }

    public int getLeftAndRightOffset() {
        a aVar = this.f3795a;
        if (aVar != null) {
            return aVar.getLeftAndRightOffset();
        }
        return 0;
    }
}
