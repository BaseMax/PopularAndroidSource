package com.farsitel.bazaar.common.model.cinema;

import android.content.Context;
import c.c.a.c.a;
import com.crashlytics.android.core.CodedOutputStream;
import com.farsitel.bazaar.common.model.DownloadableEntity;
import com.farsitel.bazaar.common.model.DownloaderProgressInfo;
import com.farsitel.bazaar.common.model.EntityType;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.VideoDownloadServerState;
import com.farsitel.bazaar.common.model.VideoPurchaseState;
import com.farsitel.bazaar.common.model.ui.EntityState;
import h.f.b.j;

/* compiled from: ViewHolderItem.kt */
public final class DownloadedVideoItem implements DownloadableEntity, RecyclerData {
    public final String _coverLocalPath;
    public final String _coverUrl;
    public EntityState _entityState;
    public final String downloadId;
    public final VideoPurchaseState downloadPriceType;
    public VideoDownloadServerState downloadServerState;
    public final String entityId;
    public EntityState entityState;
    public final EntityType entityType;
    public final long expirationDate;
    public DownloaderProgressInfo progressInfo;
    public final String qualityString;
    public final String shareLink;
    public final String videoDesc;
    public final String videoId;
    public final String videoInfo;
    public final String videoName;
    public final String videoPath;
    public final int viewType;

    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0 = new int[EntityState.values().length];
        public static final /* synthetic */ int[] $EnumSwitchMapping$1 = new int[VideoDownloadServerState.values().length];

