package c.c.a.n.u;

import b.r.u;
import com.farsitel.bazaar.ui.login.LoginActivity;
import com.farsitel.bazaar.ui.reviews.ReviewsFragment;
import h.f.b.j;

/* compiled from: ReviewsFragment.kt */
final class h<T> implements u<Integer> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ReviewsFragment f7000a;

    public h(ReviewsFragment reviewsFragment) {
        this.f7000a = reviewsFragment;
    }

    public final void a(Integer num) {
        LoginActivity.a aVar = LoginActivity.w;
        ReviewsFragment reviewsFragment = this.f7000a;
        j.a((Object) num, "requestCode");
        LoginActivity.a.a(aVar, reviewsFragment, num.intValue(), null, null, 12, null);
    }
}
