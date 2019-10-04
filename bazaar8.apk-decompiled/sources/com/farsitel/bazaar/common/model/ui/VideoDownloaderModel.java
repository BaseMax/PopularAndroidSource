package com.farsitel.bazaar.common.model.ui;

import com.farsitel.bazaar.common.model.VideoPurchaseState;
import com.farsitel.bazaar.common.model.VideoSubtitle;
import h.f.b.j;
import java.io.Serializable;
import java.util.List;

/* compiled from: VideoDownloaderModel.kt */
public final class VideoDownloaderModel implements Serializable {
    public final String coverUrl;
    public final String downloadId;
    public final VideoPurchaseState downloadType;
    public final long expirationDate;
    public final boolean isFree;
    public final String qualityString;
    public final String referrer;
    public final String shareLink;
    public final List<VideoSubtitle> subtitleUrls;
    public final String videoDesc;
    public final String videoId;
    public final String videoName;
    public final List<String> videoUrl;

    public VideoDownloaderModel(String str, String str2, List<VideoSubtitle> list, String str3, List<String> list2, String str4, String str5, String str6, String str7, VideoPurchaseState videoPurchaseState, long j2, String str8) {
        j.b(str, "downloadId");
        j.b(str2, "videoId");
        j.b(str3, "coverUrl");
        j.b(list2, "videoUrl");
        j.b(str4, "videoName");
        j.b(str7, "qualityString");
        j.b(str8, "referrer");
        this.downloadId = str;
        this.videoId = str2;
        this.subtitleUrls = list;
        this.coverUrl = str3;
        this.videoUrl = list2;
        this.videoName = str4;
        this.videoDesc = str5;
        this.shareLink = str6;
        this.qualityString = str7;
        this.downloadType = videoPurchaseState;
        this.expirationDate = j2;
        this.referrer = str8;
        this.isFree = this.downloadType == VideoPurchaseState.FREE;
    }

    public static /* synthetic */ VideoDownloaderModel copy$default(VideoDownloaderModel videoDownloaderModel, String str, String str2, List list, String str3, List list2, String str4, String str5, String str6, String str7, VideoPurchaseState videoPurchaseState, long j2, String str8, int i2, Object obj) {
        VideoDownloaderModel videoDownloaderModel2 = videoDownloaderModel;
        int i3 = i2;
        return videoDownloaderModel.copy((i3 & 1) != 0 ? videoDownloaderModel2.downloadId : str, (i3 & 2) != 0 ? videoDownloaderModel2.videoId : str2, (i3 & 4) != 0 ? videoDownloaderModel2.subtitleUrls : list, (i3 & 8) != 0 ? videoDownloaderModel2.coverUrl : str3, (i3 & 16) != 0 ? videoDownloaderModel2.videoUrl : list2, (i3 & 32) != 0 ? videoDownloaderModel2.videoName : str4, (i3 & 64) != 0 ? videoDownloaderModel2.videoDesc : str5, (i3 & 128) != 0 ? videoDownloaderModel2.shareLink : str6, (i3 & 256) != 0 ? videoDownloaderModel2.qualityString : str7, (i3 & 512) != 0 ? videoDownloaderModel2.downloadType : videoPurchaseState, (i3 & 1024) != 0 ? videoDownloaderModel2.expirationDate : j2, (i3 & 2048) != 0 ? videoDownloaderModel2.referrer : str8);
    }

    public final String component1() {
        return this.downloadId;
    }

    public final VideoPurchaseState component10() {
        return this.downloadType;
    }

    public final long component11() {
        return this.expirationDate;
    }

    public final String component12() {
        return this.referrer;
    }

    public final String component2() {
        return this.videoId;
    }

    public final List<VideoSubtitle> component3() {
        return this.subtitleUrls;
    }

    public final String component4() {
        return this.coverUrl;
    }

    public final List<String> component5() {
        return this.videoUrl;
    }

    public final String component6() {
        return this.videoName;
    }

    public final String component7() {
        return this.videoDesc;
    }

    public final String component8() {
        return this.shareLink;
    }

    public final String component9() {
        return this.qualityString;
    }

