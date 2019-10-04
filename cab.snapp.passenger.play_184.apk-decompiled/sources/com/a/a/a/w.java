package com.a.a.a;

import com.google.android.gms.analytics.a.b;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.math.BigDecimal;
import java.util.Currency;

public final class w extends v<w> {

    /* renamed from: a  reason: collision with root package name */
    static final BigDecimal f1696a = BigDecimal.valueOf(1000000);

    /* access modifiers changed from: package-private */
    public final String a() {
        return b.ACTION_PURCHASE;
    }

    public final w putItemId(String str) {
        this.d.a("itemId", str);
        return this;
    }

    public final w putItemName(String str) {
        this.d.a("itemName", str);
        return this;
    }

    public final w putItemType(String str) {
        this.d.a("itemType", str);
        return this;
    }

    public final w putItemPrice(BigDecimal bigDecimal) {
        if (!this.f1670b.isNull(bigDecimal, "itemPrice")) {
            this.d.a("itemPrice", (Number) Long.valueOf(f1696a.multiply(bigDecimal).longValue()));
        }
        return this;
    }

    public final w putCurrency(Currency currency) {
        if (!this.f1670b.isNull(currency, FirebaseAnalytics.b.CURRENCY)) {
            this.d.a(FirebaseAnalytics.b.CURRENCY, currency.getCurrencyCode());
        }
        return this;
    }

    public final w putSuccess(boolean z) {
        this.d.a("success", Boolean.toString(z));
        return this;
    }
}
