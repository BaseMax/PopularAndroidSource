package com.farsitel.bazaar.ui.payment.credit.options;

import c.c.a.c.a.a;
import c.c.a.n.s.a.a.g;
import com.farsitel.bazaar.core.model.PaymentState;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.feature.payment.CreditOption;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.payment.credit.options.CreditOptionsViewModel$getCreditOptions$1", f = "CreditOptionsViewModel.kt", l = {31}, m = "invokeSuspend")
/* compiled from: CreditOptionsViewModel.kt */
final class CreditOptionsViewModel$getCreditOptions$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ long $minimumNeededCredit;
    public int label;
    public H p$;
    public final /* synthetic */ g this$0;

    @d(c = "com.farsitel.bazaar.ui.payment.credit.options.CreditOptionsViewModel$getCreditOptions$1$1", f = "CreditOptionsViewModel.kt", l = {32}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.payment.credit.options.CreditOptionsViewModel$getCreditOptions$1$1  reason: invalid class name */
    /* compiled from: CreditOptionsViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends List<? extends CreditOption>>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ CreditOptionsViewModel$getCreditOptions$1 this$0;

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
                c.c.a.e.d.m.d a3 = this.this$0.this$0.f6825e;
                this.label = 1;
                obj = a3.b(this);
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
    public CreditOptionsViewModel$getCreditOptions$1(g gVar, long j2, b bVar) {
        super(2, bVar);
        this.this$0 = gVar;
        this.$minimumNeededCredit = j2;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        CreditOptionsViewModel$getCreditOptions$1 creditOptionsViewModel$getCreditOptions$1 = new CreditOptionsViewModel$getCreditOptions$1(this.this$0, this.$minimumNeededCredit, bVar);
        creditOptionsViewModel$getCreditOptions$1.p$ = (H) obj;
        return creditOptionsViewModel$getCreditOptions$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((CreditOptionsViewModel$getCreditOptions$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            AnonymousClass1 r9 = new AnonymousClass1(this, null);
            this.label = 1;
            obj = a.a(r9, this);
            if (obj == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        Either either = (Either) obj;
        if (either instanceof Either.Success) {
            c.c.a.c.h.g b2 = this.this$0.f6824d;
            Resource resource = new Resource(PaymentState.CreditOptionReceived.f12165a, this.this$0.a(this.$minimumNeededCredit, (List) ((Either.Success) either).getValue()), null, 4, null);
            b2.a(resource);
        } else if (either instanceof Either.Failure) {
            this.this$0.f6824d.a(new Resource(ResourceState.Error.f12177a, null, ((Either.Failure) either).getError()));
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
