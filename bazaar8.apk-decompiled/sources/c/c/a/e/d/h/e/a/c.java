package c.c.a.e.d.h.e.a;

import androidx.lifecycle.LiveData;
import c.c.a.e.d.h.e.a.a.k;
import c.c.a.e.d.h.e.a.a.n;
import com.farsitel.bazaar.common.model.DownloadedVideoModel;
import h.c.b;
import h.f.b.j;
import h.h;

/* compiled from: VideoDownloadedRepository.kt */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final k f5131a;

    /* renamed from: b  reason: collision with root package name */
    public final n f5132b;

    public c(k kVar, n nVar) {
        j.b(kVar, "videoDownloadLocalDataSource");
        j.b(nVar, "videoStorage");
        this.f5131a = kVar;
        this.f5132b = nVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0035  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object a(h.c.b<? super com.farsitel.bazaar.data.entity.Either<? extends androidx.lifecycle.LiveData<java.util.List<com.farsitel.bazaar.common.model.DownloadedVideoModel>>>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.farsitel.bazaar.data.feature.cinema.video.download.VideoDownloadedRepository$getAll$1
            if (r0 == 0) goto L_0x0013
            r0 = r5
            com.farsitel.bazaar.data.feature.cinema.video.download.VideoDownloadedRepository$getAll$1 r0 = (com.farsitel.bazaar.data.feature.cinema.video.download.VideoDownloadedRepository$getAll$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.cinema.video.download.VideoDownloadedRepository$getAll$1 r0 = new com.farsitel.bazaar.data.feature.cinema.video.download.VideoDownloadedRepository$getAll$1
            r0.<init>(r4, r5)
        L_0x0018:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L_0x0035
            if (r2 != r3) goto L_0x002d
            java.lang.Object r0 = r0.L$0
            c.c.a.e.d.h.e.a.c r0 = (c.c.a.e.d.h.e.a.c) r0
            h.e.a((java.lang.Object) r5)
            goto L_0x0045
        L_0x002d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L_0x0035:
            h.e.a((java.lang.Object) r5)
            c.c.a.e.d.h.e.a.a.k r5 = r4.f5131a
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r5 = r5.a((h.c.b<? super androidx.lifecycle.LiveData<java.util.List<com.farsitel.bazaar.common.model.DownloadedVideoModel>>>) r0)
            if (r5 != r1) goto L_0x0045
            return r1
        L_0x0045:
            com.farsitel.bazaar.data.entity.Either$Success r0 = new com.farsitel.bazaar.data.entity.Either$Success
            r0.<init>(r5)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.h.e.a.c.a(h.c.b):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x004c  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x006c  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0024  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object b(h.c.b<? super h.h> r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof com.farsitel.bazaar.data.feature.cinema.video.download.VideoDownloadedRepository$removeAllExpireDownloadedVideo$1
            if (r0 == 0) goto L_0x0013
            r0 = r7
            com.farsitel.bazaar.data.feature.cinema.video.download.VideoDownloadedRepository$removeAllExpireDownloadedVideo$1 r0 = (com.farsitel.bazaar.data.feature.cinema.video.download.VideoDownloadedRepository$removeAllExpireDownloadedVideo$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.cinema.video.download.VideoDownloadedRepository$removeAllExpireDownloadedVideo$1 r0 = new com.farsitel.bazaar.data.feature.cinema.video.download.VideoDownloadedRepository$removeAllExpireDownloadedVideo$1
            r0.<init>(r6, r7)
        L_0x0018:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L_0x004c
            if (r2 == r4) goto L_0x0044
            if (r2 != r3) goto L_0x003c
            java.lang.Object r2 = r0.L$3
            java.util.Iterator r2 = (java.util.Iterator) r2
            java.lang.Object r4 = r0.L$2
            java.lang.String r4 = (java.lang.String) r4
            java.lang.Object r4 = r0.L$1
            java.util.List r4 = (java.util.List) r4
            java.lang.Object r5 = r0.L$0
            c.c.a.e.d.h.e.a.c r5 = (c.c.a.e.d.h.e.a.c) r5
            h.e.a((java.lang.Object) r7)
            goto L_0x0066
        L_0x003c:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L_0x0044:
            java.lang.Object r2 = r0.L$0
            c.c.a.e.d.h.e.a.c r2 = (c.c.a.e.d.h.e.a.c) r2
            h.e.a((java.lang.Object) r7)
            goto L_0x005d
        L_0x004c:
            h.e.a((java.lang.Object) r7)
            c.c.a.e.d.h.e.a.a.k r7 = r6.f5131a
            r0.L$0 = r6
            r0.label = r4
            java.lang.Object r7 = r7.b(r0)
            if (r7 != r1) goto L_0x005c
            return r1
        L_0x005c:
            r2 = r6
        L_0x005d:
            java.util.List r7 = (java.util.List) r7
            java.util.Iterator r4 = r7.iterator()
            r5 = r2
            r2 = r4
            r4 = r7
        L_0x0066:
            boolean r7 = r2.hasNext()
            if (r7 == 0) goto L_0x0083
            java.lang.Object r7 = r2.next()
            java.lang.String r7 = (java.lang.String) r7
            r0.L$0 = r5
            r0.L$1 = r4
            r0.L$2 = r7
            r0.L$3 = r2
            r0.label = r3
            java.lang.Object r7 = r5.a((java.lang.String) r7, (h.c.b<? super h.h>) r0)
            if (r7 != r1) goto L_0x0066
            return r1
        L_0x0083:
            h.h r7 = h.h.f14579a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.h.e.a.c.b(h.c.b):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0039  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object a(java.lang.String r5, h.c.b<? super h.h> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.farsitel.bazaar.data.feature.cinema.video.download.VideoDownloadedRepository$removeVideoFromDevice$1
            if (r0 == 0) goto L_0x0013
            r0 = r6
            com.farsitel.bazaar.data.feature.cinema.video.download.VideoDownloadedRepository$removeVideoFromDevice$1 r0 = (com.farsitel.bazaar.data.feature.cinema.video.download.VideoDownloadedRepository$removeVideoFromDevice$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.cinema.video.download.VideoDownloadedRepository$removeVideoFromDevice$1 r0 = new com.farsitel.bazaar.data.feature.cinema.video.download.VideoDownloadedRepository$removeVideoFromDevice$1
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
            java.lang.Object r0 = r0.L$0
            c.c.a.e.d.h.e.a.c r0 = (c.c.a.e.d.h.e.a.c) r0
            h.e.a((java.lang.Object) r6)
            goto L_0x004c
        L_0x0031:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L_0x0039:
            h.e.a((java.lang.Object) r6)
            c.c.a.e.d.h.e.a.a.k r6 = r4.f5131a
            r0.L$0 = r4
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r6 = r6.a((java.lang.String) r5, (h.c.b<? super h.h>) r0)
            if (r6 != r1) goto L_0x004b
            return r1
        L_0x004b:
            r0 = r4
        L_0x004c:
            c.c.a.e.d.h.e.a.a.n r6 = r0.f5132b
            java.io.File r5 = r6.d(r5)
            h.e.h.b(r5)
            h.h r5 = h.h.f14579a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.h.e.a.c.a(java.lang.String, h.c.b):java.lang.Object");
    }

    public final Object a(DownloadedVideoModel downloadedVideoModel, b<? super h> bVar) {
        return this.f5131a.a(downloadedVideoModel, bVar);
    }

    public final LiveData<Boolean> a(String str) {
        j.b(str, "videoId");
        return this.f5131a.a(str);
    }
}
