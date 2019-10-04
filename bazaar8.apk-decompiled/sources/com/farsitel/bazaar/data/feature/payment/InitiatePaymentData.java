package com.farsitel.bazaar.data.feature.payment;

import c.c.a.e.d.m.b.b.f;
import h.f.b.j;

/* compiled from: PaymentEntities.kt */
public final class InitiatePaymentData extends PaymentData {
    public final String invoiceToken;
    public final f.a silentGatewayData;
    public final f.b webBasedGatewayData;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public InitiatePaymentData(String str, f.b bVar, f.a aVar) {
        super(null);
        j.b(str, "invoiceToken");
        this.invoiceToken = str;
        this.webBasedGatewayData = bVar;
        this.silentGatewayData = aVar;
    }

    public final String a() {
        return this.invoiceToken;
    }

    public final f.a b() {
        return this.silentGatewayData;
    }

    public final f.b c() {
        return this.webBasedGatewayData;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.silentGatewayData, (java.lang.Object) r3.silentGatewayData) != false) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0029
            boolean r0 = r3 instanceof com.farsitel.bazaar.data.feature.payment.InitiatePaymentData
            if (r0 == 0) goto L_0x0027
            com.farsitel.bazaar.data.feature.payment.InitiatePaymentData r3 = (com.farsitel.bazaar.data.feature.payment.InitiatePaymentData) r3
            java.lang.String r0 = r2.invoiceToken
            java.lang.String r1 = r3.invoiceToken
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            c.c.a.e.d.m.b.b.f$b r0 = r2.webBasedGatewayData
            c.c.a.e.d.m.b.b.f$b r1 = r3.webBasedGatewayData
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            c.c.a.e.d.m.b.b.f$a r0 = r2.silentGatewayData
            c.c.a.e.d.m.b.b.f$a r3 = r3.silentGatewayData
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x0027
            goto L_0x0029
        L_0x0027:
            r3 = 0
            return r3
        L_0x0029:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.feature.payment.InitiatePaymentData.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.invoiceToken;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        f.b bVar = this.webBasedGatewayData;
        int hashCode2 = (hashCode + (bVar != null ? bVar.hashCode() : 0)) * 31;
        f.a aVar = this.silentGatewayData;
        if (aVar != null) {
            i2 = aVar.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return "InitiatePaymentData(invoiceToken=" + this.invoiceToken + ", webBasedGatewayData=" + this.webBasedGatewayData + ", silentGatewayData=" + this.silentGatewayData + ")";
    }
}
