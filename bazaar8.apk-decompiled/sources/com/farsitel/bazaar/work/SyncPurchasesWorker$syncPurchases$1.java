package com.farsitel.bazaar.work;

import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.work.SyncPurchasesWorker$syncPurchases$1", f = "SyncPurchasesWorker.kt", l = {27}, m = "invokeSuspend")
/* compiled from: SyncPurchasesWorker.kt */
final class SyncPurchasesWorker$syncPurchases$1 extends SuspendLambda implements c<H, b<? super Boolean>, Object> {
    public int label;
    public H p$;
    public final /* synthetic */ SyncPurchasesWorker this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public SyncPurchasesWorker$syncPurchases$1(SyncPurchasesWorker syncPurchasesWorker, b bVar) {
        super(2, bVar);
        this.this$0 = syncPurchasesWorker;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        SyncPurchasesWorker$syncPurchases$1 syncPurchasesWorker$syncPurchases$1 = new SyncPurchasesWorker$syncPurchases$1(this.this$0, bVar);
        syncPurchasesWorker$syncPurchases$1.p$ = (H) obj;
        return syncPurchasesWorker$syncPurchases$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((SyncPurchasesWorker$syncPurchases$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            c.c.a.e.d.m.d a3 = this.this$0.f12496h;
            this.label = 1;
            obj = a3.e(this);
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
