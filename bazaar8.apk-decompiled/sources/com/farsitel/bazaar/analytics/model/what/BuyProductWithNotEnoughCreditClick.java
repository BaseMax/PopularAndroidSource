package com.farsitel.bazaar.analytics.model.what;

import c.c.a.c.d.e;
import h.a.z;
import h.f;
import java.util.Map;

/* compiled from: ButtonClick.kt */
public final class BuyProductWithNotEnoughCreditClick extends ButtonClick {
    public final long price;

    public BuyProductWithNotEnoughCreditClick(long j2) {
        super("buy_product_with_not_enough_credit", e.a(), null);
        this.price = j2;
    }

    public Map<String, Object> b() {
        Map<String, Object> b2 = super.b();
        b2.putAll(z.a(f.a("price", Long.valueOf(this.price))));
        return b2;
    }
}
