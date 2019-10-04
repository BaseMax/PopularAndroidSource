package com.farsitel.bazaar.data.feature.download;

import c.c.a.e.d.i.A;
import com.farsitel.bazaar.common.model.DownloadStatus;
import h.c.b;
import h.c.b.a.d;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.data.feature.download.VideoDownloadManager$videoDownloadFailed$1", f = "VideoDownloadManager.kt", l = {275}, m = "invokeSuspend")
/* compiled from: VideoDownloadManager.kt */
final class VideoDownloadManager$videoDownloadFailed$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ String $entityId;
    public final /* synthetic */ DownloadStatus $status;
    public int label;
    public H p$;
    public final /* synthetic */ A this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoDownloadManager$videoDownloadFailed$1(A a2, String str, DownloadStatus downloadStatus, b bVar) {
        super(2, bVar);
        this.this$0 = a2;
        this.$entityId = str;
        this.$status = downloadStatus;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        VideoDownloadManager$videoDownloadFailed$1 videoDownloadManager$videoDownloadFailed$1 = new VideoDownloadManager$videoDownloadFailed$1(this.this$0, this.$entityId, this.$status, bVar);
        videoDownloadManager$videoDownloadFailed$1.p$ = (H) obj;
        return videoDownloadManager$videoDownloadFailed$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((VideoDownloadManager$videoDownloadFailed$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x0046 A[SYNTHETIC] */
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
            goto L_0x003d
        L_0x000f:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r0)
            throw r4
        L_0x0017:
            h.e.a((java.lang.Object) r4)
            i.a.H r4 = r3.p$
            c.c.a.e.d.i.A r4 = r3.this$0
            java.util.LinkedHashMap r4 = r4.f5148k
            java.lang.String r1 = r3.$entityId
            java.lang.Object r4 = r4.get(r1)
            c.c.a.e.g.g r4 = (c.c.a.e.g.g) r4
            if (r4 == 0) goto L_0x003f
            i.a.b.p r4 = r4.c()
            if (r4 == 0) goto L_0x003f
            com.farsitel.bazaar.common.model.DownloadStatus r1 = r3.$status
            r3.label = r2
            java.lang.Object r4 = c.c.a.c.a.a.a(r4, r1, (h.c.b<? super h.h>) r3)
            if (r4 != r0) goto L_0x003d
            return r0
        L_0x003d:
            h.h r4 = (h.h) r4
        L_0x003f:
            c.c.a.e.d.i.A r4 = r3.this$0
            java.lang.Object r4 = r4.f5149l
            monitor-enter(r4)
            c.c.a.e.d.i.A r0 = r3.this$0     // Catch:{ all -> 0x005c }
            java.util.LinkedHashMap r0 = r0.f5148k     // Catch:{ all -> 0x005c }
            java.lang.String r1 = r3.$entityId     // Catch:{ all -> 0x005c }
            r0.remove(r1)     // Catch:{ all -> 0x005c }
            c.c.a.e.d.i.A r0 = r3.this$0     // Catch:{ all -> 0x005c }
            r0.e()     // Catch:{ all -> 0x005c }
            h.h r0 = h.h.f14579a     // Catch:{ all -> 0x005c }
            monitor-exit(r4)
            h.h r4 = h.h.f14579a
            return r4
        L_0x005c:
            r0 = move-exception
            monitor-exit(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.feature.download.VideoDownloadManager$videoDownloadFailed$1.d(java.lang.Object):java.lang.Object");
    }
}
