package c.c.a.n.s;

import b.o.a.C0285i;
import c.c.a.d.f.a.a.a;
import c.c.a.d.f.r;
import com.farsitel.bazaar.data.entity.None;
import com.farsitel.bazaar.ui.appdetail.AppDetailFragment;
import com.farsitel.bazaar.ui.payment.PaymentActivity;
import h.f.b.j;

/* compiled from: PaymentActivity.kt */
public final class b implements r<None> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ a f6827a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ PaymentActivity f6828b;

    public b(a aVar, PaymentActivity paymentActivity) {
        this.f6827a = aVar;
        this.f6828b = paymentActivity;
    }

    public void onCancel() {
        this.f6828b.finish();
    }

    public void a() {
        r.a.b(this);
    }

    public void a(None none) {
        j.b(none, "result");
        AppDetailFragment.a aVar = AppDetailFragment.Ca;
        C0285i Ga = this.f6827a.Ga();
        j.a((Object) Ga, "requireActivity()");
        aVar.a(Ga, "com.farsitel.bazaar");
        this.f6828b.finish();
    }
}
