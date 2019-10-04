package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import b.i.k.z;
import c.e.a.c.j.b;
import java.util.List;

public abstract class ExpandableBehavior extends CoordinatorLayout.b<View> {

    /* renamed from: a  reason: collision with root package name */
    public int f13469a = 0;

    public ExpandableBehavior() {
    }

    public abstract boolean a(View view, View view2, boolean z, boolean z2);

    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
        b bVar = (b) view2;
        if (!a(bVar.a())) {
            return false;
        }
        this.f13469a = bVar.a() ? 1 : 2;
        return a((View) bVar, view, bVar.a(), true);
    }

    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i2) {
        if (!z.B(view)) {
            b a2 = a(coordinatorLayout, view);
            if (a2 != null && a(a2.a())) {
                this.f13469a = a2.a() ? 1 : 2;
                view.getViewTreeObserver().addOnPreDrawListener(new a(this, view, this.f13469a, a2));
            }
        }
        return false;
    }

    public b a(CoordinatorLayout coordinatorLayout, View view) {
        List<View> b2 = coordinatorLayout.b(view);
        int size = b2.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view2 = b2.get(i2);
            if (layoutDependsOn(coordinatorLayout, view, view2)) {
                return (b) view2;
            }
        }
        return null;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public final boolean a(boolean z) {
        boolean z2 = false;
        if (z) {
            int i2 = this.f13469a;
            if (i2 == 0 || i2 == 2) {
                z2 = true;
            }
            return z2;
        }
        if (this.f13469a == 1) {
            z2 = true;
        }
        return z2;
    }
}
