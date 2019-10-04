package c.c.a.n.u.a;

import b.r.u;
import com.farsitel.bazaar.ui.login.LoginActivity;
import com.farsitel.bazaar.ui.reviews.developer.DeveloperReplyFragment;
import h.f.b.j;

/* compiled from: DeveloperReplyFragment.kt */
final class b<T> implements u<Integer> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ DeveloperReplyFragment f6967a;

    public b(DeveloperReplyFragment developerReplyFragment) {
        this.f6967a = developerReplyFragment;
    }

    public final void a(Integer num) {
        LoginActivity.a aVar = LoginActivity.w;
        DeveloperReplyFragment developerReplyFragment = this.f6967a;
        j.a((Object) num, "requestCode");
        LoginActivity.a.a(aVar, developerReplyFragment, num.intValue(), null, null, 12, null);
    }
}
