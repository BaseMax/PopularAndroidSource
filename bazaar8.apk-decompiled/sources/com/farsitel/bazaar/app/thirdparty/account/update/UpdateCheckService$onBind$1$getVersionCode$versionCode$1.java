package com.farsitel.bazaar.app.thirdparty.account.update;

import c.c.a.b.h.a.a.a;
import c.c.a.e.d.b.ba;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.app.thirdparty.account.update.UpdateCheckService$onBind$1$getVersionCode$versionCode$1", f = "UpdateCheckService.kt", l = {36}, m = "invokeSuspend")
/* compiled from: UpdateCheckService.kt */
final class UpdateCheckService$onBind$1$getVersionCode$versionCode$1 extends SuspendLambda implements c<H, b<? super Long>, Object> {
    public final /* synthetic */ String $packageName;
    public int label;
    public H p$;
    public final /* synthetic */ a this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public UpdateCheckService$onBind$1$getVersionCode$versionCode$1(a aVar, String str, b bVar) {
        super(2, bVar);
        this.this$0 = aVar;
        this.$packageName = str;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        UpdateCheckService$onBind$1$getVersionCode$versionCode$1 updateCheckService$onBind$1$getVersionCode$versionCode$1 = new UpdateCheckService$onBind$1$getVersionCode$versionCode$1(this.this$0, this.$packageName, bVar);
        updateCheckService$onBind$1$getVersionCode$versionCode$1.p$ = (H) obj;
        return updateCheckService$onBind$1$getVersionCode$versionCode$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((UpdateCheckService$onBind$1$getVersionCode$versionCode$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            ba b2 = this.this$0.f4690a.b();
            String str = this.$packageName;
            this.label = 1;
            obj = b2.a(str, (b<? super Long>) this);
            if (obj == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return obj;
    }
}
