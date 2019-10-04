package com.farsitel.bazaar.ui.cinema.download;

import com.farsitel.bazaar.R;
import com.farsitel.bazaar.app.BazaarApp;
import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;

/* compiled from: ViewHolderItem.kt */
public final class VideoDownloadQualityHeader implements RecyclerData {
    public final boolean showVideoRemainingCount;
    public final String storageFreeSpace;
    public final String videoDesc;
    public final String videoName;
    public final int videoRemainingDownloadCount;
    public final int viewType = VideoDownloadQualityViewType.HEADER.ordinal();

    public VideoDownloadQualityHeader(String str, int i2, String str2, String str3) {
        j.b(str, "videoName");
        j.b(str2, "storageFreeSpace");
        this.videoName = str;
        this.videoRemainingDownloadCount = i2;
        this.storageFreeSpace = str2;
        this.videoDesc = str3;
        this.showVideoRemainingCount = this.videoRemainingDownloadCount >= 0;
    }

    public final String a() {
        String string = BazaarApp.f12104i.a().getString(R.string.video_download_remaining_capacity, new Object[]{this.storageFreeSpace});
        j.a((Object) string, "BazaarApp.instance.getSt…pacity, storageFreeSpace)");
        return string;
    }

    public final String b() {
        return this.videoDesc;
    }

    public final String c() {
        return this.videoName;
    }

    public int getViewType() {
        return this.viewType;
    }
}
