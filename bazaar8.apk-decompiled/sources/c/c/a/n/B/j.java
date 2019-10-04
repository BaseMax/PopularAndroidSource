package c.c.a.n.b;

import b.r.u;
import com.farsitel.bazaar.ui.appdetail.AppDetailFragment;
import com.farsitel.bazaar.ui.login.LoginActivity;

/* compiled from: AppDetailFragment.kt */
final class j<T> implements u<Integer> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppDetailFragment f6253a;

    public j(AppDetailFragment appDetailFragment) {
        this.f6253a = appDetailFragment;
    }

    public final void a(Integer num) {
        LoginActivity.a aVar = LoginActivity.w;
        AppDetailFragment appDetailFragment = this.f6253a;
        h.f.b.j.a((Object) num, "requestCode");
        LoginActivity.a.a(aVar, appDetailFragment, num.intValue(), null, null, 12, null);
    }
}
