package com.farsitel.bazaar.data.feature.download;

import c.c.a.c.a.a;
import c.c.a.e.d.i.A;
import c.c.a.e.g.g;
import com.farsitel.bazaar.common.model.DownloadStatus;
import h.c.b;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import i.a.b.p;
import kotlin.coroutines.jvm.internal.SuspendLambda;

/* compiled from: VideoDownloadManager.kt */
final class VideoDownloadManager$downloadCompleted$$inlined$let$lambda$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ String $entityId$inlined;
    public int label;
    public H p$;
    public final /* synthetic */ A this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoDownloadManager$downloadCompleted$$inlined$let$lambda$1(b bVar, A a2, String str) {
        super(2, bVar);
        this.this$0 = a2;
        this.$entityId$inlined = str;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        VideoDownloadManager$downloadCompleted$$inlined$let$lambda$1 videoDownloadManager$downloadCompleted$$inlined$let$lambda$1 = new VideoDownloadManager$downloadCompleted$$inlined$let$lambda$1(bVar, this.this$0, this.$entityId$inlined);
        videoDownloadManager$downloadCompleted$$inlined$let$lambda$1.p$ = (H) obj;
        return videoDownloadManager$downloadCompleted$$inlined$let$lambda$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((VideoDownloadManager$downloadCompleted$$inlined$let$lambda$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            g gVar = (g) this.this$0.f5148k.get(this.$entityId$inlined);
            if (gVar != null) {
                p<DownloadStatus> c2 = gVar.c();
                if (c2 != null) {
                    DownloadStatus downloadStatus = DownloadStatus.CHECKING;
                    this.label = 1;
                    obj = a.a(c2, downloadStatus, (b<? super h>) this);
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
