package c.c.a.e.d.a.b.b;

import c.e.d.a.c;

/* compiled from: RegisterDeviceAndGetInfoResponseDto.kt */
public final class b {
    @c("bazaarLogoUrl")
    public final String bazaarLogoUrl;
    @c("kidsLogoUrl")
    public final String kidsLogoUrl;
    @c("videoLogoUrl")
    public final String videoLogoUrl;

    public final String a() {
        return this.bazaarLogoUrl;
    }

    public final String b() {
        return this.kidsLogoUrl;
    }

    public final String c() {
        return this.videoLogoUrl;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.kidsLogoUrl, (java.lang.Object) r3.kidsLogoUrl) != false) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0029
            boolean r0 = r3 instanceof c.c.a.e.d.a.b.b.b
            if (r0 == 0) goto L_0x0027
            c.c.a.e.d.a.b.b.b r3 = (c.c.a.e.d.a.b.b.b) r3
            java.lang.String r0 = r2.bazaarLogoUrl
            java.lang.String r1 = r3.bazaarLogoUrl
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.videoLogoUrl
            java.lang.String r1 = r3.videoLogoUrl
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.kidsLogoUrl
            java.lang.String r3 = r3.kidsLogoUrl
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.a.b.b.b.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.bazaarLogoUrl;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.videoLogoUrl;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.kidsLogoUrl;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return "BazaarLogoDto(bazaarLogoUrl=" + this.bazaarLogoUrl + ", videoLogoUrl=" + this.videoLogoUrl + ", kidsLogoUrl=" + this.kidsLogoUrl + ")";
    }
}
