package c.c.a.n.j.c;

import androidx.databinding.ViewDataBinding;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.common.model.cinema.DownloadedVideoItem;
import h.f.b.j;

/* compiled from: VideoDownloadListAdapter.kt */
public final class q extends n<DownloadedVideoItem> {
    public final p v;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public q(ViewDataBinding viewDataBinding, p pVar) {
        super(viewDataBinding);
        j.b(viewDataBinding, "binding");
        j.b(pVar, "videoDownloadedCommunicator");
        this.v = pVar;
    }

    /* renamed from: a */
    public void b(DownloadedVideoItem downloadedVideoItem) {
        j.b(downloadedVideoItem, "item");
        super.b(downloadedVideoItem);
        B().a(16, (Object) this.v);
    }
}
