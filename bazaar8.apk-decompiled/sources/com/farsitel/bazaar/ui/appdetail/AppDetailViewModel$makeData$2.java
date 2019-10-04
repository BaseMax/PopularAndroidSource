package com.farsitel.bazaar.ui.appdetail;

import androidx.lifecycle.LiveData;
import b.r.r;
import c.c.a.n.b.w;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.appdetail.AppDetailViewModel$makeData$2", f = "AppDetailViewModel.kt", l = {87}, m = "invokeSuspend")
/* compiled from: AppDetailViewModel.kt */
final class AppDetailViewModel$makeData$2 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public Object L$0;
    public int label;
    public H p$;
    public final /* synthetic */ w this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AppDetailViewModel$makeData$2(w wVar, b bVar) {
        super(2, bVar);
        this.this$0 = wVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        AppDetailViewModel$makeData$2 appDetailViewModel$makeData$2 = new AppDetailViewModel$makeData$2(this.this$0, bVar);
        appDetailViewModel$makeData$2.p$ = (H) obj;
        return appDetailViewModel$makeData$2;
    }

    public final Object b(Object obj, Object obj2) {
        return ((AppDetailViewModel$makeData$2) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        r rVar;
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            r b2 = this.this$0.o;
            c.c.a.e.d.d.b c2 = this.this$0.v;
            String t = this.this$0.t();
            this.L$0 = b2;
            this.label = 1;
            Object a3 = c2.a(t, (b<? super LiveData<Boolean>>) this);
            if (a3 == a2) {
                return a2;
            }
            rVar = b2;
            obj = a3;
        } else if (i2 == 1) {
            rVar = (r) this.L$0;
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        rVar.a((LiveData) obj, new y(this));
        return h.f14579a;
    }
}
