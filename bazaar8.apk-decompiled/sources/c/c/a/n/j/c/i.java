package c.c.a.n.j.c;

import androidx.recyclerview.widget.RecyclerView;
import b.r.u;
import com.farsitel.bazaar.ui.cinema.download.VideoDownloadListFragment;
import h.f.b.j;

/* compiled from: VideoDownloadListFragment.kt */
final class i<T> implements u<Integer> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ VideoDownloadListFragment f6493a;

    public i(VideoDownloadListFragment videoDownloadListFragment) {
        this.f6493a = videoDownloadListFragment;
    }

    public final void a(Integer num) {
        try {
            RecyclerView.a adapter = this.f6493a._a().getAdapter();
            if (adapter != null) {
                j.a((Object) num, "position");
                adapter.c(num.intValue());
            }
        } catch (IllegalStateException unused) {
        }
    }
}
