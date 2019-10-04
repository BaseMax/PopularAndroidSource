package com.farsitel.bazaar.analytics.model.what;

import c.c.a.c.d.e;
import h.a.A;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: ButtonClick.kt */
public final class BuyProductWithGatewayClick extends ButtonClick {
    public final String gatewayCode;
    public final long price;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public BuyProductWithGatewayClick(long j2, String str) {
        super("buy_product_with_gateway", e.a(), null);
        j.b(str, "gatewayCode");
        this.price = j2;
        this.gatewayCode = str;
    }

    public Map<String, Object> b() {
        Map<String, Object> b2 = super.b();
        b2.putAll(A.b(f.a("price", Long.valueOf(this.price)), f.a("gateway_code", this.gatewayCode)));
        return b2;
    }
}
