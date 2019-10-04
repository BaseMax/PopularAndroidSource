package com.farsitel.bazaar.ui.cinema.reviews;

import c.c.a.c.a.a;
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

@d(c = "com.farsitel.bazaar.ui.cinema.reviews.VideoReviewsViewModel$makeData$1", f = "VideoReviewsViewModel.kt", l = {38}, m = "invokeSuspend")
/* compiled from: VideoReviewsViewModel.kt */
final class VideoReviewsViewModel$makeData$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ String $params;
    public int label;
    public H p$;
    public final /* synthetic */ c.c.a.n.j.g.h this$0;

    @d(c = "com.farsitel.bazaar.ui.cinema.reviews.VideoReviewsViewModel$makeData$1$1", f = "VideoReviewsViewModel.kt", l = {40}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.cinema.reviews.VideoReviewsViewModel$makeData$1$1  reason: invalid class name */
    /* compiled from: VideoReviewsViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends List<? extends ReviewItem>>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ VideoReviewsViewModel$makeData$1 this$0;

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
                c.c.a.e.d.r.e b2 = this.this$0.this$0.m;
                VideoReviewsViewModel$makeData$1 videoReviewsViewModel$makeData$1 = this.this$0;
                String str = videoReviewsViewModel$makeData$1.$params;
                int c2 = videoReviewsViewModel$makeData$1.this$0.i();
                int a3 = this.this$0.this$0.h();
                this.label = 1;
                obj = b2.a(str, c2, a3, this);
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
    public VideoReviewsViewModel$makeData$1(c.c.a.n.j.g.h hVar, String str, b bVar) {
        super(2, bVar);
        this.this$0 = hVar;
        this.$params = str;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        VideoReviewsViewModel$makeData$1 videoReviewsViewModel$makeData$1 = new VideoReviewsViewModel$makeData$1(this.this$0, this.$params, bVar);
        videoReviewsViewModel$makeData$1.p$ = (H) obj;
        return videoReviewsViewModel$makeData$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((VideoReviewsViewModel$makeData$1) a(obj, (b) obj2)).d(h.f14579a);
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
        c.c.a.n.j.g.h hVar = this.this$0;
        if (either instanceof Either.Success) {
            hVar.b((List<ReviewItem>) (List) ((Either.Success) either).getValue());
        } else if (either instanceof Either.Failure) {
            hVar.a(((Either.Failure) either).getError());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
