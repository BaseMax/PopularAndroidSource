package com.farsitel.bazaar.analytics;

import c.c.a.a.a.a;
import c.c.a.a.b.c;
import h.c.b.a.d;
import h.e;
import h.f.a.b;
import h.f.b.j;
import h.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.analytics.AnalyticsAgent$track$1", f = "AnalyticsAgent.kt", l = {32}, m = "invokeSuspend")
/* compiled from: AnalyticsAgent.kt */
final class AnalyticsAgent$track$1 extends SuspendLambda implements b<h.c.b<? super h>, Object> {
    public final /* synthetic */ a $event;
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public int label;
    public final /* synthetic */ c.c.a.a.b this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AnalyticsAgent$track$1(c.c.a.a.b bVar, a aVar, h.c.b bVar2) {
        super(1, bVar2);
        this.this$0 = bVar;
        this.$event = aVar;
    }

    public final h.c.b<h> a(h.c.b<?> bVar) {
        j.b(bVar, "completion");
        return new AnalyticsAgent$track$1(this.this$0, this.$event, bVar);
    }

    public final Object a(Object obj) {
        return ((AnalyticsAgent$track$1) a((h.c.b<?>) (h.c.b) obj)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Iterable iterable;
        Iterator it;
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            Set a3 = this.this$0.f4484c;
            ArrayList arrayList = new ArrayList();
            for (Object next : a3) {
                if (h.c.b.a.a.a(((c) next).a(this.$event)).booleanValue()) {
                    arrayList.add(next);
                }
            }
            iterable = arrayList;
            it = arrayList.iterator();
        } else if (i2 == 1) {
            c cVar = (c) this.L$3;
            Object obj2 = this.L$2;
            it = (Iterator) this.L$1;
            iterable = (Iterable) this.L$0;
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        while (it.hasNext()) {
            Object next2 = it.next();
            c cVar2 = (c) next2;
            a aVar = this.$event;
            this.L$0 = iterable;
            this.L$1 = it;
            this.L$2 = next2;
            this.L$3 = cVar2;
            this.label = 1;
            if (cVar2.a(aVar, this) == a2) {
                return a2;
            }
        }
        return h.f14579a;
    }
}
