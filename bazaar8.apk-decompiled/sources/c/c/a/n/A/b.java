package c.c.a.n.A;

import androidx.databinding.ViewDataBinding;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.ui.upgradableapps.UpgradableAppsHeaderItem;
import h.f.b.j;

/* compiled from: UpgradableAppsAdapter.kt */
public final class b extends n<RecyclerData> {
    public final ViewDataBinding v;
    public final a w;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public b(ViewDataBinding viewDataBinding, a aVar) {
        super(viewDataBinding);
        j.b(viewDataBinding, "dataBinding");
        j.b(aVar, "upgradableAppHeaderCommunicator");
        this.v = viewDataBinding;
        this.w = aVar;
    }

    public void b(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        if (recyclerData instanceof UpgradableAppsHeaderItem) {
            this.v.a(28, (Object) this.w);
            return;
        }
        throw new IllegalStateException("Check failed.");
    }
}
