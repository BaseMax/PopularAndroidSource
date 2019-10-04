package com.farsitel.bazaar.common.model.cinema;

import com.crashlytics.android.core.CodedOutputStream;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.ShortInfo;
import h.f.b.j;

/* compiled from: ViewHolderItem.kt */
public final class SeasonEpisodeItem extends EpisodeModel implements RecyclerData {
    public final CinemaScreenshotItem cover;
    public final Integer episodeIndex;
    public final String fullName;
    public final String identifier;
    public final String name;
    public final long price;
    public final Integer priceBeforeDiscount;
    public final String referrer;
    public final Integer seasonIndex;
    public final String serialIdentifier;
    public final String serialName;
    public final ShortInfo shortInfo;
    public boolean showLoadingButton;
    public final int viewType;

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public /* synthetic */ SeasonEpisodeItem(com.farsitel.bazaar.common.model.cinema.CinemaScreenshotItem r19, com.farsitel.bazaar.common.model.ShortInfo r20, java.lang.String r21, java.lang.String r22, java.lang.String r23, java.lang.String r24, java.lang.String r25, java.lang.Integer r26, java.lang.Integer r27, long r28, java.lang.Integer r30, boolean r31, java.lang.String r32, int r33, h.f.b.f r34) {
        /*
            r18 = this;
            r0 = r33
            r1 = r0 & 512(0x200, float:7.175E-43)
            if (r1 == 0) goto L_0x000a
            r1 = 0
            r13 = r1
            goto L_0x000c
        L_0x000a:
            r13 = r28
        L_0x000c:
            r0 = r0 & 2048(0x800, float:2.87E-42)
            if (r0 == 0) goto L_0x0014
            r0 = 0
            r16 = 0
            goto L_0x0016
        L_0x0014:
            r16 = r31
        L_0x0016:
            r3 = r18
            r4 = r19
            r5 = r20
            r6 = r21
            r7 = r22
            r8 = r23
            r9 = r24
            r10 = r25
            r11 = r26
            r12 = r27
            r15 = r30
            r17 = r32
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r15, r16, r17)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.cinema.SeasonEpisodeItem.<init>(com.farsitel.bazaar.common.model.cinema.CinemaScreenshotItem, com.farsitel.bazaar.common.model.ShortInfo, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.Integer, java.lang.Integer, long, java.lang.Integer, boolean, java.lang.String, int, h.f.b.f):void");
    }

    public static /* synthetic */ SeasonEpisodeItem copy$default(SeasonEpisodeItem seasonEpisodeItem, CinemaScreenshotItem cinemaScreenshotItem, ShortInfo shortInfo2, String str, String str2, String str3, String str4, String str5, Integer num, Integer num2, long j2, Integer num3, boolean z, String str6, int i2, Object obj) {
        SeasonEpisodeItem seasonEpisodeItem2 = seasonEpisodeItem;
        int i3 = i2;
        return seasonEpisodeItem.copy((i3 & 1) != 0 ? seasonEpisodeItem.getCover() : cinemaScreenshotItem, (i3 & 2) != 0 ? seasonEpisodeItem2.shortInfo : shortInfo2, (i3 & 4) != 0 ? seasonEpisodeItem.getIdentifier() : str, (i3 & 8) != 0 ? seasonEpisodeItem2.serialIdentifier : str2, (i3 & 16) != 0 ? seasonEpisodeItem.getFullName() : str3, (i3 & 32) != 0 ? seasonEpisodeItem2.name : str4, (i3 & 64) != 0 ? seasonEpisodeItem2.serialName : str5, (i3 & 128) != 0 ? seasonEpisodeItem.getEpisodeIndex() : num, (i3 & 256) != 0 ? seasonEpisodeItem2.seasonIndex : num2, (i3 & 512) != 0 ? seasonEpisodeItem.getPrice() : j2, (i3 & 1024) != 0 ? seasonEpisodeItem2.priceBeforeDiscount : num3, (i3 & 2048) != 0 ? seasonEpisodeItem2.showLoadingButton : z, (i3 & CodedOutputStream.DEFAULT_BUFFER_SIZE) != 0 ? seasonEpisodeItem.getReferrer() : str6);
    }

    public final CinemaScreenshotItem component1() {
        return getCover();
    }

    public final long component10() {
        return getPrice();
    }

    public final Integer component11() {
        return this.priceBeforeDiscount;
    }

    public final boolean component12() {
        return this.showLoadingButton;
    }

    public final String component13() {
        return getReferrer();
    }

    public final ShortInfo component2() {
        return this.shortInfo;
    }

    public final String component3() {
        return getIdentifier();
    }

    public final String component4() {
        return this.serialIdentifier;
    }

    public final String component5() {
        return getFullName();
    }

    public final String component6() {
        return this.name;
    }

    public final String component7() {
        return this.serialName;
    }

    public final Integer component8() {
        return getEpisodeIndex();
    }

    public final Integer component9() {
        return this.seasonIndex;
    }

    public final SeasonEpisodeItem copy(CinemaScreenshotItem cinemaScreenshotItem, ShortInfo shortInfo2, String str, String str2, String str3, String str4, String str5, Integer num, Integer num2, long j2, Integer num3, boolean z, String str6) {
        String str7 = str;
        j.b(str7, "identifier");
        String str8 = str6;
        j.b(str8, "referrer");
        SeasonEpisodeItem seasonEpisodeItem = new SeasonEpisodeItem(cinemaScreenshotItem, shortInfo2, str7, str2, str3, str4, str5, num, num2, j2, num3, z, str8);
        return seasonEpisodeItem;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof SeasonEpisodeItem) {
                SeasonEpisodeItem seasonEpisodeItem = (SeasonEpisodeItem) obj;
                if (j.a((Object) getCover(), (Object) seasonEpisodeItem.getCover()) && j.a((Object) this.shortInfo, (Object) seasonEpisodeItem.shortInfo) && j.a((Object) getIdentifier(), (Object) seasonEpisodeItem.getIdentifier()) && j.a((Object) this.serialIdentifier, (Object) seasonEpisodeItem.serialIdentifier) && j.a((Object) getFullName(), (Object) seasonEpisodeItem.getFullName()) && j.a((Object) this.name, (Object) seasonEpisodeItem.name) && j.a((Object) this.serialName, (Object) seasonEpisodeItem.serialName) && j.a((Object) getEpisodeIndex(), (Object) seasonEpisodeItem.getEpisodeIndex()) && j.a((Object) this.seasonIndex, (Object) seasonEpisodeItem.seasonIndex)) {
                    if ((getPrice() == seasonEpisodeItem.getPrice()) && j.a((Object) this.priceBeforeDiscount, (Object) seasonEpisodeItem.priceBeforeDiscount)) {
                        if (!(this.showLoadingButton == seasonEpisodeItem.showLoadingButton) || !j.a((Object) getReferrer(), (Object) seasonEpisodeItem.getReferrer())) {
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

    public Integer getEpisodeIndex() {
        return this.episodeIndex;
    }

    public String getFullName() {
        return this.fullName;
    }

    public String getIdentifier() {
        return this.identifier;
    }

    public final String getName() {
        return this.name;
    }

    public long getPrice() {
        return this.price;
    }

    public final Integer getPriceBeforeDiscount() {
        return this.priceBeforeDiscount;
    }

    public String getReferrer() {
        return this.referrer;
    }

    public final Integer getSeasonIndex() {
        return this.seasonIndex;
    }

    public final String getSerialIdentifier() {
        return this.serialIdentifier;
    }

    public final String getSerialName() {
        return this.serialName;
    }

    public final ShortInfo getShortInfo() {
        return this.shortInfo;
    }

    public final boolean getShowLoadingButton() {
        return this.showLoadingButton;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        CinemaScreenshotItem cover2 = getCover();
        int i2 = 0;
        int hashCode = (cover2 != null ? cover2.hashCode() : 0) * 31;
        ShortInfo shortInfo2 = this.shortInfo;
        int hashCode2 = (hashCode + (shortInfo2 != null ? shortInfo2.hashCode() : 0)) * 31;
        String identifier2 = getIdentifier();
        int hashCode3 = (hashCode2 + (identifier2 != null ? identifier2.hashCode() : 0)) * 31;
        String str = this.serialIdentifier;
        int hashCode4 = (hashCode3 + (str != null ? str.hashCode() : 0)) * 31;
        String fullName2 = getFullName();
        int hashCode5 = (hashCode4 + (fullName2 != null ? fullName2.hashCode() : 0)) * 31;
        String str2 = this.name;
        int hashCode6 = (hashCode5 + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.serialName;
        int hashCode7 = (hashCode6 + (str3 != null ? str3.hashCode() : 0)) * 31;
        Integer episodeIndex2 = getEpisodeIndex();
        int hashCode8 = (hashCode7 + (episodeIndex2 != null ? episodeIndex2.hashCode() : 0)) * 31;
        Integer num = this.seasonIndex;
        int hashCode9 = num != null ? num.hashCode() : 0;
        long price2 = getPrice();
        int i3 = (((hashCode8 + hashCode9) * 31) + ((int) (price2 ^ (price2 >>> 32)))) * 31;
        Integer num2 = this.priceBeforeDiscount;
        int hashCode10 = (i3 + (num2 != null ? num2.hashCode() : 0)) * 31;
        boolean z = this.showLoadingButton;
        if (z) {
            z = true;
        }
        int i4 = (hashCode10 + (z ? 1 : 0)) * 31;
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
        return "SeasonEpisodeItem(cover=" + getCover() + ", shortInfo=" + this.shortInfo + ", identifier=" + getIdentifier() + ", serialIdentifier=" + this.serialIdentifier + ", fullName=" + getFullName() + ", name=" + this.name + ", serialName=" + this.serialName + ", episodeIndex=" + getEpisodeIndex() + ", seasonIndex=" + this.seasonIndex + ", price=" + getPrice() + ", priceBeforeDiscount=" + this.priceBeforeDiscount + ", showLoadingButton=" + this.showLoadingButton + ", referrer=" + getReferrer() + ")";
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public SeasonEpisodeItem(CinemaScreenshotItem cinemaScreenshotItem, ShortInfo shortInfo2, String str, String str2, String str3, String str4, String str5, Integer num, Integer num2, long j2, Integer num3, boolean z, String str6) {
        super(str, cinemaScreenshotItem, j2, str3, num, str6);
        String str7 = str6;
        j.b(str, "identifier");
        j.b(str7, "referrer");
        this.cover = cinemaScreenshotItem;
        this.shortInfo = shortInfo2;
        this.identifier = str;
        this.serialIdentifier = str2;
        this.fullName = str3;
        this.name = str4;
        this.serialName = str5;
        this.episodeIndex = num;
        this.seasonIndex = num2;
        this.price = j2;
        this.priceBeforeDiscount = num3;
        this.showLoadingButton = z;
        this.referrer = str7;
        this.viewType = CinemaViewItemType.SEASON_EPISODE_ITEM.ordinal();
    }
}
