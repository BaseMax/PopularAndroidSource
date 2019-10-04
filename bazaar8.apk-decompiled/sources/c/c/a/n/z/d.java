package c.c.a.n.z;

import android.content.Context;
import b.r.u;
import c.c.a.d.d.c;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.ui.subscription.SubscriptionFragment;
import h.f.b.j;

/* compiled from: SubscriptionFragment.kt */
final class d<T> implements u<ErrorModel> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SubscriptionFragment f7103a;

    public d(SubscriptionFragment subscriptionFragment) {
        this.f7103a = subscriptionFragment;
    }

    public final void a(ErrorModel errorModel) {
        Context E = this.f7103a.E();
        if (E != null) {
            c a2 = this.f7103a.Qa();
            j.a((Object) E, "it");
            a2.a(c.c.a.d.b.d.b(E, errorModel));
        }
    }
}
