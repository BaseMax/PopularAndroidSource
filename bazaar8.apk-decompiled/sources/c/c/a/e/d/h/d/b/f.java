package c.c.a.e.d.h.d.b;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.cinema.SeriesEpisodeSeeMoreItem;

/* compiled from: ResponseDto.kt */
public final class f {
    @c("referrer")
    public final String referrer;
    @c("slug")
    public final String slug;
    @c("text")
    public final String text;

    public final SeriesEpisodeSeeMoreItem a() {
        return new SeriesEpisodeSeeMoreItem(this.referrer, this.slug, this.text);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.text, (java.lang.Object) r3.text) != false) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0029
            boolean r0 = r3 instanceof c.c.a.e.d.h.d.b.f
            if (r0 == 0) goto L_0x0027
            c.c.a.e.d.h.d.b.f r3 = (c.c.a.e.d.h.d.b.f) r3
            java.lang.String r0 = r2.referrer
            java.lang.String r1 = r3.referrer
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.slug
            java.lang.String r1 = r3.slug
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.text
            java.lang.String r3 = r3.text
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.h.d.b.f.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.referrer;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.slug;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.text;
        if (str3 != null) {
            i2 = str3.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return "SeeMoreDto(referrer=" + this.referrer + ", slug=" + this.slug + ", text=" + this.text + ")";
    }
}
