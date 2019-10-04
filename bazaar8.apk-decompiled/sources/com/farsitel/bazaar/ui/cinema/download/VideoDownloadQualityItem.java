package com.farsitel.bazaar.ui.cinema.download;

import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;

/* compiled from: ViewHolderItem.kt */
public final class VideoDownloadQualityItem implements RecyclerData {
    public final boolean hasFreeSize;
    public final String id;
    public final String label;
    public final String size;
    public final int viewType = VideoDownloadQualityViewType.NORMAL.ordinal();

    public VideoDownloadQualityItem(String str, String str2, String str3, boolean z) {
        j.b(str, "id");
        j.b(str2, "size");
        j.b(str3, "label");
        this.id = str;
        this.size = str2;
        this.label = str3;
        this.hasFreeSize = z;
    }

    public final boolean a() {
        return this.hasFreeSize;
    }

    public final String b() {
        return this.id;
    }

    public final String c() {
        return this.label;
    }

    public final String d() {
        return this.size;
    }

    public int getViewType() {
        return this.viewType;
    }
}
