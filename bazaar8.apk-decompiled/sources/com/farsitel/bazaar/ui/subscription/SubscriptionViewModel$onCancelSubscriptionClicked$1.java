package com.farsitel.bazaar.ui.subscription;

import c.c.a.e.d.v.a;
import c.c.a.n.z.i;
import com.farsitel.bazaar.common.model.subscription.SubscriptionItem;
import com.farsitel.bazaar.common.model.subscription.SubscriptionStatusChoices;
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

@d(c = "com.farsitel.bazaar.ui.subscription.SubscriptionViewModel$onCancelSubscriptionClicked$1", f = "SubscriptionViewModel.kt", l = {39}, m = "invokeSuspend")
/* compiled from: SubscriptionViewModel.kt */
final class SubscriptionViewModel$onCancelSubscriptionClicked$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ SubscriptionItem $subscriptionItem;
    public int label;
    public H p$;
    public final /* synthetic */ i this$0;

    @d(c = "com.farsitel.bazaar.ui.subscription.SubscriptionViewModel$onCancelSubscriptionClicked$1$1", f = "SubscriptionViewModel.kt", l = {42}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.subscription.SubscriptionViewModel$onCancelSubscriptionClicked$1$1  reason: invalid class name */
    /* compiled from: SubscriptionViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends SubscriptionStatusChoices>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ SubscriptionViewModel$onCancelSubscriptionClicked$1 this$0;

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
                a a3 = this.this$0.this$0.f7112l;
                String dealerName = this.this$0.$subscriptionItem.getDealerName();
                String productSku = this.this$0.$subscriptionItem.getProductSku();
                this.label = 1;
                obj = a3.a(dealerName, productSku, this);
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
    public SubscriptionViewModel$onCancelSubscriptionClicked$1(i iVar, SubscriptionItem subscriptionItem, b bVar) {
        super(2, bVar);
        this.this$0 = iVar;
        this.$subscriptionItem = subscriptionItem;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        SubscriptionViewModel$onCancelSubscriptionClicked$1 subscriptionViewModel$onCancelSubscriptionClicked$1 = new SubscriptionViewModel$onCancelSubscriptionClicked$1(this.this$0, this.$subscriptionItem, bVar);
        subscriptionViewModel$onCancelSubscriptionClicked$1.p$ = (H) obj;
        return subscriptionViewModel$onCancelSubscriptionClicked$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((SubscriptionViewModel$onCancelSubscriptionClicked$1) a(obj, (b) obj2)).d(h.f14579a);
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
        if (either instanceof Either.Success) {
            this.this$0.a(this.$subscriptionItem, (SubscriptionStatusChoices) ((Either.Success) either).getValue());
        } else if (either instanceof Either.Failure) {
            this.this$0.a(this.$subscriptionItem, ((Either.Failure) either).getError());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
