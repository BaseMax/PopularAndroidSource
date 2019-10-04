package c.c.a.n.u.a;

import c.c.a.n.u.c;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import com.farsitel.bazaar.ui.reviews.developer.DeveloperReplyFragment;
import h.f.b.j;
import h.h;

/* compiled from: DeveloperReplyFragment.kt */
public final class e implements c {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ DeveloperReplyFragment f6970a;

    public e(DeveloperReplyFragment developerReplyFragment) {
        this.f6970a = developerReplyFragment;
    }

    public void a(ReviewItem reviewItem, int i2) {
        j.b(reviewItem, "reviewItem");
        synchronized (this.f6970a.za) {
            this.f6970a.rb().d(reviewItem, i2);
            h hVar = h.f14579a;
        }
    }

    public void b(ReviewItem reviewItem, int i2) {
        j.b(reviewItem, "reviewItem");
        synchronized (this.f6970a.za) {
            this.f6970a.rb().c(reviewItem, i2);
            h hVar = h.f14579a;
        }
    }

    public void c(ReviewItem reviewItem, int i2) {
        j.b(reviewItem, "reviewItem");
        synchronized (this.f6970a.za) {
            this.f6970a.rb().b(reviewItem, i2);
            h hVar = h.f14579a;
        }
    }

    public void d(ReviewItem reviewItem, int i2) {
        j.b(reviewItem, "reviewItem");
        synchronized (this.f6970a.za) {
            this.f6970a.rb().a(reviewItem, i2);
            h hVar = h.f14579a;
        }
    }
}
