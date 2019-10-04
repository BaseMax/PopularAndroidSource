package com.farsitel.bazaar.data.feature.download;

import h.c.b;
import h.c.b.a.d;
import h.f.a.c;
import h.h;
import i.a.H;
import i.a.b.j;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.data.feature.download.DownloadManager$startDownloadProcess$1", f = "DownloadManager.kt", l = {449}, m = "invokeSuspend")
/* compiled from: DownloadManager.kt */
final class DownloadManager$startDownloadProcess$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ c.c.a.e.g.c $downloadInfoModel;
    public final /* synthetic */ j $downloadStatusChange;
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public Object L$5;
    public int label;
    public H p$;
    public final /* synthetic */ DownloadManager this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public DownloadManager$startDownloadProcess$1(DownloadManager downloadManager, j jVar, c.c.a.e.g.c cVar, b bVar) {
        super(2, bVar);
        this.this$0 = downloadManager;
        this.$downloadStatusChange = jVar;
        this.$downloadInfoModel = cVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        h.f.b.j.b(bVar, "completion");
        DownloadManager$startDownloadProcess$1 downloadManager$startDownloadProcess$1 = new DownloadManager$startDownloadProcess$1(this.this$0, this.$downloadStatusChange, this.$downloadInfoModel, bVar);
        downloadManager$startDownloadProcess$1.p$ = (H) obj;
        return downloadManager$startDownloadProcess$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((DownloadManager$startDownloadProcess$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0064 A[Catch:{ Throwable -> 0x00d1, all -> 0x00cf }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object d(java.lang.Object r13) {
        /*
            r12 = this;
            java.lang.Object r0 = h.c.a.b.a()
            int r1 = r12.label
            r2 = 1
            if (r1 == 0) goto L_0x0031
            if (r1 != r2) goto L_0x0029
            java.lang.Object r1 = r12.L$5
            i.a.b.k r1 = (i.a.b.k) r1
            java.lang.Object r3 = r12.L$4
            i.a.b.t r3 = (i.a.b.t) r3
            java.lang.Object r4 = r12.L$3
            java.lang.Throwable r4 = (java.lang.Throwable) r4
            java.lang.Object r5 = r12.L$2
            i.a.b.t r5 = (i.a.b.t) r5
            java.lang.Object r6 = r12.L$1
            com.farsitel.bazaar.data.feature.download.DownloadManager$startDownloadProcess$1 r6 = (com.farsitel.bazaar.data.feature.download.DownloadManager$startDownloadProcess$1) r6
            java.lang.Object r7 = r12.L$0
            i.a.b.t r7 = (i.a.b.t) r7
            h.e.a((java.lang.Object) r13)     // Catch:{ Throwable -> 0x00d1 }
            r8 = r0
            r0 = r12
            goto L_0x005c
        L_0x0029:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r0)
            throw r13
        L_0x0031:
            h.e.a((java.lang.Object) r13)
            i.a.H r13 = r12.p$
            i.a.b.j r5 = r12.$downloadStatusChange
            r4 = 0
            i.a.b.k r13 = r5.iterator()     // Catch:{ Throwable -> 0x00d1 }
            r1 = r13
            r6 = r0
            r3 = r5
            r7 = r3
            r13 = r12
            r0 = r13
        L_0x0043:
            r0.L$0 = r7     // Catch:{ Throwable -> 0x00d1 }
            r0.L$1 = r13     // Catch:{ Throwable -> 0x00d1 }
            r0.L$2 = r5     // Catch:{ Throwable -> 0x00d1 }
            r0.L$3 = r4     // Catch:{ Throwable -> 0x00d1 }
            r0.L$4 = r3     // Catch:{ Throwable -> 0x00d1 }
            r0.L$5 = r1     // Catch:{ Throwable -> 0x00d1 }
            r0.label = r2     // Catch:{ Throwable -> 0x00d1 }
            java.lang.Object r8 = r1.a(r13)     // Catch:{ Throwable -> 0x00d1 }
            if (r8 != r6) goto L_0x0058
            return r6
        L_0x0058:
            r11 = r6
            r6 = r13
            r13 = r8
            r8 = r11
        L_0x005c:
            java.lang.Boolean r13 = (java.lang.Boolean) r13     // Catch:{ Throwable -> 0x00d1 }
            boolean r13 = r13.booleanValue()     // Catch:{ Throwable -> 0x00d1 }
            if (r13 == 0) goto L_0x00c7
            java.lang.Object r13 = r1.next()     // Catch:{ Throwable -> 0x00d1 }
            com.farsitel.bazaar.data.feature.download.DownloaderDownloadStatus r13 = (com.farsitel.bazaar.data.feature.download.DownloaderDownloadStatus) r13     // Catch:{ Throwable -> 0x00d1 }
            int[] r9 = c.c.a.e.d.i.g.f5162a     // Catch:{ Throwable -> 0x00d1 }
            int r13 = r13.ordinal()     // Catch:{ Throwable -> 0x00d1 }
            r13 = r9[r13]     // Catch:{ Throwable -> 0x00d1 }
            switch(r13) {
                case 1: goto L_0x00b8;
                case 2: goto L_0x00ac;
                case 3: goto L_0x00a0;
                case 4: goto L_0x0098;
                case 5: goto L_0x0090;
                case 6: goto L_0x007e;
                case 7: goto L_0x0076;
                default: goto L_0x0075;
            }     // Catch:{ Throwable -> 0x00d1 }
        L_0x0075:
            goto L_0x00c3
        L_0x0076:
            c.c.a.e.g.c r13 = r0.$downloadInfoModel     // Catch:{ Throwable -> 0x00d1 }
            com.farsitel.bazaar.common.model.DownloadStatus r9 = com.farsitel.bazaar.common.model.DownloadStatus.PAUSE_BY_SYSTEM     // Catch:{ Throwable -> 0x00d1 }
            r13.a(r9)     // Catch:{ Throwable -> 0x00d1 }
            goto L_0x00c3
        L_0x007e:
            com.farsitel.bazaar.data.feature.download.DownloadManager r13 = r0.this$0     // Catch:{ Throwable -> 0x00d1 }
            c.c.a.e.g.c r9 = r0.$downloadInfoModel     // Catch:{ Throwable -> 0x00d1 }
            java.lang.String r9 = r9.k()     // Catch:{ Throwable -> 0x00d1 }
            c.c.a.e.g.c r10 = r0.$downloadInfoModel     // Catch:{ Throwable -> 0x00d1 }
            com.farsitel.bazaar.data.entity.EntityType r10 = r10.q()     // Catch:{ Throwable -> 0x00d1 }
            r13.a((java.lang.String) r9, (com.farsitel.bazaar.data.entity.EntityType) r10)     // Catch:{ Throwable -> 0x00d1 }
            goto L_0x00c3
        L_0x0090:
            c.c.a.e.g.c r13 = r0.$downloadInfoModel     // Catch:{ Throwable -> 0x00d1 }
            com.farsitel.bazaar.common.model.DownloadStatus r9 = com.farsitel.bazaar.common.model.DownloadStatus.CHECKING     // Catch:{ Throwable -> 0x00d1 }
            r13.b(r9)     // Catch:{ Throwable -> 0x00d1 }
            goto L_0x00c3
        L_0x0098:
            c.c.a.e.g.c r13 = r0.$downloadInfoModel     // Catch:{ Throwable -> 0x00d1 }
            com.farsitel.bazaar.common.model.DownloadStatus r9 = com.farsitel.bazaar.common.model.DownloadStatus.DOWNLOADING     // Catch:{ Throwable -> 0x00d1 }
            r13.b(r9)     // Catch:{ Throwable -> 0x00d1 }
            goto L_0x00c3
        L_0x00a0:
            com.farsitel.bazaar.data.feature.download.DownloadManager r13 = r0.this$0     // Catch:{ Throwable -> 0x00d1 }
            c.c.a.e.g.c r9 = r0.$downloadInfoModel     // Catch:{ Throwable -> 0x00d1 }
            java.lang.String r9 = r9.k()     // Catch:{ Throwable -> 0x00d1 }
            r13.f(r9)     // Catch:{ Throwable -> 0x00d1 }
            goto L_0x00c3
        L_0x00ac:
            com.farsitel.bazaar.data.feature.download.DownloadManager r13 = r0.this$0     // Catch:{ Throwable -> 0x00d1 }
            c.c.a.e.g.c r9 = r0.$downloadInfoModel     // Catch:{ Throwable -> 0x00d1 }
            java.lang.String r9 = r9.k()     // Catch:{ Throwable -> 0x00d1 }
            r13.b((java.lang.String) r9)     // Catch:{ Throwable -> 0x00d1 }
            goto L_0x00c3
        L_0x00b8:
            com.farsitel.bazaar.data.feature.download.DownloadManager r13 = r0.this$0     // Catch:{ Throwable -> 0x00d1 }
            c.c.a.e.g.c r9 = r0.$downloadInfoModel     // Catch:{ Throwable -> 0x00d1 }
            java.lang.String r9 = r9.k()     // Catch:{ Throwable -> 0x00d1 }
            r13.a((java.lang.String) r9)     // Catch:{ Throwable -> 0x00d1 }
        L_0x00c3:
            r13 = r6
            r6 = r8
            goto L_0x0043
        L_0x00c7:
            h.h r13 = h.h.f14579a     // Catch:{ Throwable -> 0x00d1 }
            i.a.b.m.a(r5, r4)
            h.h r13 = h.h.f14579a
            return r13
        L_0x00cf:
            r13 = move-exception
            goto L_0x00d4
        L_0x00d1:
            r13 = move-exception
            r4 = r13
            throw r4     // Catch:{ all -> 0x00cf }
        L_0x00d4:
            i.a.b.m.a(r5, r4)
            goto L_0x00d9
        L_0x00d8:
            throw r13
        L_0x00d9:
            goto L_0x00d8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.feature.download.DownloadManager$startDownloadProcess$1.d(java.lang.Object):java.lang.Object");
    }
}
