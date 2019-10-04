package com.farsitel.bazaar.common.model;

import h.f.b.j;

/* compiled from: VideoDownloadQualityInfo.kt */
public final class VideoDownloadQuality {
    public final VideoDownloadQualityInfo info;

    public VideoDownloadQuality(VideoDownloadQualityInfo videoDownloadQualityInfo) {
        j.b(videoDownloadQualityInfo, "info");
        this.info = videoDownloadQualityInfo;
    }

    public final VideoDownloadQualityInfo getInfo() {
        return this.info;
    }
}
