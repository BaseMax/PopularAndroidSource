package c.c.a.e.d.c.a;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.appdetail.SortTypeChoice;

/* compiled from: AppDetailResponseDto.kt */
public final class r {
    @c("identifier")
    public final String identifier;
    @c("title")
    public final String title;

    public final SortTypeChoice a() {
        return new SortTypeChoice(this.identifier, this.title);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.title, (java.lang.Object) r3.title) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof c.c.a.e.d.c.a.r
            if (r0 == 0) goto L_0x001d
            c.c.a.e.d.c.a.r r3 = (c.c.a.e.d.c.a.r) r3
            java.lang.String r0 = r2.identifier
            java.lang.String r1 = r3.identifier
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = r2.title
            java.lang.String r3 = r3.title
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.c.a.r.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.identifier;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.title;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "SortTypeChoicesDto(identifier=" + this.identifier + ", title=" + this.title + ")";
    }
}
