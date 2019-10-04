package b.b.a;

import androidx.appcompat.app.AppCompatDelegateImpl;
import b.i.k.I;
import b.i.k.J;
import b.i.k.z;

/* compiled from: AppCompatDelegateImpl */
class v implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppCompatDelegateImpl f1768a;

    public v(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.f1768a = appCompatDelegateImpl;
    }

    public void run() {
        AppCompatDelegateImpl appCompatDelegateImpl = this.f1768a;
        appCompatDelegateImpl.u.showAtLocation(appCompatDelegateImpl.t, 55, 0, 0);
        this.f1768a.q();
        if (this.f1768a.D()) {
            this.f1768a.t.setAlpha(0.0f);
            AppCompatDelegateImpl appCompatDelegateImpl2 = this.f1768a;
            I a2 = z.a(appCompatDelegateImpl2.t);
            a2.a(1.0f);
            appCompatDelegateImpl2.w = a2;
            this.f1768a.w.a((J) new u(this));
            return;
        }
        this.f1768a.t.setAlpha(1.0f);
        this.f1768a.t.setVisibility(0);
    }
}