        static {
            $EnumSwitchMapping$0[EntityState.IN_QUEUE.ordinal()] = 1;
            $EnumSwitchMapping$1[VideoDownloadServerState.SENT.ordinal()] = 1;
            $EnumSwitchMapping$1[VideoDownloadServerState.PENDING.ordinal()] = 2;
        }
    }

    public DownloadedVideoItem(String str, String str2, String str3, String str4, String str5, String str6, String str7, long j2, String str8, String str9, VideoPurchaseState videoPurchaseState, VideoDownloadServerState videoDownloadServerState, String str10, EntityState entityState2, DownloaderProgressInfo downloaderProgressInfo) {
        String str11 = str5;
        String str12 = str6;
        String str13 = str7;
        String str14 = str9;
        String str15 = str10;
        EntityState entityState3 = entityState2;
        j.b(str, "downloadId");
        j.b(str2, "videoId");
        j.b(str3, "videoName");
        j.b(str11, "videoPath");
        j.b(str12, "_coverUrl");
        j.b(str13, "_coverLocalPath");
        j.b(str14, "qualityString");
        j.b(str15, "videoInfo");
        j.b(entityState3, "_entityState");
        this.downloadId = str;
        this.videoId = str2;
        this.videoName = str3;
        this.videoDesc = str4;
        this.videoPath = str11;
        this._coverUrl = str12;
        this._coverLocalPath = str13;
        this.expirationDate = j2;
        this.shareLink = str8;
        this.qualityString = str14;
        this.downloadPriceType = videoPurchaseState;
        this.downloadServerState = videoDownloadServerState;
        this.videoInfo = str15;
        this._entityState = entityState3;
        this.progressInfo = downloaderProgressInfo;
        this.entityId = this.videoId;
        this.entityType = EntityType.VIDEO;
        this.entityState = this._entityState;
        this.viewType = DownloadedVideoType.ITEM.ordinal();
    }

    private final String component6() {
        return this._coverUrl;
    }

    private final String component7() {
        return this._coverLocalPath;
    }

    public static /* synthetic */ DownloadedVideoItem copy$default(DownloadedVideoItem downloadedVideoItem, String str, String str2, String str3, String str4, String str5, String str6, String str7, long j2, String str8, String str9, VideoPurchaseState videoPurchaseState, VideoDownloadServerState videoDownloadServerState, String str10, EntityState entityState2, DownloaderProgressInfo downloaderProgressInfo, int i2, Object obj) {
        DownloadedVideoItem downloadedVideoItem2 = downloadedVideoItem;
        int i3 = i2;
        return downloadedVideoItem.copy((i3 & 1) != 0 ? downloadedVideoItem2.downloadId : str, (i3 & 2) != 0 ? downloadedVideoItem2.videoId : str2, (i3 & 4) != 0 ? downloadedVideoItem2.videoName : str3, (i3 & 8) != 0 ? downloadedVideoItem2.videoDesc : str4, (i3 & 16) != 0 ? downloadedVideoItem2.videoPath : str5, (i3 & 32) != 0 ? downloadedVideoItem2._coverUrl : str6, (i3 & 64) != 0 ? downloadedVideoItem2._coverLocalPath : str7, (i3 & 128) != 0 ? downloadedVideoItem2.expirationDate : j2, (i3 & 256) != 0 ? downloadedVideoItem2.shareLink : str8, (i3 & 512) != 0 ? downloadedVideoItem2.qualityString : str9, (i3 & 1024) != 0 ? downloadedVideoItem2.downloadPriceType : videoPurchaseState, (i3 & 2048) != 0 ? downloadedVideoItem2.downloadServerState : videoDownloadServerState, (i3 & CodedOutputStream.DEFAULT_BUFFER_SIZE) != 0 ? downloadedVideoItem2.videoInfo : str10, (i3 & 8192) != 0 ? downloadedVideoItem2._entityState : entityState2, (i3 & 16384) != 0 ? downloadedVideoItem.getProgressInfo() : downloaderProgressInfo);
    }

    public final String component1() {
        return this.downloadId;
    }

    public final String component10() {
        return this.qualityString;
    }

    public final VideoPurchaseState component11() {
        return this.downloadPriceType;
    }

    public final VideoDownloadServerState component12() {
        return this.downloadServerState;
    }

    public final String component13() {
        return this.videoInfo;
    }

    public final EntityState component14() {
        return this._entityState;
    }

    public final DownloaderProgressInfo component15() {
        return getProgressInfo();
    }

    public final String component2() {
        return this.videoId;
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

    public final long component8() {
        return this.expirationDate;
    }

    public final String component9() {
        return this.shareLink;
    }

    public final DownloadedVideoItem copy(String str, String str2, String str3, String str4, String str5, String str6, String str7, long j2, String str8, String str9, VideoPurchaseState videoPurchaseState, VideoDownloadServerState videoDownloadServerState, String str10, EntityState entityState2, DownloaderProgressInfo downloaderProgressInfo) {
        String str11 = str;
        j.b(str11, "downloadId");
        j.b(str2, "videoId");
        j.b(str3, "videoName");
        j.b(str5, "videoPath");
        j.b(str6, "_coverUrl");
        j.b(str7, "_coverLocalPath");
        j.b(str9, "qualityString");
        j.b(str10, "videoInfo");
        j.b(entityState2, "_entityState");
        DownloadedVideoItem downloadedVideoItem = new DownloadedVideoItem(str11, str2, str3, str4, str5, str6, str7, j2, str8, str9, videoPurchaseState, videoDownloadServerState, str10, entityState2, downloaderProgressInfo);
        return downloadedVideoItem;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof DownloadedVideoItem) {
                DownloadedVideoItem downloadedVideoItem = (DownloadedVideoItem) obj;
                if (j.a((Object) this.downloadId, (Object) downloadedVideoItem.downloadId) && j.a((Object) this.videoId, (Object) downloadedVideoItem.videoId) && j.a((Object) this.videoName, (Object) downloadedVideoItem.videoName) && j.a((Object) this.videoDesc, (Object) downloadedVideoItem.videoDesc) && j.a((Object) this.videoPath, (Object) downloadedVideoItem.videoPath) && j.a((Object) this._coverUrl, (Object) downloadedVideoItem._coverUrl) && j.a((Object) this._coverLocalPath, (Object) downloadedVideoItem._coverLocalPath)) {
                    if (!(this.expirationDate == downloadedVideoItem.expirationDate) || !j.a((Object) this.shareLink, (Object) downloadedVideoItem.shareLink) || !j.a((Object) this.qualityString, (Object) downloadedVideoItem.qualityString) || !j.a((Object) this.downloadPriceType, (Object) downloadedVideoItem.downloadPriceType) || !j.a((Object) this.downloadServerState, (Object) downloadedVideoItem.downloadServerState) || !j.a((Object) this.videoInfo, (Object) downloadedVideoItem.videoInfo) || !j.a((Object) this._entityState, (Object) downloadedVideoItem._entityState) || !j.a((Object) getProgressInfo(), (Object) downloadedVideoItem.getProgressInfo())) {
                        return false;
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final String getCoverUrl() {
        return getEntityState() == EntityState.FILE_EXISTS ? this._coverLocalPath : this._coverUrl;
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

    public final boolean getEnablePlayButton() {
        return (this.downloadServerState == VideoDownloadServerState.PENDING && (getEntityState() == EntityState.CHECKING || getEntityState() == EntityState.COMPLETED || getEntityState() == EntityState.FILE_EXISTS)) ? false : true;
    }

    public String getEntityId() {
        return this.entityId;
    }

    public EntityState getEntityState() {
        EntityState entityState2 = this.entityState;
        if ((entityState2 == EntityState.COMPLETED || entityState2 == EntityState.FILE_EXISTS) && this.downloadServerState == VideoDownloadServerState.PENDING) {
            return EntityState.CHECKING;
        }
        return this.entityState;
    }

    public EntityType getEntityType() {
        return this.entityType;
    }

    public final long getExpirationDate() {
        return this.expirationDate;
    }

    public final boolean getNeedToSubmitDownload() {
        return !getEnablePlayButton();
    }

    public DownloaderProgressInfo getProgressInfo() {
        return this.progressInfo;
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

    public final String getVideoDownloadStateLabel(Context context) {
        j.b(context, "context");
        if (WhenMappings.$EnumSwitchMapping$0[getEntityState().ordinal()] != 1) {
            String string = context.getString(a.downloading);
            j.a((Object) string, "context.getString(R.string.downloading)");
            return string;
        }
        String string2 = context.getString(a.download_in_queue);
        j.a((Object) string2, "context.getString(R.string.download_in_queue)");
        return string2;
    }

    public final String getVideoId() {
        return this.videoId;
    }

    public final String getVideoInfo() {
        return this.videoInfo;
    }

    public final String getVideoName() {
        return this.videoName;
    }

    public final String getVideoPath() {
        return this.videoPath;
    }

    public int getViewType() {
        return this.viewType;
    }

    public final boolean getVisibleDeleteIcon() {
        return (getEntityState() == EntityState.IN_QUEUE || getEntityState() == EntityState.DOWNLOADING || getEntityState() == EntityState.CHECKING) ? false : true;
    }

    public final boolean getVisibleDownloadProgress() {
        return getEntityState() == EntityState.IN_QUEUE || getEntityState() == EntityState.DOWNLOADING;
    }

    public final boolean getVisiblePlayButton() {
        return !getVisibleDownloadProgress();
    }

    public final boolean getVisibleVideoInfo() {
        return this.downloadServerState == VideoDownloadServerState.SENT;
    }

    public final EntityState get_entityState() {
        return this._entityState;
    }

    public int hashCode() {
        String str = this.downloadId;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.videoId;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.videoName;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.videoDesc;
        int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.videoPath;
        int hashCode5 = (hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this._coverUrl;
        int hashCode6 = (hashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this._coverLocalPath;
        int hashCode7 = str7 != null ? str7.hashCode() : 0;
        long j2 = this.expirationDate;
        int i3 = (((hashCode6 + hashCode7) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        String str8 = this.shareLink;
        int hashCode8 = (i3 + (str8 != null ? str8.hashCode() : 0)) * 31;
        String str9 = this.qualityString;
        int hashCode9 = (hashCode8 + (str9 != null ? str9.hashCode() : 0)) * 31;
        VideoPurchaseState videoPurchaseState = this.downloadPriceType;
        int hashCode10 = (hashCode9 + (videoPurchaseState != null ? videoPurchaseState.hashCode() : 0)) * 31;
        VideoDownloadServerState videoDownloadServerState = this.downloadServerState;
        int hashCode11 = (hashCode10 + (videoDownloadServerState != null ? videoDownloadServerState.hashCode() : 0)) * 31;
        String str10 = this.videoInfo;
        int hashCode12 = (hashCode11 + (str10 != null ? str10.hashCode() : 0)) * 31;
        EntityState entityState2 = this._entityState;
        int hashCode13 = (hashCode12 + (entityState2 != null ? entityState2.hashCode() : 0)) * 31;
        DownloaderProgressInfo progressInfo2 = getProgressInfo();
        if (progressInfo2 != null) {
            i2 = progressInfo2.hashCode();
        }
        return hashCode13 + i2;
    }

    public final String playButtonText(Context context) {
        String str;
        j.b(context, "context");
        VideoDownloadServerState videoDownloadServerState = this.downloadServerState;
        if (videoDownloadServerState != null) {
            int i2 = WhenMappings.$EnumSwitchMapping$1[videoDownloadServerState.ordinal()];
            if (i2 == 1) {
                String string = context.getString(a.play);
                j.a((Object) string, "context.getString(R.string.play)");
                return string;
            } else if (i2 == 2) {
                if (getEntityState().needToDownloadContinue()) {
                    str = context.getString(a.continue_download);
                } else {
                    str = context.getString(a.waiting_for_confirm);
                }
                j.a((Object) str, "if (entityState.needToDo…onfirm)\n                }");
                return str;
            }
        }
        throw new IllegalStateException("unhandled state happened");
    }

    public final void setDownloadServerState(VideoDownloadServerState videoDownloadServerState) {
        this.downloadServerState = videoDownloadServerState;
    }

    public void setEntityState(EntityState entityState2) {
        j.b(entityState2, "<set-?>");
        this.entityState = entityState2;
    }

    public void setProgressInfo(DownloaderProgressInfo downloaderProgressInfo) {
        this.progressInfo = downloaderProgressInfo;
    }

    public final void set_entityState(EntityState entityState2) {
        j.b(entityState2, "<set-?>");
        this._entityState = entityState2;
    }

    public String toString() {
        return "DownloadedVideoItem(downloadId=" + this.downloadId + ", videoId=" + this.videoId + ", videoName=" + this.videoName + ", videoDesc=" + this.videoDesc + ", videoPath=" + this.videoPath + ", _coverUrl=" + this._coverUrl + ", _coverLocalPath=" + this._coverLocalPath + ", expirationDate=" + this.expirationDate + ", shareLink=" + this.shareLink + ", qualityString=" + this.qualityString + ", downloadPriceType=" + this.downloadPriceType + ", downloadServerState=" + this.downloadServerState + ", videoInfo=" + this.videoInfo + ", _entityState=" + this._entityState + ", progressInfo=" + getProgressInfo() + ")";
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public /* synthetic */ DownloadedVideoItem(java.lang.String r21, java.lang.String r22, java.lang.String r23, java.lang.String r24, java.lang.String r25, java.lang.String r26, java.lang.String r27, long r28, java.lang.String r30, java.lang.String r31, com.farsitel.bazaar.common.model.VideoPurchaseState r32, com.farsitel.bazaar.common.model.VideoDownloadServerState r33, java.lang.String r34, com.farsitel.bazaar.common.model.ui.EntityState r35, com.farsitel.bazaar.common.model.DownloaderProgressInfo r36, int r37, h.f.b.f r38) {
        /*
            r20 = this;
            r0 = r37
            r1 = r0 & 2048(0x800, float:2.87E-42)
            r2 = 0
            if (r1 == 0) goto L_0x000a
            r16 = r2
            goto L_0x000c
        L_0x000a:
            r16 = r33
        L_0x000c:
            r0 = r0 & 16384(0x4000, float:2.2959E-41)
            if (r0 == 0) goto L_0x0013
            r19 = r2
            goto L_0x0015
        L_0x0013:
            r19 = r36
        L_0x0015:
            r3 = r20
            r4 = r21
            r5 = r22
            r6 = r23
            r7 = r24
            r8 = r25
            r9 = r26
            r10 = r27
            r11 = r28
            r13 = r30
            r14 = r31
            r15 = r32
            r17 = r34
            r18 = r35
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r13, r14, r15, r16, r17, r18, r19)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.common.model.cinema.DownloadedVideoItem.<init>(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, long, java.lang.String, java.lang.String, com.farsitel.bazaar.common.model.VideoPurchaseState, com.farsitel.bazaar.common.model.VideoDownloadServerState, java.lang.String, com.farsitel.bazaar.common.model.ui.EntityState, com.farsitel.bazaar.common.model.DownloaderProgressInfo, int, h.f.b.f):void");
    }
}
