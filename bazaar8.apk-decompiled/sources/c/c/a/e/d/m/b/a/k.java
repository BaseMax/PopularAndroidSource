package c.c.a.e.d.m.b.a;

import c.c.a.c.f.a.h;
import c.e.d.a.c;
import h.f.b.j;

@h("singleRequest.purchaseProductRequest")
/* compiled from: PurchaseProductRequestDto.kt */
public final class k {
    @c("dealer")
    public final String dealer;
    @c("payload")
    public final String payload;
    @c("sku")
    public final String sku;
    @c("token")
    public final String token;

    public k(String str, String str2, String str3, String str4) {
        j.b(str, "dealer");
        j.b(str2, "sku");
        j.b(str3, "token");
        this.dealer = str;
        this.sku = str2;
        this.token = str3;
        this.payload = str4;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x002e, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.payload, (java.lang.Object) r3.payload) != false) goto L_0x0033;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0033
            boolean r0 = r3 instanceof c.c.a.e.d.m.b.a.k
            if (r0 == 0) goto L_0x0031
            c.c.a.e.d.m.b.a.k r3 = (c.c.a.e.d.m.b.a.k) r3
            java.lang.String r0 = r2.dealer
            java.lang.String r1 = r3.dealer
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0031
            java.lang.String r0 = r2.sku
            java.lang.String r1 = r3.sku
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0031
            java.lang.String r0 = r2.token
            java.lang.String r1 = r3.token
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0031
            java.lang.String r0 = r2.payload
            java.lang.String r3 = r3.payload
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x0031
            goto L_0x0033
        L_0x0031:
            r3 = 0
            return r3
        L_0x0033:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.m.b.a.k.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.dealer;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.sku;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.token;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.payload;
        if (str4 != null) {
            i2 = str4.hashCode();
        }
        return hashCode3 + i2;
    }

    public String toString() {
        return "PurchaseProductRequestDto(dealer=" + this.dealer + ", sku=" + this.sku + ", token=" + this.token + ", payload=" + this.payload + ")";
    }
}
