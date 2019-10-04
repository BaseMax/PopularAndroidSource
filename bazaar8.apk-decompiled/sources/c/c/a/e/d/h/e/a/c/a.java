package c.c.a.e.d.h.e.a.c;

import c.c.a.e.d.h.e.a.a.k;
import c.c.a.e.d.h.e.a.a.n;
import c.c.a.e.d.h.e.a.c.a.b;
import h.f.b.j;

/* compiled from: SubmitVideoDownloadRepository.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final b f5133a;

    /* renamed from: b  reason: collision with root package name */
    public final k f5134b;

    /* renamed from: c  reason: collision with root package name */
    public final n f5135c;

    public a(b bVar, k kVar, n nVar) {
        j.b(bVar, "submitVideoDownloadRemoteDataSource");
        j.b(kVar, "videoDownloadLocalDataSource");
        j.b(nVar, "videoStorage");
        this.f5133a = bVar;
        this.f5134b = kVar;
        this.f5135c = nVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x0063  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00d1 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0025  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object a(java.lang.String r8, h.c.b<? super com.farsitel.bazaar.data.entity.Either<com.farsitel.bazaar.data.entity.SubmitVideoDownload>> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.farsitel.bazaar.data.feature.cinema.video.download.submit.SubmitVideoDownloadRepository$submitVideoDownload$1
            if (r0 == 0) goto L_0x0013
            r0 = r9
            com.farsitel.bazaar.data.feature.cinema.video.download.submit.SubmitVideoDownloadRepository$submitVideoDownload$1 r0 = (com.farsitel.bazaar.data.feature.cinema.video.download.submit.SubmitVideoDownloadRepository$submitVideoDownload$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.cinema.video.download.submit.SubmitVideoDownloadRepository$submitVideoDownload$1 r0 = new com.farsitel.bazaar.data.feature.cinema.video.download.submit.SubmitVideoDownloadRepository$submitVideoDownload$1
            r0.<init>(r7, r9)
        L_0x0018:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L_0x0063
            if (r2 == r5) goto L_0x0057
            if (r2 == r4) goto L_0x0045
            if (r2 != r3) goto L_0x003d
            java.lang.Object r8 = r0.L$2
            com.farsitel.bazaar.data.entity.Either r8 = (com.farsitel.bazaar.data.entity.Either) r8
            java.lang.Object r1 = r0.L$1
            java.lang.String r1 = (java.lang.String) r1
            java.lang.Object r0 = r0.L$0
            c.c.a.e.d.h.e.a.c.a r0 = (c.c.a.e.d.h.e.a.c.a) r0
            h.e.a((java.lang.Object) r9)
            r9 = r8
            goto L_0x00d2
        L_0x003d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L_0x0045:
            java.lang.Object r8 = r0.L$2
            com.farsitel.bazaar.data.entity.Either r8 = (com.farsitel.bazaar.data.entity.Either) r8
            java.lang.Object r1 = r0.L$1
            java.lang.String r1 = (java.lang.String) r1
            java.lang.Object r0 = r0.L$0
            c.c.a.e.d.h.e.a.c.a r0 = (c.c.a.e.d.h.e.a.c.a) r0
            h.e.a((java.lang.Object) r9)
            r9 = r8
            r8 = r1
            goto L_0x009d
        L_0x0057:
            java.lang.Object r8 = r0.L$1
            java.lang.String r8 = (java.lang.String) r8
            java.lang.Object r2 = r0.L$0
            c.c.a.e.d.h.e.a.c.a r2 = (c.c.a.e.d.h.e.a.c.a) r2
            h.e.a((java.lang.Object) r9)
            goto L_0x0076
        L_0x0063:
            h.e.a((java.lang.Object) r9)
            c.c.a.e.d.h.e.a.c.a.b r9 = r7.f5133a
            r0.L$0 = r7
            r0.L$1 = r8
            r0.label = r5
            java.lang.Object r9 = r9.a(r8, r0)
            if (r9 != r1) goto L_0x0075
            return r1
        L_0x0075:
            r2 = r7
        L_0x0076:
            com.farsitel.bazaar.data.entity.Either r9 = (com.farsitel.bazaar.data.entity.Either) r9
            boolean r5 = r9 instanceof com.farsitel.bazaar.data.entity.Either.Success
            if (r5 == 0) goto L_0x00b0
            r6 = r9
            com.farsitel.bazaar.data.entity.Either$Success r6 = (com.farsitel.bazaar.data.entity.Either.Success) r6
            java.lang.Object r6 = r6.getValue()
            com.farsitel.bazaar.data.entity.SubmitVideoDownload r6 = (com.farsitel.bazaar.data.entity.SubmitVideoDownload) r6
            boolean r6 = r6.getKeepDownloadedFile()
            if (r6 != 0) goto L_0x00b0
            c.c.a.e.d.h.e.a.a.k r3 = r2.f5134b
            r0.L$0 = r2
            r0.L$1 = r8
            r0.L$2 = r9
            r0.label = r4
            java.lang.Object r0 = r3.a((java.lang.String) r8, (h.c.b<? super h.h>) r0)
            if (r0 != r1) goto L_0x009c
            return r1
        L_0x009c:
            r0 = r2
        L_0x009d:
            c.c.a.e.d.h.e.a.a.n r0 = r0.f5135c
            java.io.File r8 = r0.d(r8)
            java.io.File r8 = r8.getParentFile()
            java.lang.String r0 = "videoFile.parentFile"
            h.f.b.j.a((java.lang.Object) r8, (java.lang.String) r0)
            h.e.h.b(r8)
            goto L_0x00d2
        L_0x00b0:
            if (r5 == 0) goto L_0x00d2
            r4 = r9
            com.farsitel.bazaar.data.entity.Either$Success r4 = (com.farsitel.bazaar.data.entity.Either.Success) r4
            java.lang.Object r4 = r4.getValue()
            com.farsitel.bazaar.data.entity.SubmitVideoDownload r4 = (com.farsitel.bazaar.data.entity.SubmitVideoDownload) r4
            boolean r4 = r4.getKeepDownloadedFile()
            if (r4 == 0) goto L_0x00d2
            c.c.a.e.d.h.e.a.a.k r4 = r2.f5134b
            r0.L$0 = r2
            r0.L$1 = r8
            r0.L$2 = r9
            r0.label = r3
            java.lang.Object r8 = r4.c(r8, r0)
            if (r8 != r1) goto L_0x00d2
            return r1
        L_0x00d2:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.h.e.a.c.a.a(java.lang.String, h.c.b):java.lang.Object");
    }
}
