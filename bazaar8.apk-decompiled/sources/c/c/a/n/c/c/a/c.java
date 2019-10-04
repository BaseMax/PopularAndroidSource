package c.c.a.n.c.c.a;

import androidx.databinding.ViewDataBinding;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.page.PageViewConfigItem;
import h.f.b.j;

/* compiled from: PageAdapter.kt */
public class c extends n<RecyclerData> {
    public final ViewDataBinding v;
    public final PageViewConfigItem w;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public c(ViewDataBinding viewDataBinding, PageViewConfigItem pageViewConfigItem) {
        super(viewDataBinding);
        j.b(viewDataBinding, "viewDataBinding");
        this.v = viewDataBinding;
        this.w = pageViewConfigItem;
    }

    public void D() {
        super.D();
        this.v.a(21, (Object) null);
        this.v.a(39, (Object) null);
    }

    public void b(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        super.b(recyclerData);
        this.v.a(21, (Object) this.w);
        this.v.a(39, (Object) Integer.valueOf(g()));
    }
}
