package c.c.a.n.b;

import androidx.recyclerview.widget.RecyclerView;
import b.r.u;
import com.farsitel.bazaar.ui.appdetail.AppDetailFragment;
import h.f.b.j;

/* compiled from: AppDetailFragment.kt */
final class k<T> implements u<Integer> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppDetailFragment f6254a;

    public k(AppDetailFragment appDetailFragment) {
        this.f6254a = appDetailFragment;
    }

    public final void a(Integer num) {
        RecyclerView.a adapter = this.f6254a._a().getAdapter();
        if (adapter != null) {
            j.a((Object) num, "position");
            adapter.c(num.intValue());
        }
    }
}
