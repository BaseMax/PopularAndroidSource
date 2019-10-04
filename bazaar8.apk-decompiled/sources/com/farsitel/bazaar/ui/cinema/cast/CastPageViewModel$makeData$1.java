package com.farsitel.bazaar.ui.cinema.cast;

import c.c.a.n.j.a.a;
import com.farsitel.bazaar.common.model.Page;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.cinema.cast.CastPageViewModel$makeData$1", f = "CastPageViewModel.kt", l = {23}, m = "invokeSuspend")
/* compiled from: CastPageViewModel.kt */
final class CastPageViewModel$makeData$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ a $params;
    public int label;
    public H p$;
    public final /* synthetic */ c.c.a.n.j.a.b this$0;

    @d(c = "com.farsitel.bazaar.ui.cinema.cast.CastPageViewModel$makeData$1$1", f = "CastPageViewModel.kt", l = {23}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.cinema.cast.CastPageViewModel$makeData$1$1  reason: invalid class name */
    /* compiled from: CastPageViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends Page>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ CastPageViewModel$makeData$1 this$0;

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
                c.c.a.e.d.h.a.a a3 = this.this$0.this$0.z;
                String a4 = this.this$0.$params.a();
                String b2 = this.this$0.$params.b();
                this.label = 1;
                obj = a3.a(a4, b2, this);
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
    public CastPageViewModel$makeData$1(c.c.a.n.j.a.b bVar, a aVar, b bVar2) {
        super(2, bVar2);
        this.this$0 = bVar;
        this.$params = aVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        CastPageViewModel$makeData$1 castPageViewModel$makeData$1 = new CastPageViewModel$makeData$1(this.this$0, this.$params, bVar);
        castPageViewModel$makeData$1.p$ = (H) obj;
        return castPageViewModel$makeData$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((CastPageViewModel$makeData$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            AnonymousClass1 r4 = new AnonymousClass1(this, null);
            this.label = 1;
            obj = c.c.a.c.a.a.a(r4, this);
            if (obj == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        Either either = (Either) obj;
        c.c.a.n.j.a.b bVar = this.this$0;
        if (either instanceof Either.Success) {
            bVar.a((Page) ((Either.Success) either).getValue());
        } else if (either instanceof Either.Failure) {
            bVar.a(((Either.Failure) either).getError());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
