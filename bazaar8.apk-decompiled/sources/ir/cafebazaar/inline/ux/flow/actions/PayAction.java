package ir.cafebazaar.inline.ux.flow.actions;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import com.crashlytics.android.answers.Answers;
import com.crashlytics.android.answers.CustomEvent;
import f.a.a.c.b.b;
import f.a.a.e.C1083c;
import f.a.a.e.g;
import f.a.a.g.d.i;
import ir.cafebazaar.inline.ux.payment.PaymentInfo;
import ir.cafebazaar.inline.ux.payment.ResidPaymentInfo;

public class PayAction extends CallbackRemoteAction {
    public static final Parcelable.Creator<PayAction> CREATOR = new k();

    public PayAction(String str, boolean z, boolean z2) {
        super(str, z, z2);
    }

    public void a(g gVar, View view) {
        if (!this.f14448b || !(gVar.k() instanceof C1083c) || ((C1083c) gVar.k()).Oa().c()) {
            super.a(gVar, view);
            new b(gVar.h(), a(), a(gVar)).a(new i(gVar));
        }
    }

    public boolean a(int i2) {
        return i2 == 3;
    }

    public PayAction(Parcel parcel) {
        super(parcel);
    }

    public void a(g gVar, int i2, Intent intent, Parcelable parcelable) {
        if (parcelable != null && (parcelable instanceof PaymentInfo)) {
            String str = i2 == -1 ? "OK" : "FAILED";
            PaymentInfo paymentInfo = (PaymentInfo) parcelable;
            String a2 = paymentInfo.a();
            new b(gVar.h(), a2, ((ResidPaymentInfo) parcelable).c(str)).a(new f.a.a.g.d.g(gVar, a2));
            Answers.getInstance().logCustom((CustomEvent) ((CustomEvent) new CustomEvent("InlinePay").putCustomAttribute("state", str)).putCustomAttribute("duration", (Number) Long.valueOf((System.currentTimeMillis() - paymentInfo.b()) / 1000)));
        }
    }
}
