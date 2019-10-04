package com.farsitel.bazaar.data.feature.download;

import c.c.a.e.d.i.A;
import h.c.b;
import h.c.b.a.d;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.data.feature.download.VideoDownloadManager$getProgressPublishSubject$1", f = "VideoDownloadManager.kt", l = {301, 265}, m = "invokeSuspend")
/* compiled from: VideoDownloadManager.kt */
final class VideoDownloadManager$getProgressPublishSubject$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
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
    public Object L$9;
    public int label;
    public H p$;
    public final /* synthetic */ A this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoDownloadManager$getProgressPublishSubject$1(A a2, String str, b bVar) {
        super(2, bVar);
        this.this$0 = a2;
        this.$entityId = str;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        VideoDownloadManager$getProgressPublishSubject$1 videoDownloadManager$getProgressPublishSubject$1 = new VideoDownloadManager$getProgressPublishSubject$1(this.this$0, this.$entityId, bVar);
        videoDownloadManager$getProgressPublishSubject$1.p$ = (H) obj;
        return videoDownloadManager$getProgressPublishSubject$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((VideoDownloadManager$getProgressPublishSubject$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:0x00b7 A[Catch:{ Throwable -> 0x006c }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object d(java.lang.Object r19) {
        /*
            r18 = this;
            r1 = r18
            java.lang.Object r0 = h.c.a.b.a()
            int r2 = r1.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L_0x0070
            if (r2 == r4) goto L_0x0045
            if (r2 != r3) goto L_0x003d
            java.lang.Object r2 = r1.L$9
            c.c.a.e.g.g r2 = (c.c.a.e.g.g) r2
            java.lang.Object r2 = r1.L$8
            com.farsitel.bazaar.common.model.DownloaderProgressInfo r2 = (com.farsitel.bazaar.common.model.DownloaderProgressInfo) r2
            java.lang.Object r2 = r1.L$7
            java.lang.Object r2 = r1.L$6
            i.a.b.k r2 = (i.a.b.k) r2
            java.lang.Object r5 = r1.L$5
            i.a.b.t r5 = (i.a.b.t) r5
            java.lang.Object r6 = r1.L$4
            java.lang.Throwable r6 = (java.lang.Throwable) r6
            java.lang.Object r7 = r1.L$3
            i.a.b.t r7 = (i.a.b.t) r7
            java.lang.Object r8 = r1.L$2
            com.farsitel.bazaar.data.feature.download.VideoDownloadManager$getProgressPublishSubject$1 r8 = (com.farsitel.bazaar.data.feature.download.VideoDownloadManager$getProgressPublishSubject$1) r8
            java.lang.Object r9 = r1.L$1
            i.a.b.t r9 = (i.a.b.t) r9
            java.lang.Object r10 = r1.L$0
            i.a.b.t r10 = (i.a.b.t) r10
            h.e.a((java.lang.Object) r19)     // Catch:{ Throwable -> 0x006c }
            r11 = r5
            r5 = r1
            goto L_0x00f7
        L_0x003d:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r2)
            throw r0
        L_0x0045:
            java.lang.Object r2 = r1.L$6
            i.a.b.k r2 = (i.a.b.k) r2
            java.lang.Object r5 = r1.L$5
            i.a.b.t r5 = (i.a.b.t) r5
            java.lang.Object r6 = r1.L$4
            java.lang.Throwable r6 = (java.lang.Throwable) r6
            java.lang.Object r7 = r1.L$3
            i.a.b.t r7 = (i.a.b.t) r7
            java.lang.Object r8 = r1.L$2
            com.farsitel.bazaar.data.feature.download.VideoDownloadManager$getProgressPublishSubject$1 r8 = (com.farsitel.bazaar.data.feature.download.VideoDownloadManager$getProgressPublishSubject$1) r8
            java.lang.Object r9 = r1.L$1
            i.a.b.t r9 = (i.a.b.t) r9
            java.lang.Object r10 = r1.L$0
            i.a.b.t r10 = (i.a.b.t) r10
            h.e.a((java.lang.Object) r19)     // Catch:{ Throwable -> 0x006c }
            r12 = r19
            r11 = r5
            r5 = r1
            goto L_0x00af
        L_0x0069:
            r0 = move-exception
            goto L_0x0114
        L_0x006c:
            r0 = move-exception
            r6 = r0
            goto L_0x0113
        L_0x0070:
            h.e.a((java.lang.Object) r19)
            i.a.H r2 = r1.p$
            c.c.a.e.d.i.A r2 = r1.this$0
            java.lang.String r5 = r1.$entityId
            i.a.b.t r7 = com.farsitel.bazaar.data.feature.download.VideoDownloadManager$getProgressPublishSubject$1.super.d((java.lang.String) r5)
            if (r7 == 0) goto L_0x0118
            r6 = 0
            i.a.b.k r2 = r7.iterator()     // Catch:{ Throwable -> 0x006c }
            r11 = r0
            r0 = r1
            r5 = r0
            r9 = r6
            r6 = r7
            r8 = r6
            r10 = r8
        L_0x008b:
            r5.L$0 = r7     // Catch:{ Throwable -> 0x0110, all -> 0x010c }
            r5.L$1 = r6     // Catch:{ Throwable -> 0x0110, all -> 0x010c }
            r5.L$2 = r0     // Catch:{ Throwable -> 0x0110, all -> 0x010c }
            r5.L$3 = r8     // Catch:{ Throwable -> 0x0110, all -> 0x010c }
            r5.L$4 = r9     // Catch:{ Throwable -> 0x0110, all -> 0x010c }
            r5.L$5 = r10     // Catch:{ Throwable -> 0x0110, all -> 0x010c }
            r5.L$6 = r2     // Catch:{ Throwable -> 0x0110, all -> 0x010c }
            r5.label = r4     // Catch:{ Throwable -> 0x0110, all -> 0x010c }
            java.lang.Object r12 = r2.a(r0)     // Catch:{ Throwable -> 0x0110, all -> 0x010c }
            if (r12 != r11) goto L_0x00a2
            return r11
        L_0x00a2:
            r16 = r8
            r8 = r0
            r0 = r11
            r11 = r10
            r10 = r7
            r7 = r16
            r17 = r9
            r9 = r6
            r6 = r17
        L_0x00af:
            java.lang.Boolean r12 = (java.lang.Boolean) r12     // Catch:{ Throwable -> 0x006c }
            boolean r12 = r12.booleanValue()     // Catch:{ Throwable -> 0x006c }
            if (r12 == 0) goto L_0x0106
            java.lang.Object r12 = r2.next()     // Catch:{ Throwable -> 0x006c }
            r13 = r12
            com.farsitel.bazaar.common.model.DownloaderProgressInfo r13 = (com.farsitel.bazaar.common.model.DownloaderProgressInfo) r13     // Catch:{ Throwable -> 0x006c }
            c.c.a.e.d.i.A r14 = r5.this$0     // Catch:{ Throwable -> 0x006c }
            java.util.LinkedHashMap r14 = r14.f5148k     // Catch:{ Throwable -> 0x006c }
            java.lang.String r15 = r5.$entityId     // Catch:{ Throwable -> 0x006c }
            java.lang.Object r14 = r14.get(r15)     // Catch:{ Throwable -> 0x006c }
            c.c.a.e.g.g r14 = (c.c.a.e.g.g) r14     // Catch:{ Throwable -> 0x006c }
            if (r14 == 0) goto L_0x00f7
            com.farsitel.bazaar.data.model.VideoDownloadStep r15 = r14.d()     // Catch:{ Throwable -> 0x006c }
            com.farsitel.bazaar.data.model.VideoDownloadStep r4 = com.farsitel.bazaar.data.model.VideoDownloadStep.VIDEO     // Catch:{ Throwable -> 0x006c }
            if (r15 != r4) goto L_0x00f7
            i.a.b.p r4 = r14.f()     // Catch:{ Throwable -> 0x006c }
            r5.L$0 = r10     // Catch:{ Throwable -> 0x006c }
            r5.L$1 = r9     // Catch:{ Throwable -> 0x006c }
            r5.L$2 = r8     // Catch:{ Throwable -> 0x006c }
            r5.L$3 = r7     // Catch:{ Throwable -> 0x006c }
            r5.L$4 = r6     // Catch:{ Throwable -> 0x006c }
            r5.L$5 = r11     // Catch:{ Throwable -> 0x006c }
            r5.L$6 = r2     // Catch:{ Throwable -> 0x006c }
            r5.L$7 = r12     // Catch:{ Throwable -> 0x006c }
            r5.L$8 = r13     // Catch:{ Throwable -> 0x006c }
            r5.L$9 = r14     // Catch:{ Throwable -> 0x006c }
            r5.label = r3     // Catch:{ Throwable -> 0x006c }
            java.lang.Object r4 = c.c.a.c.a.a.a(r4, r13, (h.c.b<? super h.h>) r5)     // Catch:{ Throwable -> 0x006c }
            if (r4 != r0) goto L_0x00f7
            return r0
        L_0x00f7:
            r16 = r11
            r11 = r0
            r0 = r8
            r8 = r7
            r7 = r10
            r10 = r16
            r17 = r9
            r9 = r6
            r6 = r17
            r4 = 1
            goto L_0x008b
        L_0x0106:
            h.h r0 = h.h.f14579a     // Catch:{ Throwable -> 0x006c }
            i.a.b.m.a(r7, r6)
            goto L_0x0118
        L_0x010c:
            r0 = move-exception
            r7 = r8
            r6 = r9
            goto L_0x0114
        L_0x0110:
            r0 = move-exception
            r6 = r0
            r7 = r8
        L_0x0113:
            throw r6     // Catch:{ all -> 0x0069 }
        L_0x0114:
            i.a.b.m.a(r7, r6)
            throw r0
        L_0x0118:
            h.h r0 = h.h.f14579a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.feature.download.VideoDownloadManager$getProgressPublishSubject$1.d(java.lang.Object):java.lang.Object");
    }
}
