package com.farsitel.bazaar.common.model.cinema;

import com.crashlytics.android.core.DefaultAppMeasurementEventListenerRegistrar;
import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;
import java.util.ArrayList;

/* compiled from: ViewHolderItem.kt */
public class CinemaInfoItem implements RecyclerData {
    public final CinemaScreenshotItem cover;
    public final ArrayList<GenreItem> genres;
    public final String headerImage;
    public final String id;
    public final boolean isLive;
    public final String name;
    public final PublisherModel publisher;
    public final String referrer;
    public final String shareMessage;
    public final int viewType = CinemaViewItemType.CINEMA_INFO.ordinal();

    public CinemaInfoItem(String str, String str2, ArrayList<GenreItem> arrayList, PublisherModel publisherModel, CinemaScreenshotItem cinemaScreenshotItem, String str3, String str4, boolean z, String str5) {
        j.b(str, "id");
        j.b(str2, DefaultAppMeasurementEventListenerRegistrar.NAME);
        j.b(str5, "referrer");
        this.id = str;
        this.name = str2;
        this.genres = arrayList;
        this.publisher = publisherModel;
        this.cover = cinemaScreenshotItem;
        this.shareMessage = str3;
        this.headerImage = str4;
        this.isLive = z;
        this.referrer = str5;
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

    public String getShareMessage() {
        return this.shareMessage;
    }

    public int getViewType() {
        return this.viewType;
    }

    public final boolean isLive() {
        return this.isLive;
    }
}
