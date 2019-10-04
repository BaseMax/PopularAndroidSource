package c.c.a.n.c.d;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.c.a.d.b.i;
import c.c.a.n.c.c.a.c;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.recycler.AbstractSectionRowData;
import com.farsitel.bazaar.ui.base.recycler.PreloadLinearLayoutManager;
import h.f.b.j;
import h.h;
import java.util.ArrayList;

/* compiled from: ScrollableViewHolder.kt */
public abstract class o<Section extends RecyclerData & AbstractSectionRowData<SectionItem>, SectionItem extends RecyclerData> extends c {
    public final TextView A;
    public final ImageView B;
    public final TextView C;
    public final View D;
    public final int E;
    public RecyclerView.n F;
    public final ViewGroup G;
    public final RecyclerView.o H;
    public final a I;
    public int x = i.a(8);
    public a<SectionItem> y;
    public final RecyclerView z;

    /* compiled from: ScrollableViewHolder.kt */
    public interface a {
        <SectionItem> void a(SectionItem sectionitem);

        <Section> void b(Section section);
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public o(android.view.ViewGroup r3, androidx.recyclerview.widget.RecyclerView.o r4, c.c.a.n.c.d.o.a r5, com.farsitel.bazaar.common.model.page.PageViewConfigItem r6) {
        /*
            r2 = this;
            java.lang.String r0 = "parent"
            h.f.b.j.b(r3, r0)
            java.lang.String r0 = "recyclerPool"
            h.f.b.j.b(r4, r0)
            android.content.Context r0 = r3.getContext()
            android.view.LayoutInflater r0 = android.view.LayoutInflater.from(r0)
            r1 = 0
            c.c.a.f.ub r0 = c.c.a.f.C0467ub.a(r0, r3, r1)
            java.lang.String r1 = "ItemScrollableBinding.in….context), parent, false)"
            h.f.b.j.a((java.lang.Object) r0, (java.lang.String) r1)
            r2.<init>(r0, r6)
            r2.G = r3
            r2.H = r4
            r2.I = r5
            r3 = 8
            int r3 = c.c.a.d.b.i.a(r3)
            r2.x = r3
            android.view.View r3 = r2.f891b
            java.lang.String r4 = "itemView"
            h.f.b.j.a((java.lang.Object) r3, (java.lang.String) r4)
            int r5 = c.c.a.e.scrollableRecyclerView
            android.view.View r3 = r3.findViewById(r5)
            androidx.recyclerview.widget.RecyclerView r3 = (androidx.recyclerview.widget.RecyclerView) r3
            java.lang.String r5 = "itemView.scrollableRecyclerView"
            h.f.b.j.a((java.lang.Object) r3, (java.lang.String) r5)
            r2.z = r3
            android.view.View r3 = r2.f891b
            h.f.b.j.a((java.lang.Object) r3, (java.lang.String) r4)
            int r5 = c.c.a.e.scrollableAction
            android.view.View r3 = r3.findViewById(r5)
            androidx.appcompat.widget.AppCompatTextView r3 = (androidx.appcompat.widget.AppCompatTextView) r3
            java.lang.String r5 = "itemView.scrollableAction"
            h.f.b.j.a((java.lang.Object) r3, (java.lang.String) r5)
            r2.A = r3
            android.view.View r3 = r2.f891b
            h.f.b.j.a((java.lang.Object) r3, (java.lang.String) r4)
            int r5 = c.c.a.e.scrollableArrow
            android.view.View r3 = r3.findViewById(r5)
            com.farsitel.bazaar.widget.RTLImageView r3 = (com.farsitel.bazaar.widget.RTLImageView) r3
            java.lang.String r5 = "itemView.scrollableArrow"
            h.f.b.j.a((java.lang.Object) r3, (java.lang.String) r5)
            r2.B = r3
            android.view.View r3 = r2.f891b
            h.f.b.j.a((java.lang.Object) r3, (java.lang.String) r4)
            int r5 = c.c.a.e.scrollableLabel
            android.view.View r3 = r3.findViewById(r5)
            com.farsitel.bazaar.widget.LocalAwareTextView r3 = (com.farsitel.bazaar.widget.LocalAwareTextView) r3
            java.lang.String r5 = "itemView.scrollableLabel"
            h.f.b.j.a((java.lang.Object) r3, (java.lang.String) r5)
            r2.C = r3
            android.view.View r3 = r2.f891b
            h.f.b.j.a((java.lang.Object) r3, (java.lang.String) r4)
            int r4 = c.c.a.e.scrollableTitleContainer
            android.view.View r3 = r3.findViewById(r4)
            android.widget.LinearLayout r3 = (android.widget.LinearLayout) r3
            java.lang.String r4 = "itemView.scrollableTitleContainer"
            h.f.b.j.a((java.lang.Object) r3, (java.lang.String) r4)
            r2.D = r3
            int r3 = c.c.a.c.h.d.b()
            r2.E = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.c.d.o.<init>(android.view.ViewGroup, androidx.recyclerview.widget.RecyclerView$o, c.c.a.n.c.d.o$a, com.farsitel.bazaar.common.model.page.PageViewConfigItem):void");
    }

    public void D() {
        super.D();
        B().a(7, (Object) null);
    }

    public abstract a<SectionItem> E();

    public final q F() {
        return new q(this);
    }

    public final void G() {
        RecyclerView.n nVar = this.F;
        if (nVar != null) {
            this.z.b(nVar);
        }
        this.y = null;
    }

    public void b(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        B().a(7, (Object) this.I);
        AbstractSectionRowData abstractSectionRowData = (AbstractSectionRowData) recyclerData;
        this.D.setVisibility(abstractSectionRowData.getTitle().length() == 0 ? 8 : 0);
        RecyclerView recyclerView = this.z;
        recyclerView.setRecycledViewPool(this.H);
        recyclerView.setHasFixedSize(true);
        recyclerView.setNestedScrollingEnabled(false);
        recyclerView.setFocusable(false);
        View view = this.f891b;
        j.a((Object) view, "itemView");
        Context context = view.getContext();
        j.a((Object) context, "itemView.context");
        PreloadLinearLayoutManager preloadLinearLayoutManager = new PreloadLinearLayoutManager(context, abstractSectionRowData.getOrientation(), false);
        preloadLinearLayoutManager.n(4);
        recyclerView.setLayoutManager(preloadLinearLayoutManager);
        a<SectionItem> aVar = this.y;
        if (aVar == null) {
            aVar = E();
        }
        aVar.a((ArrayList<SectionItem>) new ArrayList(abstractSectionRowData.getItems()));
        aVar.a((m<SectionItem>) F());
        if (recyclerView.getAdapter() == null) {
            recyclerView.setAdapter(aVar);
        } else {
            recyclerView.a((RecyclerView.a) aVar, true);
        }
        recyclerView.c();
        a(abstractSectionRowData.getOrientation(), (h.f.a.a<h>) new ScrollableViewHolder$bindData$$inlined$with$lambda$1(recyclerView, this, recyclerData));
    }

    public final void a(int i2, h.f.a.a<h> aVar) {
        if (i2 != 1) {
            aVar.invoke();
        }
    }
}
