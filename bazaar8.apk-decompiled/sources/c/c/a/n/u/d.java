package c.c.a.n.u;

import androidx.databinding.ViewDataBinding;
import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;

/* compiled from: ReviewViewHolder.kt */
public final class d extends a {
    public final ViewDataBinding v;
    public final b w;
    public final c x;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public d(ViewDataBinding viewDataBinding, b bVar, c cVar) {
        super(viewDataBinding);
        j.b(viewDataBinding, "viewBinding");
        this.v = viewDataBinding;
        this.w = bVar;
        this.x = cVar;
    }

    public void b(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        this.v.a(50, (Object) recyclerData);
        this.v.a(10, (Object) this.w);
        this.v.a(27, (Object) this.x);
    }
}
