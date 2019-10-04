package com.a.a.a;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.math.BigDecimal;
import java.util.Currency;

public final class am extends v<am> {

    /* renamed from: a  reason: collision with root package name */
    static final BigDecimal f1666a = BigDecimal.valueOf(1000000);

    /* access modifiers changed from: package-private */
    public final String a() {
        return "startCheckout";
    }

    public final am putItemCount(int i) {
        this.d.a("itemCount", (Number) Integer.valueOf(i));
        return this;
    }

    public final am putTotalPrice(BigDecimal bigDecimal) {
        if (!this.f1670b.isNull(bigDecimal, "totalPrice")) {
            this.d.a("totalPrice", (Number) Long.valueOf(f1666a.multiply(bigDecimal).longValue()));
        }
        return this;
    }

    public final am putCurrency(Currency currency) {
        if (!this.f1670b.isNull(currency, FirebaseAnalytics.b.CURRENCY)) {
            this.d.a(FirebaseAnalytics.b.CURRENCY, currency.getCurrencyCode());
        }
        return this;
    }
}
