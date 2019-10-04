package com.google.android.material.d;

import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final View f3880a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f3881b = false;
    private int c = 0;

    public c(b bVar) {
        this.f3880a = (View) bVar;
    }

    public final boolean setExpanded(boolean z) {
        if (this.f3881b == z) {
            return false;
        }
        this.f3881b = z;
        a();
        return true;
    }

    public final boolean isExpanded() {
        return this.f3881b;
    }

    public final Bundle onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", this.f3881b);
        bundle.putInt("expandedComponentIdHint", this.c);
        return bundle;
    }

    public final void onRestoreInstanceState(Bundle bundle) {
        this.f3881b = bundle.getBoolean("expanded", false);
        this.c = bundle.getInt("expandedComponentIdHint", 0);
        if (this.f3881b) {
            a();
        }
    }

    public final void setExpandedComponentIdHint(int i) {
        this.c = i;
    }

    public final int getExpandedComponentIdHint() {
        return this.c;
    }

    private void a() {
        ViewParent parent = this.f3880a.getParent();
        if (parent instanceof CoordinatorLayout) {
            ((CoordinatorLayout) parent).dispatchDependentViewsChanged(this.f3880a);
        }
    }
}
