package c.c.a.n.z;

import androidx.databinding.ViewDataBinding;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;

/* compiled from: SubscriptionAdapter.kt */
public final class h extends n<RecyclerData> {
    public final ViewDataBinding v;
    public final b w;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public h(ViewDataBinding viewDataBinding, b bVar) {
        super(viewDataBinding);
        j.b(viewDataBinding, "viewBinding");
        j.b(bVar, "subscriptionCommunicator");
        this.v = viewDataBinding;
        this.w = bVar;
    }

    public void b(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        super.b(recyclerData);
        this.v.a(28, (Object) this.w);
    }
}
