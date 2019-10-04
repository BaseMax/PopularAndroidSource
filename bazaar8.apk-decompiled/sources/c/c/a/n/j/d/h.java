package c.c.a.n.j.d;

import androidx.recyclerview.widget.RecyclerView;
import b.r.u;
import c.c.a.c.c.a;
import com.farsitel.bazaar.ui.cinema.episode.EpisodeDetailFragment;
import h.f.b.j;

/* compiled from: EpisodeDetailFragment.kt */
final class h<T> implements u<Integer> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ EpisodeDetailFragment f6527a;

    public h(EpisodeDetailFragment episodeDetailFragment) {
        this.f6527a = episodeDetailFragment;
    }

    public final void a(Integer num) {
        try {
            RecyclerView.a adapter = this.f6527a._a().getAdapter();
            if (adapter != null) {
                j.a((Object) num, "it");
                adapter.c(num.intValue());
            }
        } catch (Exception e2) {
            a.f4699b.a((Throwable) e2);
        }
    }
}
