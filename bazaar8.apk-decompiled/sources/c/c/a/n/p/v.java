package c.c.a.n.p;

import c.c.a.d.f.r;
import com.farsitel.bazaar.data.entity.None;
import com.farsitel.bazaar.ui.login.VerifyOtpFragment;
import h.f.b.j;

/* compiled from: VerifyOtpFragment.kt */
public final class v implements r<None> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ VerifyOtpFragment f6759a;

    public v(VerifyOtpFragment verifyOtpFragment) {
        this.f6759a = verifyOtpFragment;
    }

    public void onCancel() {
        r.a.a(this);
        C0674a b2 = this.f6759a.oa;
        if (b2 != null) {
            b2.m();
        }
    }

    public void a() {
        r.a.b(this);
    }

    public void a(None none) {
        j.b(none, "result");
        r.a.a(this, none);
        C0674a b2 = this.f6759a.oa;
        if (b2 != null) {
            b2.m();
        }
    }
}
