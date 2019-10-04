package com.farsitel.bazaar.ui.base.recycler;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import c.c.a.d.b.k;
import c.c.a.n.c.d.o;
import c.c.a.n.c.d.p;
import c.c.a.o.a.c;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.recycler.AbstractSectionRowData;
import h.f.a.a;
import h.f.b.j;
import h.h;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Lambda;

/* compiled from: ScrollableViewHolder.kt */
final class ScrollableViewHolder$bindData$$inlined$with$lambda$1 extends Lambda implements a<h> {
    public final /* synthetic */ RecyclerData $item$inlined;
    public final /* synthetic */ RecyclerView $this_with;
    public final /* synthetic */ o this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ScrollableViewHolder$bindData$$inlined$with$lambda$1(RecyclerView recyclerView, o oVar, RecyclerData recyclerData) {
        super(0);
        this.$this_with = recyclerView;
        this.this$0 = oVar;
        this.$item$inlined = recyclerData;
    }

    public final void invoke() {
        RecyclerView.i layoutManager = this.$this_with.getLayoutManager();
        if (layoutManager != null) {
            ((LinearLayoutManager) layoutManager).f(((AbstractSectionRowData) this.$item$inlined).getCurrentPosition(), ((AbstractSectionRowData) this.$item$inlined).getCurrentPositionOffset());
            this.this$0.F = new p(this);
            RecyclerView recyclerView = this.$this_with;
            RecyclerView.n d2 = this.this$0.F;
            if (d2 != null) {
                recyclerView.a(d2);
                k.a(this.$this_with);
                this.$this_with.a((RecyclerView.h) new c(this.this$0.x, 0));
                return;
            }
            j.a();
            throw null;
        }
        throw new TypeCastException("null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
    }
}
