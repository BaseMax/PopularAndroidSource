package com.farsitel.bazaar.data.feature.download;

import c.c.a.e.d.h.e.a.c.a;
import c.c.a.e.d.i.A;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.entity.SubmitVideoDownload;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.NoWhenBranchMatchedException;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.data.feature.download.VideoDownloadManager$submitDownload$3", f = "VideoDownloadManager.kt", l = {212}, m = "invokeSuspend")
/* compiled from: VideoDownloadManager.kt */
final class VideoDownloadManager$submitDownload$3 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ String $entityId;
    public final /* synthetic */ VideoDownloadManager$submitDownload$1 $submitDownloadFailed$1;
    public final /* synthetic */ VideoDownloadManager$submitDownload$2 $submitDownloadResponse$2;
    public int label;
    public H p$;
    public final /* synthetic */ A this$0;

    @d(c = "com.farsitel.bazaar.data.feature.download.VideoDownloadManager$submitDownload$3$1", f = "VideoDownloadManager.kt", l = {212}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.data.feature.download.VideoDownloadManager$submitDownload$3$1  reason: invalid class name */
    /* compiled from: VideoDownloadManager.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super Either<? extends SubmitVideoDownload>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ VideoDownloadManager$submitDownload$3 this$0;

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
                a a3 = this.this$0.this$0.o;
                String str = this.this$0.$entityId;
                this.label = 1;
                obj = a3.a(str, this);
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
    public VideoDownloadManager$submitDownload$3(A a2, String str, VideoDownloadManager$submitDownload$2 videoDownloadManager$submitDownload$2, VideoDownloadManager$submitDownload$1 videoDownloadManager$submitDownload$1, b bVar) {
        super(2, bVar);
        this.this$0 = a2;
        this.$entityId = str;
        this.$submitDownloadResponse$2 = videoDownloadManager$submitDownload$2;
        this.$submitDownloadFailed$1 = videoDownloadManager$submitDownload$1;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        VideoDownloadManager$submitDownload$3 videoDownloadManager$submitDownload$3 = new VideoDownloadManager$submitDownload$3(this.this$0, this.$entityId, this.$submitDownloadResponse$2, this.$submitDownloadFailed$1, bVar);
        videoDownloadManager$submitDownload$3.p$ = (H) obj;
        return videoDownloadManager$submitDownload$3;
    }

    public final Object b(Object obj, Object obj2) {
        return ((VideoDownloadManager$submitDownload$3) a(obj, (b) obj2)).d(h.f14579a);
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
            this.$submitDownloadResponse$2.a((SubmitVideoDownload) ((Either.Success) either).getValue());
        } else if (either instanceof Either.Failure) {
            this.$submitDownloadFailed$1.a((Throwable) ((Either.Failure) either).getError());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return h.f14579a;
    }
}
