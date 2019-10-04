package c.c.a.n.s.a.a;

import android.view.View;
import com.farsitel.bazaar.analytics.model.what.BuyCreditClick;
import com.farsitel.bazaar.ui.payment.credit.options.CreditOptionsFragment;

/* compiled from: CreditOptionsFragment.kt */
final class b implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ CreditOptionsFragment f6806a;

    public b(CreditOptionsFragment creditOptionsFragment) {
        this.f6806a = creditOptionsFragment;
    }

    public final void onClick(View view) {
        c.c.a.n.c.a.b.a(this.f6806a, new BuyCreditClick(this.f6806a.Va().a()), null, null, 6, null);
        CreditOptionsFragment.b(this.f6806a).a(this.f6806a.Va().a());
    }
}
