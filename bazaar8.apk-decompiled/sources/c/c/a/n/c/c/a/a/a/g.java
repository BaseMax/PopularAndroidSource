package c.c.a.n.c.c.a.a.a;

import android.view.View;
import androidx.databinding.ViewDataBinding;
import c.c.a.f.C0481za;
import c.c.a.n.c.c.a.a;
import c.c.a.n.c.c.a.c;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.page.HamiItem;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.PageViewConfigItem;
import com.farsitel.bazaar.common.model.page.VitrinItem;
import f.a.a.e.h;
import f.a.a.e.s;
import h.f.b.j;
import ir.cafebazaar.inline.ui.Theme;
import kotlin.TypeCastException;

/* compiled from: HamiInlineListViewHolder.kt */
public final class g extends c {
    public final ViewDataBinding x;
    public final a<HamiItem> y;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public g(ViewDataBinding viewDataBinding, a<HamiItem> aVar, PageViewConfigItem pageViewConfigItem) {
        super(viewDataBinding, pageViewConfigItem);
        j.b(viewDataBinding, "viewDataBinding");
        j.b(aVar, "onPageCommunicator");
        this.x = viewDataBinding;
        this.y = aVar;
    }

    public void C() {
        ViewDataBinding viewDataBinding = this.x;
        if (viewDataBinding instanceof C0481za) {
            ((C0481za) viewDataBinding).B.removeAllViews();
            super.C();
            return;
        }
        throw new IllegalStateException("Check failed.");
    }

    public void D() {
        super.D();
        this.x.a(1, (Object) null);
        this.x.a(17, (Object) null);
    }

    public void b(RecyclerData recyclerData) {
        HamiItem hamiItem;
        j.b(recyclerData, "item");
        super.b(recyclerData);
        if (recyclerData instanceof ListItem.Hami) {
            hamiItem = ((ListItem.Hami) recyclerData).getHami();
        } else if (recyclerData instanceof VitrinItem.Hami) {
            hamiItem = ((VitrinItem.Hami) recyclerData).getHami();
        } else {
            throw new IllegalStateException("invalid state");
        }
        this.x.a(1, (Object) hamiItem);
        this.x.a(17, (Object) this.y);
        View h2 = this.x.h();
        j.a((Object) h2, "viewDataBinding.root");
        View a2 = s.a(new h(h2.getContext(), new Theme()), hamiItem.getInlineXML());
        ViewDataBinding viewDataBinding = this.x;
        if (viewDataBinding != null) {
            ((C0481za) viewDataBinding).B.addView(a2);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type com.farsitel.bazaar.databinding.ItemListHamiInlineBinding");
    }
}
