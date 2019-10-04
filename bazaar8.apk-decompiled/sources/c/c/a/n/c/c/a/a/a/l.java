package c.c.a.n.c.c.a.a.a;

import androidx.databinding.ViewDataBinding;
import c.c.a.d.g.a.i;
import c.c.a.f.Fa;
import c.c.a.n.c.c.a.c;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.PageViewConfigItem;
import com.farsitel.bazaar.common.model.page.VitrinItem;
import com.farsitel.bazaar.core.widget.AspectRatioImageView;
import h.f.b.j;

/* compiled from: PromoListViewHolder.kt */
public final class l extends c {
    public final ViewDataBinding x;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public l(ViewDataBinding viewDataBinding, PageViewConfigItem pageViewConfigItem) {
        super(viewDataBinding, pageViewConfigItem);
        j.b(viewDataBinding, "viewDataBinding");
        this.x = viewDataBinding;
    }

    public void C() {
        ViewDataBinding viewDataBinding = this.x;
        if (viewDataBinding instanceof Fa) {
            i iVar = i.f4812a;
            AspectRatioImageView aspectRatioImageView = ((Fa) viewDataBinding).A;
            j.a((Object) aspectRatioImageView, "viewDataBinding.promoImage");
            iVar.a(aspectRatioImageView);
            ((Fa) this.x).A.setImageDrawable(null);
            super.C();
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    public void D() {
        super.D();
        this.x.a(15, (Object) null);
    }

    public void b(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        super.b(recyclerData);
        if (recyclerData instanceof ListItem.Promo) {
            this.x.a(15, (Object) ((ListItem.Promo) recyclerData).getPromo());
        } else if (recyclerData instanceof VitrinItem.Promo) {
            this.x.a(15, (Object) ((VitrinItem.Promo) recyclerData).getPromos().get(0));
        }
    }
}
