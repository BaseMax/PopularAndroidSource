package com.farsitel.bazaar.data.entity;

import com.farsitel.bazaar.common.model.VideoDownloadServerState;
import com.farsitel.bazaar.common.model.VideoPurchaseState;
import h.f.b.f;
import h.f.b.j;

/* compiled from: DownloadedVideoEntity.kt */
public final class DownloadedVideoEntity {
    public final String coverUrl;
    public String downloadId;
    public final VideoPurchaseState downloadPriceType;
    public VideoDownloadServerState downloadServerState;
    public final long expirationDate;
    public final String qualityString;
    public final String shareLink;
    public final String videoDesc;
    public final String videoId;
    public final String videoName;
    public final String videoPath;

    public DownloadedVideoEntity(String str, String str2, String str3, String str4, String str5, String str6, long j2, String str7, String str8, VideoPurchaseState videoPurchaseState, VideoDownloadServerState videoDownloadServerState) {
        j.b(str, "videoId");
        j.b(str2, "downloadId");
        j.b(str3, "videoName");
        j.b(str5, "videoPath");
        j.b(str6, "coverUrl");
        j.b(str8, "qualityString");
        this.videoId = str;
        this.downloadId = str2;
        this.videoName = str3;
        this.videoDesc = str4;
        this.videoPath = str5;
        this.coverUrl = str6;
        this.expirationDate = j2;
        this.shareLink = str7;
        this.qualityString = str8;
        this.downloadPriceType = videoPurchaseState;
        this.downloadServerState = videoDownloadServerState;
    }

    public static /* synthetic */ DownloadedVideoEntity copy$default(DownloadedVideoEntity downloadedVideoEntity, String str, String str2, String str3, String str4, String str5, String str6, long j2, String str7, String str8, VideoPurchaseState videoPurchaseState, VideoDownloadServerState videoDownloadServerState, int i2, Object obj) {
        DownloadedVideoEntity downloadedVideoEntity2 = downloadedVideoEntity;
        int i3 = i2;
        return downloadedVideoEntity.copy((i3 & 1) != 0 ? downloadedVideoEntity2.videoId : str, (i3 & 2) != 0 ? downloadedVideoEntity2.downloadId : str2, (i3 & 4) != 0 ? downloadedVideoEntity2.videoName : str3, (i3 & 8) != 0 ? downloadedVideoEntity2.videoDesc : str4, (i3 & 16) != 0 ? downloadedVideoEntity2.videoPath : str5, (i3 & 32) != 0 ? downloadedVideoEntity2.coverUrl : str6, (i3 & 64) != 0 ? downloadedVideoEntity2.expirationDate : j2, (i3 & 128) != 0 ? downloadedVideoEntity2.shareLink : str7, (i3 & 256) != 0 ? downloadedVideoEntity2.qualityString : str8, (i3 & 512) != 0 ? downloadedVideoEntity2.downloadPriceType : videoPurchaseState, (i3 & 1024) != 0 ? downloadedVideoEntity2.downloadServerState : videoDownloadServerState);
    }

    public final String component1() {
        return this.videoId;
    }

    public final VideoPurchaseState component10() {
        return this.downloadPriceType;
    }

    public final VideoDownloadServerState component11() {
        return this.downloadServerState;
    }

    public final String component2() {
        return this.downloadId;
    }

    public final String component3() {
        return this.videoName;
    }

    public final String component4() {
        return this.videoDesc;
    }

    public final String component5() {
        return this.videoPath;
    }

    public final String component6() {
        return this.coverUrl;
    }

    public final long component7() {
        return this.expirationDate;
    }

    public final String component8() {
        return this.shareLink;
    }

    public final String component9() {
        return this.qualityString;
    }

