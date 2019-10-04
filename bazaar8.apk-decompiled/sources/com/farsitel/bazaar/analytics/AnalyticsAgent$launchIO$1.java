package com.farsitel.bazaar.analytics;

import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.analytics.AnalyticsAgent$launchIO$1", f = "AnalyticsAgent.kt", l = {25}, m = "invokeSuspend")
/* compiled from: AnalyticsAgent.kt */
final class AnalyticsAgent$launchIO$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ h.f.a.b $block;
    public int label;
    public H p$;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AnalyticsAgent$launchIO$1(h.f.a.b bVar, b bVar2) {
        super(2, bVar2);
        this.$block = bVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        AnalyticsAgent$launchIO$1 analyticsAgent$launchIO$1 = new AnalyticsAgent$launchIO$1(this.$block, bVar);
        analyticsAgent$launchIO$1.p$ = (H) obj;
        return analyticsAgent$launchIO$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((AnalyticsAgent$launchIO$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            h.f.a.b bVar = this.$block;
            this.label = 1;
            if (bVar.a(this) == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return h.f14579a;
    }
}
