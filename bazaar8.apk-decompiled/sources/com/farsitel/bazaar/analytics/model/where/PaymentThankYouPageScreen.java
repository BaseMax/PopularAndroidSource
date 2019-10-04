package com.farsitel.bazaar.analytics.model.where;

import h.a.A;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: OtherScreens.kt */
public final class PaymentThankYouPageScreen extends OtherScreens {
    public final boolean isSucceeded;
    public final String message;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PaymentThankYouPageScreen(boolean z, String str) {
        super("payment_thank_you_page", null);
        j.b(str, "message");
        this.isSucceeded = z;
        this.message = str;
    }

    public Map<String, Object> b() {
        return A.b(f.a("is_succeeded", Boolean.valueOf(this.isSucceeded)), f.a("message", this.message));
    }
}
