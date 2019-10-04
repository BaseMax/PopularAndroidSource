package com.farsitel.bazaar.app.download;

import com.farsitel.bazaar.common.model.ui.AppDownloaderModel;
import h.c.b;
import h.c.b.a.d;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import i.a.b.t;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.app.download.DownloadService$listenOnAppStatus$1", f = "DownloadService.kt", l = {530, 200, 215, 226}, m = "invokeSuspend")
/* compiled from: DownloadService.kt */
final class DownloadService$listenOnAppStatus$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ AppDownloaderModel $appDownloadModel;
    public final /* synthetic */ t $stateChannel;
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
    public final /* synthetic */ DownloadService this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public DownloadService$listenOnAppStatus$1(DownloadService downloadService, AppDownloaderModel appDownloaderModel, t tVar, b bVar) {
        super(2, bVar);
        this.this$0 = downloadService;
        this.$appDownloadModel = appDownloaderModel;
        this.$stateChannel = tVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        DownloadService$listenOnAppStatus$1 downloadService$listenOnAppStatus$1 = new DownloadService$listenOnAppStatus$1(this.this$0, this.$appDownloadModel, this.$stateChannel, bVar);
        downloadService$listenOnAppStatus$1.p$ = (H) obj;
        return downloadService$listenOnAppStatus$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((DownloadService$listenOnAppStatus$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r15v3, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v7, resolved type: com.farsitel.bazaar.common.model.DownloadStatus} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v11, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v16, resolved type: i.a.b.t} */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x00ef, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x00f0, code lost:
        r7 = r0;
     */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00ef A[ExcHandler: Throwable (r0v15 'th' java.lang.Throwable A[CUSTOM_DECLARE]), PHI: r11 
  PHI: (r11v14 i.a.b.t) = (r11v8 i.a.b.t), (r11v8 i.a.b.t), (r11v10 i.a.b.t), (r11v10 i.a.b.t), (r11v10 i.a.b.t), (r11v10 i.a.b.t), (r11v13 i.a.b.t), (r11v17 i.a.b.t), (r11v17 i.a.b.t), (r11v20 i.a.b.t), (r11v20 i.a.b.t), (r11v22 i.a.b.t), (r11v22 i.a.b.t), (r11v24 i.a.b.t), (r11v24 i.a.b.t) binds: [B:52:0x01d2, B:53:?, B:39:0x0138, B:69:0x02aa, B:70:?, B:56:0x01ea, B:31:0x010e, B:23:0x00e1, B:24:?, B:17:0x00ac, B:18:?, B:13:0x0073, B:14:?, B:7:0x0039, B:8:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:52:0x01d2] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0140 A[Catch:{ Throwable -> 0x00ef, all -> 0x00ec }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object d(java.lang.Object r25) {
        /*
            r24 = this;
            r1 = r24
            java.lang.Object r0 = h.c.a.b.a()
            int r2 = r1.label
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            r7 = 0
            if (r2 == 0) goto L_0x00f3
            if (r2 == r6) goto L_0x00c4
            if (r2 == r5) goto L_0x0086
            if (r2 == r4) goto L_0x0051
            if (r2 != r3) goto L_0x0049
            java.lang.Object r2 = r1.L$8
            com.farsitel.bazaar.common.model.DownloadStatus r2 = (com.farsitel.bazaar.common.model.DownloadStatus) r2
            java.lang.Object r8 = r1.L$7
            java.lang.Object r8 = r1.L$6
            i.a.b.k r8 = (i.a.b.k) r8
            java.lang.Object r9 = r1.L$5
            i.a.b.t r9 = (i.a.b.t) r9
            java.lang.Object r10 = r1.L$4
            java.lang.Throwable r10 = (java.lang.Throwable) r10
            java.lang.Object r11 = r1.L$3
            i.a.b.t r11 = (i.a.b.t) r11
            java.lang.Object r12 = r1.L$2
            com.farsitel.bazaar.app.download.DownloadService$listenOnAppStatus$1 r12 = (com.farsitel.bazaar.app.download.DownloadService$listenOnAppStatus$1) r12
            java.lang.Object r13 = r1.L$1
            i.a.b.t r13 = (i.a.b.t) r13
            java.lang.Object r14 = r1.L$0
            c.c.a.b.f.a.a r14 = (c.c.a.b.f.a.a) r14
            h.e.a((java.lang.Object) r25)     // Catch:{ Throwable -> 0x00ef, all -> 0x00c0 }
            r5 = r2
            r7 = r10
            r4 = 4
            r2 = r1
            r22 = r14
            r14 = r0
            r0 = r12
            r12 = r13
            r13 = r22
            goto L_0x01d2
        L_0x0049:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r2)
            throw r0
        L_0x0051:
            java.lang.Object r2 = r1.L$8
            com.farsitel.bazaar.common.model.DownloadStatus r2 = (com.farsitel.bazaar.common.model.DownloadStatus) r2
            java.lang.Object r8 = r1.L$7
            java.lang.Object r8 = r1.L$6
            i.a.b.k r8 = (i.a.b.k) r8
            java.lang.Object r9 = r1.L$5
            i.a.b.t r9 = (i.a.b.t) r9
            java.lang.Object r10 = r1.L$4
            java.lang.Throwable r10 = (java.lang.Throwable) r10
            java.lang.Object r11 = r1.L$3
            i.a.b.t r11 = (i.a.b.t) r11
            java.lang.Object r12 = r1.L$2
            com.farsitel.bazaar.app.download.DownloadService$listenOnAppStatus$1 r12 = (com.farsitel.bazaar.app.download.DownloadService$listenOnAppStatus$1) r12
            java.lang.Object r13 = r1.L$1
            i.a.b.t r13 = (i.a.b.t) r13
            java.lang.Object r14 = r1.L$0
            c.c.a.b.f.a.a r14 = (c.c.a.b.f.a.a) r14
            h.e.a((java.lang.Object) r25)     // Catch:{ Throwable -> 0x00ef, all -> 0x00c0 }
            r5 = r2
            r2 = r1
            r22 = r14
            r14 = r0
            r0 = r12
            r12 = r13
            r13 = r22
            r23 = r10
            r10 = r9
            r9 = r23
            goto L_0x0238
        L_0x0086:
            java.lang.Object r2 = r1.L$9
            android.app.Notification r2 = (android.app.Notification) r2
            java.lang.Object r2 = r1.L$8
            com.farsitel.bazaar.common.model.DownloadStatus r2 = (com.farsitel.bazaar.common.model.DownloadStatus) r2
            java.lang.Object r8 = r1.L$7
            java.lang.Object r8 = r1.L$6
            i.a.b.k r8 = (i.a.b.k) r8
            java.lang.Object r9 = r1.L$5
            i.a.b.t r9 = (i.a.b.t) r9
            java.lang.Object r10 = r1.L$4
            java.lang.Throwable r10 = (java.lang.Throwable) r10
            java.lang.Object r11 = r1.L$3
            i.a.b.t r11 = (i.a.b.t) r11
            java.lang.Object r12 = r1.L$2
            com.farsitel.bazaar.app.download.DownloadService$listenOnAppStatus$1 r12 = (com.farsitel.bazaar.app.download.DownloadService$listenOnAppStatus$1) r12
            java.lang.Object r13 = r1.L$1
            i.a.b.t r13 = (i.a.b.t) r13
            java.lang.Object r14 = r1.L$0
            c.c.a.b.f.a.a r14 = (c.c.a.b.f.a.a) r14
            h.e.a((java.lang.Object) r25)     // Catch:{ Throwable -> 0x00ef, all -> 0x00c0 }
            r5 = r2
            r3 = 2
            r2 = r1
            r22 = r14
            r14 = r0
            r0 = r12
            r12 = r13
            r13 = r22
            r23 = r10
            r10 = r9
            r9 = r23
            goto L_0x0272
        L_0x00c0:
            r0 = move-exception
            r9 = r10
            goto L_0x02bc
        L_0x00c4:
            java.lang.Object r2 = r1.L$6
            i.a.b.k r2 = (i.a.b.k) r2
            java.lang.Object r8 = r1.L$5
            i.a.b.t r8 = (i.a.b.t) r8
            java.lang.Object r9 = r1.L$4
            java.lang.Throwable r9 = (java.lang.Throwable) r9
            java.lang.Object r10 = r1.L$3
            r11 = r10
            i.a.b.t r11 = (i.a.b.t) r11
            java.lang.Object r10 = r1.L$2
            com.farsitel.bazaar.app.download.DownloadService$listenOnAppStatus$1 r10 = (com.farsitel.bazaar.app.download.DownloadService$listenOnAppStatus$1) r10
            java.lang.Object r12 = r1.L$1
            i.a.b.t r12 = (i.a.b.t) r12
            java.lang.Object r13 = r1.L$0
            c.c.a.b.f.a.a r13 = (c.c.a.b.f.a.a) r13
            h.e.a((java.lang.Object) r25)     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r15 = r25
            r14 = r0
            r0 = r10
            r10 = r8
            r8 = r2
            r2 = r1
            goto L_0x0138
        L_0x00ec:
            r0 = move-exception
            goto L_0x02bc
        L_0x00ef:
            r0 = move-exception
            r7 = r0
            goto L_0x02bb
        L_0x00f3:
            h.e.a((java.lang.Object) r25)
            i.a.H r2 = r1.p$
            c.c.a.b.f.a.a r2 = new c.c.a.b.f.a.a
            com.farsitel.bazaar.app.download.DownloadService r8 = r1.this$0
            android.content.Context r8 = r8.getBaseContext()
            java.lang.String r9 = "baseContext"
            h.f.b.j.a((java.lang.Object) r8, (java.lang.String) r9)
            com.farsitel.bazaar.common.model.ui.AppDownloaderModel r9 = r1.$appDownloadModel
            r2.<init>(r8, r9)
            i.a.b.t r11 = r1.$stateChannel
            if (r11 == 0) goto L_0x02c0
            i.a.b.k r8 = r11.iterator()     // Catch:{ Throwable -> 0x00ef }
            r14 = r0
            r0 = r1
            r9 = r2
            r12 = r7
            r10 = r11
            r13 = r10
            r2 = r0
        L_0x0119:
            r2.L$0 = r9     // Catch:{ Throwable -> 0x02b4, all -> 0x02b0 }
            r2.L$1 = r11     // Catch:{ Throwable -> 0x02b4, all -> 0x02b0 }
            r2.L$2 = r0     // Catch:{ Throwable -> 0x02b4, all -> 0x02b0 }
            r2.L$3 = r10     // Catch:{ Throwable -> 0x02b4, all -> 0x02b0 }
            r2.L$4 = r12     // Catch:{ Throwable -> 0x02b4, all -> 0x02b0 }
            r2.L$5 = r13     // Catch:{ Throwable -> 0x02b4, all -> 0x02b0 }
            r2.L$6 = r8     // Catch:{ Throwable -> 0x02b4, all -> 0x02b0 }
            r2.label = r6     // Catch:{ Throwable -> 0x02b4, all -> 0x02b0 }
            java.lang.Object r15 = r8.a(r0)     // Catch:{ Throwable -> 0x02b4, all -> 0x02b0 }
            if (r15 != r14) goto L_0x0130
            return r14
        L_0x0130:
            r22 = r13
            r13 = r9
            r9 = r12
            r12 = r11
            r11 = r10
            r10 = r22
        L_0x0138:
            java.lang.Boolean r15 = (java.lang.Boolean) r15     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            boolean r15 = r15.booleanValue()     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            if (r15 == 0) goto L_0x02aa
            java.lang.Object r15 = r8.next()     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r5 = r15
            com.farsitel.bazaar.common.model.DownloadStatus r5 = (com.farsitel.bazaar.common.model.DownloadStatus) r5     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            int[] r16 = c.c.a.b.b.a.f4549a     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            int r17 = r5.ordinal()     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r16 = r16[r17]     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            switch(r16) {
                case 1: goto L_0x023a;
                case 2: goto L_0x01e9;
                case 3: goto L_0x01e9;
                case 4: goto L_0x0194;
                case 5: goto L_0x0180;
                case 6: goto L_0x0157;
                case 7: goto L_0x0157;
                case 8: goto L_0x0157;
                default: goto L_0x0152;
            }     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
        L_0x0152:
            r3 = 2
            c.c.a.c.c.a r15 = c.c.a.c.c.a.f4699b     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            goto L_0x027b
        L_0x0157:
            com.farsitel.bazaar.app.download.DownloadService r15 = r2.this$0     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            com.farsitel.bazaar.app.download.DownloadServiceNotifyType$a r4 = com.farsitel.bazaar.app.download.DownloadServiceNotifyType.Companion     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            com.farsitel.bazaar.app.download.DownloadServiceNotifyType r4 = r4.a(r5)     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            com.farsitel.bazaar.common.model.ui.AppDownloaderModel r3 = r2.$appDownloadModel     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            java.lang.String r3 = r3.getPackageName()     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r15.a((com.farsitel.bazaar.app.download.DownloadServiceNotifyType) r4, (java.lang.String) r3, (java.lang.Boolean) r7)     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            c.c.a.b.f.h r3 = c.c.a.b.f.h.f4687h     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            com.farsitel.bazaar.app.notification.NotificationType r4 = com.farsitel.bazaar.app.notification.NotificationType.APP_DOWNLOAD_PROGRESS     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            com.farsitel.bazaar.common.model.ui.AppDownloaderModel r15 = r2.$appDownloadModel     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            java.lang.String r15 = r15.getPackageName()     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r3.a(r4, r15)     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            com.farsitel.bazaar.app.download.DownloadService r3 = r2.this$0     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r3.stopForeground(r6)     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            com.farsitel.bazaar.app.download.DownloadService r3 = r2.this$0     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r3.stopSelf()     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            goto L_0x0191
        L_0x0180:
            com.farsitel.bazaar.app.download.DownloadService r3 = r2.this$0     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            com.farsitel.bazaar.app.download.DownloadServiceNotifyType$a r4 = com.farsitel.bazaar.app.download.DownloadServiceNotifyType.Companion     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            com.farsitel.bazaar.app.download.DownloadServiceNotifyType r4 = r4.a(r5)     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            com.farsitel.bazaar.common.model.ui.AppDownloaderModel r15 = r2.$appDownloadModel     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            java.lang.String r15 = r15.getPackageName()     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r3.a((com.farsitel.bazaar.app.download.DownloadServiceNotifyType) r4, (java.lang.String) r15, (java.lang.Boolean) r7)     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
        L_0x0191:
            r4 = 3
            goto L_0x0272
        L_0x0194:
            com.farsitel.bazaar.app.download.DownloadService r3 = r2.this$0     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            com.farsitel.bazaar.app.download.DownloadServiceNotifyType r4 = com.farsitel.bazaar.app.download.DownloadServiceNotifyType.SUCCESS_DOWNLOAD     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            com.farsitel.bazaar.common.model.ui.AppDownloaderModel r6 = r2.$appDownloadModel     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            java.lang.String r6 = r6.getPackageName()     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            com.farsitel.bazaar.common.model.ui.AppDownloaderModel r7 = r2.$appDownloadModel     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            boolean r7 = r7.isFree()     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            java.lang.Boolean r7 = h.c.b.a.a.a((boolean) r7)     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r3.a((com.farsitel.bazaar.app.download.DownloadServiceNotifyType) r4, (java.lang.String) r6, (java.lang.Boolean) r7)     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r13.d()     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            com.farsitel.bazaar.app.download.DownloadService$listenOnAppStatus$1$invokeSuspend$$inlined$consumeEach$lambda$3 r3 = new com.farsitel.bazaar.app.download.DownloadService$listenOnAppStatus$1$invokeSuspend$$inlined$consumeEach$lambda$3     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r4 = 0
            r3.<init>(r4, r2, r13)     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r2.L$0 = r13     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r2.L$1 = r12     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r2.L$2 = r0     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r2.L$3 = r11     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r2.L$4 = r9     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r2.L$5 = r10     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r2.L$6 = r8     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r2.L$7 = r15     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r2.L$8 = r5     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r4 = 4
            r2.label = r4     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            java.lang.Object r3 = c.c.a.c.a.a.a(r3, r2)     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            if (r3 != r14) goto L_0x01d0
            return r14
        L_0x01d0:
            r7 = r9
            r9 = r10
        L_0x01d2:
            com.farsitel.bazaar.app.download.DownloadService r3 = r2.this$0     // Catch:{ Throwable -> 0x00ef }
            r6 = 1
            r3.stopForeground(r6)     // Catch:{ Throwable -> 0x00ef }
            com.farsitel.bazaar.app.download.DownloadService r3 = r2.this$0     // Catch:{ Throwable -> 0x00ef }
            r3.stopSelf()     // Catch:{ Throwable -> 0x00ef }
            r10 = r11
            r11 = r12
            r4 = 3
            r12 = r7
            r7 = 0
            r22 = r13
            r13 = r9
            r9 = r22
            goto L_0x0298
        L_0x01e9:
            r4 = 4
            com.farsitel.bazaar.app.download.DownloadService r3 = r2.this$0     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            com.farsitel.bazaar.app.download.DownloadServiceNotifyType r7 = com.farsitel.bazaar.app.download.DownloadServiceNotifyType.DOWNLOADING     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            com.farsitel.bazaar.common.model.ui.AppDownloaderModel r4 = r2.$appDownloadModel     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            java.lang.String r4 = r4.getPackageName()     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            com.farsitel.bazaar.common.model.ui.AppDownloaderModel r6 = r2.$appDownloadModel     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            boolean r6 = r6.isFree()     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            java.lang.Boolean r6 = h.c.b.a.a.a((boolean) r6)     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r3.a((com.farsitel.bazaar.app.download.DownloadServiceNotifyType) r7, (java.lang.String) r4, (java.lang.Boolean) r6)     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            com.farsitel.bazaar.app.download.DownloadService r3 = r2.this$0     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            com.farsitel.bazaar.common.model.ui.AppDownloaderModel r4 = r2.$appDownloadModel     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            java.lang.String r17 = r4.getPackageName()     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r19 = 0
            r20 = 4
            r21 = 0
            r16 = r3
            r18 = r13
            com.farsitel.bazaar.app.download.DownloadService.a((com.farsitel.bazaar.app.download.DownloadService) r16, (java.lang.String) r17, (c.c.a.b.f.a.b) r18, (com.farsitel.bazaar.data.feature.download.DownloadManager) r19, (int) r20, (java.lang.Object) r21)     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            com.farsitel.bazaar.app.download.DownloadService$listenOnAppStatus$1$invokeSuspend$$inlined$consumeEach$lambda$2 r3 = new com.farsitel.bazaar.app.download.DownloadService$listenOnAppStatus$1$invokeSuspend$$inlined$consumeEach$lambda$2     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r4 = 0
            r3.<init>(r4, r2, r13)     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r2.L$0 = r13     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r2.L$1 = r12     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r2.L$2 = r0     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r2.L$3 = r11     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r2.L$4 = r9     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r2.L$5 = r10     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r2.L$6 = r8     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r2.L$7 = r15     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r2.L$8 = r5     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r4 = 3
            r2.label = r4     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            java.lang.Object r3 = c.c.a.c.a.a.a(r3, r2)     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            if (r3 != r14) goto L_0x0238
            return r14
        L_0x0238:
            r7 = 0
            goto L_0x0272
        L_0x023a:
            com.farsitel.bazaar.common.model.ui.AppDownloaderModel r3 = r2.$appDownloadModel     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            java.lang.String r3 = r3.getPackageName()     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r6 = -1
            android.app.Notification r3 = r13.a(r3, r6)     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            com.farsitel.bazaar.app.download.DownloadService r6 = r2.this$0     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            int r7 = r13.a()     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r6.startForeground(r7, r3)     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            com.farsitel.bazaar.app.download.DownloadService$listenOnAppStatus$1$invokeSuspend$$inlined$consumeEach$lambda$1 r6 = new com.farsitel.bazaar.app.download.DownloadService$listenOnAppStatus$1$invokeSuspend$$inlined$consumeEach$lambda$1     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r7 = 0
            r6.<init>(r7, r2, r13)     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r2.L$0 = r13     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r2.L$1 = r12     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r2.L$2 = r0     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r2.L$3 = r11     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r2.L$4 = r9     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r2.L$5 = r10     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r2.L$6 = r8     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r2.L$7 = r15     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r2.L$8 = r5     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r2.L$9 = r3     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r3 = 2
            r2.label = r3     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            java.lang.Object r6 = c.c.a.c.a.a.a(r6, r2)     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            if (r6 != r14) goto L_0x0272
            return r14
        L_0x0272:
            r22 = r12
            r12 = r9
            r9 = r13
            r13 = r10
            r10 = r11
            r11 = r22
            goto L_0x0298
        L_0x027b:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r6.<init>()     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            java.lang.String r3 = "new app download state received "
            r6.append(r3)     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r6.append(r5)     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            java.lang.String r16 = r6.toString()     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            r17 = 0
            r18 = 0
            r19 = 6
            r20 = 0
            c.c.a.c.c.a.b(r15, r16, r17, r18, r19, r20)     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            goto L_0x0272
        L_0x0298:
            com.farsitel.bazaar.app.download.DownloadService r3 = r2.this$0     // Catch:{ Throwable -> 0x02b4, all -> 0x02b0 }
            com.farsitel.bazaar.app.download.DownloadServiceNotifyType$a r6 = com.farsitel.bazaar.app.download.DownloadServiceNotifyType.Companion     // Catch:{ Throwable -> 0x02b4, all -> 0x02b0 }
            com.farsitel.bazaar.app.download.DownloadServiceNotifyType r5 = r6.a(r5)     // Catch:{ Throwable -> 0x02b4, all -> 0x02b0 }
            com.farsitel.bazaar.common.model.ui.AppDownloaderModel r6 = r2.$appDownloadModel     // Catch:{ Throwable -> 0x02b4, all -> 0x02b0 }
            r3.a((com.farsitel.bazaar.app.download.DownloadServiceNotifyType) r5, (com.farsitel.bazaar.common.model.ui.AppDownloaderModel) r6)     // Catch:{ Throwable -> 0x02b4, all -> 0x02b0 }
            r3 = 4
            r5 = 2
            r6 = 1
            goto L_0x0119
        L_0x02aa:
            h.h r0 = h.h.f14579a     // Catch:{ Throwable -> 0x00ef, all -> 0x00ec }
            i.a.b.m.a(r11, r9)
            goto L_0x02c7
        L_0x02b0:
            r0 = move-exception
            r11 = r10
            r9 = r12
            goto L_0x02bc
        L_0x02b4:
            r0 = move-exception
            r7 = r0
            r11 = r10
            goto L_0x02bb
        L_0x02b8:
            r0 = move-exception
            r9 = r7
            goto L_0x02bc
        L_0x02bb:
            throw r7     // Catch:{ all -> 0x02b8 }
        L_0x02bc:
            i.a.b.m.a(r11, r9)
            throw r0
        L_0x02c0:
            com.farsitel.bazaar.app.download.DownloadService r0 = r1.this$0
            com.farsitel.bazaar.common.model.ui.AppDownloaderModel r2 = r1.$appDownloadModel
            r0.a((com.farsitel.bazaar.common.model.ui.AppDownloaderModel) r2)
        L_0x02c7:
            h.h r0 = h.h.f14579a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.app.download.DownloadService$listenOnAppStatus$1.d(java.lang.Object):java.lang.Object");
    }
}
