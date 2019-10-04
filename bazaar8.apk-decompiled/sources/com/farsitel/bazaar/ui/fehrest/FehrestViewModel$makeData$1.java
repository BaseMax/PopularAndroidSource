package com.farsitel.bazaar.ui.fehrest;

import c.c.a.c.a.a;
import c.c.a.n.l.i;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.entity.FehrestTabPage;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.fehrest.FehrestViewModel$makeData$1", f = "FehrestViewModel.kt", l = {33}, m = "invokeSuspend")
/* compiled from: FehrestViewModel.kt */
final class FehrestViewModel$makeData$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ FehrestParams $params;
    public int label;
    public H p$;
    public final /* synthetic */ i this$0;

    @d(c = "com.farsitel.bazaar.ui.fehrest.FehrestViewModel$makeData$1$1", f = "FehrestViewModel.kt", l = {33}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.fehrest.FehrestViewModel$makeData$1$1  reason: invalid class name */
    /* compiled from: FehrestViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends FehrestTabPage>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ FehrestViewModel$makeData$1 this$0;

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
                c.c.a.e.d.j.c a3 = this.this$0.this$0.y;
                String c2 = this.this$0.$params.c();
                int b2 = this.this$0.this$0.h();
                String referrer = this.this$0.$params.getReferrer();
                if (referrer == null) {
                    referrer = c.c.a.c.d.e.a();
                }
                this.label = 1;
                obj = a3.a(c2, b2, referrer, this);
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

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public FehrestViewModel$makeData$1(i iVar, FehrestParams fehrestParams, b bVar) {
        super(2, bVar);
        this.this$0 = iVar;
        this.$params = fehrestParams;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        FehrestViewModel$makeData$1 fehrestViewModel$makeData$1 = new FehrestViewModel$makeData$1(this.this$0, this.$params, bVar);
        fehrestViewModel$makeData$1.p$ = (H) obj;
        return fehrestViewModel$makeData$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((FehrestViewModel$makeData$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            AnonymousClass1 r4 = new AnonymousClass1(this, null);
            this.label = 1;
            obj = a.a(r4, this);
            if (obj == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        Either either = (Either) obj;
        i iVar = this.this$0;
        if (either instanceof Either.Success) {
            iVar.a((FehrestTabPage) ((Either.Success) either).getValue());
        } else if (either instanceof Either.Failure) {
            iVar.a(((Either.Failure) either).getError());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
