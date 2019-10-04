package com.farsitel.bazaar.data.feature.download;

import c.c.a.e.d.i.A;
import com.farsitel.bazaar.data.entity.SubmitVideoDownload;
import h.c.b.a.d;
import h.f.a.b;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.C1103g;
import i.a.C1125ra;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Lambda;

/* compiled from: VideoDownloadManager.kt */
final class VideoDownloadManager$submitDownload$2 extends Lambda implements b<SubmitVideoDownload, h> {
    public final /* synthetic */ String $entityId;
    public final /* synthetic */ A this$0;

    @d(c = "com.farsitel.bazaar.data.feature.download.VideoDownloadManager$submitDownload$2$1", f = "VideoDownloadManager.kt", l = {200}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.data.feature.download.VideoDownloadManager$submitDownload$2$1  reason: invalid class name */
    /* compiled from: VideoDownloadManager.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, h.c.b<? super h>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ VideoDownloadManager$submitDownload$2 this$0;

        {
            this.this$0 = r1;
        }

        public final h.c.b<h> a(Object obj, h.c.b<?> bVar) {
            j.b(bVar, "completion");
            AnonymousClass1 r0 = new AnonymousClass1(this.this$0, submitVideoDownload, bVar);
            r0.p$ = (H) obj;
            return r0;
        }

        public final Object b(Object obj, Object obj2) {
            return ((AnonymousClass1) a(obj, (h.c.b) obj2)).d(h.f14579a);
        }

        /* JADX WARNING: Removed duplicated region for block: B:20:0x0057 A[SYNTHETIC] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final java.lang.Object d(java.lang.Object r4) {
            /*
                r3 = this;
                java.lang.Object r0 = h.c.a.b.a()
                int r1 = r3.label
                r2 = 1
                if (r1 == 0) goto L_0x0017
                if (r1 != r2) goto L_0x000f
                h.e.a((java.lang.Object) r4)
                goto L_0x004c
            L_0x000f:
                java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r4.<init>(r0)
                throw r4
            L_0x0017:
                h.e.a((java.lang.Object) r4)
                i.a.H r4 = r3.p$
                com.farsitel.bazaar.data.feature.download.VideoDownloadManager$submitDownload$2 r4 = r3.this$0
                c.c.a.e.d.i.A r4 = r4.this$0
                java.util.LinkedHashMap r4 = r4.f5148k
                com.farsitel.bazaar.data.feature.download.VideoDownloadManager$submitDownload$2 r1 = r3.this$0
                java.lang.String r1 = r1.$entityId
                java.lang.Object r4 = r4.get(r1)
                c.c.a.e.g.g r4 = (c.c.a.e.g.g) r4
                if (r4 == 0) goto L_0x004e
                i.a.b.p r4 = r4.c()
                if (r4 == 0) goto L_0x004e
                com.farsitel.bazaar.data.entity.SubmitVideoDownload r1 = r8
                boolean r1 = r1.getKeepDownloadedFile()
                if (r1 == 0) goto L_0x0041
                com.farsitel.bazaar.common.model.DownloadStatus r1 = com.farsitel.bazaar.common.model.DownloadStatus.COMPLETED
                goto L_0x0043
            L_0x0041:
                com.farsitel.bazaar.common.model.DownloadStatus r1 = com.farsitel.bazaar.common.model.DownloadStatus.FAILED
            L_0x0043:
                r3.label = r2
                java.lang.Object r4 = c.c.a.c.a.a.a(r4, r1, (h.c.b<? super h.h>) r3)
                if (r4 != r0) goto L_0x004c
                return r0
            L_0x004c:
                h.h r4 = (h.h) r4
            L_0x004e:
                com.farsitel.bazaar.data.feature.download.VideoDownloadManager$submitDownload$2 r4 = r3.this$0
                c.c.a.e.d.i.A r4 = r4.this$0
                java.lang.Object r4 = r4.f5149l
                monitor-enter(r4)
                com.farsitel.bazaar.data.feature.download.VideoDownloadManager$submitDownload$2 r0 = r3.this$0     // Catch:{ all -> 0x0073 }
                c.c.a.e.d.i.A r0 = r0.this$0     // Catch:{ all -> 0x0073 }
                java.util.LinkedHashMap r0 = r0.f5148k     // Catch:{ all -> 0x0073 }
                com.farsitel.bazaar.data.feature.download.VideoDownloadManager$submitDownload$2 r1 = r3.this$0     // Catch:{ all -> 0x0073 }
                java.lang.String r1 = r1.$entityId     // Catch:{ all -> 0x0073 }
                r0.remove(r1)     // Catch:{ all -> 0x0073 }
                com.farsitel.bazaar.data.feature.download.VideoDownloadManager$submitDownload$2 r0 = r3.this$0     // Catch:{ all -> 0x0073 }
                c.c.a.e.d.i.A r0 = r0.this$0     // Catch:{ all -> 0x0073 }
                r0.e()     // Catch:{ all -> 0x0073 }
                h.h r0 = h.h.f14579a     // Catch:{ all -> 0x0073 }
                monitor-exit(r4)
                h.h r4 = h.h.f14579a
                return r4
            L_0x0073:
                r0 = move-exception
                monitor-exit(r4)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.feature.download.VideoDownloadManager$submitDownload$2.AnonymousClass1.d(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoDownloadManager$submitDownload$2(A a2, String str) {
        super(1);
        this.this$0 = a2;
        this.$entityId = str;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((SubmitVideoDownload) obj);
        return h.f14579a;
    }

    public final void a(final SubmitVideoDownload submitVideoDownload) {
        j.b(submitVideoDownload, "submitVideoDownload");
        C1125ra unused = C1103g.b(this.this$0, null, null, new AnonymousClass1(this, null), 3, null);
    }
}
