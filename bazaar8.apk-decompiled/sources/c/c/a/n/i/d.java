package c.c.a.n.i;

import android.widget.ProgressBar;
import b.r.u;
import com.farsitel.bazaar.common.model.DownloaderProgressInfo;
import h.f.b.j;

/* compiled from: BazaarForceUpdateDialogFragment.kt */
final class d<T> implements u<DownloaderProgressInfo> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ f f6432a;

    public d(f fVar) {
        this.f6432a = fVar;
    }

    public final void a(DownloaderProgressInfo downloaderProgressInfo) {
        ProgressBar progressBar = f.b(this.f6432a).B;
        j.a((Object) progressBar, "dataBinding.appDownloadProgressBar");
        progressBar.setProgress(downloaderProgressInfo.getProgress());
    }
}
