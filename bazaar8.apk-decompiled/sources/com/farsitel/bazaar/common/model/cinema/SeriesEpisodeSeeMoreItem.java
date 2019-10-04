package com.farsitel.bazaar.common.model.cinema;

import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;

/* compiled from: ViewHolderItem.kt */
public final class SeriesEpisodeSeeMoreItem implements RecyclerData {
    public final String referrer;
    public final String slug;
    public final String text;
    public final int viewType = CinemaViewItemType.SERIES_EPISODE_SEE_MORE_ITEM.ordinal();

    public SeriesEpisodeSeeMoreItem(String str, String str2, String str3) {
        j.b(str2, "slug");
        this.referrer = str;
        this.slug = str2;
        this.text = str3;
    }

    public static /* synthetic */ SeriesEpisodeSeeMoreItem copy$default(SeriesEpisodeSeeMoreItem seriesEpisodeSeeMoreItem, String str, String str2, String str3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = seriesEpisodeSeeMoreItem.referrer;
        }
        if ((i2 & 2) != 0) {
            str2 = seriesEpisodeSeeMoreItem.slug;
        }
        if ((i2 & 4) != 0) {
            str3 = seriesEpisodeSeeMoreItem.text;
        }
        return seriesEpisodeSeeMoreItem.copy(str, str2, str3);
    }

    public final String component1() {
        return this.referrer;
    }

    public final String component2() {
        return this.slug;
    }

    public final String component3() {
        return this.text;
    }

    public final SeriesEpisodeSeeMoreItem copy(String str, String str2, String str3) {
        j.b(str2, "slug");
        return new SeriesEpisodeSeeMoreItem(str, str2, str3);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.text, (java.lang.Object) r3.text) != false) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0029
            boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.cinema.SeriesEpisodeSeeMoreItem
            if (r0 == 0) goto L_0x0027
            com.farsitel.bazaar.common.model.cinema.SeriesEpisodeSeeMoreItem r3 = (com.farsitel.bazaar.common.model.cinema.SeriesEpisodeSeeMoreItem) r3
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
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.cinema.SeriesEpisodeSeeMoreItem.equals(java.lang.Object):boolean");
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public final String getSlug() {
        return this.slug;
    }

    public final String getText() {
        return this.text;
    }

    public int getViewType() {
        return this.viewType;
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
        return "SeriesEpisodeSeeMoreItem(referrer=" + this.referrer + ", slug=" + this.slug + ", text=" + this.text + ")";
    }
}
