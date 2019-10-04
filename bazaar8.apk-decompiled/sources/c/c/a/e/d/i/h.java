package c.c.a.e.d.i;

import com.farsitel.bazaar.common.model.DownloaderProgressInfo;
import com.farsitel.bazaar.data.feature.download.DownloadManager;
import h.f.b.j;
import i.a.b.t;

/* compiled from: DownloadProgressDataSource.kt */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public final DownloadManager f5164a;

    public h(DownloadManager downloadManager) {
        j.b(downloadManager, "downloadManager");
        this.f5164a = downloadManager;
    }

    public final t<DownloaderProgressInfo> a(String str) {
        j.b(str, "packageName");
        return this.f5164a.d(str);
    }
}
