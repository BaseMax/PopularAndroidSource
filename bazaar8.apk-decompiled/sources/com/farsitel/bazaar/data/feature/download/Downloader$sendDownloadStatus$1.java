package com.farsitel.bazaar.data.feature.download;

import c.c.a.c.a.a;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import i.a.b.x;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.data.feature.download.Downloader$sendDownloadStatus$1", f = "Downloader.kt", l = {382}, m = "invokeSuspend")
/* compiled from: Downloader.kt */
final class Downloader$sendDownloadStatus$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ DownloaderDownloadStatus $downloadState;
    public final /* synthetic */ x $downloadStatus;
    public int label;
    public H p$;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public Downloader$sendDownloadStatus$1(x xVar, DownloaderDownloadStatus downloaderDownloadStatus, b bVar) {
        super(2, bVar);
        this.$downloadStatus = xVar;
        this.$downloadState = downloaderDownloadStatus;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        Downloader$sendDownloadStatus$1 downloader$sendDownloadStatus$1 = new Downloader$sendDownloadStatus$1(this.$downloadStatus, this.$downloadState, bVar);
        downloader$sendDownloadStatus$1.p$ = (H) obj;
        return downloader$sendDownloadStatus$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((Downloader$sendDownloadStatus$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            x xVar = this.$downloadStatus;
            DownloaderDownloadStatus downloaderDownloadStatus = this.$downloadState;
            this.label = 1;
            if (a.a(xVar, downloaderDownloadStatus, (b<? super h>) this) == a2) {
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
