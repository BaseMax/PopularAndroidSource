package com.farsitel.bazaar.app;

import c.c.a.c.a.a;
import c.c.a.e.d.b.ba;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import java.util.concurrent.TimeUnit;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.app.BazaarHelper$scheduleWorkers$1", f = "BazaarHelper.kt", l = {122}, m = "invokeSuspend")
/* compiled from: BazaarHelper.kt */
final class BazaarHelper$scheduleWorkers$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public int label;
    public H p$;
    public final /* synthetic */ c.c.a.b.d this$0;

    @d(c = "com.farsitel.bazaar.app.BazaarHelper$scheduleWorkers$1$1", f = "BazaarHelper.kt", l = {123}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.app.BazaarHelper$scheduleWorkers$1$1  reason: invalid class name */
    /* compiled from: BazaarHelper.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super h>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ BazaarHelper$scheduleWorkers$1 this$0;

        {
            this.this$0 = r1;
        }

        public final b<h> a(Object obj, b<?> bVar) {
            j.b(bVar, "completion");
            AnonymousClass1 r0 = new AnonymousClass1(this.this$0, bVar);
            r0.p$ = (H) obj;
            return r0;
        }

        public final Object b(Object obj, Object obj2) {
            return ((AnonymousClass1) a(obj, (b) obj2)).d(h.f14579a);
        }

        public final Object d(Object obj) {
            Object a2 = h.c.a.b.a();
            int i2 = this.label;
            if (i2 == 0) {
                e.a(obj);
                H h2 = this.p$;
                ba f2 = this.this$0.this$0.f4561e;
                this.label = 1;
                obj = f2.c((b<? super Long>) this);
                if (obj == a2) {
                    return a2;
                }
            } else if (i2 == 1) {
                e.a(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            long longValue = ((Number) obj).longValue();
            long currentTimeMillis = System.currentTimeMillis();
            if (longValue > 0 && currentTimeMillis - longValue >= TimeUnit.DAYS.toMillis(2)) {
                this.this$0.this$0.n.a(this.this$0.this$0.f4562f.A());
            }
            return h.f14579a;
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public BazaarHelper$scheduleWorkers$1(c.c.a.b.d dVar, b bVar) {
        super(2, bVar);
        this.this$0 = dVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        BazaarHelper$scheduleWorkers$1 bazaarHelper$scheduleWorkers$1 = new BazaarHelper$scheduleWorkers$1(this.this$0, bVar);
        bazaarHelper$scheduleWorkers$1.p$ = (H) obj;
        return bazaarHelper$scheduleWorkers$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((BazaarHelper$scheduleWorkers$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            AnonymousClass1 r4 = new AnonymousClass1(this, null);
            this.label = 1;
            if (a.a(r4, this) == a2) {
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
