package com.farsitel.bazaar.data.feature.payment;

import h.f.b.j;
import java.util.List;

/* compiled from: PaymentEntities.kt */
public final class CreditOptionList extends PaymentData {
    public final List<CreditOption> items;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public CreditOptionList(List<CreditOption> list) {
        super(null);
        j.b(list, "items");
        this.items = list;
    }

    public final List<CreditOption> a() {
        return this.items;
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof CreditOptionList) && j.a((Object) this.items, (Object) ((CreditOptionList) obj).items));
    }

    public int hashCode() {
        List<CreditOption> list = this.items;
        if (list != null) {
            return list.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "CreditOptionList(items=" + this.items + ")";
    }
}
