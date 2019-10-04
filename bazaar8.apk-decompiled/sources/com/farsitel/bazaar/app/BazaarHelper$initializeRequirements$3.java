package com.farsitel.bazaar.app;

import c.c.a.b.d.m;
import c.c.a.c.a.a;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.app.BazaarHelper$initializeRequirements$3", f = "BazaarHelper.kt", l = {107}, m = "invokeSuspend")
/* compiled from: BazaarHelper.kt */
final class BazaarHelper$initializeRequirements$3 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public int label;
    public H p$;
    public final /* synthetic */ c.c.a.b.d this$0;

    @d(c = "com.farsitel.bazaar.app.BazaarHelper$initializeRequirements$3$1", f = "BazaarHelper.kt", l = {108}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.app.BazaarHelper$initializeRequirements$3$1  reason: invalid class name */
    /* compiled from: BazaarHelper.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super h>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ BazaarHelper$initializeRequirements$3 this$0;

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
                m d2 = this.this$0.this$0.o;
                this.label = 1;
                if (d2.a((b<? super h>) this) == a2) {
                    return a2;
                }
            } else if (i2 == 1) {
                e.a(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            this.this$0.this$0.f4567k.d();
            return h.f14579a;
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public BazaarHelper$initializeRequirements$3(c.c.a.b.d dVar, b bVar) {
        super(2, bVar);
        this.this$0 = dVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        BazaarHelper$initializeRequirements$3 bazaarHelper$initializeRequirements$3 = new BazaarHelper$initializeRequirements$3(this.this$0, bVar);
        bazaarHelper$initializeRequirements$3.p$ = (H) obj;
        return bazaarHelper$initializeRequirements$3;
    }

    public final Object b(Object obj, Object obj2) {
        return ((BazaarHelper$initializeRequirements$3) a(obj, (b) obj2)).d(h.f14579a);
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
