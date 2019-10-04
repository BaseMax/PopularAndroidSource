package c.c.a.e.d.h.b.a;

import c.c.a.e.d.h.e.b.i;
import c.e.d.a.c;
import com.farsitel.bazaar.common.model.cinema.CinemaBigScreenshotItem;
import com.farsitel.bazaar.common.model.cinema.CinemaScreenshotItem;
import com.farsitel.bazaar.common.model.cinema.ThumbnailType;
import com.farsitel.bazaar.common.model.cinema.TrailerCoverItem;

/* compiled from: ThumbnailDto.kt */
public final class a {
    @c("thumbnailUrl")
    public final String thumbnailUrl;
    @c("type")
    public final Integer type;
    @c("url")
    public final String url;

    public final String a() {
        return this.thumbnailUrl;
    }

    public final Integer b() {
        return this.type;
    }

    public final CinemaBigScreenshotItem c() {
        String str = this.thumbnailUrl;
        CinemaBigScreenshotItem cinemaBigScreenshotItem = null;
        if (str != null && i.a(this.type) == ThumbnailType.IMAGE) {
            String str2 = this.url;
            if (str2 == null) {
                str2 = str;
            }
            new CinemaBigScreenshotItem(str2, str, true);
        }
        return cinemaBigScreenshotItem;
    }

    public final CinemaScreenshotItem d() {
        String str = this.thumbnailUrl;
        CinemaScreenshotItem cinemaScreenshotItem = null;
        if (str != null && i.a(this.type) == ThumbnailType.IMAGE) {
            String str2 = this.url;
            if (str2 == null) {
                str2 = str;
            }
            new CinemaScreenshotItem(str2, str, true);
        }
        return cinemaScreenshotItem;
    }

    public final TrailerCoverItem e() {
        if (i.a(this.type) == ThumbnailType.VIDEO) {
            String str = this.thumbnailUrl;
            if (str != null) {
                String str2 = this.url;
                if (str2 != null) {
                    return new TrailerCoverItem(str, str2);
                }
            }
        }
        return null;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.url, (java.lang.Object) r3.url) != false) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0029
            boolean r0 = r3 instanceof c.c.a.e.d.h.b.a.a
            if (r0 == 0) goto L_0x0027
            c.c.a.e.d.h.b.a.a r3 = (c.c.a.e.d.h.b.a.a) r3
            java.lang.String r0 = r2.thumbnailUrl
            java.lang.String r1 = r3.thumbnailUrl
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.Integer r0 = r2.type
            java.lang.Integer r1 = r3.type
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            java.lang.String r0 = r2.url
            java.lang.String r3 = r3.url
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
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.h.b.a.a.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        String str = this.thumbnailUrl;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        Integer num = this.type;
        int hashCode2 = (hashCode + (num != null ? num.hashCode() : 0)) * 31;
        String str2 = this.url;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return "ThumbnailDto(thumbnailUrl=" + this.thumbnailUrl + ", type=" + this.type + ", url=" + this.url + ")";
    }
}
