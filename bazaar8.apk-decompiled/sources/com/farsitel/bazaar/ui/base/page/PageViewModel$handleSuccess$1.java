package com.farsitel.bazaar.ui.base.page;

import c.c.a.n.c.c.t;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.page.PageItem;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import java.util.List;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.base.page.PageViewModel$handleSuccess$1", f = "PageViewModel.kt", l = {101}, m = "invokeSuspend")
/* compiled from: PageViewModel.kt */
final class PageViewModel$handleSuccess$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ PageItem $pageItem;
    public int label;
    public H p$;
    public final /* synthetic */ t this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PageViewModel$handleSuccess$1(t tVar, PageItem pageItem, b bVar) {
        super(2, bVar);
        this.this$0 = tVar;
        this.$pageItem = pageItem;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        PageViewModel$handleSuccess$1 pageViewModel$handleSuccess$1 = new PageViewModel$handleSuccess$1(this.this$0, this.$pageItem, bVar);
        pageViewModel$handleSuccess$1.p$ = (H) obj;
        return pageViewModel$handleSuccess$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((PageViewModel$handleSuccess$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            t tVar = this.this$0;
            PageItem pageItem = this.$pageItem;
            this.label = 1;
            if (tVar.a(pageItem, (b<? super h>) this) == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        this.this$0.b((List<? extends RecyclerData>) this.$pageItem.getItems());
        this.this$0.f6340j.a(this.$pageItem);
        this.this$0.a(this.$pageItem.getItems());
        return h.f14579a;
    }
}
