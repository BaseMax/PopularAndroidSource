package com.farsitel.bazaar.common.model.cinema;

import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import com.farsitel.bazaar.common.model.DownloaderProgressInfo;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.ui.EntityState;
import h.f.b.j;

/* compiled from: ViewHolderItem.kt */
public final class CinemaActionsItem implements RecyclerData {
    public final String downloadDescription;
    public final boolean downloadable;
    public final Integer episodeIndex;
    public final String id;
    public boolean isBought;
    public final String name;
    public final Integer price;
    public final Integer priceBeforeDiscount;
    public DownloaderProgressInfo progressInfo;
    public final String referrer;
    public boolean showLoadingButton;
    public EntityState videoState;
    public final int viewType;

    public CinemaActionsItem(String str, String str2, Integer num, Integer num2, boolean z, String str3, Integer num3, boolean z2, boolean z3, EntityState entityState, DownloaderProgressInfo downloaderProgressInfo, String str4) {
        j.b(str, "id");
        j.b(str2, DefaultAppMeasurementEventListenerRegistrar.NAME);
        j.b(entityState, "videoState");
        j.b(str4, "referrer");
        this.id = str;
        this.name = str2;
        this.price = num;
        this.priceBeforeDiscount = num2;
        this.downloadable = z;
        this.downloadDescription = str3;
        this.episodeIndex = num3;
        this.isBought = z2;
        this.showLoadingButton = z3;
        this.videoState = entityState;
        this.progressInfo = downloaderProgressInfo;
        this.referrer = str4;
        this.viewType = CinemaViewItemType.VIDEO_ACTIONS.ordinal();
    }

    public static /* synthetic */ CinemaActionsItem copy$default(CinemaActionsItem cinemaActionsItem, String str, String str2, Integer num, Integer num2, boolean z, String str3, Integer num3, boolean z2, boolean z3, EntityState entityState, DownloaderProgressInfo downloaderProgressInfo, String str4, int i2, Object obj) {
        CinemaActionsItem cinemaActionsItem2 = cinemaActionsItem;
        int i3 = i2;
        return cinemaActionsItem.copy((i3 & 1) != 0 ? cinemaActionsItem2.id : str, (i3 & 2) != 0 ? cinemaActionsItem2.name : str2, (i3 & 4) != 0 ? cinemaActionsItem2.price : num, (i3 & 8) != 0 ? cinemaActionsItem2.priceBeforeDiscount : num2, (i3 & 16) != 0 ? cinemaActionsItem2.downloadable : z, (i3 & 32) != 0 ? cinemaActionsItem2.downloadDescription : str3, (i3 & 64) != 0 ? cinemaActionsItem2.episodeIndex : num3, (i3 & 128) != 0 ? cinemaActionsItem2.isBought : z2, (i3 & 256) != 0 ? cinemaActionsItem2.showLoadingButton : z3, (i3 & 512) != 0 ? cinemaActionsItem2.videoState : entityState, (i3 & 1024) != 0 ? cinemaActionsItem2.progressInfo : downloaderProgressInfo, (i3 & 2048) != 0 ? cinemaActionsItem2.referrer : str4);
    }

    public final String component1() {
        return this.id;
    }

    public final EntityState component10() {
        return this.videoState;
    }

    public final DownloaderProgressInfo component11() {
        return this.progressInfo;
    }

    public final String component12() {
        return this.referrer;
    }

    public final String component2() {
        return this.name;
    }

    public final Integer component3() {
        return this.price;
    }

    public final Integer component4() {
        return this.priceBeforeDiscount;
    }

    public final boolean component5() {
        return this.downloadable;
    }

    public final String component6() {
        return this.downloadDescription;
    }

    public final Integer component7() {
        return this.episodeIndex;
    }

    public final boolean component8() {
        return this.isBought;
    }

    public final boolean component9() {
        return this.showLoadingButton;
    }

