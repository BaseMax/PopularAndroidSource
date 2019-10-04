package c.c.a.e.d.a.b.b;

import c.e.d.a.c;

/* compiled from: VerifyOtpTokenResponseDto.kt */
public final class n {
    @c("accessToken")
    public final String accessToken;
    @c("refreshToken")
    public final String refreshToken;

    public final String a() {
        return this.accessToken;
    }

    public final String b() {
        return this.refreshToken;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.accessToken, (java.lang.Object) r3.accessToken) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof c.c.a.e.d.a.b.b.n
            if (r0 == 0) goto L_0x001d
            c.c.a.e.d.a.b.b.n r3 = (c.c.a.e.d.a.b.b.n) r3
            java.lang.String r0 = r2.refreshToken
            java.lang.String r1 = r3.refreshToken
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = r2.accessToken
            java.lang.String r3 = r3.accessToken
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.a.b.b.n.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.refreshToken;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.accessToken;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "VerifyOtpTokenResponseDto(refreshToken=" + this.refreshToken + ", accessToken=" + this.accessToken + ")";
    }
}
