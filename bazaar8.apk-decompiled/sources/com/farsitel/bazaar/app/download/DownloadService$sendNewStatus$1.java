package com.farsitel.bazaar.app.download;

import c.c.a.c.a.a;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.app.download.DownloadService$sendNewStatus$1", f = "DownloadService.kt", l = {426}, m = "invokeSuspend")
/* compiled from: DownloadService.kt */
final class DownloadService$sendNewStatus$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ Boolean $isFree;
    public final /* synthetic */ DownloadServiceNotifyType $notifyType;
    public final /* synthetic */ String $packageName;
    public int label;
    public H p$;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public DownloadService$sendNewStatus$1(DownloadServiceNotifyType downloadServiceNotifyType, String str, Boolean bool, b bVar) {
        super(2, bVar);
        this.$notifyType = downloadServiceNotifyType;
        this.$packageName = str;
        this.$isFree = bool;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        DownloadService$sendNewStatus$1 downloadService$sendNewStatus$1 = new DownloadService$sendNewStatus$1(this.$notifyType, this.$packageName, this.$isFree, bVar);
        downloadService$sendNewStatus$1.p$ = (H) obj;
        return downloadService$sendNewStatus$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((DownloadService$sendNewStatus$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            i.a.b.h b2 = DownloadService.f12107a;
            c.c.a.b.b.b bVar = new c.c.a.b.b.b(this.$notifyType, this.$packageName, this.$isFree);
            this.label = 1;
            if (a.a(b2, bVar, (b<? super h>) this) == a2) {
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
