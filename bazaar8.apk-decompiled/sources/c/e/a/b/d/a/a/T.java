package c.e.a.b.d.a.a;

import android.app.Dialog;

public final class T extends A {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Dialog f9838a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ S f9839b;

    public T(S s, Dialog dialog) {
        this.f9839b = s;
        this.f9838a = dialog;
    }

    public final void a() {
        this.f9839b.f9837b.g();
        if (this.f9838a.isShowing()) {
            this.f9838a.dismiss();
        }
    }
}
