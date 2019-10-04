package c.c.a.n.j.b.b;

import android.content.Context;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import c.c.a.n.c.d.n;
import c.c.a.n.j.b.a.d;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;

/* compiled from: TrailerCoverViewHolder.kt */
public final class k extends n<RecyclerData> {
    public d.a v;
    public final ViewDataBinding w;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public k(ViewDataBinding viewDataBinding) {
        super(viewDataBinding);
        j.b(viewDataBinding, "viewDataBinding");
        this.w = viewDataBinding;
    }

    public final void a(d.a aVar) {
        this.v = aVar;
    }

    public void b(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        ViewDataBinding viewDataBinding = this.w;
        viewDataBinding.a(5, (Object) this.v);
        RecyclerView.j jVar = new RecyclerView.j(-1, -2);
        View h2 = viewDataBinding.h();
        j.a((Object) h2, "root");
        Context context = h2.getContext();
        j.a((Object) context, "root.context");
        int dimension = (int) context.getResources().getDimension(R.dimen.default_margin_half);
        jVar.setMargins(dimension, dimension, dimension, dimension);
        View h3 = viewDataBinding.h();
        j.a((Object) h3, "root");
        h3.setLayoutParams(jVar);
    }
}