    public final CinemaActionsItem copy(String str, String str2, Integer num, Integer num2, boolean z, String str3, Integer num3, boolean z2, boolean z3, EntityState entityState, DownloaderProgressInfo downloaderProgressInfo, String str4) {
        j.b(str, "id");
        String str5 = str2;
        j.b(str5, DefaultAppMeasurementEventListenerRegistrar.NAME);
        EntityState entityState2 = entityState;
        j.b(entityState2, "videoState");
        String str6 = str4;
        j.b(str6, "referrer");
        CinemaActionsItem cinemaActionsItem = new CinemaActionsItem(str, str5, num, num2, z, str3, num3, z2, z3, entityState2, downloaderProgressInfo, str6);
        return cinemaActionsItem;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof CinemaActionsItem) {
                CinemaActionsItem cinemaActionsItem = (CinemaActionsItem) obj;
                if (j.a((Object) this.id, (Object) cinemaActionsItem.id) && j.a((Object) this.name, (Object) cinemaActionsItem.name) && j.a((Object) this.price, (Object) cinemaActionsItem.price) && j.a((Object) this.priceBeforeDiscount, (Object) cinemaActionsItem.priceBeforeDiscount)) {
                    if ((this.downloadable == cinemaActionsItem.downloadable) && j.a((Object) this.downloadDescription, (Object) cinemaActionsItem.downloadDescription) && j.a((Object) this.episodeIndex, (Object) cinemaActionsItem.episodeIndex)) {
                        if (this.isBought == cinemaActionsItem.isBought) {
                            if (!(this.showLoadingButton == cinemaActionsItem.showLoadingButton) || !j.a((Object) this.videoState, (Object) cinemaActionsItem.videoState) || !j.a((Object) this.progressInfo, (Object) cinemaActionsItem.progressInfo) || !j.a((Object) this.referrer, (Object) cinemaActionsItem.referrer)) {
                                return false;
                            }
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final String getDownloadDescription() {
        return this.downloadDescription;
    }

    public final boolean getDownloadable() {
        return this.downloadable;
    }

    public final Integer getEpisodeIndex() {
        return this.episodeIndex;
    }

    public final String getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final Integer getPrice() {
        return this.price;
    }

    public final Integer getPriceBeforeDiscount() {
        return this.priceBeforeDiscount;
    }

    public final DownloaderProgressInfo getProgressInfo() {
        return this.progressInfo;
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public final boolean getShowLoadingButton() {
        return this.showLoadingButton;
    }

    public final EntityState getVideoState() {
        return this.videoState;
    }

    public int getViewType() {
        return this.viewType;
    }

    public int hashCode() {
        String str = this.id;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.name;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        Integer num = this.price;
        int hashCode3 = (hashCode2 + (num != null ? num.hashCode() : 0)) * 31;
        Integer num2 = this.priceBeforeDiscount;
        int hashCode4 = (hashCode3 + (num2 != null ? num2.hashCode() : 0)) * 31;
        boolean z = this.downloadable;
        if (z) {
            z = true;
        }
        int i3 = (hashCode4 + (z ? 1 : 0)) * 31;
        String str3 = this.downloadDescription;
        int hashCode5 = (i3 + (str3 != null ? str3.hashCode() : 0)) * 31;
        Integer num3 = this.episodeIndex;
        int hashCode6 = (hashCode5 + (num3 != null ? num3.hashCode() : 0)) * 31;
        boolean z2 = this.isBought;
        if (z2) {
            z2 = true;
        }
        int i4 = (hashCode6 + (z2 ? 1 : 0)) * 31;
        boolean z3 = this.showLoadingButton;
        if (z3) {
            z3 = true;
        }
        int i5 = (i4 + (z3 ? 1 : 0)) * 31;
        EntityState entityState = this.videoState;
        int hashCode7 = (i5 + (entityState != null ? entityState.hashCode() : 0)) * 31;
        DownloaderProgressInfo downloaderProgressInfo = this.progressInfo;
        int hashCode8 = (hashCode7 + (downloaderProgressInfo != null ? downloaderProgressInfo.hashCode() : 0)) * 31;
        String str4 = this.referrer;
        if (str4 != null) {
            i2 = str4.hashCode();
        }
        return hashCode8 + i2;
    }

    public final boolean isBought() {
        return this.isBought;
    }

    public final boolean isFree() {
        Integer num = this.price;
        return num == null || (num != null && num.intValue() == 0) || this.isBought;
    }

    public final void setBought(boolean z) {
        this.isBought = z;
    }

    public final void setProgressInfo(DownloaderProgressInfo downloaderProgressInfo) {
        this.progressInfo = downloaderProgressInfo;
    }

    public final void setShowLoadingButton(boolean z) {
        this.showLoadingButton = z;
    }

    public final void setVideoState(EntityState entityState) {
        j.b(entityState, "<set-?>");
        this.videoState = entityState;
    }

    public String toString() {
        return "CinemaActionsItem(id=" + this.id + ", name=" + this.name + ", price=" + this.price + ", priceBeforeDiscount=" + this.priceBeforeDiscount + ", downloadable=" + this.downloadable + ", downloadDescription=" + this.downloadDescription + ", episodeIndex=" + this.episodeIndex + ", isBought=" + this.isBought + ", showLoadingButton=" + this.showLoadingButton + ", videoState=" + this.videoState + ", progressInfo=" + this.progressInfo + ", referrer=" + this.referrer + ")";
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public /* synthetic */ CinemaActionsItem(java.lang.String r17, java.lang.String r18, java.lang.Integer r19, java.lang.Integer r20, boolean r21, java.lang.String r22, java.lang.Integer r23, boolean r24, boolean r25, com.farsitel.bazaar.common.model.ui.EntityState r26, com.farsitel.bazaar.common.model.DownloaderProgressInfo r27, java.lang.String r28, int r29, h.f.b.f r30) {
        /*
            r16 = this;
            r0 = r29
            r1 = r0 & 128(0x80, float:1.794E-43)
            r2 = 0
            if (r1 == 0) goto L_0x0009
            r11 = 0
            goto L_0x000b
        L_0x0009:
            r11 = r24
        L_0x000b:
            r1 = r0 & 256(0x100, float:3.59E-43)
            if (r1 == 0) goto L_0x0011
            r12 = 0
            goto L_0x0013
        L_0x0011:
            r12 = r25
        L_0x0013:
            r1 = r0 & 512(0x200, float:7.175E-43)
            if (r1 == 0) goto L_0x001b
            com.farsitel.bazaar.common.model.ui.EntityState r1 = com.farsitel.bazaar.common.model.ui.EntityState.NONE
            r13 = r1
            goto L_0x001d
        L_0x001b:
            r13 = r26
        L_0x001d:
            r0 = r0 & 1024(0x400, float:1.435E-42)
            if (r0 == 0) goto L_0x0024
            r0 = 0
            r14 = r0
            goto L_0x0026
        L_0x0024:
            r14 = r27
        L_0x0026:
            r3 = r16
            r4 = r17
            r5 = r18
            r6 = r19
            r7 = r20
            r8 = r21
            r9 = r22
            r10 = r23
            r15 = r28
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.cinema.CinemaActionsItem.<init>(java.lang.String, java.lang.String, java.lang.Integer, java.lang.Integer, boolean, java.lang.String, java.lang.Integer, boolean, boolean, com.farsitel.bazaar.common.model.ui.EntityState, com.farsitel.bazaar.common.model.DownloaderProgressInfo, java.lang.String, int, h.f.b.f):void");
    }
}
