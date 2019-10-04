package c.c.a.n.c.c;

import androidx.recyclerview.widget.RecyclerView;
import b.r.u;
import h.f.b.j;

/* compiled from: PageFragment.kt */
final class k<T> implements u<Integer> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ n f6330a;

    public k(n nVar) {
        this.f6330a = nVar;
    }

    public final void a(Integer num) {
        try {
            RecyclerView.a adapter = this.f6330a._a().getAdapter();
            if (adapter != null) {
                j.a((Object) num, "position");
                adapter.c(num.intValue());
            }
        } catch (Exception unused) {
        }
    }
}
