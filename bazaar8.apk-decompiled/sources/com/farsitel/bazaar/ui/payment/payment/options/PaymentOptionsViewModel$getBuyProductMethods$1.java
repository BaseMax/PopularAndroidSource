package com.farsitel.bazaar.ui.payment.payment.options;

import c.c.a.c.a.a;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.feature.payment.PaymentInfo;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.payment.payment.options.PaymentOptionsViewModel$getBuyProductMethods$1", f = "PaymentOptionsViewModel.kt", l = {33}, m = "invokeSuspend")
/* compiled from: PaymentOptionsViewModel.kt */
final class PaymentOptionsViewModel$getBuyProductMethods$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ String $dealer;
    public final /* synthetic */ String $sku;
    public int label;
    public H p$;
    public final /* synthetic */ c.c.a.n.s.e.a.h this$0;

    @d(c = "com.farsitel.bazaar.ui.payment.payment.options.PaymentOptionsViewModel$getBuyProductMethods$1$1", f = "PaymentOptionsViewModel.kt", l = {34}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.payment.payment.options.PaymentOptionsViewModel$getBuyProductMethods$1$1  reason: invalid class name */
    /* compiled from: PaymentOptionsViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends PaymentInfo>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ PaymentOptionsViewModel$getBuyProductMethods$1 this$0;

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
                c.c.a.e.d.m.d a3 = this.this$0.this$0.f6898e;
                PaymentOptionsViewModel$getBuyProductMethods$1 paymentOptionsViewModel$getBuyProductMethods$1 = this.this$0;
                String str = paymentOptionsViewModel$getBuyProductMethods$1.$dealer;
                String str2 = paymentOptionsViewModel$getBuyProductMethods$1.$sku;
                this.label = 1;
                obj = a3.b(str, str2, this);
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
    public PaymentOptionsViewModel$getBuyProductMethods$1(c.c.a.n.s.e.a.h hVar, String str, String str2, b bVar) {
        super(2, bVar);
        this.this$0 = hVar;
        this.$dealer = str;
        this.$sku = str2;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        PaymentOptionsViewModel$getBuyProductMethods$1 paymentOptionsViewModel$getBuyProductMethods$1 = new PaymentOptionsViewModel$getBuyProductMethods$1(this.this$0, this.$dealer, this.$sku, bVar);
        paymentOptionsViewModel$getBuyProductMethods$1.p$ = (H) obj;
        return paymentOptionsViewModel$getBuyProductMethods$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((PaymentOptionsViewModel$getBuyProductMethods$1) a(obj, (b) obj2)).d(h.f14579a);
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
        c.c.a.n.s.e.a.h hVar = this.this$0;
        if (either instanceof Either.Success) {
            hVar.a((PaymentInfo) ((Either.Success) either).getValue());
        } else if (either instanceof Either.Failure) {
            hVar.a(((Either.Failure) either).getError());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
