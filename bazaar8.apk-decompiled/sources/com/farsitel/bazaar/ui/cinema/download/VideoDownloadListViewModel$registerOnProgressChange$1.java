package com.farsitel.bazaar.ui.cinema.download;

import c.c.a.n.j.c.l;
import h.c.b;
import h.c.b.a.d;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.cinema.download.VideoDownloadListViewModel$registerOnProgressChange$1", f = "VideoDownloadListViewModel.kt", l = {141}, m = "invokeSuspend")
/* compiled from: VideoDownloadListViewModel.kt */
final class VideoDownloadListViewModel$registerOnProgressChange$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ String $videoId;
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public Object L$5;
    public int label;
    public H p$;
    public final /* synthetic */ l this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoDownloadListViewModel$registerOnProgressChange$1(l lVar, String str, b bVar) {
        super(2, bVar);
        this.this$0 = lVar;
        this.$videoId = str;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        VideoDownloadListViewModel$registerOnProgressChange$1 videoDownloadListViewModel$registerOnProgressChange$1 = new VideoDownloadListViewModel$registerOnProgressChange$1(this.this$0, this.$videoId, bVar);
        videoDownloadListViewModel$registerOnProgressChange$1.p$ = (H) obj;
        return videoDownloadListViewModel$registerOnProgressChange$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((VideoDownloadListViewModel$registerOnProgressChange$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:43:0x00d8, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00d9, code lost:
        r3 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:?, code lost:
        throw r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00dd, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0032, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0033, code lost:
        r3 = r0;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [B:4:0x0025, B:14:0x0051, B:46:0x00dc] */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0078 A[Catch:{ Throwable -> 0x0032, all -> 0x002f }] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0032 A[ExcHandler: Throwable (r0v9 'th' java.lang.Throwable A[CUSTOM_DECLARE]), PHI: r7 
  PHI: (r7v5 i.a.b.t<com.farsitel.bazaar.common.model.DownloaderProgressInfo>) = (r7v2 i.a.b.t<com.farsitel.bazaar.common.model.DownloaderProgressInfo>), (r7v2 i.a.b.t<com.farsitel.bazaar.common.model.DownloaderProgressInfo>), (r7v3 i.a.b.t<com.farsitel.bazaar.common.model.DownloaderProgressInfo>), (r7v4 i.a.b.t<com.farsitel.bazaar.common.model.DownloaderProgressInfo>), (r7v8 i.a.b.t<com.farsitel.bazaar.common.model.DownloaderProgressInfo>), (r7v8 i.a.b.t<com.farsitel.bazaar.common.model.DownloaderProgressInfo>) binds: [B:40:0x00d2, B:41:?, B:17:0x005b, B:14:0x0051, B:4:0x0025, B:5:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:4:0x0025] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object d(java.lang.Object r17) {
        /*
            r16 = this;
            r1 = r16
            java.lang.Object r0 = h.c.a.b.a()
            int r2 = r1.label
            r4 = 1
            if (r2 == 0) goto L_0x003e
            if (r2 != r4) goto L_0x0036
            java.lang.Object r2 = r1.L$5
            i.a.b.k r2 = (i.a.b.k) r2
            java.lang.Object r5 = r1.L$4
            i.a.b.t r5 = (i.a.b.t) r5
            java.lang.Object r6 = r1.L$3
            java.lang.Throwable r6 = (java.lang.Throwable) r6
            java.lang.Object r7 = r1.L$2
            i.a.b.t r7 = (i.a.b.t) r7
            java.lang.Object r8 = r1.L$1
            com.farsitel.bazaar.ui.cinema.download.VideoDownloadListViewModel$registerOnProgressChange$1 r8 = (com.farsitel.bazaar.ui.cinema.download.VideoDownloadListViewModel$registerOnProgressChange$1) r8
            java.lang.Object r9 = r1.L$0
            i.a.b.t r9 = (i.a.b.t) r9
            h.e.a((java.lang.Object) r17)     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            r11 = r17
            r10 = r0
            r0 = r8
            r8 = r5
            r5 = r1
            goto L_0x0070
        L_0x002f:
            r0 = move-exception
            goto L_0x00df
        L_0x0032:
            r0 = move-exception
            r3 = r0
            goto L_0x00dc
        L_0x0036:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r2)
            throw r0
        L_0x003e:
            h.e.a((java.lang.Object) r17)
            i.a.H r2 = r1.p$
            c.c.a.n.j.c.l r2 = r1.this$0
            c.c.a.b.d.o r2 = r2.n
            java.lang.String r5 = r1.$videoId
            i.a.b.t r7 = r2.m(r5)
            if (r7 == 0) goto L_0x00e3
            i.a.b.k r2 = r7.iterator()     // Catch:{ Throwable -> 0x0032, all -> 0x00d8 }
            r10 = r0
            r0 = r1
            r5 = r0
            r8 = r7
            r9 = r8
            r6 = 0
        L_0x005b:
            r5.L$0 = r9     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            r5.L$1 = r0     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            r5.L$2 = r7     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            r5.L$3 = r6     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            r5.L$4 = r8     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            r5.L$5 = r2     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            r5.label = r4     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            java.lang.Object r11 = r2.a(r0)     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            if (r11 != r10) goto L_0x0070
            return r10
        L_0x0070:
            java.lang.Boolean r11 = (java.lang.Boolean) r11     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            boolean r11 = r11.booleanValue()     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            if (r11 == 0) goto L_0x00d2
            java.lang.Object r11 = r2.next()     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            com.farsitel.bazaar.common.model.DownloaderProgressInfo r11 = (com.farsitel.bazaar.common.model.DownloaderProgressInfo) r11     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            c.c.a.n.j.c.l r12 = r5.this$0     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            com.farsitel.bazaar.core.model.Resource r12 = r12.e()     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            if (r12 == 0) goto L_0x00cf
            java.lang.Object r12 = r12.a()     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            java.util.List r12 = (java.util.List) r12     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            if (r12 == 0) goto L_0x00cf
            r13 = 0
            java.util.Iterator r12 = r12.iterator()     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
        L_0x0093:
            boolean r14 = r12.hasNext()     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            if (r14 == 0) goto L_0x00cf
            java.lang.Object r14 = r12.next()     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            int r15 = r13 + 1
            if (r13 < 0) goto L_0x00ca
            java.lang.Integer r13 = h.c.b.a.a.a((int) r13)     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            com.farsitel.bazaar.common.model.cinema.DownloadedVideoItem r14 = (com.farsitel.bazaar.common.model.cinema.DownloadedVideoItem) r14     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            int r13 = r13.intValue()     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            java.lang.String r4 = r5.$videoId     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            java.lang.String r3 = r14.getVideoId()     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            boolean r3 = h.f.b.j.a((java.lang.Object) r4, (java.lang.Object) r3)     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            if (r3 == 0) goto L_0x00c7
            r14.setProgressInfo(r11)     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            c.c.a.n.j.c.l r3 = r5.this$0     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            b.r.t r3 = r3.f6498j     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            java.lang.Integer r4 = h.c.b.a.a.a((int) r13)     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            r3.b(r4)     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
        L_0x00c7:
            r13 = r15
            r4 = 1
            goto L_0x0093
        L_0x00ca:
            h.a.l.b()     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            r3 = 0
            throw r3
        L_0x00cf:
            r3 = 0
            r4 = 1
            goto L_0x005b
        L_0x00d2:
            h.h r0 = h.h.f14579a     // Catch:{ Throwable -> 0x0032, all -> 0x002f }
            i.a.b.m.a(r7, r6)
            goto L_0x00e3
        L_0x00d8:
            r0 = move-exception
            r3 = 0
        L_0x00da:
            r6 = r3
            goto L_0x00df
        L_0x00dc:
            throw r3     // Catch:{ all -> 0x00dd }
        L_0x00dd:
            r0 = move-exception
            goto L_0x00da
        L_0x00df:
            i.a.b.m.a(r7, r6)
            throw r0
        L_0x00e3:
            h.h r0 = h.h.f14579a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.ui.cinema.download.VideoDownloadListViewModel$registerOnProgressChange$1.d(java.lang.Object):java.lang.Object");
    }
}
