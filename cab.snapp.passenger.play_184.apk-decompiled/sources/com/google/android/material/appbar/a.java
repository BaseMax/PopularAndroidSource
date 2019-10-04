package com.google.android.material.appbar;

import android.view.View;
import androidx.core.view.ViewCompat;

final class a {

    /* renamed from: a  reason: collision with root package name */
    private final View f3797a;

    /* renamed from: b  reason: collision with root package name */
    private int f3798b;
    private int c;
    private int d;
    private int e;

    public a(View view) {
        this.f3797a = view;
    }

    public final void onViewLayout() {
        this.f3798b = this.f3797a.getTop();
        this.c = this.f3797a.getLeft();
        a();
    }

    private void a() {
        View view = this.f3797a;
        ViewCompat.offsetTopAndBottom(view, this.d - (view.getTop() - this.f3798b));
        View view2 = this.f3797a;
        ViewCompat.offsetLeftAndRight(view2, this.e - (view2.getLeft() - this.c));
    }

    public final boolean setTopAndBottomOffset(int i) {
        if (this.d == i) {
            return false;
        }
        this.d = i;
        a();
        return true;
    }

    public final boolean setLeftAndRightOffset(int i) {
        if (this.e == i) {
            return false;
        }
        this.e = i;
        a();
        return true;
    }

    public final int getTopAndBottomOffset() {
        return this.d;
    }

    public final int getLeftAndRightOffset() {
        return this.e;
    }

    public final int getLayoutTop() {
        return this.f3798b;
    }

    public final int getLayoutLeft() {
        return this.c;
    }
}
