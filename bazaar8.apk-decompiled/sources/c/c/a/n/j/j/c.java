package c.c.a.n.j.j;

import androidx.recyclerview.widget.RecyclerView;
import b.r.u;
import c.c.a.c.c.a;
import com.farsitel.bazaar.ui.cinema.series.SeriesDetailFragment;
import h.f.b.j;

/* compiled from: SeriesDetailFragment.kt */
final class c<T> implements u<Integer> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SeriesDetailFragment f6596a;

    public c(SeriesDetailFragment seriesDetailFragment) {
        this.f6596a = seriesDetailFragment;
    }

    public final void a(Integer num) {
        try {
            RecyclerView.a adapter = this.f6596a._a().getAdapter();
            if (adapter != null) {
                j.a((Object) num, "it");
                adapter.c(num.intValue());
            }
        } catch (Exception e2) {
            a.f4699b.a((Throwable) e2);
        }
    }
}
