package c.c.a.n.u;

import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import com.farsitel.bazaar.ui.reviews.ReviewsFragment;
import h.f.b.j;
import h.h;

/* compiled from: ReviewsFragment.kt */
public final class l implements c {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ReviewsFragment f7004a;

    public l(ReviewsFragment reviewsFragment) {
        this.f7004a = reviewsFragment;
    }

    public void a(ReviewItem reviewItem, int i2) {
        j.b(reviewItem, "reviewItem");
        synchronized (this.f7004a.za) {
            ReviewsFragment.c(this.f7004a).d(reviewItem, i2);
            h hVar = h.f14579a;
        }
    }

    public void b(ReviewItem reviewItem, int i2) {
        j.b(reviewItem, "reviewItem");
        synchronized (this.f7004a.za) {
            ReviewsFragment.c(this.f7004a).c(reviewItem, i2);
            h hVar = h.f14579a;
        }
    }

    public void c(ReviewItem reviewItem, int i2) {
        j.b(reviewItem, "reviewItem");
        synchronized (this.f7004a.za) {
            ReviewsFragment.c(this.f7004a).b(reviewItem, i2);
            h hVar = h.f14579a;
        }
    }

    public void d(ReviewItem reviewItem, int i2) {
        j.b(reviewItem, "reviewItem");
        synchronized (this.f7004a.za) {
            ReviewsFragment.c(this.f7004a).a(reviewItem, i2);
            h hVar = h.f14579a;
        }
    }
}
