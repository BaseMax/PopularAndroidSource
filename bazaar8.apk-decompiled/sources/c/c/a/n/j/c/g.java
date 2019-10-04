package c.c.a.n.j.c;

import android.view.View;
import com.farsitel.bazaar.common.model.cinema.DownloadedVideoItem;
import com.farsitel.bazaar.ui.cinema.download.VideoDownloadListFragment;
import h.f.b.j;

/* compiled from: VideoDownloadListFragment.kt */
public final class g implements p {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ VideoDownloadListFragment f6491a;

    public g(VideoDownloadListFragment videoDownloadListFragment) {
        this.f6491a = videoDownloadListFragment;
    }

    public void a(View view, DownloadedVideoItem downloadedVideoItem) {
        j.b(view, "view");
        j.b(downloadedVideoItem, "downloadedVideoItem");
        this.f6491a.a(view, downloadedVideoItem);
    }

    public void b(DownloadedVideoItem downloadedVideoItem) {
        j.b(downloadedVideoItem, "downloadedVideoItem");
        this.f6491a.c(downloadedVideoItem);
    }

    public void c(DownloadedVideoItem downloadedVideoItem) {
        j.b(downloadedVideoItem, "downloadedVideoItem");
        this.f6491a.b(downloadedVideoItem);
    }

    public void a(DownloadedVideoItem downloadedVideoItem) {
        j.b(downloadedVideoItem, "downloadedVideoItem");
        this.f6491a.a(downloadedVideoItem);
    }
}
