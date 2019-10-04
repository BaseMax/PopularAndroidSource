package c.c.a.n.u;

import android.view.View;
import c.c.a.c.d.e;
import c.c.a.n.c.a.b;
import com.farsitel.bazaar.analytics.model.what.PostCommentFabButtonClick;
import com.farsitel.bazaar.ui.reviews.ReviewsFragment;

/* compiled from: ReviewsFragment.kt */
final class g implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ReviewsFragment f6999a;

    public g(ReviewsFragment reviewsFragment) {
        this.f6999a = reviewsFragment;
    }

    public final void onClick(View view) {
        b.a(this.f6999a, new PostCommentFabButtonClick(e.a()), null, null, 6, null);
        ReviewsFragment.c(this.f6999a).n();
    }
}
