package com.farsitel.bazaar.ui.reviews.developer;

import c.c.a.e.g.a;
import c.c.a.n.u.a.j;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.h;
import i.a.H;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.reviews.developer.DeveloperReplyViewModel$makeData$1", f = "DeveloperReplyViewModel.kt", l = {27}, m = "invokeSuspend")
/* compiled from: DeveloperReplyViewModel.kt */
final class DeveloperReplyViewModel$makeData$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ int $params;
    public int label;
    public H p$;
    public final /* synthetic */ j this$0;

    @d(c = "com.farsitel.bazaar.ui.reviews.developer.DeveloperReplyViewModel$makeData$1$1", f = "DeveloperReplyViewModel.kt", l = {27}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.reviews.developer.DeveloperReplyViewModel$makeData$1$1  reason: invalid class name */
    /* compiled from: DeveloperReplyViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends a>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ DeveloperReplyViewModel$makeData$1 this$0;

        {
            this.this$0 = r1;
        }

        public final b<h> a(Object obj, b<?> bVar) {
            h.f.b.j.b(bVar, "completion");
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
                c.c.a.e.d.r.e a3 = this.this$0.this$0.f6982l;
                int i3 = this.this$0.$params;
                this.label = 1;
                obj = a3.a(i3, this);
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
    public DeveloperReplyViewModel$makeData$1(j jVar, int i2, b bVar) {
        super(2, bVar);
        this.this$0 = jVar;
        this.$params = i2;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        h.f.b.j.b(bVar, "completion");
        DeveloperReplyViewModel$makeData$1 developerReplyViewModel$makeData$1 = new DeveloperReplyViewModel$makeData$1(this.this$0, this.$params, bVar);
        developerReplyViewModel$makeData$1.p$ = (H) obj;
        return developerReplyViewModel$makeData$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((DeveloperReplyViewModel$makeData$1) a(obj, (b) obj2)).d(h.f14579a);
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
        j jVar = this.this$0;
        if (either instanceof Either.Success) {
            jVar.a((a) ((Either.Success) either).getValue());
        } else if (either instanceof Either.Failure) {
            jVar.a(((Either.Failure) either).getError());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
