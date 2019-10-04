package c.c.a.n.b.d;

import androidx.databinding.ViewDataBinding;
import c.c.a.n.b.v;
import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;

/* compiled from: DeveloperInfoViewHolder.kt */
public final class g extends v {
    public final ViewDataBinding v;
    public final f w;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public g(ViewDataBinding viewDataBinding, f fVar) {
        super(viewDataBinding);
        j.b(viewDataBinding, "viewDataBinding");
        j.b(fVar, "developerInfoCommunicator");
        this.v = viewDataBinding;
        this.w = fVar;
    }

    public void b(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        super.b(recyclerData);
        this.v.a(31, (Object) this.w);
    }
}
