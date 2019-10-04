package c.c.a.n.z;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import c.c.a.f.C0479yb;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;

/* compiled from: SubscriptionAdapter.kt */
public final class a extends c.c.a.n.c.d.a<RecyclerData> {

    /* renamed from: f  reason: collision with root package name */
    public final b f7101f;

    public a(b bVar) {
        j.b(bVar, "subscriptionCommunicator");
        this.f7101f = bVar;
    }

    public n<RecyclerData> c(ViewGroup viewGroup, int i2) {
        j.b(viewGroup, "parent");
        C0479yb a2 = C0479yb.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        j.a((Object) a2, "ItemSubscriptionAppBindi…      false\n            )");
        return new h(a2, this.f7101f);
    }
}
