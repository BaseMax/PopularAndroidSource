package com.farsitel.bazaar.ui.payment.giftcard;

import b.r.t;
import c.c.a.e.d.m.a;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.entity.ErrorModel;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.payment.giftcard.GiftCardViewModel$redeemGiftCard$1", f = "GiftCardViewModel.kt", l = {26}, m = "invokeSuspend")
/* compiled from: GiftCardViewModel.kt */
final class GiftCardViewModel$redeemGiftCard$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ String $giftCode;
    public int label;
    public H p$;
    public final /* synthetic */ c.c.a.n.s.c.d this$0;

    @d(c = "com.farsitel.bazaar.ui.payment.giftcard.GiftCardViewModel$redeemGiftCard$1$1", f = "GiftCardViewModel.kt", l = {27}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.payment.giftcard.GiftCardViewModel$redeemGiftCard$1$1  reason: invalid class name */
    /* compiled from: GiftCardViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends a>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ GiftCardViewModel$redeemGiftCard$1 this$0;

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
                c.c.a.e.d.m.d b2 = this.this$0.this$0.f6864e;
                String str = this.this$0.$giftCode;
                this.label = 1;
                obj = b2.b(str, this);
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
    public GiftCardViewModel$redeemGiftCard$1(c.c.a.n.s.c.d dVar, String str, b bVar) {
        super(2, bVar);
        this.this$0 = dVar;
        this.$giftCode = str;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        GiftCardViewModel$redeemGiftCard$1 giftCardViewModel$redeemGiftCard$1 = new GiftCardViewModel$redeemGiftCard$1(this.this$0, this.$giftCode, bVar);
        giftCardViewModel$redeemGiftCard$1.p$ = (H) obj;
        return giftCardViewModel$redeemGiftCard$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((GiftCardViewModel$redeemGiftCard$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            AnonymousClass1 r8 = new AnonymousClass1(this, null);
            this.label = 1;
            obj = c.c.a.c.a.a.a(r8, this);
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
            ((a) ((Either.Success) either).getValue()).a();
            t a3 = this.this$0.f6863d;
            Resource resource = new Resource(ResourceState.Success.f12179a, null, null, 6, null);
            a3.b(resource);
        } else if (either instanceof Either.Failure) {
            ErrorModel error = ((Either.Failure) either).getError();
            t a4 = this.this$0.f6863d;
            Resource resource2 = new Resource(ResourceState.Error.f12177a, null, error, 2, null);
            a4.b(resource2);
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
