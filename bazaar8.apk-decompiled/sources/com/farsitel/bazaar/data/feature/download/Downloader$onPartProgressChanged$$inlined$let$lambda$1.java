package com.farsitel.bazaar.data.feature.download;

import c.c.a.c.a.a;
import c.c.a.e.d.i.t;
import com.farsitel.bazaar.common.model.DownloaderProgressInfo;
import h.c.b;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import i.a.b.x;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* compiled from: Downloader.kt */
final class Downloader$onPartProgressChanged$$inlined$let$lambda$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ DownloaderProgressInfo $downloaderProgressInfo;
    public final /* synthetic */ DownloaderProgressInfo $downloaderProgressInfo$inlined;
    public final /* synthetic */ String $entityId$inlined;
    public final /* synthetic */ int $part$inlined;
    public int label;
    public H p$;
    public final /* synthetic */ Downloader this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public Downloader$onPartProgressChanged$$inlined$let$lambda$1(DownloaderProgressInfo downloaderProgressInfo, b bVar, Downloader downloader, int i2, DownloaderProgressInfo downloaderProgressInfo2, String str) {
        super(2, bVar);
        this.$downloaderProgressInfo = downloaderProgressInfo;
        this.this$0 = downloader;
        this.$part$inlined = i2;
        this.$downloaderProgressInfo$inlined = downloaderProgressInfo2;
        this.$entityId$inlined = str;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        Downloader$onPartProgressChanged$$inlined$let$lambda$1 downloader$onPartProgressChanged$$inlined$let$lambda$1 = new Downloader$onPartProgressChanged$$inlined$let$lambda$1(this.$downloaderProgressInfo, bVar, this.this$0, this.$part$inlined, this.$downloaderProgressInfo$inlined, this.$entityId$inlined);
        downloader$onPartProgressChanged$$inlined$let$lambda$1.p$ = (H) obj;
        return downloader$onPartProgressChanged$$inlined$let$lambda$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((Downloader$onPartProgressChanged$$inlined$let$lambda$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            t tVar = (t) this.this$0.f12246a.get(this.$entityId$inlined);
            if (tVar != null) {
                x<DownloaderProgressInfo> e2 = tVar.e();
                if (e2 != null) {
                    DownloaderProgressInfo downloaderProgressInfo = this.$downloaderProgressInfo;
                    this.label = 1;
                    obj = a.a(e2, downloaderProgressInfo, (b<? super h>) this);
                    if (obj == a2) {
                        return a2;
                    }
                }
            }
            return h.f14579a;
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        h hVar = (h) obj;
        return h.f14579a;
    }
}
