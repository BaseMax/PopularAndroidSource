package c.c.a.n.b;

import b.r.u;
import c.c.a.n.c.a.b;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.what.BookmarkClick;
import com.farsitel.bazaar.data.entity.None;
import com.farsitel.bazaar.ui.appdetail.AppDetailFragment;
import h.f.b.j;

/* compiled from: AppDetailFragment.kt */
final class l<T> implements u<None> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppDetailFragment f6255a;

    public l(AppDetailFragment appDetailFragment) {
        this.f6255a = appDetailFragment;
    }

    public final void a(None none) {
        AppDetailFragment appDetailFragment;
        int i2;
        Boolean a2 = AppDetailFragment.h(this.f6255a).m().a();
        boolean equals = a2 != null ? a2.equals(true) : false;
        AppDetailFragment appDetailFragment2 = this.f6255a;
        b.a(appDetailFragment2, new BookmarkClick(equals, AppDetailFragment.a(appDetailFragment2).b()), null, null, 6, null);
        if (AppDetailFragment.h(this.f6255a).v()) {
            appDetailFragment = this.f6255a;
            i2 = R.string.message_remove_bookmark;
        } else {
            appDetailFragment = this.f6255a;
            i2 = R.string.message_add_bookmark;
        }
        String b2 = appDetailFragment.b(i2);
        j.a((Object) b2, "if (viewModel.isBookmark…ing.message_add_bookmark)");
        this.f6255a.Qa().a(b2);
    }
}
