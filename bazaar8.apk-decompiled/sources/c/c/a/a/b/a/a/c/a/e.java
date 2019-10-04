package c.c.a.a.b.a.a.c.a;

import c.e.d.a.c;

/* compiled from: SendActionLogResponseDto.kt */
public final class e {
    @c("error")
    public final String error;
    @c("error_code")
    public final Integer errorCode;
    @c("nonce")
    public final String nonce;

    public final Integer a() {
        return this.errorCode;
    }

    public final String b() {
        return this.nonce;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.errorCode, (java.lang.Object) r3.errorCode) != false) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0029
            boolean r0 = r3 instanceof c.c.a.a.b.a.a.c.a.e
            if (r0 == 0) goto L_0x0027
            c.c.a.a.b.a.a.c.a.e r3 = (c.c.a.a.b.a.a.c.a.e) r3
            java.lang.String r0 = r2.nonce
            java.lang.String r1 = r3.nonce
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.error
            java.lang.String r1 = r3.error
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.Integer r0 = r2.errorCode
            java.lang.Integer r3 = r3.errorCode
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.a.b.a.a.c.a.e.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.nonce;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.error;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        Integer num = this.errorCode;
        if (num != null) {
            i2 = num.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return "SendActionLogResponseDto(nonce=" + this.nonce + ", error=" + this.error + ", errorCode=" + this.errorCode + ")";
    }
}
