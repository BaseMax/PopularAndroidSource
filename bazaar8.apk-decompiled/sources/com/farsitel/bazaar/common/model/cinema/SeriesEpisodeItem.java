package com.farsitel.bazaar.common.model.cinema;

import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;

/* compiled from: ViewHolderItem.kt */
public final class SeriesEpisodeItem extends EpisodeModel implements RecyclerData {
    public final CinemaScreenshotItem cover;
    public final String description;
    public final String episodeIdentifier;
    public final Integer episodeIndex;
    public final String fullName;
    public final String identifier;
    public final long price;
    public final String referrer;
    public boolean showLoadingButton;
    public final String title;
    public final int viewType;

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public /* synthetic */ SeriesEpisodeItem(com.farsitel.bazaar.common.model.cinema.CinemaScreenshotItem r16, java.lang.String r17, java.lang.String r18, java.lang.Integer r19, java.lang.String r20, java.lang.String r21, java.lang.String r22, long r23, boolean r25, java.lang.String r26, int r27, h.f.b.f r28) {
        /*
            r15 = this;
            r0 = r27
            r1 = r0 & 128(0x80, float:1.794E-43)
            if (r1 == 0) goto L_0x000a
            r1 = 0
            r11 = r1
            goto L_0x000c
        L_0x000a:
            r11 = r23
        L_0x000c:
            r0 = r0 & 256(0x100, float:3.59E-43)
            if (r0 == 0) goto L_0x0013
            r0 = 0
            r13 = 0
            goto L_0x0015
        L_0x0013:
            r13 = r25
        L_0x0015:
            r3 = r15
            r4 = r16
            r5 = r17
            r6 = r18
            r7 = r19
            r8 = r20
            r9 = r21
            r10 = r22
            r14 = r26
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r13, r14)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.cinema.SeriesEpisodeItem.<init>(com.farsitel.bazaar.common.model.cinema.CinemaScreenshotItem, java.lang.String, java.lang.String, java.lang.Integer, java.lang.String, java.lang.String, java.lang.String, long, boolean, java.lang.String, int, h.f.b.f):void");
    }

    public static /* synthetic */ SeriesEpisodeItem copy$default(SeriesEpisodeItem seriesEpisodeItem, CinemaScreenshotItem cinemaScreenshotItem, String str, String str2, Integer num, String str3, String str4, String str5, long j2, boolean z, String str6, int i2, Object obj) {
        SeriesEpisodeItem seriesEpisodeItem2 = seriesEpisodeItem;
        int i3 = i2;
        return seriesEpisodeItem.copy((i3 & 1) != 0 ? seriesEpisodeItem.getCover() : cinemaScreenshotItem, (i3 & 2) != 0 ? seriesEpisodeItem2.description : str, (i3 & 4) != 0 ? seriesEpisodeItem2.episodeIdentifier : str2, (i3 & 8) != 0 ? seriesEpisodeItem.getEpisodeIndex() : num, (i3 & 16) != 0 ? seriesEpisodeItem.getFullName() : str3, (i3 & 32) != 0 ? seriesEpisodeItem.getIdentifier() : str4, (i3 & 64) != 0 ? seriesEpisodeItem2.title : str5, (i3 & 128) != 0 ? seriesEpisodeItem.getPrice() : j2, (i3 & 256) != 0 ? seriesEpisodeItem2.showLoadingButton : z, (i3 & 512) != 0 ? seriesEpisodeItem.getReferrer() : str6);
    }

    public final CinemaScreenshotItem component1() {
        return getCover();
    }

    public final String component10() {
        return getReferrer();
    }

    public final String component2() {
        return this.description;
    }

    public final String component3() {
        return this.episodeIdentifier;
    }

    public final Integer component4() {
        return getEpisodeIndex();
    }

    public final String component5() {
        return getFullName();
    }

    public final String component6() {
        return getIdentifier();
    }

    public final String component7() {
        return this.title;
    }

    public final long component8() {
        return getPrice();
    }

    public final boolean component9() {
        return this.showLoadingButton;
    }

    public final SeriesEpisodeItem copy(CinemaScreenshotItem cinemaScreenshotItem, String str, String str2, Integer num, String str3, String str4, String str5, long j2, boolean z, String str6) {
        String str7 = str4;
        j.b(str7, "identifier");
        String str8 = str6;
        j.b(str8, "referrer");
        SeriesEpisodeItem seriesEpisodeItem = new SeriesEpisodeItem(cinemaScreenshotItem, str, str2, num, str3, str7, str5, j2, z, str8);
        return seriesEpisodeItem;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof SeriesEpisodeItem) {
                SeriesEpisodeItem seriesEpisodeItem = (SeriesEpisodeItem) obj;
                if (j.a((Object) getCover(), (Object) seriesEpisodeItem.getCover()) && j.a((Object) this.description, (Object) seriesEpisodeItem.description) && j.a((Object) this.episodeIdentifier, (Object) seriesEpisodeItem.episodeIdentifier) && j.a((Object) getEpisodeIndex(), (Object) seriesEpisodeItem.getEpisodeIndex()) && j.a((Object) getFullName(), (Object) seriesEpisodeItem.getFullName()) && j.a((Object) getIdentifier(), (Object) seriesEpisodeItem.getIdentifier()) && j.a((Object) this.title, (Object) seriesEpisodeItem.title)) {
                    if (getPrice() == seriesEpisodeItem.getPrice()) {
                        if (!(this.showLoadingButton == seriesEpisodeItem.showLoadingButton) || !j.a((Object) getReferrer(), (Object) seriesEpisodeItem.getReferrer())) {
                            return false;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public CinemaScreenshotItem getCover() {
        return this.cover;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getEpisodeIdentifier() {
        return this.episodeIdentifier;
    }

    public Integer getEpisodeIndex() {
        return this.episodeIndex;
    }

    public String getFullName() {
        return this.fullName;
    }

    public String getIdentifier() {
        return this.identifier;
    }

    public long getPrice() {
        return this.price;
    }

    public String getReferrer() {
        return this.referrer;
    }

    public final boolean getShowLoadingButton() {
        return this.showLoadingButton;
    }

    public final String getTitle() {
        return this.title;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        CinemaScreenshotItem cover2 = getCover();
        int i2 = 0;
        int hashCode = (cover2 != null ? cover2.hashCode() : 0) * 31;
        String str = this.description;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.episodeIdentifier;
        int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        Integer episodeIndex2 = getEpisodeIndex();
        int hashCode4 = (hashCode3 + (episodeIndex2 != null ? episodeIndex2.hashCode() : 0)) * 31;
        String fullName2 = getFullName();
        int hashCode5 = (hashCode4 + (fullName2 != null ? fullName2.hashCode() : 0)) * 31;
        String identifier2 = getIdentifier();
        int hashCode6 = (hashCode5 + (identifier2 != null ? identifier2.hashCode() : 0)) * 31;
        String str3 = this.title;
        int hashCode7 = str3 != null ? str3.hashCode() : 0;
        long price2 = getPrice();
        int i3 = (((hashCode6 + hashCode7) * 31) + ((int) (price2 ^ (price2 >>> 32)))) * 31;
        boolean z = this.showLoadingButton;
        if (z) {
            z = true;
        }
        int i4 = (i3 + (z ? 1 : 0)) * 31;
        String referrer2 = getReferrer();
        if (referrer2 != null) {
            i2 = referrer2.hashCode();
        }
        return i4 + i2;
    }

    public final void setShowLoadingButton(boolean z) {
        this.showLoadingButton = z;
    }

    public String toString() {
        return "SeriesEpisodeItem(cover=" + getCover() + ", description=" + this.description + ", episodeIdentifier=" + this.episodeIdentifier + ", episodeIndex=" + getEpisodeIndex() + ", fullName=" + getFullName() + ", identifier=" + getIdentifier() + ", title=" + this.title + ", price=" + getPrice() + ", showLoadingButton=" + this.showLoadingButton + ", referrer=" + getReferrer() + ")";
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public SeriesEpisodeItem(CinemaScreenshotItem cinemaScreenshotItem, String str, String str2, Integer num, String str3, String str4, String str5, long j2, boolean z, String str6) {
        super(str4, cinemaScreenshotItem, j2, str3, num, str6);
        String str7 = str4;
        String str8 = str6;
        j.b(str7, "identifier");
        j.b(str8, "referrer");
        this.cover = cinemaScreenshotItem;
        this.description = str;
        this.episodeIdentifier = str2;
        this.episodeIndex = num;
        this.fullName = str3;
        this.identifier = str7;
        this.title = str5;
        this.price = j2;
        this.showLoadingButton = z;
        this.referrer = str8;
        this.viewType = CinemaViewItemType.SERIES_EPISODE_ITEM.ordinal();
    }
}