    public final DownloadedVideoEntity copy(String str, String str2, String str3, String str4, String str5, String str6, long j2, String str7, String str8, VideoPurchaseState videoPurchaseState, VideoDownloadServerState videoDownloadServerState) {
        j.b(str, "videoId");
        String str9 = str2;
        j.b(str9, "downloadId");
        String str10 = str3;
        j.b(str10, "videoName");
        String str11 = str5;
        j.b(str11, "videoPath");
        String str12 = str6;
        j.b(str12, "coverUrl");
        String str13 = str8;
        j.b(str13, "qualityString");
        DownloadedVideoEntity downloadedVideoEntity = new DownloadedVideoEntity(str, str9, str10, str4, str11, str12, j2, str7, str13, videoPurchaseState, videoDownloadServerState);
        return downloadedVideoEntity;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof DownloadedVideoEntity) {
                DownloadedVideoEntity downloadedVideoEntity = (DownloadedVideoEntity) obj;
                if (j.a((Object) this.videoId, (Object) downloadedVideoEntity.videoId) && j.a((Object) this.downloadId, (Object) downloadedVideoEntity.downloadId) && j.a((Object) this.videoName, (Object) downloadedVideoEntity.videoName) && j.a((Object) this.videoDesc, (Object) downloadedVideoEntity.videoDesc) && j.a((Object) this.videoPath, (Object) downloadedVideoEntity.videoPath) && j.a((Object) this.coverUrl, (Object) downloadedVideoEntity.coverUrl)) {
                    if (!(this.expirationDate == downloadedVideoEntity.expirationDate) || !j.a((Object) this.shareLink, (Object) downloadedVideoEntity.shareLink) || !j.a((Object) this.qualityString, (Object) downloadedVideoEntity.qualityString) || !j.a((Object) this.downloadPriceType, (Object) downloadedVideoEntity.downloadPriceType) || !j.a((Object) this.downloadServerState, (Object) downloadedVideoEntity.downloadServerState)) {
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

    public final VideoPurchaseState getDownloadPriceType() {
        return this.downloadPriceType;
    }

    public final VideoDownloadServerState getDownloadServerState() {
        return this.downloadServerState;
    }

    public final long getExpirationDate() {
        return this.expirationDate;
    }

    public final String getQualityString() {
        return this.qualityString;
    }

    public final String getShareLink() {
        return this.shareLink;
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

    public final String getVideoPath() {
        return this.videoPath;
    }

    public int hashCode() {
        String str = this.videoId;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.downloadId;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.videoName;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.videoDesc;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.videoPath;
        int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.coverUrl;
        int hashCode6 = str6 != null ? str6.hashCode() : 0;
        long j2 = this.expirationDate;
        int i3 = (((hashCode5 + hashCode6) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        String str7 = this.shareLink;
        int hashCode7 = (i3 + (str7 != null ? str7.hashCode() : 0)) * 31;
        String str8 = this.qualityString;
        int hashCode8 = (hashCode7 + (str8 != null ? str8.hashCode() : 0)) * 31;
        VideoPurchaseState videoPurchaseState = this.downloadPriceType;
        int hashCode9 = (hashCode8 + (videoPurchaseState != null ? videoPurchaseState.hashCode() : 0)) * 31;
        VideoDownloadServerState videoDownloadServerState = this.downloadServerState;
        if (videoDownloadServerState != null) {
            i2 = videoDownloadServerState.hashCode();
        }
        return hashCode9 + i2;
    }

    public final void setDownloadId(String str) {
        j.b(str, "<set-?>");
        this.downloadId = str;
    }

    public final void setDownloadServerState(VideoDownloadServerState videoDownloadServerState) {
        this.downloadServerState = videoDownloadServerState;
    }

    public String toString() {
        return "DownloadedVideoEntity(videoId=" + this.videoId + ", downloadId=" + this.downloadId + ", videoName=" + this.videoName + ", videoDesc=" + this.videoDesc + ", videoPath=" + this.videoPath + ", coverUrl=" + this.coverUrl + ", expirationDate=" + this.expirationDate + ", shareLink=" + this.shareLink + ", qualityString=" + this.qualityString + ", downloadPriceType=" + this.downloadPriceType + ", downloadServerState=" + this.downloadServerState + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DownloadedVideoEntity(String str, String str2, String str3, String str4, String str5, String str6, long j2, String str7, String str8, VideoPurchaseState videoPurchaseState, VideoDownloadServerState videoDownloadServerState, int i2, f fVar) {
        this(str, str2, str3, str4, str5, str6, j2, str7, str8, videoPurchaseState, (i2 & 1024) != 0 ? null : videoDownloadServerState);
    }
}
