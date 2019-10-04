package c.c.a.e.d.h.e.a.a;

import androidx.room.RoomDatabase;
import b.C.a.f;
import b.z.C0355d;
import c.c.a.e.f.d;
import com.farsitel.bazaar.data.entity.DownloadedVideoEntity;

/* compiled from: DownloadedVideoDao_Impl */
class c extends C0355d<DownloadedVideoEntity> {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ h f5108d;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public c(h hVar, RoomDatabase roomDatabase) {
        super(roomDatabase);
        this.f5108d = hVar;
    }

    public String d() {
        return "UPDATE OR ABORT `downloadedVideo` SET `videoId` = ?,`downloadId` = ?,`videoName` = ?,`videoDesc` = ?,`videoPath` = ?,`coverUrl` = ?,`expirationDate` = ?,`shareLink` = ?,`qualityString` = ?,`downloadPriceType` = ?,`downloadServerState` = ? WHERE `videoId` = ?";
    }

    public void a(f fVar, DownloadedVideoEntity downloadedVideoEntity) {
        if (downloadedVideoEntity.getVideoId() == null) {
            fVar.a(1);
        } else {
            fVar.a(1, downloadedVideoEntity.getVideoId());
        }
        if (downloadedVideoEntity.getDownloadId() == null) {
            fVar.a(2);
        } else {
            fVar.a(2, downloadedVideoEntity.getDownloadId());
        }
        if (downloadedVideoEntity.getVideoName() == null) {
            fVar.a(3);
        } else {
            fVar.a(3, downloadedVideoEntity.getVideoName());
        }
        if (downloadedVideoEntity.getVideoDesc() == null) {
            fVar.a(4);
        } else {
            fVar.a(4, downloadedVideoEntity.getVideoDesc());
        }
        if (downloadedVideoEntity.getVideoPath() == null) {
            fVar.a(5);
        } else {
            fVar.a(5, downloadedVideoEntity.getVideoPath());
        }
        if (downloadedVideoEntity.getCoverUrl() == null) {
            fVar.a(6);
        } else {
            fVar.a(6, downloadedVideoEntity.getCoverUrl());
        }
        fVar.a(7, downloadedVideoEntity.getExpirationDate());
        if (downloadedVideoEntity.getShareLink() == null) {
            fVar.a(8);
        } else {
            fVar.a(8, downloadedVideoEntity.getShareLink());
        }
        if (downloadedVideoEntity.getQualityString() == null) {
            fVar.a(9);
        } else {
            fVar.a(9, downloadedVideoEntity.getQualityString());
        }
        Integer a2 = c.c.a.e.f.c.a(downloadedVideoEntity.getDownloadPriceType());
        if (a2 == null) {
            fVar.a(10);
        } else {
            fVar.a(10, (long) a2.intValue());
        }
        Integer a3 = d.a(downloadedVideoEntity.getDownloadServerState());
        if (a3 == null) {
            fVar.a(11);
        } else {
            fVar.a(11, (long) a3.intValue());
        }
        if (downloadedVideoEntity.getVideoId() == null) {
            fVar.a(12);
        } else {
            fVar.a(12, downloadedVideoEntity.getVideoId());
        }
    }
}
