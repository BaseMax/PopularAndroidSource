package c.c.a.n.c.d;

import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;

/* compiled from: RecyclerViewHolder.kt */
public class n<T extends RecyclerData> extends RecyclerView.w {
    public m<T> t;
    public final ViewDataBinding u;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public n(ViewDataBinding viewDataBinding) {
        super(viewDataBinding.h());
        j.b(viewDataBinding, "binding");
        this.u = viewDataBinding;
    }

    public final ViewDataBinding B() {
        return this.u;
    }

    public void C() {
    }

    public void D() {
        this.u.a(45, (Object) null);
        this.u.a(41, (Object) null);
        this.u.a(29, (Object) null);
    }

    public final void a(m<T> mVar) {
        this.t = mVar;
    }

    public void b(T t2) {
        j.b(t2, "item");
    }

    public final void a(T t2) {
        j.b(t2, "item");
        b(t2);
        this.u.a(45, (Object) t2);
        this.u.a(29, (Object) Integer.valueOf(g()));
        m<T> mVar = this.t;
        if (mVar != null) {
            this.u.a(41, (Object) mVar);
        }
        this.u.g();
    }
}
