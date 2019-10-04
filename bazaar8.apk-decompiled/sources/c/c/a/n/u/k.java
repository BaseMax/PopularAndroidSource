package c.c.a.n.u;

import android.view.View;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import com.farsitel.bazaar.ui.reviews.ReviewsFragment;
import h.f.b.j;

/* compiled from: ReviewsFragment.kt */
public final class k implements b {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ReviewsFragment f7003a;

    public k(ReviewsFragment reviewsFragment) {
        this.f7003a = reviewsFragment;
    }

    public void a(View view, ReviewItem reviewItem) {
        j.b(view, "view");
        j.b(reviewItem, "reviewItem");
        this.f7003a.a(view, reviewItem);
    }
}
