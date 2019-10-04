package com.farsitel.bazaar.data.feature.download;

import c.c.a.e.d.i.A;
import h.c.b;
import h.c.b.a.d;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.data.feature.download.VideoDownloadManager$listenOnDownloadVideo$1", f = "VideoDownloadManager.kt", l = {301, 77, 80}, m = "invokeSuspend")
/* compiled from: VideoDownloadManager.kt */
final class VideoDownloadManager$listenOnDownloadVideo$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ String $entityId;
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public Object L$5;
    public Object L$6;
    public Object L$7;
    public Object L$8;
    public int label;
    public H p$;
    public final /* synthetic */ A this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoDownloadManager$listenOnDownloadVideo$1(A a2, String str, b bVar) {
        super(2, bVar);
        this.this$0 = a2;
        this.$entityId = str;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        VideoDownloadManager$listenOnDownloadVideo$1 videoDownloadManager$listenOnDownloadVideo$1 = new VideoDownloadManager$listenOnDownloadVideo$1(this.this$0, this.$entityId, bVar);
        videoDownloadManager$listenOnDownloadVideo$1.p$ = (H) obj;
        return videoDownloadManager$listenOnDownloadVideo$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((VideoDownloadManager$listenOnDownloadVideo$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x00ce A[Catch:{ Throwable -> 0x008a }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object d(java.lang.Object r18) {
        /*
            r17 = this;
            r1 = r17
            java.lang.Object r0 = h.c.a.b.a()
            int r2 = r1.label
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L_0x008e
            if (r2 == r5) goto L_0x0067
            if (r2 == r4) goto L_0x003e
            if (r2 != r3) goto L_0x0036
            java.lang.Object r2 = r1.L$8
            c.c.a.e.g.g r2 = (c.c.a.e.g.g) r2
            java.lang.Object r2 = r1.L$7
            com.farsitel.bazaar.common.model.DownloadStatus r2 = (com.farsitel.bazaar.common.model.DownloadStatus) r2
            java.lang.Object r2 = r1.L$6
            java.lang.Object r2 = r1.L$5
            i.a.b.k r2 = (i.a.b.k) r2
            java.lang.Object r6 = r1.L$4
            i.a.b.t r6 = (i.a.b.t) r6
            java.lang.Object r7 = r1.L$3
            java.lang.Throwable r7 = (java.lang.Throwable) r7
            java.lang.Object r8 = r1.L$2
            i.a.b.t r8 = (i.a.b.t) r8
            java.lang.Object r9 = r1.L$1
            com.farsitel.bazaar.data.feature.download.VideoDownloadManager$listenOnDownloadVideo$1 r9 = (com.farsitel.bazaar.data.feature.download.VideoDownloadManager$listenOnDownloadVideo$1) r9
            java.lang.Object r10 = r1.L$0
            i.a.b.t r10 = (i.a.b.t) r10
            goto L_0x0060
        L_0x0036:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r2)
            throw r0
        L_0x003e:
            java.lang.Object r2 = r1.L$8
            c.c.a.e.g.g r2 = (c.c.a.e.g.g) r2
            java.lang.Object r2 = r1.L$7
            com.farsitel.bazaar.common.model.DownloadStatus r2 = (com.farsitel.bazaar.common.model.DownloadStatus) r2
            java.lang.Object r2 = r1.L$6
            java.lang.Object r2 = r1.L$5
            i.a.b.k r2 = (i.a.b.k) r2
            java.lang.Object r6 = r1.L$4
            i.a.b.t r6 = (i.a.b.t) r6
            java.lang.Object r7 = r1.L$3
            java.lang.Throwable r7 = (java.lang.Throwable) r7
            java.lang.Object r8 = r1.L$2
            i.a.b.t r8 = (i.a.b.t) r8
            java.lang.Object r9 = r1.L$1
            com.farsitel.bazaar.data.feature.download.VideoDownloadManager$listenOnDownloadVideo$1 r9 = (com.farsitel.bazaar.data.feature.download.VideoDownloadManager$listenOnDownloadVideo$1) r9
            java.lang.Object r10 = r1.L$0
            i.a.b.t r10 = (i.a.b.t) r10
        L_0x0060:
            h.e.a((java.lang.Object) r18)     // Catch:{ Throwable -> 0x008a }
            r11 = r6
            r6 = r1
            goto L_0x0131
        L_0x0067:
            java.lang.Object r2 = r1.L$5
            i.a.b.k r2 = (i.a.b.k) r2
            java.lang.Object r6 = r1.L$4
            i.a.b.t r6 = (i.a.b.t) r6
            java.lang.Object r7 = r1.L$3
            java.lang.Throwable r7 = (java.lang.Throwable) r7
            java.lang.Object r8 = r1.L$2
            i.a.b.t r8 = (i.a.b.t) r8
            java.lang.Object r9 = r1.L$1
            com.farsitel.bazaar.data.feature.download.VideoDownloadManager$listenOnDownloadVideo$1 r9 = (com.farsitel.bazaar.data.feature.download.VideoDownloadManager$listenOnDownloadVideo$1) r9
            java.lang.Object r10 = r1.L$0
            i.a.b.t r10 = (i.a.b.t) r10
            h.e.a((java.lang.Object) r18)     // Catch:{ Throwable -> 0x008a }
            r12 = r18
            r11 = r6
            r6 = r1
            goto L_0x00c6
        L_0x0087:
            r0 = move-exception
            goto L_0x014c
        L_0x008a:
            r0 = move-exception
        L_0x008b:
            r7 = r0
            goto L_0x014b
        L_0x008e:
            h.e.a((java.lang.Object) r18)
            i.a.H r2 = r1.p$
            c.c.a.e.d.i.A r2 = r1.this$0
            java.lang.String r6 = r1.$entityId
            i.a.b.t r8 = com.farsitel.bazaar.data.feature.download.VideoDownloadManager$listenOnDownloadVideo$1.super.e((java.lang.String) r6)
            if (r8 == 0) goto L_0x0150
            r7 = 0
            i.a.b.k r2 = r8.iterator()     // Catch:{ Throwable -> 0x008a }
            r11 = r0
            r0 = r1
            r6 = r0
            r9 = r7
            r7 = r8
            r10 = r7
        L_0x00a8:
            r6.L$0 = r8     // Catch:{ Throwable -> 0x0147, all -> 0x0143 }
            r6.L$1 = r0     // Catch:{ Throwable -> 0x0147, all -> 0x0143 }
            r6.L$2 = r7     // Catch:{ Throwable -> 0x0147, all -> 0x0143 }
            r6.L$3 = r9     // Catch:{ Throwable -> 0x0147, all -> 0x0143 }
            r6.L$4 = r10     // Catch:{ Throwable -> 0x0147, all -> 0x0143 }
            r6.L$5 = r2     // Catch:{ Throwable -> 0x0147, all -> 0x0143 }
            r6.label = r5     // Catch:{ Throwable -> 0x0147, all -> 0x0143 }
            java.lang.Object r12 = r2.a(r0)     // Catch:{ Throwable -> 0x0147, all -> 0x0143 }
            if (r12 != r11) goto L_0x00bd
            return r11
        L_0x00bd:
            r16 = r9
            r9 = r0
            r0 = r11
            r11 = r10
            r10 = r8
            r8 = r7
            r7 = r16
        L_0x00c6:
            java.lang.Boolean r12 = (java.lang.Boolean) r12     // Catch:{ Throwable -> 0x008a }
            boolean r12 = r12.booleanValue()     // Catch:{ Throwable -> 0x008a }
            if (r12 == 0) goto L_0x013d
            java.lang.Object r12 = r2.next()     // Catch:{ Throwable -> 0x008a }
            r13 = r12
            com.farsitel.bazaar.common.model.DownloadStatus r13 = (com.farsitel.bazaar.common.model.DownloadStatus) r13     // Catch:{ Throwable -> 0x008a }
            c.c.a.e.d.i.A r14 = r6.this$0     // Catch:{ Throwable -> 0x008a }
            java.util.LinkedHashMap r14 = r14.f5148k     // Catch:{ Throwable -> 0x008a }
            java.lang.String r15 = r6.$entityId     // Catch:{ Throwable -> 0x008a }
            java.lang.Object r14 = r14.get(r15)     // Catch:{ Throwable -> 0x008a }
            c.c.a.e.g.g r14 = (c.c.a.e.g.g) r14     // Catch:{ Throwable -> 0x008a }
            if (r14 == 0) goto L_0x0131
            com.farsitel.bazaar.data.model.VideoDownloadStep r15 = r14.d()     // Catch:{ Throwable -> 0x008a }
            com.farsitel.bazaar.data.model.VideoDownloadStep r5 = com.farsitel.bazaar.data.model.VideoDownloadStep.VIDEO     // Catch:{ Throwable -> 0x008a }
            if (r15 != r5) goto L_0x0110
            com.farsitel.bazaar.common.model.DownloadStatus r5 = com.farsitel.bazaar.common.model.DownloadStatus.COMPLETED     // Catch:{ Throwable -> 0x008a }
            if (r13 == r5) goto L_0x0131
            i.a.b.p r5 = r14.c()     // Catch:{ Throwable -> 0x008a }
            r6.L$0 = r10     // Catch:{ Throwable -> 0x008a }
            r6.L$1 = r9     // Catch:{ Throwable -> 0x008a }
            r6.L$2 = r8     // Catch:{ Throwable -> 0x008a }
            r6.L$3 = r7     // Catch:{ Throwable -> 0x008a }
            r6.L$4 = r11     // Catch:{ Throwable -> 0x008a }
            r6.L$5 = r2     // Catch:{ Throwable -> 0x008a }
            r6.L$6 = r12     // Catch:{ Throwable -> 0x008a }
            r6.L$7 = r13     // Catch:{ Throwable -> 0x008a }
            r6.L$8 = r14     // Catch:{ Throwable -> 0x008a }
            r6.label = r4     // Catch:{ Throwable -> 0x008a }
            java.lang.Object r5 = c.c.a.c.a.a.a(r5, r13, (h.c.b<? super h.h>) r6)     // Catch:{ Throwable -> 0x008a }
            if (r5 != r0) goto L_0x0131
            return r0
        L_0x0110:
            i.a.b.p r5 = r14.c()     // Catch:{ Throwable -> 0x008a }
            com.farsitel.bazaar.common.model.DownloadStatus r15 = com.farsitel.bazaar.common.model.DownloadStatus.PENDING     // Catch:{ Throwable -> 0x008a }
            r6.L$0 = r10     // Catch:{ Throwable -> 0x008a }
            r6.L$1 = r9     // Catch:{ Throwable -> 0x008a }
            r6.L$2 = r8     // Catch:{ Throwable -> 0x008a }
            r6.L$3 = r7     // Catch:{ Throwable -> 0x008a }
            r6.L$4 = r11     // Catch:{ Throwable -> 0x008a }
            r6.L$5 = r2     // Catch:{ Throwable -> 0x008a }
            r6.L$6 = r12     // Catch:{ Throwable -> 0x008a }
            r6.L$7 = r13     // Catch:{ Throwable -> 0x008a }
            r6.L$8 = r14     // Catch:{ Throwable -> 0x008a }
            r6.label = r3     // Catch:{ Throwable -> 0x008a }
            java.lang.Object r5 = c.c.a.c.a.a.a(r5, r15, (h.c.b<? super h.h>) r6)     // Catch:{ Throwable -> 0x008a }
            if (r5 != r0) goto L_0x0131
            return r0
        L_0x0131:
            r16 = r11
            r11 = r0
            r0 = r9
            r9 = r7
            r7 = r8
            r8 = r10
            r10 = r16
            r5 = 1
            goto L_0x00a8
        L_0x013d:
            h.h r0 = h.h.f14579a     // Catch:{ Throwable -> 0x008a }
            i.a.b.m.a(r8, r7)
            goto L_0x0150
        L_0x0143:
            r0 = move-exception
            r8 = r7
            r7 = r9
            goto L_0x014c
        L_0x0147:
            r0 = move-exception
            r8 = r7
            goto L_0x008b
        L_0x014b:
            throw r7     // Catch:{ all -> 0x0087 }
        L_0x014c:
            i.a.b.m.a(r8, r7)
            throw r0
        L_0x0150:
            h.h r0 = h.h.f14579a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.feature.download.VideoDownloadManager$listenOnDownloadVideo$1.d(java.lang.Object):java.lang.Object");
    }
}
