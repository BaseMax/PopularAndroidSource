package c.e.a.c.j;

import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* compiled from: ExpandableWidgetHelper */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final View f11329a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f11330b = false;

    /* renamed from: c  reason: collision with root package name */
    public int f11331c = 0;

    public c(b bVar) {
        this.f11329a = (View) bVar;
    }

    public void a(Bundle bundle) {
        this.f11330b = bundle.getBoolean("expanded", false);
        this.f11331c = bundle.getInt("expandedComponentIdHint", 0);
        if (this.f11330b) {
            a();
        }
    }

    public int b() {
        return this.f11331c;
    }

    public boolean c() {
        return this.f11330b;
    }

    public Bundle d() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", this.f11330b);
        bundle.putInt("expandedComponentIdHint", this.f11331c);
        return bundle;
    }

    public void a(int i2) {
        this.f11331c = i2;
    }

    public final void a() {
        ViewParent parent = this.f11329a.getParent();
        if (parent instanceof CoordinatorLayout) {
            ((CoordinatorLayout) parent).a(this.f11329a);
        }
    }
}
