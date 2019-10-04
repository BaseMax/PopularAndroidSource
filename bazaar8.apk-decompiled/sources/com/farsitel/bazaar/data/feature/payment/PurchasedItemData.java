package com.farsitel.bazaar.data.feature.payment;

import c.c.a.e.d.m.c;
import c.c.a.e.d.m.f;
import com.crashlytics.android.core.MetaDataStore;
import h.f.b.j;

/* compiled from: PaymentEntities.kt */
public final class PurchasedItemData extends PaymentData {
    public final String paymentData;
    public final String sign;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PurchasedItemData(String str, String str2) {
        super(null);
        j.b(str, "paymentData");
        j.b(str2, "sign");
        this.paymentData = str;
        this.sign = str2;
    }

    public final String a() {
        return this.paymentData;
    }

    public final String b() {
        return this.sign;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.sign, (java.lang.Object) r3.sign) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof com.farsitel.bazaar.data.feature.payment.PurchasedItemData
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.data.feature.payment.PurchasedItemData r3 = (com.farsitel.bazaar.data.feature.payment.PurchasedItemData) r3
            java.lang.String r0 = r2.paymentData
            java.lang.String r1 = r3.paymentData
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = r2.sign
            java.lang.String r3 = r3.sign
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x001d
            goto L_0x001f
        L_0x001d:
            r3 = 0
            return r3
        L_0x001f:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.feature.payment.PurchasedItemData.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.paymentData;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.sign;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "PurchasedItemData(paymentData=" + this.paymentData + ", sign=" + this.sign + ")";
    }

    public final f a(String str) {
        j.b(str, MetaDataStore.KEY_USER_ID);
        c a2 = c.f5275a.a(this.paymentData);
        f fVar = new f(a2.e(), str, a2.d(), a2.c(), a2.a(), a2.b(), "", this.paymentData, this.sign, false);
        return fVar;
    }
}
