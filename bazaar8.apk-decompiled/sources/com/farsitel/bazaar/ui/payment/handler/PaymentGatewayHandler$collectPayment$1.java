package com.farsitel.bazaar.ui.payment.handler;

import c.c.a.c.a.a;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.entity.None;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.payment.handler.PaymentGatewayHandler$collectPayment$1", f = "PaymentGatewayHandler.kt", l = {125}, m = "invokeSuspend")
/* compiled from: PaymentGatewayHandler.kt */
final class PaymentGatewayHandler$collectPayment$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ String $invoiceToken;
    public int label;
    public H p$;
    public final /* synthetic */ PaymentGatewayHandler this$0;

    @d(c = "com.farsitel.bazaar.ui.payment.handler.PaymentGatewayHandler$collectPayment$1$1", f = "PaymentGatewayHandler.kt", l = {125}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.payment.handler.PaymentGatewayHandler$collectPayment$1$1  reason: invalid class name */
    /* compiled from: PaymentGatewayHandler.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends None>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ PaymentGatewayHandler$collectPayment$1 this$0;

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
                String str = this.this$0.$invoiceToken;
                this.label = 1;
                obj = f2.a(str, (b<? super Either<None>>) this);
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
    public PaymentGatewayHandler$collectPayment$1(PaymentGatewayHandler paymentGatewayHandler, String str, b bVar) {
        super(2, bVar);
        this.this$0 = paymentGatewayHandler;
        this.$invoiceToken = str;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        PaymentGatewayHandler$collectPayment$1 paymentGatewayHandler$collectPayment$1 = new PaymentGatewayHandler$collectPayment$1(this.this$0, this.$invoiceToken, bVar);
        paymentGatewayHandler$collectPayment$1.p$ = (H) obj;
        return paymentGatewayHandler$collectPayment$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((PaymentGatewayHandler$collectPayment$1) a(obj, (b) obj2)).d(h.f14579a);
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
            paymentGatewayHandler.a((None) ((Either.Success) either).getValue());
        } else if (either instanceof Either.Failure) {
            paymentGatewayHandler.a(((Either.Failure) either).getError());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
