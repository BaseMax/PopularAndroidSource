package com.farsitel.bazaar.app.managers;

import c.c.a.b.d.o;
import com.farsitel.bazaar.common.model.DownloadedVideoModel;
import com.farsitel.bazaar.common.model.ui.VideoDownloaderModel;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.app.managers.VideoManager$startDownloadEntity$2", f = "VideoManager.kt", l = {39}, m = "invokeSuspend")
/* compiled from: VideoManager.kt */
final class VideoManager$startDownloadEntity$2 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ VideoDownloaderModel $downloadModel;
    public int label;
    public H p$;
    public final /* synthetic */ o this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public VideoManager$startDownloadEntity$2(o oVar, VideoDownloaderModel videoDownloaderModel, b bVar) {
        super(2, bVar);
        this.this$0 = oVar;
        this.$downloadModel = videoDownloaderModel;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        VideoManager$startDownloadEntity$2 videoManager$startDownloadEntity$2 = new VideoManager$startDownloadEntity$2(this.this$0, this.$downloadModel, bVar);
        videoManager$startDownloadEntity$2.p$ = (H) obj;
        return videoManager$startDownloadEntity$2;
    }

    public final Object b(Object obj, Object obj2) {
        return ((VideoManager$startDownloadEntity$2) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            c.c.a.e.d.h.e.a.c a3 = this.this$0.f4606j;
            VideoDownloaderModel videoDownloaderModel = this.$downloadModel;
            String path = this.this$0.f4604h.d(this.$downloadModel.getVideoId()).getPath();
            j.a((Object) path, "videoStorage.getBazaarVi…                   ).path");
            DownloadedVideoModel a4 = c.c.a.b.b.e.a(videoDownloaderModel, path);
            this.label = 1;
            if (a3.a(a4, (b<? super h>) this) == a2) {
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
