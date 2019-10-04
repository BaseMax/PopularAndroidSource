package com.farsitel.bazaar.common.model.common;

import android.os.Parcelable;
import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;

/* compiled from: EntityScreenshotItem.kt */
public abstract class EntityScreenshotItem implements RecyclerData, Parcelable {
    public final boolean isImage;
    public final String mainUrl;
    public final String thumbnailUrl;

    public EntityScreenshotItem(String str, String str2, boolean z) {
        j.b(str, "mainUrl");
        j.b(str2, "thumbnailUrl");
        this.mainUrl = str;
        this.thumbnailUrl = str2;
        this.isImage = z;
    }

    public int describeContents() {
        return 0;
    }

    public String getMainUrl() {
        return this.mainUrl;
    }

    public String getThumbnailUrl() {
        return this.thumbnailUrl;
    }

    public abstract int getViewType();

    public boolean isImage() {
        return this.isImage;
    }
}
