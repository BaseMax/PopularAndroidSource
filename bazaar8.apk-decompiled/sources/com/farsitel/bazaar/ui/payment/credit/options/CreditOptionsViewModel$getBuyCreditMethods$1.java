package com.farsitel.bazaar.ui.payment.credit.options;

import c.c.a.c.a.a;
import c.c.a.n.s.a.a.g;
import com.farsitel.bazaar.core.model.PaymentState;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.feature.payment.PaymentGateway;
import h.a.u;
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

@d(c = "com.farsitel.bazaar.ui.payment.credit.options.CreditOptionsViewModel$getBuyCreditMethods$1", f = "CreditOptionsViewModel.kt", l = {48}, m = "invokeSuspend")
/* compiled from: CreditOptionsViewModel.kt */
final class CreditOptionsViewModel$getBuyCreditMethods$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ long $amount;
    public int label;
    public H p$;
    public final /* synthetic */ g this$0;

    @d(c = "com.farsitel.bazaar.ui.payment.credit.options.CreditOptionsViewModel$getBuyCreditMethods$1$1", f = "CreditOptionsViewModel.kt", l = {49}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.payment.credit.options.CreditOptionsViewModel$getBuyCreditMethods$1$1  reason: invalid class name */
    /* compiled from: CreditOptionsViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends List<? extends PaymentGateway>>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ CreditOptionsViewModel$getBuyCreditMethods$1 this$0;

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
                long j2 = this.this$0.$amount;
                this.label = 1;
                obj = a3.a(j2, (b<? super Either<? extends List<PaymentGateway>>>) this);
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
    public CreditOptionsViewModel$getBuyCreditMethods$1(g gVar, long j2, b bVar) {
        super(2, bVar);
        this.this$0 = gVar;
        this.$amount = j2;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        CreditOptionsViewModel$getBuyCreditMethods$1 creditOptionsViewModel$getBuyCreditMethods$1 = new CreditOptionsViewModel$getBuyCreditMethods$1(this.this$0, this.$amount, bVar);
        creditOptionsViewModel$getBuyCreditMethods$1.p$ = (H) obj;
        return creditOptionsViewModel$getBuyCreditMethods$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((CreditOptionsViewModel$getBuyCreditMethods$1) a(obj, (b) obj2)).d(h.f14579a);
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
            Resource resource = new Resource(PaymentState.BuyCreditMethodsReceived.f12163a, u.f((List) ((Either.Success) either).getValue()), null, 4, null);
            b2.a(resource);
        } else if (either instanceof Either.Failure) {
            this.this$0.f6824d.a(new Resource(ResourceState.Error.f12177a, null, ((Either.Failure) either).getError()));
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
