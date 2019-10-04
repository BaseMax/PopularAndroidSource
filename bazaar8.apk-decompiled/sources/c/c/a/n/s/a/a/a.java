package c.c.a.n.s.a.a;

import android.view.View;
import b.o.a.C0285i;
import com.farsitel.bazaar.ui.payment.credit.options.CreditOptionsFragment;

/* compiled from: CreditOptionsFragment.kt */
final class a implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ CreditOptionsFragment f6805a;

    public a(CreditOptionsFragment creditOptionsFragment) {
        this.f6805a = creditOptionsFragment;
    }

    public final void onClick(View view) {
        C0285i x = this.f6805a.x();
        if (x != null) {
            x.finish();
        }
    }
}
