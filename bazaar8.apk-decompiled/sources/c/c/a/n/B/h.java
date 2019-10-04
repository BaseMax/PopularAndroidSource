package c.c.a.n.b;

import androidx.appcompat.widget.AppCompatImageView;
import b.r.u;
import c.c.a.e;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.appdetail.AppDetailFragment;
import h.f.b.j;

/* compiled from: AppDetailFragment.kt */
final class h<T> implements u<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppDetailFragment f6250a;

    public h(AppDetailFragment appDetailFragment) {
        this.f6250a = appDetailFragment;
    }

    public final void a(Boolean bool) {
        j.a((Object) bool, "isBookmarked");
        ((AppCompatImageView) this.f6250a.e(e.toolbarBookmark)).setImageResource(bool.booleanValue() ? R.drawable.ic_round_bookmark_24px : R.drawable.ic_round_bookmark_border_24px);
    }
}
