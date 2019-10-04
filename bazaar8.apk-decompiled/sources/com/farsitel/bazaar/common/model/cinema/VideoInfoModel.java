package com.farsitel.bazaar.common.model.cinema;

import h.f.b.j;

/* compiled from: VideoDetail.kt */
public final class VideoInfoModel {
    public final String referrer;
    public final String videoId;

    public VideoInfoModel(String str, String str2) {
        j.b(str, "videoId");
        j.b(str2, "referrer");
        this.videoId = str;
        this.referrer = str2;
    }

    public static /* synthetic */ VideoInfoModel copy$default(VideoInfoModel videoInfoModel, String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = videoInfoModel.videoId;
        }
        if ((i2 & 2) != 0) {
            str2 = videoInfoModel.referrer;
        }
        return videoInfoModel.copy(str, str2);
    }

    public final String component1() {
        return this.videoId;
    }

    public final String component2() {
        return this.referrer;
    }

    public final VideoInfoModel copy(String str, String str2) {
        j.b(str, "videoId");
        j.b(str2, "referrer");
        return new VideoInfoModel(str, str2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.referrer, (java.lang.Object) r3.referrer) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.cinema.VideoInfoModel
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.common.model.cinema.VideoInfoModel r3 = (com.farsitel.bazaar.common.model.cinema.VideoInfoModel) r3
            java.lang.String r0 = r2.videoId
            java.lang.String r1 = r3.videoId
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            java.lang.String r0 = r2.referrer
            java.lang.String r3 = r3.referrer
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x001d
            goto L_0x001f
        L_0x001d:
            r3 = 0
            return r3
        L_0x001f:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.cinema.VideoInfoModel.equals(java.lang.Object):boolean");
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public final String getVideoId() {
        return this.videoId;
    }

    public int hashCode() {
        String str = this.videoId;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.referrer;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "VideoInfoModel(videoId=" + this.videoId + ", referrer=" + this.referrer + ")";
    }
}
