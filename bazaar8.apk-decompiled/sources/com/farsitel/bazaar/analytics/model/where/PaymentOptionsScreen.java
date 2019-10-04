package com.farsitel.bazaar.analytics.model.where;

import h.a.A;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: OtherScreens.kt */
public final class PaymentOptionsScreen extends OtherScreens {
    public final String dealerId;
    public final String paymentType;
    public final String sku;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PaymentOptionsScreen(String str, String str2, String str3) {
        super("payment_options", null);
        j.b(str, "dealerId");
        j.b(str2, "sku");
        j.b(str3, "paymentType");
        this.dealerId = str;
        this.sku = str2;
        this.paymentType = str3;
    }

    public Map<String, Object> b() {
        return A.b(f.a("dealer_id", this.dealerId), f.a("sku", this.sku), f.a("payment_type", this.paymentType));
    }
}
