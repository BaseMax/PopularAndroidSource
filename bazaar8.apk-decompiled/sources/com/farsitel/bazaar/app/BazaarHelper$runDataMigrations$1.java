package com.farsitel.bazaar.app;

import android.app.Application;
import c.c.a.c.a.a;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.app.BazaarHelper$runDataMigrations$1", f = "BazaarHelper.kt", l = {166}, m = "invokeSuspend")
/* compiled from: BazaarHelper.kt */
final class BazaarHelper$runDataMigrations$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ Application $application;
    public int label;
    public H p$;
    public final /* synthetic */ c.c.a.b.d this$0;

    @d(c = "com.farsitel.bazaar.app.BazaarHelper$runDataMigrations$1$1", f = "BazaarHelper.kt", l = {167}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.app.BazaarHelper$runDataMigrations$1$1  reason: invalid class name */
    /* compiled from: BazaarHelper.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super h>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ BazaarHelper$runDataMigrations$1 this$0;

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
                BazaarHelper$runDataMigrations$1 bazaarHelper$runDataMigrations$1 = this.this$0;
                c.c.a.b.d dVar = bazaarHelper$runDataMigrations$1.this$0;
                Application application = bazaarHelper$runDataMigrations$1.$application;
                this.label = 1;
                if (dVar.b(application, this) == a2) {
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

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public BazaarHelper$runDataMigrations$1(c.c.a.b.d dVar, Application application, b bVar) {
        super(2, bVar);
        this.this$0 = dVar;
        this.$application = application;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        BazaarHelper$runDataMigrations$1 bazaarHelper$runDataMigrations$1 = new BazaarHelper$runDataMigrations$1(this.this$0, this.$application, bVar);
        bazaarHelper$runDataMigrations$1.p$ = (H) obj;
        return bazaarHelper$runDataMigrations$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((BazaarHelper$runDataMigrations$1) a(obj, (b) obj2)).d(h.f14579a);
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
