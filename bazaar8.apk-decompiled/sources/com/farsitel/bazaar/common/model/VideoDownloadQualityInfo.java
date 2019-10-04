package com.farsitel.bazaar.common.model;

import h.f.b.f;
import h.f.b.j;
import java.util.List;

/* compiled from: VideoDownloadQualityInfo.kt */
public final class VideoDownloadQualityInfo {
    public final Long _expireTime;
    public final String coverVideo;
    public final String description;
    public final VideoPurchaseState purchaseState;
    public final String referrer;
    public final Integer remainingDownloadCount;
    public final List<VideoSubtitle> subtitles;
    public final List<VideoDownloadItemModel> videoDownloadItemModels;

    public VideoDownloadQualityInfo(String str, Long l2, String str2, Integer num, List<VideoDownloadItemModel> list, List<VideoSubtitle> list2, VideoPurchaseState videoPurchaseState, String str3) {
        j.b(str, "coverVideo");
        j.b(list, "videoDownloadItemModels");
        j.b(str3, "referrer");
        this.coverVideo = str;
        this._expireTime = l2;
        this.description = str2;
        this.remainingDownloadCount = num;
        this.videoDownloadItemModels = list;
        this.subtitles = list2;
        this.purchaseState = videoPurchaseState;
        this.referrer = str3;
    }

    public final String getCoverVideo() {
        return this.coverVideo;
    }

    public final String getDescription() {
        return this.description;
    }

    public final long getExpireTime() {
        Long l2 = this._expireTime;
        if (l2 != null) {
            return l2.longValue();
        }
        return -1;
    }

    public final VideoPurchaseState getPurchaseState() {
        return this.purchaseState;
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public final Integer getRemainingDownloadCount() {
        return this.remainingDownloadCount;
    }

    public final List<VideoSubtitle> getSubtitles() {
        return this.subtitles;
    }

    public final List<VideoDownloadItemModel> getVideoDownloadItemModels() {
        return this.videoDownloadItemModels;
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ VideoDownloadQualityInfo(String str, Long l2, String str2, Integer num, List list, List list2, VideoPurchaseState videoPurchaseState, String str3, int i2, f fVar) {
        this(str, (i2 & 2) != 0 ? null : l2, (i2 & 4) != 0 ? null : str2, num, list, (i2 & 32) != 0 ? null : list2, (i2 & 64) != 0 ? null : videoPurchaseState, str3);
    }
}
