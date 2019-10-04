package com.farsitel.bazaar.ui.reviews;

import c.c.a.c.a.a;
import c.c.a.n.u.q;
import com.farsitel.bazaar.common.model.appdetail.ReviewActionItem;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import com.farsitel.bazaar.data.entity.Either;
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

@d(c = "com.farsitel.bazaar.ui.reviews.ReviewsViewModel$makeData$1", f = "ReviewsViewModel.kt", l = {59}, m = "invokeSuspend")
/* compiled from: ReviewsViewModel.kt */
final class ReviewsViewModel$makeData$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ ReviewActionItem $params;
    public int label;
    public H p$;
    public final /* synthetic */ q this$0;

    @d(c = "com.farsitel.bazaar.ui.reviews.ReviewsViewModel$makeData$1$2", f = "ReviewsViewModel.kt", l = {62}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.reviews.ReviewsViewModel$makeData$1$2  reason: invalid class name */
    /* compiled from: ReviewsViewModel.kt */
    static final class AnonymousClass2 extends SuspendLambda implements c<H, b<? super Either<? extends List<? extends ReviewItem>>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ ReviewsViewModel$makeData$1 this$0;

        {
            this.this$0 = r1;
        }

        public final b<h> a(Object obj, b<?> bVar) {
            j.b(bVar, "completion");
            AnonymousClass2 r0 = new AnonymousClass2(this.this$0, bVar);
            r0.p$ = (H) obj;
            return r0;
        }

        public final Object b(Object obj, Object obj2) {
            return ((AnonymousClass2) a(obj, (b) obj2)).d(h.f14579a);
        }

        public final Object d(Object obj) {
            Object a2 = h.c.a.b.a();
            int i2 = this.label;
            if (i2 == 0) {
                e.a(obj);
                H h2 = this.p$;
                c.c.a.e.d.r.e b2 = this.this$0.this$0.s;
                String packageName = this.this$0.$params.getPackageName();
                int d2 = this.this$0.this$0.h();
                int d3 = this.this$0.this$0.h() + this.this$0.this$0.i();
                String defaultSortType = this.this$0.$params.getDefaultSortType();
                long appVersion = q.e(this.this$0.this$0).getAppVersion();
                this.label = 1;
                obj = b2.a(packageName, d2, d3, defaultSortType, appVersion, this);
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
    public ReviewsViewModel$makeData$1(q qVar, ReviewActionItem reviewActionItem, b bVar) {
        super(2, bVar);
        this.this$0 = qVar;
        this.$params = reviewActionItem;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        ReviewsViewModel$makeData$1 reviewsViewModel$makeData$1 = new ReviewsViewModel$makeData$1(this.this$0, this.$params, bVar);
        reviewsViewModel$makeData$1.p$ = (H) obj;
        return reviewsViewModel$makeData$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((ReviewsViewModel$makeData$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            this.this$0.p.a(this.this$0.w.a(this.$params.getPackageName()), new p(this));
            AnonymousClass2 r5 = new AnonymousClass2(this, null);
            this.label = 1;
            obj = a.a(r5, this);
            if (obj == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        Either either = (Either) obj;
        q qVar = this.this$0;
        if (either instanceof Either.Success) {
            qVar.b((List<ReviewItem>) (List) ((Either.Success) either).getValue());
        } else if (either instanceof Either.Failure) {
            qVar.a(((Either.Failure) either).getError());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
