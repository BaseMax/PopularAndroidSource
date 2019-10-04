package c.c.a.n.j.g;

import b.r.u;
import com.farsitel.bazaar.ui.cinema.reviews.VideoReviewsFragment;
import com.farsitel.bazaar.ui.login.LoginActivity;
import h.f.b.j;

/* compiled from: VideoReviewsFragment.kt */
final class c<T> implements u<Integer> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ VideoReviewsFragment f6567a;

    public c(VideoReviewsFragment videoReviewsFragment) {
        this.f6567a = videoReviewsFragment;
    }

    public final void a(Integer num) {
        LoginActivity.a aVar = LoginActivity.w;
        VideoReviewsFragment videoReviewsFragment = this.f6567a;
        j.a((Object) num, "requestCode");
        LoginActivity.a.a(aVar, videoReviewsFragment, num.intValue(), null, null, 12, null);
    }
}
