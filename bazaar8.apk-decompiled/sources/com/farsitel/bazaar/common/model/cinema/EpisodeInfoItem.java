package com.farsitel.bazaar.common.model.cinema;

import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import h.f.b.j;
import java.util.ArrayList;

/* compiled from: ViewHolderItem.kt */
public final class EpisodeInfoItem extends CinemaInfoItem {
    public final CinemaScreenshotItem cover;
    public final ArrayList<GenreItem> genres;
    public final String headerImage;
    public final String id;
    public final String name;
    public final PublisherModel publisher;
    public final String referrer;
    public final String seriesId;
    public final String shareMessage;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public EpisodeInfoItem(String str, String str2, String str3, ArrayList<GenreItem> arrayList, PublisherModel publisherModel, CinemaScreenshotItem cinemaScreenshotItem, String str4, String str5, String str6) {
        super(str, str3, arrayList, publisherModel, cinemaScreenshotItem, str4, str5, false, str6);
        String str7 = str;
        String str8 = str2;
        String str9 = str3;
        String str10 = str6;
        j.b(str7, "id");
        j.b(str8, "seriesId");
        j.b(str9, DefaultAppMeasurementEventListenerRegistrar.NAME);
        j.b(str10, "referrer");
        this.id = str7;
        this.seriesId = str8;
        this.name = str9;
        this.genres = arrayList;
        this.publisher = publisherModel;
        this.cover = cinemaScreenshotItem;
        this.shareMessage = str4;
        this.headerImage = str5;
        this.referrer = str10;
    }

    public static /* synthetic */ EpisodeInfoItem copy$default(EpisodeInfoItem episodeInfoItem, String str, String str2, String str3, ArrayList arrayList, PublisherModel publisherModel, CinemaScreenshotItem cinemaScreenshotItem, String str4, String str5, String str6, int i2, Object obj) {
        String str7;
        int i3 = i2;
        String id2 = (i3 & 1) != 0 ? episodeInfoItem.getId() : str;
        if ((i3 & 2) != 0) {
            str7 = episodeInfoItem.seriesId;
        } else {
            EpisodeInfoItem episodeInfoItem2 = episodeInfoItem;
            str7 = str2;
        }
        return episodeInfoItem.copy(id2, str7, (i3 & 4) != 0 ? episodeInfoItem.getName() : str3, (i3 & 8) != 0 ? episodeInfoItem.getGenres() : arrayList, (i3 & 16) != 0 ? episodeInfoItem.getPublisher() : publisherModel, (i3 & 32) != 0 ? episodeInfoItem.getCover() : cinemaScreenshotItem, (i3 & 64) != 0 ? episodeInfoItem.getShareMessage() : str4, (i3 & 128) != 0 ? episodeInfoItem.getHeaderImage() : str5, (i3 & 256) != 0 ? episodeInfoItem.getReferrer() : str6);
    }

    public final String component1() {
        return getId();
    }

    public final String component2() {
        return this.seriesId;
    }

    public final String component3() {
        return getName();
    }

    public final ArrayList<GenreItem> component4() {
        return getGenres();
    }

    public final PublisherModel component5() {
        return getPublisher();
    }

    public final CinemaScreenshotItem component6() {
        return getCover();
    }

    public final String component7() {
        return getShareMessage();
    }

    public final String component8() {
        return getHeaderImage();
    }

    public final String component9() {
        return getReferrer();
    }

