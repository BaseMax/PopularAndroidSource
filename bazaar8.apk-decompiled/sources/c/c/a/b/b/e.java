package c.c.a.b.b;

import com.farsitel.bazaar.common.model.DownloadedVideoModel;
import com.farsitel.bazaar.common.model.VideoDownloadServerState;
import com.farsitel.bazaar.common.model.ui.AppDownloaderModel;
import com.farsitel.bazaar.common.model.ui.VideoDownloaderModel;
import com.farsitel.bazaar.data.entity.DownloadedApp;
import h.f.b.j;

/* compiled from: Mapper.kt */
public final class e {
    public static final DownloadedApp a(AppDownloaderModel appDownloaderModel) {
        j.b(appDownloaderModel, "$this$toDownloadedApp");
        return new DownloadedApp(appDownloaderModel.getPackageName(), appDownloaderModel.getAppName(), appDownloaderModel.isFree());
    }

    public static final DownloadedVideoModel a(VideoDownloaderModel videoDownloaderModel, String str) {
        j.b(videoDownloaderModel, "$this$toDownloadedVideoEntity");
        j.b(str, "videoPath");
        DownloadedVideoModel downloadedVideoModel = new DownloadedVideoModel(videoDownloaderModel.getDownloadId(), videoDownloaderModel.getVideoId(), videoDownloaderModel.getVideoName(), videoDownloaderModel.getVideoDesc(), str, videoDownloaderModel.getCoverUrl(), videoDownloaderModel.getExpirationDate(), videoDownloaderModel.getShareLink(), videoDownloaderModel.getQualityString(), videoDownloaderModel.getDownloadType(), VideoDownloadServerState.PENDING);
        return downloadedVideoModel;
    }
}
