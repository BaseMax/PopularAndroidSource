package com.farsitel.bazaar.app.download;

import com.farsitel.bazaar.common.model.ui.VideoDownloaderModel;
import h.c.b;
import h.c.b.a.d;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import i.a.b.t;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.app.download.DownloadService$listenOnVideoStatus$1", f = "DownloadService.kt", l = {530}, m = "invokeSuspend")
/* compiled from: DownloadService.kt */
final class DownloadService$listenOnVideoStatus$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ t $stateChannel;
    public final /* synthetic */ VideoDownloaderModel $videoDownloadModel;
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public Object L$5;
    public Object L$6;
    public int label;
    public H p$;
    public final /* synthetic */ DownloadService this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public DownloadService$listenOnVideoStatus$1(DownloadService downloadService, VideoDownloaderModel videoDownloaderModel, t tVar, b bVar) {
        super(2, bVar);
        this.this$0 = downloadService;
        this.$videoDownloadModel = videoDownloaderModel;
        this.$stateChannel = tVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        DownloadService$listenOnVideoStatus$1 downloadService$listenOnVideoStatus$1 = new DownloadService$listenOnVideoStatus$1(this.this$0, this.$videoDownloadModel, this.$stateChannel, bVar);
        downloadService$listenOnVideoStatus$1.p$ = (H) obj;
        return downloadService$listenOnVideoStatus$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((DownloadService$listenOnVideoStatus$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:39:?, code lost:
        throw r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x0171, code lost:
        i.a.b.m.a(r7, r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x0174, code lost:
        throw r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:0x0034, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0037, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0038, code lost:
        r4 = r0;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0089 A[Catch:{ Throwable -> 0x0037, all -> 0x0034 }] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0037 A[ExcHandler: Throwable (r0v7 'th' java.lang.Throwable A[CUSTOM_DECLARE]), PHI: r7 
  PHI: (r7v4 i.a.b.t) = (r7v2 i.a.b.t), (r7v3 i.a.b.t), (r7v7 i.a.b.t), (r7v7 i.a.b.t) binds: [B:17:0x006a, B:14:0x005e, B:4:0x002a, B:5:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:4:0x002a] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object d(java.lang.Object r23) {
        /*
            r22 = this;
            r1 = r22
            java.lang.Object r0 = h.c.a.b.a()
            int r2 = r1.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L_0x0043
            if (r2 != r3) goto L_0x003b
            java.lang.Object r2 = r1.L$6
            i.a.b.k r2 = (i.a.b.k) r2
            java.lang.Object r5 = r1.L$5
            i.a.b.t r5 = (i.a.b.t) r5
            java.lang.Object r6 = r1.L$4
            java.lang.Throwable r6 = (java.lang.Throwable) r6
            java.lang.Object r7 = r1.L$3
            i.a.b.t r7 = (i.a.b.t) r7
            java.lang.Object r8 = r1.L$2
            com.farsitel.bazaar.app.download.DownloadService$listenOnVideoStatus$1 r8 = (com.farsitel.bazaar.app.download.DownloadService$listenOnVideoStatus$1) r8
            java.lang.Object r9 = r1.L$1
            i.a.b.t r9 = (i.a.b.t) r9
            java.lang.Object r10 = r1.L$0
            c.c.a.b.f.a.f r10 = (c.c.a.b.f.a.f) r10
            h.e.a((java.lang.Object) r23)     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            r12 = r23
            r11 = r0
            r0 = r8
            r8 = r5
            r5 = r1
            goto L_0x0081
        L_0x0034:
            r0 = move-exception
            goto L_0x0171
        L_0x0037:
            r0 = move-exception
            r4 = r0
            goto L_0x0170
        L_0x003b:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r2)
            throw r0
        L_0x0043:
            h.e.a((java.lang.Object) r23)
            i.a.H r2 = r1.p$
            c.c.a.b.f.a.f r2 = new c.c.a.b.f.a.f
            com.farsitel.bazaar.app.download.DownloadService r5 = r1.this$0
            android.content.Context r5 = r5.getBaseContext()
            java.lang.String r6 = "baseContext"
            h.f.b.j.a((java.lang.Object) r5, (java.lang.String) r6)
            com.farsitel.bazaar.common.model.ui.VideoDownloaderModel r6 = r1.$videoDownloadModel
            r2.<init>(r5, r6)
            i.a.b.t r7 = r1.$stateChannel
            if (r7 == 0) goto L_0x0175
            i.a.b.k r5 = r7.iterator()     // Catch:{ Throwable -> 0x0037 }
            r11 = r0
            r0 = r1
            r10 = r2
            r6 = r4
            r2 = r5
            r8 = r7
            r9 = r8
            r5 = r0
        L_0x006a:
            r5.L$0 = r10     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            r5.L$1 = r9     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            r5.L$2 = r0     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            r5.L$3 = r7     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            r5.L$4 = r6     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            r5.L$5 = r8     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            r5.L$6 = r2     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            r5.label = r3     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            java.lang.Object r12 = r2.a(r0)     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            if (r12 != r11) goto L_0x0081
            return r11
        L_0x0081:
            java.lang.Boolean r12 = (java.lang.Boolean) r12     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            boolean r12 = r12.booleanValue()     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            if (r12 == 0) goto L_0x0167
            java.lang.Object r12 = r2.next()     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            com.farsitel.bazaar.common.model.DownloadStatus r12 = (com.farsitel.bazaar.common.model.DownloadStatus) r12     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            int[] r13 = c.c.a.b.b.a.f4550b     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            int r14 = r12.ordinal()     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            r13 = r13[r14]     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            switch(r13) {
                case 1: goto L_0x0127;
                case 2: goto L_0x0108;
                case 3: goto L_0x0108;
                case 4: goto L_0x00f6;
                case 5: goto L_0x00db;
                case 6: goto L_0x00c8;
                case 7: goto L_0x009e;
                case 8: goto L_0x009e;
                case 9: goto L_0x009e;
                default: goto L_0x009a;
            }     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
        L_0x009a:
            c.c.a.c.c.a r16 = c.c.a.c.c.a.f4699b     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            goto L_0x013c
        L_0x009e:
            com.farsitel.bazaar.app.download.DownloadService r13 = r5.this$0     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            com.farsitel.bazaar.app.download.DownloadServiceNotifyType$a r14 = com.farsitel.bazaar.app.download.DownloadServiceNotifyType.Companion     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            com.farsitel.bazaar.app.download.DownloadServiceNotifyType r14 = r14.a(r12)     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            com.farsitel.bazaar.common.model.ui.VideoDownloaderModel r15 = r5.$videoDownloadModel     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            java.lang.String r15 = r15.getVideoId()     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            r13.a((com.farsitel.bazaar.app.download.DownloadServiceNotifyType) r14, (java.lang.String) r15, (java.lang.Boolean) r4)     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            c.c.a.b.f.h r13 = c.c.a.b.f.h.f4687h     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            com.farsitel.bazaar.app.notification.NotificationType r14 = com.farsitel.bazaar.app.notification.NotificationType.VIDEO_DOWNLOAD_PROGRESS     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            com.farsitel.bazaar.common.model.ui.VideoDownloaderModel r15 = r5.$videoDownloadModel     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            java.lang.String r15 = r15.getVideoId()     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            r13.a(r14, r15)     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            com.farsitel.bazaar.app.download.DownloadService r13 = r5.this$0     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            r13.stopForeground(r3)     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            com.farsitel.bazaar.app.download.DownloadService r13 = r5.this$0     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            r13.stopSelf()     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            goto L_0x0158
        L_0x00c8:
            com.farsitel.bazaar.app.download.DownloadService r13 = r5.this$0     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            com.farsitel.bazaar.app.download.DownloadServiceNotifyType$a r14 = com.farsitel.bazaar.app.download.DownloadServiceNotifyType.Companion     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            com.farsitel.bazaar.app.download.DownloadServiceNotifyType r14 = r14.a(r12)     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            com.farsitel.bazaar.common.model.ui.VideoDownloaderModel r15 = r5.$videoDownloadModel     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            java.lang.String r15 = r15.getVideoId()     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            r13.a((com.farsitel.bazaar.app.download.DownloadServiceNotifyType) r14, (java.lang.String) r15, (java.lang.Boolean) r4)     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            goto L_0x0158
        L_0x00db:
            com.farsitel.bazaar.app.download.DownloadService r13 = r5.this$0     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            com.farsitel.bazaar.app.download.DownloadServiceNotifyType r14 = com.farsitel.bazaar.app.download.DownloadServiceNotifyType.SUCCESS_DOWNLOAD     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            com.farsitel.bazaar.common.model.ui.VideoDownloaderModel r15 = r5.$videoDownloadModel     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            java.lang.String r15 = r15.getVideoId()     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            r13.a((com.farsitel.bazaar.app.download.DownloadServiceNotifyType) r14, (java.lang.String) r15, (java.lang.Boolean) r4)     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            r10.d()     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            com.farsitel.bazaar.app.download.DownloadService r13 = r5.this$0     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            r13.stopForeground(r3)     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            com.farsitel.bazaar.app.download.DownloadService r13 = r5.this$0     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            r13.stopSelf()     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            goto L_0x0158
        L_0x00f6:
            com.farsitel.bazaar.app.download.DownloadService r13 = r5.this$0     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            com.farsitel.bazaar.app.download.DownloadServiceNotifyType$a r14 = com.farsitel.bazaar.app.download.DownloadServiceNotifyType.Companion     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            com.farsitel.bazaar.app.download.DownloadServiceNotifyType r14 = r14.a(r12)     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            com.farsitel.bazaar.common.model.ui.VideoDownloaderModel r15 = r5.$videoDownloadModel     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            java.lang.String r15 = r15.getVideoId()     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            r13.a((com.farsitel.bazaar.app.download.DownloadServiceNotifyType) r14, (java.lang.String) r15, (java.lang.Boolean) r4)     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            goto L_0x0158
        L_0x0108:
            com.farsitel.bazaar.app.download.DownloadService r13 = r5.this$0     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            com.farsitel.bazaar.app.download.DownloadServiceNotifyType r14 = com.farsitel.bazaar.app.download.DownloadServiceNotifyType.DOWNLOADING     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            com.farsitel.bazaar.common.model.ui.VideoDownloaderModel r15 = r5.$videoDownloadModel     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            java.lang.String r15 = r15.getVideoId()     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            r13.a((com.farsitel.bazaar.app.download.DownloadServiceNotifyType) r14, (java.lang.String) r15, (java.lang.Boolean) r4)     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            com.farsitel.bazaar.app.download.DownloadService r13 = r5.this$0     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            com.farsitel.bazaar.common.model.ui.VideoDownloaderModel r14 = r5.$videoDownloadModel     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            java.lang.String r14 = r14.getVideoId()     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            com.farsitel.bazaar.app.download.DownloadService r15 = r5.this$0     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            c.c.a.e.d.i.A r15 = r15.e()     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            r13.a((java.lang.String) r14, (c.c.a.b.f.a.b) r10, (com.farsitel.bazaar.data.feature.download.DownloadManager) r15)     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            goto L_0x0158
        L_0x0127:
            com.farsitel.bazaar.common.model.ui.VideoDownloaderModel r13 = r5.$videoDownloadModel     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            java.lang.String r13 = r13.getVideoId()     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            r14 = -1
            android.app.Notification r13 = r10.a(r13, r14)     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            com.farsitel.bazaar.app.download.DownloadService r14 = r5.this$0     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            int r15 = r10.a()     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            r14.startForeground(r15, r13)     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            goto L_0x0158
        L_0x013c:
            java.lang.StringBuilder r13 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            r13.<init>()     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            java.lang.String r14 = "new video download state received "
            r13.append(r14)     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            r13.append(r12)     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            java.lang.String r17 = r13.toString()     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            r18 = 0
            r19 = 0
            r20 = 6
            r21 = 0
            c.c.a.c.c.a.b(r16, r17, r18, r19, r20, r21)     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
        L_0x0158:
            com.farsitel.bazaar.app.download.DownloadService r13 = r5.this$0     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            com.farsitel.bazaar.app.download.DownloadServiceNotifyType$a r14 = com.farsitel.bazaar.app.download.DownloadServiceNotifyType.Companion     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            com.farsitel.bazaar.app.download.DownloadServiceNotifyType r12 = r14.a(r12)     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            com.farsitel.bazaar.common.model.ui.VideoDownloaderModel r14 = r5.$videoDownloadModel     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            r13.a((com.farsitel.bazaar.app.download.DownloadServiceNotifyType) r12, (com.farsitel.bazaar.common.model.ui.VideoDownloaderModel) r14)     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            goto L_0x006a
        L_0x0167:
            h.h r0 = h.h.f14579a     // Catch:{ Throwable -> 0x0037, all -> 0x0034 }
            i.a.b.m.a(r7, r6)
            goto L_0x0175
        L_0x016d:
            r0 = move-exception
            r6 = r4
            goto L_0x0171
        L_0x0170:
            throw r4     // Catch:{ all -> 0x016d }
        L_0x0171:
            i.a.b.m.a(r7, r6)
            throw r0
        L_0x0175:
            h.h r0 = h.h.f14579a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.app.download.DownloadService$listenOnVideoStatus$1.d(java.lang.Object):java.lang.Object");
    }
}
