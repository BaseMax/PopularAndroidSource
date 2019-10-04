package c.c.a.n.u.a;

import androidx.recyclerview.widget.RecyclerView;
import b.r.u;
import com.farsitel.bazaar.ui.reviews.developer.DeveloperReplyFragment;
import h.f.b.j;

/* compiled from: DeveloperReplyFragment.kt */
final class a<T> implements u<Integer> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ DeveloperReplyFragment f6966a;

    public a(DeveloperReplyFragment developerReplyFragment) {
        this.f6966a = developerReplyFragment;
    }

    public final void a(Integer num) {
        try {
            RecyclerView.a adapter = this.f6966a._a().getAdapter();
            if (adapter != null) {
                j.a((Object) num, "it");
                adapter.c(num.intValue());
            }
        } catch (Exception e2) {
            c.c.a.c.c.a.f4699b.a((Throwable) e2);
        }
    }
}
