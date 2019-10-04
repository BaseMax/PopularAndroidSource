package b.b.a;

import android.view.View;
import androidx.appcompat.app.AppCompatDelegateImpl;
import b.i.k.M;
import b.i.k.q;
import b.i.k.z;

/* compiled from: AppCompatDelegateImpl */
class r implements q {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppCompatDelegateImpl f1764a;

    public r(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.f1764a = appCompatDelegateImpl;
    }

    public M a(View view, M m) {
        int e2 = m.e();
        int l2 = this.f1764a.l(e2);
        if (e2 != l2) {
            m = m.a(m.c(), l2, m.d(), m.b());
        }
        return z.b(view, m);
    }
}
