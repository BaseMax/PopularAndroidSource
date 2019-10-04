package com.a.a.a;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.math.BigDecimal;
import java.util.Currency;

public final class a extends v<a> {

    /* renamed from: a  reason: collision with root package name */
    static final BigDecimal f1653a = BigDecimal.valueOf(1000000);

    /* access modifiers changed from: package-private */
    public final String a() {
        return "addToCart";
    }

    public final a putItemId(String str) {
        this.d.a("itemId", str);
        return this;
    }

    public final a putItemName(String str) {
        this.d.a("itemName", str);
        return this;
    }

    public final a putItemType(String str) {
        this.d.a("itemType", str);
        return this;
    }

    public final a putItemPrice(BigDecimal bigDecimal) {
        if (!this.f1670b.isNull(bigDecimal, "itemPrice")) {
            this.d.a("itemPrice", (Number) Long.valueOf(f1653a.multiply(bigDecimal).longValue()));
        }
        return this;
    }

    public final a putCurrency(Currency currency) {
        if (!this.f1670b.isNull(currency, FirebaseAnalytics.b.CURRENCY)) {
            this.d.a(FirebaseAnalytics.b.CURRENCY, currency.getCurrencyCode());
        }
        return this;
    }
}
