package c.c.a.n.s.h;

import androidx.lifecycle.LiveData;
import c.c.a.c.h.g;
import c.c.a.d.f.p;
import com.farsitel.bazaar.core.model.PaymentWebState;

/* compiled from: PaymentWebViewModel.kt */
public final class f extends p {

    /* renamed from: d  reason: collision with root package name */
    public final g<PaymentWebState> f6931d = new g<>();

    public final void e() {
        this.f6931d.b(PaymentWebState.WebProcessFinished.f12172a);
    }

    public final LiveData<PaymentWebState> f() {
        return this.f6931d;
    }
}
