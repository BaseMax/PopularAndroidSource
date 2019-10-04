package com.farsitel.bazaar.player;

import c.e.a.a.j.v;
import h.c.b;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* compiled from: CafePlayer.kt */
final class CafePlayer$prepare$1$invokeSuspend$$inlined$with$lambda$1 extends SuspendLambda implements c<H, b<? super v>, Object> {
    public int label;
    public H p$;
    public final /* synthetic */ CafePlayer$prepare$1 this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public CafePlayer$prepare$1$invokeSuspend$$inlined$with$lambda$1(b bVar, CafePlayer$prepare$1 cafePlayer$prepare$1) {
        super(2, bVar);
        this.this$0 = cafePlayer$prepare$1;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        CafePlayer$prepare$1$invokeSuspend$$inlined$with$lambda$1 cafePlayer$prepare$1$invokeSuspend$$inlined$with$lambda$1 = new CafePlayer$prepare$1$invokeSuspend$$inlined$with$lambda$1(bVar, this.this$0);
        cafePlayer$prepare$1$invokeSuspend$$inlined$with$lambda$1.p$ = (H) obj;
        return cafePlayer$prepare$1$invokeSuspend$$inlined$with$lambda$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((CafePlayer$prepare$1$invokeSuspend$$inlined$with$lambda$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        h.c.a.b.a();
        if (this.label == 0) {
            e.a(obj);
            H h2 = this.p$;
            return this.this$0.this$0.g();
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
