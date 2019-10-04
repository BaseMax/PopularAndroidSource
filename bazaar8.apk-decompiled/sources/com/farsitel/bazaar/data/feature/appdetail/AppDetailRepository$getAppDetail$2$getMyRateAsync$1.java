package com.farsitel.bazaar.data.feature.appdetail;

import h.c.b;
import h.c.b.a.a;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.data.feature.appdetail.AppDetailRepository$getAppDetail$2$getMyRateAsync$1", f = "AppDetailRepository.kt", l = {}, m = "invokeSuspend")
/* compiled from: AppDetailRepository.kt */
final class AppDetailRepository$getAppDetail$2$getMyRateAsync$1 extends SuspendLambda implements c<H, b<? super Integer>, Object> {
    public int label;
    public H p$;
    public final /* synthetic */ AppDetailRepository$getAppDetail$2 this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AppDetailRepository$getAppDetail$2$getMyRateAsync$1(AppDetailRepository$getAppDetail$2 appDetailRepository$getAppDetail$2, b bVar) {
        super(2, bVar);
        this.this$0 = appDetailRepository$getAppDetail$2;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        AppDetailRepository$getAppDetail$2$getMyRateAsync$1 appDetailRepository$getAppDetail$2$getMyRateAsync$1 = new AppDetailRepository$getAppDetail$2$getMyRateAsync$1(this.this$0, bVar);
        appDetailRepository$getAppDetail$2$getMyRateAsync$1.p$ = (H) obj;
        return appDetailRepository$getAppDetail$2$getMyRateAsync$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((AppDetailRepository$getAppDetail$2$getMyRateAsync$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        h.c.a.b.a();
        if (this.label == 0) {
            e.a(obj);
            H h2 = this.p$;
            return a.a(this.this$0.this$0.f5027d.b(this.this$0.$packageName));
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
