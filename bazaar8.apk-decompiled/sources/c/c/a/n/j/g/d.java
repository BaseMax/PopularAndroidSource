package c.c.a.n.j.g;

import androidx.recyclerview.widget.RecyclerView;
import b.r.u;
import c.c.a.c.c.a;
import com.farsitel.bazaar.ui.cinema.reviews.VideoReviewsFragment;
import h.f.b.j;

/* compiled from: VideoReviewsFragment.kt */
final class d<T> implements u<Integer> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ VideoReviewsFragment f6568a;

    public d(VideoReviewsFragment videoReviewsFragment) {
        this.f6568a = videoReviewsFragment;
    }

    public final void a(Integer num) {
        try {
            RecyclerView.a adapter = this.f6568a._a().getAdapter();
            if (adapter != null) {
                j.a((Object) num, "position");
                adapter.c(num.intValue());
            }
        } catch (Exception e2) {
            a.f4699b.a((Throwable) e2);
        }
    }
}
