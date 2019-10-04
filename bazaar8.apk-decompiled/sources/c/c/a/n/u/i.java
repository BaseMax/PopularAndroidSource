package c.c.a.n.u;

import androidx.recyclerview.widget.RecyclerView;
import b.r.u;
import c.c.a.c.c.a;
import com.farsitel.bazaar.ui.reviews.ReviewsFragment;
import h.f.b.j;

/* compiled from: ReviewsFragment.kt */
final class i<T> implements u<Integer> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ReviewsFragment f7001a;

    public i(ReviewsFragment reviewsFragment) {
        this.f7001a = reviewsFragment;
    }

    public final void a(Integer num) {
        try {
            RecyclerView.a adapter = this.f7001a._a().getAdapter();
            if (adapter != null) {
                j.a((Object) num, "position");
                adapter.c(num.intValue());
            }
        } catch (Exception e2) {
            a.f4699b.a((Throwable) e2);
        }
    }
}
