package com.farsitel.bazaar.common.model.cinema;

import com.crashlytics.android.answers.SessionEventTransform;
import com.farsitel.bazaar.common.model.VideoPurchaseState;
import com.farsitel.bazaar.common.model.VideoSubtitle;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;
import java.util.List;

/* compiled from: VideoDetail.kt */
public final class VideoPlayInfoModel implements Serializable {
    public final VideoPurchaseState buyInfo;
    public final PlayedVideoDetails details;
    public final String entityId;
    public final String referrer;
    public final RefreshData refreshData;
    public final List<VideoSubtitle> subtitles;
    public final String videoUrl;
    public final String waterMarkUrl;

    public VideoPlayInfoModel(String str, VideoPurchaseState videoPurchaseState, String str2, String str3, RefreshData refreshData2, List<VideoSubtitle> list, PlayedVideoDetails playedVideoDetails, String str4) {
        j.b(str, "entityId");
        j.b(videoPurchaseState, "buyInfo");
        j.b(str2, "videoUrl");
        j.b(playedVideoDetails, SessionEventTransform.DETAILS_KEY);
        j.b(str4, "referrer");
        this.entityId = str;
        this.buyInfo = videoPurchaseState;
        this.videoUrl = str2;
        this.waterMarkUrl = str3;
        this.refreshData = refreshData2;
        this.subtitles = list;
        this.details = playedVideoDetails;
        this.referrer = str4;
    }

    public static /* synthetic */ VideoPlayInfoModel copy$default(VideoPlayInfoModel videoPlayInfoModel, String str, VideoPurchaseState videoPurchaseState, String str2, String str3, RefreshData refreshData2, List list, PlayedVideoDetails playedVideoDetails, String str4, int i2, Object obj) {
        VideoPlayInfoModel videoPlayInfoModel2 = videoPlayInfoModel;
        int i3 = i2;
        return videoPlayInfoModel.copy((i3 & 1) != 0 ? videoPlayInfoModel2.entityId : str, (i3 & 2) != 0 ? videoPlayInfoModel2.buyInfo : videoPurchaseState, (i3 & 4) != 0 ? videoPlayInfoModel2.videoUrl : str2, (i3 & 8) != 0 ? videoPlayInfoModel2.waterMarkUrl : str3, (i3 & 16) != 0 ? videoPlayInfoModel2.refreshData : refreshData2, (i3 & 32) != 0 ? videoPlayInfoModel2.subtitles : list, (i3 & 64) != 0 ? videoPlayInfoModel2.details : playedVideoDetails, (i3 & 128) != 0 ? videoPlayInfoModel2.referrer : str4);
    }

    public final String component1() {
        return this.entityId;
    }

    public final VideoPurchaseState component2() {
        return this.buyInfo;
    }

    public final String component3() {
        return this.videoUrl;
    }

    public final String component4() {
        return this.waterMarkUrl;
    }

    public final RefreshData component5() {
        return this.refreshData;
    }

    public final List<VideoSubtitle> component6() {
        return this.subtitles;
    }

    public final PlayedVideoDetails component7() {
        return this.details;
    }

    public final String component8() {
        return this.referrer;
    }

