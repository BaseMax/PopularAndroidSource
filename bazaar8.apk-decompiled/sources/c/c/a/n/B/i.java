package c.c.a.n.b;

import androidx.recyclerview.widget.RecyclerView;
import b.r.u;
import com.farsitel.bazaar.common.model.appdetail.AppInfoItem;
import com.farsitel.bazaar.ui.appdetail.AppDetailFragment;
import h.f.b.j;

/* compiled from: AppDetailFragment.kt */
final class i<T> implements u<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ w f6251a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AppDetailFragment f6252b;

    public i(w wVar, AppDetailFragment appDetailFragment) {
        this.f6251a = wVar;
        this.f6252b = appDetailFragment;
    }

    public final void a(Boolean bool) {
        AppInfoItem a2 = w.a(this.f6251a, null, 1, null);
        if (a2 != null) {
            j.a((Object) bool, "isPurchased");
            a2.setBought(bool.booleanValue());
            RecyclerView.a adapter = this.f6252b._a().getAdapter();
            if (adapter != null) {
                adapter.c(this.f6252b.tb());
            }
        }
    }
}
