package com.farsitel.bazaar.ui.base.page;

import c.c.a.n.c.c.r;
import c.c.a.n.c.c.t;
import com.farsitel.bazaar.common.model.DownloadableEntity;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.page.PageAppItem;
import com.farsitel.bazaar.common.model.page.PageItem;
import com.farsitel.bazaar.common.model.page.PageTypeItem;
import com.farsitel.bazaar.common.model.ui.EntityState;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.base.page.PageViewModel$updateItemsState$2", f = "PageViewModel.kt", l = {}, m = "invokeSuspend")
/* compiled from: PageViewModel.kt */
final class PageViewModel$updateItemsState$2 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ PageItem $pageItem;
    public int label;
    public H p$;
    public final /* synthetic */ t this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PageViewModel$updateItemsState$2(t tVar, PageItem pageItem, b bVar) {
        super(2, bVar);
        this.this$0 = tVar;
        this.$pageItem = pageItem;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        PageViewModel$updateItemsState$2 pageViewModel$updateItemsState$2 = new PageViewModel$updateItemsState$2(this.this$0, this.$pageItem, bVar);
        pageViewModel$updateItemsState$2.p$ = (H) obj;
        return pageViewModel$updateItemsState$2;
    }

    public final Object b(Object obj, Object obj2) {
        return ((PageViewModel$updateItemsState$2) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        EntityState entityState;
        h.c.a.b.a();
        if (this.label == 0) {
            e.a(obj);
            H h2 = this.p$;
            for (PageTypeItem a2 : this.$pageItem.getItems()) {
                DownloadableEntity a3 = this.this$0.a((RecyclerData) a2);
                if (a3 != null) {
                    int i2 = r.f6336a[a3.getEntityType().ordinal()];
                    if (i2 == 1) {
                        if (a3 instanceof PageAppItem) {
                            PageAppItem pageAppItem = (PageAppItem) a3;
                            pageAppItem.setInstalledVersionCode(c.c.a.c.h.e.f4731a.c(this.this$0.w, pageAppItem.getPackageName()));
                            pageAppItem.setApplicationInstalled(this.this$0.n.p(pageAppItem.getPackageName()));
                        }
                        entityState = this.this$0.n.a(a3.getEntityId(), this.this$0.b(a3));
                    } else if (i2 == 2) {
                        entityState = this.this$0.o.l(a3.getEntityId());
                    } else {
                        throw new NoWhenBranchMatchedException();
                    }
                    a3.setEntityState(entityState);
                }
            }
            return h.f14579a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
