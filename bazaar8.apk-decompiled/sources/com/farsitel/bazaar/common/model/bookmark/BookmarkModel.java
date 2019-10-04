package com.farsitel.bazaar.common.model.bookmark;

import h.f.b.j;

/* compiled from: BookmarkModel.kt */
public final class BookmarkModel {
    public final String appName;
    public final String iconUrl;
    public final boolean isBookmarked;
    public final String packageName;
    public final int price;
    public final String priceString;

    public BookmarkModel(String str, String str2, String str3, boolean z, int i2, String str4) {
        j.b(str, "packageName");
        j.b(str2, "iconUrl");
        j.b(str3, "appName");
        this.packageName = str;
        this.iconUrl = str2;
        this.appName = str3;
        this.isBookmarked = z;
        this.price = i2;
        this.priceString = str4;
    }

    public final String getAppName() {
        return this.appName;
    }

    public final String getIconUrl() {
        return this.iconUrl;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final int getPrice() {
        return this.price;
    }

    public final String getPriceString() {
        return this.priceString;
    }

    public final boolean isBookmarked() {
        return this.isBookmarked;
    }
}
