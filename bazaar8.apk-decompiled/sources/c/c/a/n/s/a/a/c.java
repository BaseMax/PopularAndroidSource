package c.c.a.n.s.a.a;

import android.widget.RadioGroup;
import c.c.a.e;
import com.farsitel.bazaar.ui.payment.credit.options.CreditOptionsFragment;
import com.farsitel.bazaar.widget.LoadingButton;
import h.f.b.j;

/* compiled from: CreditOptionsFragment.kt */
final class c implements RadioGroup.OnCheckedChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ CreditOptionsFragment f6807a;

    public c(CreditOptionsFragment creditOptionsFragment) {
        this.f6807a = creditOptionsFragment;
    }

    public final void onCheckedChanged(RadioGroup radioGroup, int i2) {
        LoadingButton loadingButton = (LoadingButton) this.f6807a.e(e.increaseCreditButton);
        j.a((Object) loadingButton, "increaseCreditButton");
        loadingButton.setEnabled(true);
    }
}