    public final VideoPlayInfoModel copy(String str, VideoPurchaseState videoPurchaseState, String str2, String str3, RefreshData refreshData2, List<VideoSubtitle> list, PlayedVideoDetails playedVideoDetails, String str4) {
        j.b(str, "entityId");
        j.b(videoPurchaseState, "buyInfo");
        j.b(str2, "videoUrl");
        PlayedVideoDetails playedVideoDetails2 = playedVideoDetails;
        j.b(playedVideoDetails2, SessionEventTransform.DETAILS_KEY);
        String str5 = str4;
        j.b(str5, "referrer");
        VideoPlayInfoModel videoPlayInfoModel = new VideoPlayInfoModel(str, videoPurchaseState, str2, str3, refreshData2, list, playedVideoDetails2, str5);
        return videoPlayInfoModel;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0056, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.referrer, (java.lang.Object) r3.referrer) != false) goto L_0x005b;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x005b
            boolean r0 = r3 instanceof com.farsitel.bazaar.common.model.cinema.VideoPlayInfoModel
            if (r0 == 0) goto L_0x0059
            com.farsitel.bazaar.common.model.cinema.VideoPlayInfoModel r3 = (com.farsitel.bazaar.common.model.cinema.VideoPlayInfoModel) r3
            java.lang.String r0 = r2.entityId
            java.lang.String r1 = r3.entityId
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0059
            com.farsitel.bazaar.common.model.VideoPurchaseState r0 = r2.buyInfo
            com.farsitel.bazaar.common.model.VideoPurchaseState r1 = r3.buyInfo
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0059
            java.lang.String r0 = r2.videoUrl
            java.lang.String r1 = r3.videoUrl
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0059
            java.lang.String r0 = r2.waterMarkUrl
            java.lang.String r1 = r3.waterMarkUrl
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0059
            com.farsitel.bazaar.common.model.cinema.RefreshData r0 = r2.refreshData
            com.farsitel.bazaar.common.model.cinema.RefreshData r1 = r3.refreshData
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0059
            java.util.List<com.farsitel.bazaar.common.model.VideoSubtitle> r0 = r2.subtitles
            java.util.List<com.farsitel.bazaar.common.model.VideoSubtitle> r1 = r3.subtitles
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0059
            com.farsitel.bazaar.common.model.cinema.PlayedVideoDetails r0 = r2.details
            com.farsitel.bazaar.common.model.cinema.PlayedVideoDetails r1 = r3.details
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0059
            java.lang.String r0 = r2.referrer
            java.lang.String r3 = r3.referrer
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x0059
            goto L_0x005b
        L_0x0059:
            r3 = 0
            return r3
        L_0x005b:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.cinema.VideoPlayInfoModel.equals(java.lang.Object):boolean");
    }

    public final VideoPurchaseState getBuyInfo() {
        return this.buyInfo;
    }

    public final PlayedVideoDetails getDetails() {
        return this.details;
    }

    public final String getEntityId() {
        return this.entityId;
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public final RefreshData getRefreshData() {
        return this.refreshData;
    }

    public final List<VideoSubtitle> getSubtitles() {
        return this.subtitles;
    }

    public final String getVideoUrl() {
        return this.videoUrl;
    }

    public final String getWaterMarkUrl() {
        return this.waterMarkUrl;
    }

    public int hashCode() {
        String str = this.entityId;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        VideoPurchaseState videoPurchaseState = this.buyInfo;
        int hashCode2 = (hashCode + (videoPurchaseState != null ? videoPurchaseState.hashCode() : 0)) * 31;
        String str2 = this.videoUrl;
        int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.waterMarkUrl;
        int hashCode4 = (hashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31;
        RefreshData refreshData2 = this.refreshData;
        int hashCode5 = (hashCode4 + (refreshData2 != null ? refreshData2.hashCode() : 0)) * 31;
        List<VideoSubtitle> list = this.subtitles;
        int hashCode6 = (hashCode5 + (list != null ? list.hashCode() : 0)) * 31;
        PlayedVideoDetails playedVideoDetails = this.details;
        int hashCode7 = (hashCode6 + (playedVideoDetails != null ? playedVideoDetails.hashCode() : 0)) * 31;
        String str4 = this.referrer;
        if (str4 != null) {
            i2 = str4.hashCode();
        }
        return hashCode7 + i2;
    }

    public final boolean isAddToPlayedList() {
        return this.details.getTitle().length() > 0;
    }

    public String toString() {
        return "VideoPlayInfoModel(entityId=" + this.entityId + ", buyInfo=" + this.buyInfo + ", videoUrl=" + this.videoUrl + ", waterMarkUrl=" + this.waterMarkUrl + ", refreshData=" + this.refreshData + ", subtitles=" + this.subtitles + ", details=" + this.details + ", referrer=" + this.referrer + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ VideoPlayInfoModel(String str, VideoPurchaseState videoPurchaseState, String str2, String str3, RefreshData refreshData2, List list, PlayedVideoDetails playedVideoDetails, String str4, int i2, f fVar) {
        this(str, videoPurchaseState, str2, (i2 & 8) != 0 ? null : str3, (i2 & 16) != 0 ? null : refreshData2, (i2 & 32) != 0 ? null : list, playedVideoDetails, str4);
    }
}
