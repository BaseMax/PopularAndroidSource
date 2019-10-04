package com.farsitel.bazaar.data.model;

import c.c.a.c.a.a;
import com.farsitel.bazaar.common.model.DownloadStatus;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import i.a.b.p;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.data.model.DownloadInfoModel$sendStatus$1", f = "DownloadModel.kt", l = {80}, m = "invokeSuspend")
/* compiled from: DownloadModel.kt */
final class DownloadInfoModel$sendStatus$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ DownloadStatus $status;
    public int label;
    public H p$;
    public final /* synthetic */ c.c.a.e.g.c this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public DownloadInfoModel$sendStatus$1(c.c.a.e.g.c cVar, DownloadStatus downloadStatus, b bVar) {
        super(2, bVar);
        this.this$0 = cVar;
        this.$status = downloadStatus;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        DownloadInfoModel$sendStatus$1 downloadInfoModel$sendStatus$1 = new DownloadInfoModel$sendStatus$1(this.this$0, this.$status, bVar);
        downloadInfoModel$sendStatus$1.p$ = (H) obj;
        return downloadInfoModel$sendStatus$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((DownloadInfoModel$sendStatus$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            p<DownloadStatus> p = this.this$0.p();
            DownloadStatus downloadStatus = this.$status;
            this.label = 1;
            if (a.a(p, downloadStatus, (b<? super h>) this) == a2) {
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
