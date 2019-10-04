package com.farsitel.bazaar.app.download;

import c.c.a.b.f.a.a;
import c.c.a.e.d.b.C0383m;
import com.farsitel.bazaar.data.entity.DownloadedApp;
import h.c.b;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* compiled from: DownloadService.kt */
final class DownloadService$listenOnAppStatus$1$invokeSuspend$$inlined$consumeEach$lambda$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ a $appDownloadNotification$inlined;
    public int label;
    public H p$;
    public final /* synthetic */ DownloadService$listenOnAppStatus$1 this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public DownloadService$listenOnAppStatus$1$invokeSuspend$$inlined$consumeEach$lambda$1(b bVar, DownloadService$listenOnAppStatus$1 downloadService$listenOnAppStatus$1, a aVar) {
        super(2, bVar);
        this.this$0 = downloadService$listenOnAppStatus$1;
        this.$appDownloadNotification$inlined = aVar;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        DownloadService$listenOnAppStatus$1$invokeSuspend$$inlined$consumeEach$lambda$1 downloadService$listenOnAppStatus$1$invokeSuspend$$inlined$consumeEach$lambda$1 = new DownloadService$listenOnAppStatus$1$invokeSuspend$$inlined$consumeEach$lambda$1(bVar, this.this$0, this.$appDownloadNotification$inlined);
        downloadService$listenOnAppStatus$1$invokeSuspend$$inlined$consumeEach$lambda$1.p$ = (H) obj;
        return downloadService$listenOnAppStatus$1$invokeSuspend$$inlined$consumeEach$lambda$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((DownloadService$listenOnAppStatus$1$invokeSuspend$$inlined$consumeEach$lambda$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            C0383m d2 = this.this$0.this$0.d();
            DownloadedApp a3 = c.c.a.b.b.e.a(this.this$0.$appDownloadModel);
            this.label = 1;
            if (d2.a(a3, this) == a2) {
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