    public final EpisodeInfoItem copy(String str, String str2, String str3, ArrayList<GenreItem> arrayList, PublisherModel publisherModel, CinemaScreenshotItem cinemaScreenshotItem, String str4, String str5, String str6) {
        j.b(str, "id");
        j.b(str2, "seriesId");
        j.b(str3, DefaultAppMeasurementEventListenerRegistrar.NAME);
        String str7 = str6;
        j.b(str7, "referrer");
        EpisodeInfoItem episodeInfoItem = new EpisodeInfoItem(str, str2, str3, arrayList, publisherModel, cinemaScreenshotItem, str4, str5, str7);
        return episodeInfoItem;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0080, code lost:
        if (h.f.b.j.a((java.lang.Object) getReferrer(), (java.lang.Object) r3.getReferrer()) != false) goto L_0x0085;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0085
            boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.cinema.EpisodeInfoItem
            if (r0 == 0) goto L_0x0083
            com.farsitel.bazaar.common.model.cinema.EpisodeInfoItem r3 = (com.farsitel.bazaar.common.model.cinema.EpisodeInfoItem) r3
            java.lang.String r0 = r2.getId()
            java.lang.String r1 = r3.getId()
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0083
            java.lang.String r0 = r2.seriesId
            java.lang.String r1 = r3.seriesId
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0083
            java.lang.String r0 = r2.getName()
            java.lang.String r1 = r3.getName()
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0083
            java.util.ArrayList r0 = r2.getGenres()
            java.util.ArrayList r1 = r3.getGenres()
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0083
            com.farsitel.bazaar.common.model.cinema.PublisherModel r0 = r2.getPublisher()
            com.farsitel.bazaar.common.model.cinema.PublisherModel r1 = r3.getPublisher()
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0083
            com.farsitel.bazaar.common.model.cinema.CinemaScreenshotItem r0 = r2.getCover()
            com.farsitel.bazaar.common.model.cinema.CinemaScreenshotItem r1 = r3.getCover()
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0083
            java.lang.String r0 = r2.getShareMessage()
            java.lang.String r1 = r3.getShareMessage()
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0083
            java.lang.String r0 = r2.getHeaderImage()
            java.lang.String r1 = r3.getHeaderImage()
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0083
            java.lang.String r0 = r2.getReferrer()
            java.lang.String r3 = r3.getReferrer()
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x0083
            goto L_0x0085
        L_0x0083:
            r3 = 0
            return r3
        L_0x0085:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.cinema.EpisodeInfoItem.equals(java.lang.Object):boolean");
    }

    public CinemaScreenshotItem getCover() {
        return this.cover;
    }

    public ArrayList<GenreItem> getGenres() {
        return this.genres;
    }

    public String getHeaderImage() {
        return this.headerImage;
    }

    public String getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public PublisherModel getPublisher() {
        return this.publisher;
    }

    public String getReferrer() {
        return this.referrer;
    }

    public final String getSeriesId() {
        return this.seriesId;
    }

    public String getShareMessage() {
        return this.shareMessage;
    }

    public int hashCode() {
        String id2 = getId();
        int i2 = 0;
        int hashCode = (id2 != null ? id2.hashCode() : 0) * 31;
        String str = this.seriesId;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String name2 = getName();
        int hashCode3 = (hashCode2 + (name2 != null ? name2.hashCode() : 0)) * 31;
        ArrayList<GenreItem> genres2 = getGenres();
        int hashCode4 = (hashCode3 + (genres2 != null ? genres2.hashCode() : 0)) * 31;
        PublisherModel publisher2 = getPublisher();
        int hashCode5 = (hashCode4 + (publisher2 != null ? publisher2.hashCode() : 0)) * 31;
        CinemaScreenshotItem cover2 = getCover();
        int hashCode6 = (hashCode5 + (cover2 != null ? cover2.hashCode() : 0)) * 31;
        String shareMessage2 = getShareMessage();
        int hashCode7 = (hashCode6 + (shareMessage2 != null ? shareMessage2.hashCode() : 0)) * 31;
        String headerImage2 = getHeaderImage();
        int hashCode8 = (hashCode7 + (headerImage2 != null ? headerImage2.hashCode() : 0)) * 31;
        String referrer2 = getReferrer();
        if (referrer2 != null) {
            i2 = referrer2.hashCode();
        }
        return hashCode8 + i2;
    }

    public String toString() {
        return "EpisodeInfoItem(id=" + getId() + ", seriesId=" + this.seriesId + ", name=" + getName() + ", genres=" + getGenres() + ", publisher=" + getPublisher() + ", cover=" + getCover() + ", shareMessage=" + getShareMessage() + ", headerImage=" + getHeaderImage() + ", referrer=" + getReferrer() + ")";
    }
}
