package com.farsitel.bazaar.ui.payment.handler;

import c.c.a.c.a.a;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.feature.payment.InitiatePaymentData;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.payment.handler.PaymentGatewayHandler$initiatePayment$1", f = "PaymentGatewayHandler.kt", l = {100}, m = "invokeSuspend")
/* compiled from: PaymentGatewayHandler.kt */
final class PaymentGatewayHandler$initiatePayment$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public int label;
    public H p$;
    public final /* synthetic */ PaymentGatewayHandler this$0;

    @d(c = "com.farsitel.bazaar.ui.payment.handler.PaymentGatewayHandler$initiatePayment$1$1", f = "PaymentGatewayHandler.kt", l = {100}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.payment.handler.PaymentGatewayHandler$initiatePayment$1$1  reason: invalid class name */
    /* compiled from: PaymentGatewayHandler.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends InitiatePaymentData>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ PaymentGatewayHandler$initiatePayment$1 this$0;

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
                c.c.a.e.d.m.d f2 = this.this$0.this$0.m;
                String d2 = this.this$0.this$0.f12352i;
                long a3 = this.this$0.this$0.c();
                this.label = 1;
                obj = f2.a(d2, a3, (b<? super Either<InitiatePaymentData>>) this);
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
    public PaymentGatewayHandler$initiatePayment$1(PaymentGatewayHandler paymentGatewayHandler, b bVar) {
        super(2, bVar);
        this.this$0 = paymentGatewayHandler;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        PaymentGatewayHandler$initiatePayment$1 paymentGatewayHandler$initiatePayment$1 = new PaymentGatewayHandler$initiatePayment$1(this.this$0, bVar);
        paymentGatewayHandler$initiatePayment$1.p$ = (H) obj;
        return paymentGatewayHandler$initiatePayment$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((PaymentGatewayHandler$initiatePayment$1) a(obj, (b) obj2)).d(h.f14579a);
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
        PaymentGatewayHandler paymentGatewayHandler = this.this$0;
        if (either instanceof Either.Success) {
            paymentGatewayHandler.a((InitiatePaymentData) ((Either.Success) either).getValue());
        } else if (either instanceof Either.Failure) {
            paymentGatewayHandler.a(((Either.Failure) either).getError());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
