package c.c.a.b.d;

import android.content.Context;
import android.content.Intent;
import c.c.a.c.a.b;
import c.c.a.e.d.h.e.a.a.n;
import c.c.a.e.d.h.e.a.c;
import c.c.a.e.d.h.e.a.c.a;
import c.c.a.e.d.i.A;
import com.farsitel.bazaar.app.download.DownloadService;
import com.farsitel.bazaar.common.model.DownloadStatus;
import com.farsitel.bazaar.common.model.DownloaderProgressInfo;
import com.farsitel.bazaar.common.model.ui.CinemaFileState;
import com.farsitel.bazaar.common.model.ui.EntityState;
import com.farsitel.bazaar.common.model.ui.VideoDownloaderModel;
import h.f.b.j;
import h.h;
import i.a.C1103g;
import i.a.C1125ra;
import i.a.b.t;

/* compiled from: VideoManager.kt */
public final class o extends i {

    /* renamed from: g  reason: collision with root package name */
    public final Context f4603g;

    /* renamed from: h  reason: collision with root package name */
    public final n f4604h;

    /* renamed from: i  reason: collision with root package name */
    public final A f4605i;

    /* renamed from: j  reason: collision with root package name */
    public final c f4606j;

    /* renamed from: k  reason: collision with root package name */
    public final a f4607k;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public o(Context context, n nVar, A a2, c cVar, a aVar, d dVar) {
        super(context, a2, dVar);
        j.b(context, "context");
        j.b(nVar, "videoStorage");
        j.b(a2, "downloadManager");
        j.b(cVar, "videoDownloadedRepository");
        j.b(aVar, "submitVideoDownloadRepository");
        j.b(dVar, "downloadStateManager");
        this.f4603g = context;
        this.f4604h = nVar;
        this.f4605i = a2;
        this.f4606j = cVar;
        this.f4607k = aVar;
    }

    public final EntityState l(String str) {
        j.b(str, "videoId");
        t<DownloadStatus> e2 = e(str);
        CinemaFileState a2 = this.f4604h.a(str, this.f4605i.e(str) != null);
        if (e2 != null) {
            return EntityState.DOWNLOADING;
        }
        if (a2 == CinemaFileState.EXISTS) {
            return EntityState.COMPLETED;
        }
        return EntityState.NONE;
    }

    public final t<DownloaderProgressInfo> m(String str) {
        j.b(str, "videoId");
        return this.f4605i.d(str);
    }

    public final void a(VideoDownloaderModel videoDownloaderModel) {
        j.b(videoDownloaderModel, "downloadModel");
        synchronized (b()) {
            if (b(videoDownloaderModel.getVideoId())) {
                h hVar = h.f14579a;
                C1125ra unused = C1103g.b(this, b.f4693c.a().plus(d()), null, new VideoManager$startDownloadEntity$2(this, videoDownloaderModel, null), 2, null);
                Context context = this.f4603g;
                Intent intent = new Intent(context, DownloadService.class);
                intent.setAction("VIDEO_DOWNLOAD");
                intent.putExtras(DownloadService.f12108b.a(videoDownloaderModel));
                context.startService(intent);
                a(videoDownloaderModel.getVideoId(), EntityState.IN_QUEUE);
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0039  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object b(java.lang.String r5, h.c.b<? super h.h> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.farsitel.bazaar.app.managers.VideoManager$submitVideoDownload$1
            if (r0 == 0) goto L_0x0013
            r0 = r6
            com.farsitel.bazaar.app.managers.VideoManager$submitVideoDownload$1 r0 = (com.farsitel.bazaar.app.managers.VideoManager$submitVideoDownload$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.app.managers.VideoManager$submitVideoDownload$1 r0 = new com.farsitel.bazaar.app.managers.VideoManager$submitVideoDownload$1
            r0.<init>(r4, r6)
        L_0x0018:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L_0x0039
            if (r2 != r3) goto L_0x0031
            java.lang.Object r5 = r0.L$1
            java.lang.String r5 = (java.lang.String) r5
            java.lang.Object r5 = r0.L$0
            c.c.a.b.d.o r5 = (c.c.a.b.d.o) r5
            h.e.a((java.lang.Object) r6)
            goto L_0x004b
        L_0x0031:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L_0x0039:
            h.e.a((java.lang.Object) r6)
            c.c.a.e.d.h.e.a.c.a r6 = r4.f4607k
            r0.L$0 = r4
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r5 = r6.a(r5, r0)
            if (r5 != r1) goto L_0x004b
            return r1
        L_0x004b:
            h.h r5 = h.h.f14579a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.b.d.o.b(java.lang.String, h.c.b):java.lang.Object");
    }

    public final Object a(String str, h.c.b<? super h> bVar) {
        return this.f4606j.a(str, bVar);
    }
}
