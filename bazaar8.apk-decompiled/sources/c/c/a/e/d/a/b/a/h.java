package c.c.a.e.d.a.b.a;

import c.e.d.a.c;
import h.f.b.j;

@c.c.a.c.f.a.h("singleRequest.registerDeviceAndGetInfoRequest")
/* compiled from: RegisterDeviceAndGetInfoRequestDto.kt */
public final class h {
    @c("gcmID")
    public final String gcmId;
    @c("systemLanguage")
    public final String systemLanguage;

    public h(String str, String str2) {
        j.b(str, "gcmId");
        j.b(str2, "systemLanguage");
        this.gcmId = str;
        this.systemLanguage = str2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.systemLanguage, (java.lang.Object) r3.systemLanguage) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof c.c.a.e.d.a.b.a.h
            if (r0 == 0) goto L_0x001d
            c.c.a.e.d.a.b.a.h r3 = (c.c.a.e.d.a.b.a.h) r3
            java.lang.String r0 = r2.gcmId
            java.lang.String r1 = r3.gcmId
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = r2.systemLanguage
            java.lang.String r3 = r3.systemLanguage
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.a.b.a.h.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.gcmId;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.systemLanguage;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "RegisterDeviceAndGetInfoRequestDto(gcmId=" + this.gcmId + ", systemLanguage=" + this.systemLanguage + ")";
    }
}
