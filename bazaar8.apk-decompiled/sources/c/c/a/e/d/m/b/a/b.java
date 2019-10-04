package c.c.a.e.d.m.b.a;

import c.c.a.c.f.a.h;
import c.e.d.a.c;
import h.f.b.j;

@h("singleRequest.consumePurchaseRequest")
/* compiled from: ConsumePurchaseRequestDto.kt */
public final class b {
    @c("dealer")
    public final String dealer;
    @c("token")
    public final String token;

    public b(String str, String str2) {
        j.b(str, "dealer");
        j.b(str2, "token");
        this.dealer = str;
        this.token = str2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.token, (java.lang.Object) r3.token) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof c.c.a.e.d.m.b.a.b
            if (r0 == 0) goto L_0x001d
            c.c.a.e.d.m.b.a.b r3 = (c.c.a.e.d.m.b.a.b) r3
            java.lang.String r0 = r2.dealer
            java.lang.String r1 = r3.dealer
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = r2.token
            java.lang.String r3 = r3.token
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.m.b.a.b.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.dealer;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.token;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "ConsumePurchaseRequestDto(dealer=" + this.dealer + ", token=" + this.token + ")";
    }
}
