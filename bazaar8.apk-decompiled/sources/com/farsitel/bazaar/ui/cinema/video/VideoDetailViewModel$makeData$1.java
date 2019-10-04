package com.farsitel.bazaar.ui.cinema.video;

import c.c.a.e.d.h.e.a;
import c.c.a.n.j.k.s;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.VideoInfoModel;
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

@d(c = "com.farsitel.bazaar.ui.cinema.video.VideoDetailViewModel$makeData$1", f = "VideoDetailViewModel.kt", l = {59}, m = "invokeSuspend")
/* compiled from: VideoDetailViewModel.kt */
final class VideoDetailViewModel$makeData$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ VideoInfoModel $params;
    public int label;
    public H p$;
    public final /* synthetic */ s this$0;

    @d(c = "com.farsitel.bazaar.ui.cinema.video.VideoDetailViewModel$makeData$1$1", f = "VideoDetailViewModel.kt", l = {62}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.cinema.video.VideoDetailViewModel$makeData$1$1  reason: invalid class name */
    /* compiled from: VideoDetailViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends List<? extends RecyclerData>>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ VideoDetailViewModel$makeData$1 this$0;

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
                a c2 = this.this$0.this$0.q;
                String videoId = this.this$0.$params.getVideoId();
                String referrer = this.this$0.$params.getReferrer();
                this.label = 1;
                obj = c2.a(videoId, referrer, this);
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
    public VideoDetailViewModel$makeData$1(s sVar, VideoInfoModel videoInfoModel, b bVar) {
        super(2, bVar);
        this.this$0 = sVar;
        this.$params = videoInfoModel;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        VideoDetailViewModel$makeData$1 videoDetailViewModel$makeData$1 = new VideoDetailViewModel$makeData$1(this.this$0, this.$params, bVar);
        videoDetailViewModel$makeData$1.p$ = (H) obj;
        return videoDetailViewModel$makeData$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((VideoDetailViewModel$makeData$1) a(obj, (b) obj2)).d(h.f14579a);
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
        s sVar = this.this$0;
        if (either instanceof Either.Success) {
            sVar.e((List<? extends RecyclerData>) (List) ((Either.Success) either).getValue());
        } else if (either instanceof Either.Failure) {
            sVar.a(((Either.Failure) either).getError());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        this.this$0.f6645l.a(this.this$0.s.d(s.f(this.this$0).getVideoId()), new q(this));
        this.this$0.p.a(this.this$0.r.a(this.$params.getVideoId()), new r(this));
        return h.f14579a;
    }
}
