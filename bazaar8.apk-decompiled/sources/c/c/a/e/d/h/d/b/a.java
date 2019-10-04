package c.c.a.e.d.h.d.b;

import c.c.a.c.d.e;
import c.e.d.a.c;
import com.farsitel.bazaar.common.model.cinema.CinemaScreenshotItem;
import com.farsitel.bazaar.common.model.cinema.SeriesEpisodeItem;

/* compiled from: ResponseDto.kt */
public final class a {
    @c("cover")
    public final c.c.a.e.d.h.b.a.a cover;
    @c("description")
    public final String description;
    @c("episodeIdentifier")
    public final String episodeIdentifier;
    @c("episodeIndex")
    public final Integer episodeIndex;
    @c("fullName")
    public final String fullName;
    @c("identifier")
    public final String identifier;
    @c("price")
    public final Long price;
    @c("referrerList")
    public final String referrer;
    @c("title")
    public final String title;

    public final SeriesEpisodeItem a() {
        c.c.a.e.d.h.b.a.a aVar = this.cover;
        CinemaScreenshotItem d2 = aVar != null ? aVar.d() : null;
        String str = this.description;
        String str2 = this.episodeIdentifier;
        Integer num = this.episodeIndex;
        String str3 = this.fullName;
        String str4 = this.identifier;
        String str5 = this.title;
        Long l2 = this.price;
        long longValue = l2 != null ? l2.longValue() : 0;
        String str6 = this.referrer;
        if (str6 == null) {
            str6 = e.a();
        }
        SeriesEpisodeItem seriesEpisodeItem = new SeriesEpisodeItem(d2, str, str2, num, str3, str4, str5, longValue, false, str6, 256, null);
        return seriesEpisodeItem;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0060, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.referrer, (java.lang.Object) r3.referrer) != false) goto L_0x0065;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0065
            boolean r0 = r3 instanceof c.c.a.e.d.h.d.b.a
            if (r0 == 0) goto L_0x0063
            c.c.a.e.d.h.d.b.a r3 = (c.c.a.e.d.h.d.b.a) r3
            c.c.a.e.d.h.b.a.a r0 = r2.cover
            c.c.a.e.d.h.b.a.a r1 = r3.cover
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0063
            java.lang.String r0 = r2.description
            java.lang.String r1 = r3.description
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0063
            java.lang.String r0 = r2.episodeIdentifier
            java.lang.String r1 = r3.episodeIdentifier
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0063
            java.lang.Integer r0 = r2.episodeIndex
            java.lang.Integer r1 = r3.episodeIndex
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0063
            java.lang.String r0 = r2.fullName
            java.lang.String r1 = r3.fullName
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0063
            java.lang.String r0 = r2.identifier
            java.lang.String r1 = r3.identifier
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0063
            java.lang.Long r0 = r2.price
            java.lang.Long r1 = r3.price
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0063
            java.lang.String r0 = r2.title
            java.lang.String r1 = r3.title
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0063
            java.lang.String r0 = r2.referrer
            java.lang.String r3 = r3.referrer
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x0063
            goto L_0x0065
        L_0x0063:
            r3 = 0
            return r3
        L_0x0065:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.h.d.b.a.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        c.c.a.e.d.h.b.a.a aVar = this.cover;
        int i2 = 0;
        int hashCode = (aVar != null ? aVar.hashCode() : 0) * 31;
        String str = this.description;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.episodeIdentifier;
        int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        Integer num = this.episodeIndex;
        int hashCode4 = (hashCode3 + (num != null ? num.hashCode() : 0)) * 31;
        String str3 = this.fullName;
        int hashCode5 = (hashCode4 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.identifier;
        int hashCode6 = (hashCode5 + (str4 != null ? str4.hashCode() : 0)) * 31;
        Long l2 = this.price;
        int hashCode7 = (hashCode6 + (l2 != null ? l2.hashCode() : 0)) * 31;
        String str5 = this.title;
        int hashCode8 = (hashCode7 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.referrer;
        if (str6 != null) {
            i2 = str6.hashCode();
        }
        return hashCode8 + i2;
    }

    public String toString() {
        return "EpisodeDto(cover=" + this.cover + ", description=" + this.description + ", episodeIdentifier=" + this.episodeIdentifier + ", episodeIndex=" + this.episodeIndex + ", fullName=" + this.fullName + ", identifier=" + this.identifier + ", price=" + this.price + ", title=" + this.title + ", referrer=" + this.referrer + ")";
    }
}
