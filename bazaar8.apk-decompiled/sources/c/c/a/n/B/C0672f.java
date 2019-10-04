package c.c.a.n.b;

import androidx.recyclerview.widget.RecyclerView;
import b.r.u;
import com.farsitel.bazaar.common.model.DownloaderProgressInfo;
import com.farsitel.bazaar.common.model.appdetail.AppInfoItem;
import com.farsitel.bazaar.ui.appdetail.AppDetailFragment;

/* renamed from: c.c.a.n.b.f  reason: case insensitive filesystem */
/* compiled from: AppDetailFragment.kt */
final class C0672f<T> implements u<DownloaderProgressInfo> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ w f6246a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AppDetailFragment f6247b;

    public C0672f(w wVar, AppDetailFragment appDetailFragment) {
        this.f6246a = wVar;
        this.f6247b = appDetailFragment;
    }

    public final void a(DownloaderProgressInfo downloaderProgressInfo) {
        AppInfoItem a2 = w.a(this.f6246a, null, 1, null);
        if (a2 != null) {
            a2.setProgressInfo(downloaderProgressInfo);
        }
        RecyclerView.a adapter = this.f6247b._a().getAdapter();
        if (adapter != null) {
            adapter.c(this.f6247b.tb());
        }
    }
}
