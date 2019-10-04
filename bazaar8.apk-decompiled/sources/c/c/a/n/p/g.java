package c.c.a.n.p;

import c.c.a.d.f.r;
import com.farsitel.bazaar.data.entity.None;
import com.farsitel.bazaar.ui.login.RegisterFragment;
import h.f.b.j;

/* compiled from: RegisterFragment.kt */
public final class g implements r<None> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ RegisterFragment f6735a;

    public g(RegisterFragment registerFragment) {
        this.f6735a = registerFragment;
    }

    public void onCancel() {
        r.a.a(this);
    }

    public void a() {
        r.a.b(this);
    }

    public void a(None none) {
        j.b(none, "result");
        C0674a b2 = this.f6735a.na;
        if (b2 != null) {
            b2.m();
        }
    }
}
