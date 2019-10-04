package c.c.a.e.d.c.a;

import c.c.a.c.f.a.h;
import c.e.d.m;
import h.f.b.j;

@h("singleRequest.appDetailsRequest")
/* compiled from: AppDetailRequestDto.kt */
public final class c {
    @c.e.d.a.c("packageName")
    public final String packageName;
    @c.e.d.a.c("referrers")
    public final m referrer;

    public c(String str, m mVar) {
        j.b(str, "packageName");
        j.b(mVar, "referrer");
        this.packageName = str;
        this.referrer = mVar;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.referrer, (java.lang.Object) r3.referrer) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof c.c.a.e.d.c.a.c
            if (r0 == 0) goto L_0x001d
            c.c.a.e.d.c.a.c r3 = (c.c.a.e.d.c.a.c) r3
            java.lang.String r0 = r2.packageName
            java.lang.String r1 = r3.packageName
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            c.e.d.m r0 = r2.referrer
            c.e.d.m r3 = r3.referrer
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.c.a.c.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.packageName;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        m mVar = this.referrer;
        if (mVar != null) {
            i2 = mVar.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "AppDetailRequestDto(packageName=" + this.packageName + ", referrer=" + this.referrer + ")";
    }
}
