package com.farsitel.bazaar.analytics.model.where;

import h.a.A;
import h.f;
import java.util.Map;

/* compiled from: OtherScreens.kt */
public final class CreditOptionsScreen extends OtherScreens {
    public final boolean isInitiatedForPurchasingProduct;
    public final long minimumNeededCredit;

    public CreditOptionsScreen(long j2, boolean z) {
        super("credit_options", null);
        this.minimumNeededCredit = j2;
        this.isInitiatedForPurchasingProduct = z;
    }

    public Map<String, Object> b() {
        return A.b(f.a("minimum_needed_credit", Long.valueOf(this.minimumNeededCredit)), f.a("is_initiated_for_purchasing_product", Boolean.valueOf(this.isInitiatedForPurchasingProduct)));
    }
}
