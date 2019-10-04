package c.c.a.e.d.h.e.a;

import c.c.a.e.d.h.e.a.a.k;
import c.c.a.e.d.h.e.a.b.e;
import com.farsitel.bazaar.common.model.DownloadedVideoModel;
import h.c.b;
import h.f.b.j;

/* compiled from: VideoDownloadRepository.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final e f5105a;

    /* renamed from: b  reason: collision with root package name */
    public final k f5106b;

    public a(e eVar, k kVar) {
        j.b(eVar, "videoDownloadRemoteDataSource");
        j.b(kVar, "videoDownloadLocalDataSource");
        this.f5105a = eVar;
        this.f5106b = kVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x003d  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0058  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object a(java.lang.String r5, java.lang.String r6, h.c.b<? super com.farsitel.bazaar.data.entity.Either<com.farsitel.bazaar.common.model.VideoDownloadQuality>> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.farsitel.bazaar.data.feature.cinema.video.download.VideoDownloadRepository$getVideoDownloadQualityList$1
            if (r0 == 0) goto L_0x0013
            r0 = r7
            com.farsitel.bazaar.data.feature.cinema.video.download.VideoDownloadRepository$getVideoDownloadQualityList$1 r0 = (com.farsitel.bazaar.data.feature.cinema.video.download.VideoDownloadRepository$getVideoDownloadQualityList$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.cinema.video.download.VideoDownloadRepository$getVideoDownloadQualityList$1 r0 = new com.farsitel.bazaar.data.feature.cinema.video.download.VideoDownloadRepository$getVideoDownloadQualityList$1
            r0.<init>(r4, r7)
        L_0x0018:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L_0x003d
            if (r2 != r3) goto L_0x0035
            java.lang.Object r5 = r0.L$2
            java.lang.String r5 = (java.lang.String) r5
            java.lang.Object r5 = r0.L$1
            java.lang.String r5 = (java.lang.String) r5
            java.lang.Object r5 = r0.L$0
            c.c.a.e.d.h.e.a.a r5 = (c.c.a.e.d.h.e.a.a) r5
            h.e.a((java.lang.Object) r7)
            goto L_0x0051
        L_0x0035:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L_0x003d:
            h.e.a((java.lang.Object) r7)
            c.c.a.e.d.h.e.a.b.e r7 = r4.f5105a
            r0.L$0 = r4
            r0.L$1 = r5
            r0.L$2 = r6
            r0.label = r3
            java.lang.Object r7 = r7.a(r5, r6, r0)
            if (r7 != r1) goto L_0x0051
            return r1
        L_0x0051:
            com.farsitel.bazaar.data.entity.Either r7 = (com.farsitel.bazaar.data.entity.Either) r7
            boolean r5 = r7 instanceof com.farsitel.bazaar.data.entity.Either.Failure
            if (r5 == 0) goto L_0x0058
            goto L_0x006e
        L_0x0058:
            boolean r5 = r7 instanceof com.farsitel.bazaar.data.entity.Either.Success
            if (r5 == 0) goto L_0x006f
            com.farsitel.bazaar.data.entity.Either$Success r7 = (com.farsitel.bazaar.data.entity.Either.Success) r7
            java.lang.Object r5 = r7.getValue()
            com.farsitel.bazaar.common.model.VideoDownloadQualityInfo r5 = (com.farsitel.bazaar.common.model.VideoDownloadQualityInfo) r5
            com.farsitel.bazaar.common.model.VideoDownloadQuality r6 = new com.farsitel.bazaar.common.model.VideoDownloadQuality
            r6.<init>(r5)
            com.farsitel.bazaar.data.entity.Either$Success r7 = new com.farsitel.bazaar.data.entity.Either$Success
            r7.<init>(r6)
        L_0x006e:
            return r7
        L_0x006f:
            kotlin.NoWhenBranchMatchedException r5 = new kotlin.NoWhenBranchMatchedException
            r5.<init>()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.h.e.a.a.a(java.lang.String, java.lang.String, h.c.b):java.lang.Object");
    }

    public final Object a(String str, b<? super DownloadedVideoModel> bVar) {
        return this.f5106b.b(str, bVar);
    }
}
