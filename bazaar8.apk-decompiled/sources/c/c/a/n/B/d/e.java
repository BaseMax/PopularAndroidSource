package c.c.a.n.b.d;

import androidx.databinding.ViewDataBinding;
import c.c.a.n.b.v;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.appdetail.AppReviewItem;
import h.f.b.j;

/* compiled from: AppReviewViewHolder.kt */
public final class e extends v {
    public final ViewDataBinding v;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public e(ViewDataBinding viewDataBinding) {
        super(viewDataBinding);
        j.b(viewDataBinding, "viewDataBinding");
        this.v = viewDataBinding;
    }

    public void D() {
        super.D();
        this.v.a(50, (Object) null);
    }

    public void b(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        this.v.a(50, (Object) ((AppReviewItem) recyclerData).getReviewItem());
    }
}
