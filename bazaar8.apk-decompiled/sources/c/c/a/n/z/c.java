package c.c.a.n.z;

import androidx.recyclerview.widget.RecyclerView;
import b.r.u;
import c.c.a.c.c.a;
import com.farsitel.bazaar.ui.subscription.SubscriptionFragment;
import h.f.b.j;

/* compiled from: SubscriptionFragment.kt */
final class c<T> implements u<Integer> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SubscriptionFragment f7102a;

    public c(SubscriptionFragment subscriptionFragment) {
        this.f7102a = subscriptionFragment;
    }

    public final void a(Integer num) {
        try {
            RecyclerView.a adapter = this.f7102a._a().getAdapter();
            if (adapter != null) {
                j.a((Object) num, "index");
                adapter.c(num.intValue());
            }
        } catch (Exception e2) {
            a.f4699b.a((Throwable) e2);
        }
    }
}
