package c.c.a.n.b.d;

import android.widget.RatingBar;
import androidx.databinding.ViewDataBinding;
import c.c.a.f.Q;
import c.c.a.n.b.v;
import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;

/* compiled from: MyRateViewHolder.kt */
public final class h extends v {
    public final ViewDataBinding v;
    public final i w;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public h(ViewDataBinding viewDataBinding, i iVar) {
        super(viewDataBinding);
        j.b(viewDataBinding, "viewDataBinding");
        j.b(iVar, "rateChangedListener");
        this.v = viewDataBinding;
        this.w = iVar;
    }

    public void C() {
        ViewDataBinding viewDataBinding = this.v;
        if (viewDataBinding instanceof Q) {
            RatingBar ratingBar = ((Q) viewDataBinding).C;
            j.a((Object) ratingBar, "viewDataBinding.rbPostComment");
            ratingBar.setOnRatingBarChangeListener(null);
            super.C();
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    public void D() {
        super.D();
        this.v.a(18, (Object) null);
    }

    public void b(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        super.b(recyclerData);
        this.v.a(18, (Object) this.w);
    }
}
