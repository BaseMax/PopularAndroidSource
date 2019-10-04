package b.b.a;

import android.view.View;
import androidx.appcompat.app.AppCompatDelegateImpl;
import b.i.k.J;
import b.i.k.K;
import b.i.k.z;

/* compiled from: AppCompatDelegateImpl */
class w extends K {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppCompatDelegateImpl f1769a;

    public w(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.f1769a = appCompatDelegateImpl;
    }

    public void b(View view) {
        this.f1769a.t.setAlpha(1.0f);
        this.f1769a.w.a((J) null);
        this.f1769a.w = null;
    }

    public void c(View view) {
        this.f1769a.t.setVisibility(0);
        this.f1769a.t.sendAccessibilityEvent(32);
        if (this.f1769a.t.getParent() instanceof View) {
            z.G((View) this.f1769a.t.getParent());
        }
    }
}