    public final VideoDownloaderModel copy(String str, String str2, List<VideoSubtitle> list, String str3, List<String> list2, String str4, String str5, String str6, String str7, VideoPurchaseState videoPurchaseState, long j2, String str8) {
        String str9 = str;
        j.b(str9, "downloadId");
        String str10 = str2;
        j.b(str10, "videoId");
        String str11 = str3;
        j.b(str11, "coverUrl");
        List<String> list3 = list2;
        j.b(list3, "videoUrl");
        String str12 = str4;
        j.b(str12, "videoName");
        String str13 = str7;
        j.b(str13, "qualityString");
        String str14 = str8;
        j.b(str14, "referrer");
        VideoDownloaderModel videoDownloaderModel = new VideoDownloaderModel(str9, str10, list, str11, list3, str12, str5, str6, str13, videoPurchaseState, j2, str14);
        return videoDownloaderModel;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof VideoDownloaderModel) {
                VideoDownloaderModel videoDownloaderModel = (VideoDownloaderModel) obj;
                if (j.a((Object) this.downloadId, (Object) videoDownloaderModel.downloadId) && j.a((Object) this.videoId, (Object) videoDownloaderModel.videoId) && j.a((Object) this.subtitleUrls, (Object) videoDownloaderModel.subtitleUrls) && j.a((Object) this.coverUrl, (Object) videoDownloaderModel.coverUrl) && j.a((Object) this.videoUrl, (Object) videoDownloaderModel.videoUrl) && j.a((Object) this.videoName, (Object) videoDownloaderModel.videoName) && j.a((Object) this.videoDesc, (Object) videoDownloaderModel.videoDesc) && j.a((Object) this.shareLink, (Object) videoDownloaderModel.shareLink) && j.a((Object) this.qualityString, (Object) videoDownloaderModel.qualityString) && j.a((Object) this.downloadType, (Object) videoDownloaderModel.downloadType)) {
                    if (!(this.expirationDate == videoDownloaderModel.expirationDate) || !j.a((Object) this.referrer, (Object) videoDownloaderModel.referrer)) {
                        return false;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final String getCoverUrl() {
        return this.coverUrl;
    }

    public final String getDownloadId() {
        return this.downloadId;
    }

    public final VideoPurchaseState getDownloadType() {
        return this.downloadType;
    }

    public final long getExpirationDate() {
        return this.expirationDate;
    }

    public final String getQualityString() {
        return this.qualityString;
    }

    public final String getReferrer() {
        return this.referrer;
    }

    public final String getShareLink() {
        return this.shareLink;
    }

    public final List<VideoSubtitle> getSubtitleUrls() {
        return this.subtitleUrls;
    }

    public final String getVideoDesc() {
        return this.videoDesc;
    }

    public final String getVideoId() {
        return this.videoId;
    }

    public final String getVideoName() {
        return this.videoName;
    }

    public final List<String> getVideoUrl() {
        return this.videoUrl;
    }

    public int hashCode() {
        String str = this.downloadId;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.videoId;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        List<VideoSubtitle> list = this.subtitleUrls;
        int hashCode3 = (hashCode2 + (list != null ? list.hashCode() : 0)) * 31;
        String str3 = this.coverUrl;
        int hashCode4 = (hashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31;
        List<String> list2 = this.videoUrl;
        int hashCode5 = (hashCode4 + (list2 != null ? list2.hashCode() : 0)) * 31;
        String str4 = this.videoName;
        int hashCode6 = (hashCode5 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.videoDesc;
        int hashCode7 = (hashCode6 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.shareLink;
        int hashCode8 = (hashCode7 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.qualityString;
        int hashCode9 = (hashCode8 + (str7 != null ? str7.hashCode() : 0)) * 31;
        VideoPurchaseState videoPurchaseState = this.downloadType;
        int hashCode10 = videoPurchaseState != null ? videoPurchaseState.hashCode() : 0;
        long j2 = this.expirationDate;
        int i3 = (((hashCode9 + hashCode10) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        String str8 = this.referrer;
        if (str8 != null) {
            i2 = str8.hashCode();
        }
        return i3 + i2;
    }

    public final boolean isFree() {
        return this.isFree;
    }

    public String toString() {
        return "VideoDownloaderModel(downloadId=" + this.downloadId + ", videoId=" + this.videoId + ", subtitleUrls=" + this.subtitleUrls + ", coverUrl=" + this.coverUrl + ", videoUrl=" + this.videoUrl + ", videoName=" + this.videoName + ", videoDesc=" + this.videoDesc + ", shareLink=" + this.shareLink + ", qualityString=" + this.qualityString + ", downloadType=" + this.downloadType + ", expirationDate=" + this.expirationDate + ", referrer=" + this.referrer + ")";
    }
}
