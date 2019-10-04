package com.farsitel.bazaar.analytics.model.where;

import h.a.A;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: OtherScreens.kt */
public final class GatewayPaymentScreen extends OtherScreens {
    public final long amount;
    public final String dealerId;
    public final String gatewayCode;
    public final boolean navigateToPaymentOptionsAfter;
    public final String paymentType;
    public final String sku;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public GatewayPaymentScreen(String str, String str2, String str3, String str4, long j2, boolean z) {
        super("gateway_payment", null);
        j.b(str, "dealerId");
        j.b(str2, "sku");
        j.b(str3, "paymentType");
        j.b(str4, "gatewayCode");
        this.dealerId = str;
        this.sku = str2;
        this.paymentType = str3;
        this.gatewayCode = str4;
        this.amount = j2;
        this.navigateToPaymentOptionsAfter = z;
    }

    public Map<String, Object> b() {
        return A.b(f.a("dealer_id", this.dealerId), f.a("sku", this.sku), f.a("payment_type", this.paymentType), f.a("amount", Long.valueOf(this.amount)), f.a("gateway_code", this.gatewayCode), f.a("navigate_to_payment_options_after", Boolean.valueOf(this.navigateToPaymentOptionsAfter)));
    }
}
