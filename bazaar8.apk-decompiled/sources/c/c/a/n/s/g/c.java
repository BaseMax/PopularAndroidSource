package c.c.a.n.s.g;

import android.view.View;
import c.c.a.n.s.a;
import com.farsitel.bazaar.ui.payment.thanks.PaymentThankYouPageFragment;

/* compiled from: PaymentThankYouPageFragment.kt */
final class c implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ PaymentThankYouPageFragment f6911a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f6912b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ String f6913c;

    public c(PaymentThankYouPageFragment paymentThankYouPageFragment, String str, String str2) {
        this.f6911a = paymentThankYouPageFragment;
        this.f6912b = str;
        this.f6913c = str2;
    }

    public final void onClick(View view) {
        a a2 = this.f6911a.fa;
        if (a2 != null) {
            a2.a(this.f6912b, this.f6913c);
        }
    }
}
