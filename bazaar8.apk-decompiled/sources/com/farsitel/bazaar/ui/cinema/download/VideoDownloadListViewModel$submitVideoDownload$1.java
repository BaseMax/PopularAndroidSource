package com.farsitel.bazaar.ui.cinema.download;

import c.c.a.b.d.o;
import c.c.a.c.a.a;
import c.c.a.n.j.c.l;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.cinema.download.VideoDownloadListViewModel$submitVideoDownload$1", f = "VideoDownloadListViewModel.kt", l = {91}, m = "invokeSuspend")
/* compiled from: VideoDownloadListViewModel.kt */
final class VideoDownloadListViewModel$submitVideoDownload$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ String $videoId;
    public int label;
    public H p$;
    public final /* synthetic */ l this$0;

    @d(c = "com.farsitel.bazaar.ui.cinema.download.VideoDownloadListViewModel$submitVideoDownload$1$1", f = "VideoDownloadListViewModel.kt", l = {91}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.cinema.download.VideoDownloadListViewModel$submitVideoDownload$1$1  reason: invalid class name */
    /* compiled from: VideoDownloadListViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super h>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ VideoDownloadListViewModel$submitVideoDownload$1 this$0;

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
                o d2 = this.this$0.this$0.n;
                String str = this.this$0.$videoId;
                this.label = 1;
                if (d2.b(str, this) == a2) {
                    return a2;
                }
            } else if (i2 == 1) {
                e.a(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return h.f14579a;
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoDownloadListViewModel$submitVideoDownload$1(l lVar, String str, b bVar) {
        super(2, bVar);
        this.this$0 = lVar;
        this.$videoId = str;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        VideoDownloadListViewModel$submitVideoDownload$1 videoDownloadListViewModel$submitVideoDownload$1 = new VideoDownloadListViewModel$submitVideoDownload$1(this.this$0, this.$videoId, bVar);
        videoDownloadListViewModel$submitVideoDownload$1.p$ = (H) obj;
        return videoDownloadListViewModel$submitVideoDownload$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((VideoDownloadListViewModel$submitVideoDownload$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            AnonymousClass1 r4 = new AnonymousClass1(this, null);
            this.label = 1;
            if (a.a(r4, this) == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return h.f14579a;
    }
}
