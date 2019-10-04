package c.c.a.n.j.e;

import com.farsitel.bazaar.common.model.DownloadedVideoModel;
import com.farsitel.bazaar.common.model.cinema.DownloadedVideoItem;
import com.farsitel.bazaar.common.model.ui.EntityState;
import h.f.b.j;

/* compiled from: Video.kt */
public final class b {
    public static final DownloadedVideoItem a(DownloadedVideoModel downloadedVideoModel, String str, String str2, EntityState entityState) {
        j.b(downloadedVideoModel, "$this$toDownloadedVideoItem");
        j.b(str, "coverFilePath");
        j.b(str2, "videoInfo");
        j.b(entityState, "cinemaState");
        DownloadedVideoItem downloadedVideoItem = new DownloadedVideoItem(downloadedVideoModel.getDownloadId(), downloadedVideoModel.getVideoId(), downloadedVideoModel.getVideoName(), downloadedVideoModel.getVideoDesc(), downloadedVideoModel.getVideoPath(), downloadedVideoModel.getCoverUrl(), str, downloadedVideoModel.getExpirationDate(), downloadedVideoModel.getShareLink(), downloadedVideoModel.getQualityString(), downloadedVideoModel.getDownloadPriceType(), downloadedVideoModel.getDownloadServerState(), str2, entityState, null, 16384, null);
        return downloadedVideoItem;
    }
}
