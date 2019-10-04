package c.c.a.e.d.r;

import c.c.a.e.g.a;
import c.e.d.a.c;

/* compiled from: ReviewDto.kt */
public final class i {
    @c("appName")
    public final String appName;
    @c("icon")
    public final String icon;
    @c("review")
    public final b review;

    public final a a() {
        return new a(b.a(this.review, null, 1, null), this.appName, this.icon);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.icon, (java.lang.Object) r3.icon) != false) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0029
            boolean r0 = r3 instanceof c.c.a.e.d.r.i
            if (r0 == 0) goto L_0x0027
            c.c.a.e.d.r.i r3 = (c.c.a.e.d.r.i) r3
            c.c.a.e.d.r.b r0 = r2.review
            c.c.a.e.d.r.b r1 = r3.review
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.appName
            java.lang.String r1 = r3.appName
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.icon
            java.lang.String r3 = r3.icon
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.r.i.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        b bVar = this.review;
        int i2 = 0;
        int hashCode = (bVar != null ? bVar.hashCode() : 0) * 31;
        String str = this.appName;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.icon;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return "SingleReviewResponseDto(review=" + this.review + ", appName=" + this.appName + ", icon=" + this.icon + ")";
    }
}
