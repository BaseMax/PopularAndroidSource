package c.c.a.e.d.c.a;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.appdetail.Shamed;

/* compiled from: AppDetailResponseDto.kt */
public final class q {
    @c("icon")
    public final String icon;
    @c("id")
    public final String id;
    @c("url")
    public final String url;

    public final Shamed a() {
        return new Shamed(this.id, this.url, this.icon);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.icon, (java.lang.Object) r3.icon) != false) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0029
            boolean r0 = r3 instanceof c.c.a.e.d.c.a.q
            if (r0 == 0) goto L_0x0027
            c.c.a.e.d.c.a.q r3 = (c.c.a.e.d.c.a.q) r3
            java.lang.String r0 = r2.id
            java.lang.String r1 = r3.id
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.url
            java.lang.String r1 = r3.url
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.c.a.q.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.id;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.url;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.icon;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return "ShamedDto(id=" + this.id + ", url=" + this.url + ", icon=" + this.icon + ")";
    }
}
