package c.c.a.n.j.k;

import androidx.recyclerview.widget.RecyclerView;
import b.r.u;
import c.c.a.c.c.a;
import com.farsitel.bazaar.ui.cinema.video.VideoDetailFragment;
import h.f.b.j;

/* compiled from: VideoDetailFragment.kt */
final class i<T> implements u<Integer> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ VideoDetailFragment f6628a;

    public i(VideoDetailFragment videoDetailFragment) {
        this.f6628a = videoDetailFragment;
    }

    public final void a(Integer num) {
        try {
            RecyclerView.a adapter = this.f6628a._a().getAdapter();
            if (adapter != null) {
                j.a((Object) num, "it");
                adapter.c(num.intValue());
            }
        } catch (Exception e2) {
            a.f4699b.a((Throwable) e2);
        }
    }
}
