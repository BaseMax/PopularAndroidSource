package c.c.a.n.q;

import androidx.databinding.ViewDataBinding;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.ui.malicious.MaliciousAppHeaderItem;
import h.f.b.j;

/* compiled from: MaliciousAdapter.kt */
public final class h extends n<RecyclerData> {
    public final ViewDataBinding v;
    public final g w;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public h(ViewDataBinding viewDataBinding, g gVar) {
        super(viewDataBinding);
        j.b(viewDataBinding, "dataBinding");
        j.b(gVar, "maliciousCommunicator");
        this.v = viewDataBinding;
        this.w = gVar;
    }

    public void D() {
        super.D();
        this.v.a(28, (Object) null);
    }

    public void b(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        if (recyclerData instanceof MaliciousAppHeaderItem) {
            this.v.a(28, (Object) this.w);
            return;
        }
        throw new IllegalStateException("Check failed.");
    }
}
