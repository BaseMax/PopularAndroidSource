package c.c.a.n.b;

import androidx.recyclerview.widget.RecyclerView;
import b.r.u;
import com.farsitel.bazaar.common.model.appdetail.AppInfoItem;
import com.farsitel.bazaar.common.model.ui.EntityState;
import com.farsitel.bazaar.ui.appdetail.AppDetailFragment;

/* renamed from: c.c.a.n.b.e  reason: case insensitive filesystem */
/* compiled from: AppDetailFragment.kt */
final class C0671e<T> implements u<EntityState> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppDetailFragment f6245a;

    public C0671e(AppDetailFragment appDetailFragment) {
        this.f6245a = appDetailFragment;
    }

    public final void a(EntityState entityState) {
        AppInfoItem a2 = w.a(AppDetailFragment.h(this.f6245a), null, 1, null);
        if (a2 != null) {
            if (entityState == null) {
                entityState = AppDetailFragment.h(this.f6245a).a(a2.getVersionCode());
            }
            AppDetailFragment.d(this.f6245a).a(entityState);
            a2.setAppState(entityState);
            RecyclerView.a adapter = this.f6245a._a().getAdapter();
            if (adapter != null) {
                adapter.c(this.f6245a.tb());
            }
            AppDetailFragment.h(this.f6245a).b(entityState);
        }
    }
}
