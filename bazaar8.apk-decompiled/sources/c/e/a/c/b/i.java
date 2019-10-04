package c.e.a.c.b;

import android.view.View;
import b.i.k.z;

/* compiled from: ViewOffsetHelper */
public class i {

    /* renamed from: a  reason: collision with root package name */
    public final View f11229a;

    /* renamed from: b  reason: collision with root package name */
    public int f11230b;

    /* renamed from: c  reason: collision with root package name */
    public int f11231c;

    /* renamed from: d  reason: collision with root package name */
    public int f11232d;

    /* renamed from: e  reason: collision with root package name */
    public int f11233e;

    public i(View view) {
        this.f11229a = view;
    }

    public boolean a(int i2) {
        if (this.f11233e == i2) {
            return false;
        }
        this.f11233e = i2;
        d();
        return true;
    }

    public boolean b(int i2) {
        if (this.f11232d == i2) {
            return false;
        }
        this.f11232d = i2;
        d();
        return true;
    }

    public void c() {
        this.f11230b = this.f11229a.getTop();
        this.f11231c = this.f11229a.getLeft();
        d();
    }

    public final void d() {
        View view = this.f11229a;
        z.e(view, this.f11232d - (view.getTop() - this.f11230b));
        View view2 = this.f11229a;
        z.d(view2, this.f11233e - (view2.getLeft() - this.f11231c));
    }

    public int a() {
        return this.f11230b;
    }

    public int b() {
        return this.f11232d;
    }
}
