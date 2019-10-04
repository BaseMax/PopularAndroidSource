package com.farsitel.bazaar.ui.appdetail;

import c.c.a.n.b.w;
import com.farsitel.bazaar.common.model.appdetail.AppInfoItem;
import com.farsitel.bazaar.data.entity.None;
import h.c.b.a.a;
import h.c.b.a.d;
import h.e;
import h.f.a.b;
import h.f.b.j;
import h.h;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.appdetail.AppDetailViewModel$changeBookmarkState$1", f = "AppDetailViewModel.kt", l = {}, m = "invokeSuspend")
/* compiled from: AppDetailViewModel.kt */
final class AppDetailViewModel$changeBookmarkState$1 extends SuspendLambda implements b<h.c.b<? super h>, Object> {
    public int label;
    public final /* synthetic */ w this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AppDetailViewModel$changeBookmarkState$1(w wVar, h.c.b bVar) {
        super(1, bVar);
        this.this$0 = wVar;
    }

    public final h.c.b<h> a(h.c.b<?> bVar) {
        j.b(bVar, "completion");
        return new AppDetailViewModel$changeBookmarkState$1(this.this$0, bVar);
    }

    public final Object a(Object obj) {
        return ((AppDetailViewModel$changeBookmarkState$1) a((h.c.b<?>) (h.c.b) obj)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        h.c.a.b.a();
        if (this.label == 0) {
            e.a(obj);
            if (this.this$0.z.f()) {
                AppInfoItem a2 = w.a(this.this$0, null, 1, null);
                if (a2 != null) {
                    this.this$0.A.a(this.this$0.t(), a2.getName(), a2.getIconURL(), !j.a((Object) (Boolean) this.this$0.o.a(), (Object) a.a(true)), a2.getPrice(), a2.getPrices().getPriceString());
                    this.this$0.n.a(None.INSTANCE);
                }
            } else {
                this.this$0.r.a(a.a(1001));
            }
            return h.f14579a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
