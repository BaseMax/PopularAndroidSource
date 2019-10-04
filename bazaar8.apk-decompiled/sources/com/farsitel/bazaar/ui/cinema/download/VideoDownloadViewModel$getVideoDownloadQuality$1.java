package com.farsitel.bazaar.ui.cinema.download;

import c.c.a.e.d.h.e.a.a;
import c.c.a.n.j.c.n;
import com.farsitel.bazaar.common.model.DownloadedVideoModel;
import com.farsitel.bazaar.common.model.VideoDownloadQuality;
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

@d(c = "com.farsitel.bazaar.ui.cinema.download.VideoDownloadViewModel$getVideoDownloadQuality$1", f = "VideoDownloadViewModel.kt", l = {54}, m = "invokeSuspend")
/* compiled from: VideoDownloadViewModel.kt */
final class VideoDownloadViewModel$getVideoDownloadQuality$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ String $referrer;
    public final /* synthetic */ String $videoId;
    public int label;
    public H p$;
    public final /* synthetic */ n this$0;

    @d(c = "com.farsitel.bazaar.ui.cinema.download.VideoDownloadViewModel$getVideoDownloadQuality$1$1", f = "VideoDownloadViewModel.kt", l = {55, 56}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.cinema.download.VideoDownloadViewModel$getVideoDownloadQuality$1$1  reason: invalid class name */
    /* compiled from: VideoDownloadViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends VideoDownloadQuality>>, Object> {
        public Object L$0;
        public int label;
        public H p$;
        public final /* synthetic */ VideoDownloadViewModel$getVideoDownloadQuality$1 this$0;

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
            n nVar;
            Object a2 = h.c.a.b.a();
            int i2 = this.label;
            if (i2 == 0) {
                e.a(obj);
                H h2 = this.p$;
                nVar = this.this$0.this$0;
                a a3 = nVar.f6512k;
                String str = this.this$0.$videoId;
                this.L$0 = nVar;
                this.label = 1;
                obj = a3.a(str, this);
                if (obj == a2) {
                    return a2;
                }
            } else if (i2 == 1) {
                nVar = (n) this.L$0;
                e.a(obj);
            } else if (i2 == 2) {
                e.a(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            DownloadedVideoModel downloadedVideoModel = (DownloadedVideoModel) obj;
            nVar.f6508g = downloadedVideoModel != null ? downloadedVideoModel.getDownloadId() : null;
            a a4 = this.this$0.this$0.f6512k;
            VideoDownloadViewModel$getVideoDownloadQuality$1 videoDownloadViewModel$getVideoDownloadQuality$1 = this.this$0;
            String str2 = videoDownloadViewModel$getVideoDownloadQuality$1.$videoId;
            String str3 = videoDownloadViewModel$getVideoDownloadQuality$1.$referrer;
            this.label = 2;
            obj = a4.a(str2, str3, this);
            return obj == a2 ? a2 : obj;
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoDownloadViewModel$getVideoDownloadQuality$1(n nVar, String str, String str2, b bVar) {
        super(2, bVar);
        this.this$0 = nVar;
        this.$videoId = str;
        this.$referrer = str2;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        VideoDownloadViewModel$getVideoDownloadQuality$1 videoDownloadViewModel$getVideoDownloadQuality$1 = new VideoDownloadViewModel$getVideoDownloadQuality$1(this.this$0, this.$videoId, this.$referrer, bVar);
        videoDownloadViewModel$getVideoDownloadQuality$1.p$ = (H) obj;
        return videoDownloadViewModel$getVideoDownloadQuality$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((VideoDownloadViewModel$getVideoDownloadQuality$1) a(obj, (b) obj2)).d(h.f14579a);
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
        n nVar = this.this$0;
        if (either instanceof Either.Success) {
            nVar.a((VideoDownloadQuality) ((Either.Success) either).getValue());
        } else if (either instanceof Either.Failure) {
            nVar.a(((Either.Failure) either).getError());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
