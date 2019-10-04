package c.c.a.l.b;

import c.c.a.l.b.a.e;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.entity.None;
import h.f.b.j;

/* compiled from: VideoStatsRepository.kt */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final e f6103a;

    public b(e eVar) {
        j.b(eVar, "videoStatsRemoteDataSource");
        this.f6103a = eVar;
    }

    public final Object a(String str, String str2, String str3, h.c.b<? super Either<None>> bVar) {
        return this.f6103a.a(str, str2, str3, bVar);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:29:0x00ee, code lost:
        if (r1 != null) goto L_0x00f8;
     */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x006e  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x00b0  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0028  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object a(java.lang.String r17, long r18, java.lang.String r20, java.lang.String r21, int r22, h.c.b<? super com.farsitel.bazaar.data.entity.Either<java.lang.String>> r23) {
        /*
            r16 = this;
            r0 = r16
            r1 = r23
            boolean r2 = r1 instanceof com.farsitel.bazaar.player.stats.VideoStatsRepository$setVideoStats$1
            if (r2 == 0) goto L_0x0017
            r2 = r1
            com.farsitel.bazaar.player.stats.VideoStatsRepository$setVideoStats$1 r2 = (com.farsitel.bazaar.player.stats.VideoStatsRepository$setVideoStats$1) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L_0x0017
            int r3 = r3 - r4
            r2.label = r3
            goto L_0x001c
        L_0x0017:
            com.farsitel.bazaar.player.stats.VideoStatsRepository$setVideoStats$1 r2 = new com.farsitel.bazaar.player.stats.VideoStatsRepository$setVideoStats$1
            r2.<init>(r0, r1)
        L_0x001c:
            java.lang.Object r1 = r2.result
            java.lang.Object r11 = h.c.a.b.a()
            int r3 = r2.label
            r12 = 2
            r13 = 1
            if (r3 == 0) goto L_0x006e
            if (r3 == r13) goto L_0x0055
            if (r3 != r12) goto L_0x004d
            java.lang.Object r3 = r2.L$5
            com.farsitel.bazaar.common.model.VideoStatsResult r3 = (com.farsitel.bazaar.common.model.VideoStatsResult) r3
            java.lang.Object r3 = r2.L$4
            com.farsitel.bazaar.data.entity.Either r3 = (com.farsitel.bazaar.data.entity.Either) r3
            int r3 = r2.I$0
            java.lang.Object r3 = r2.L$3
            java.lang.String r3 = (java.lang.String) r3
            java.lang.Object r3 = r2.L$2
            java.lang.String r3 = (java.lang.String) r3
            long r3 = r2.J$0
            java.lang.Object r3 = r2.L$1
            java.lang.String r3 = (java.lang.String) r3
            java.lang.Object r2 = r2.L$0
            c.c.a.l.b.b r2 = (c.c.a.l.b.b) r2
            h.e.a((java.lang.Object) r1)
            goto L_0x00e6
        L_0x004d:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L_0x0055:
            int r3 = r2.I$0
            java.lang.Object r4 = r2.L$3
            java.lang.String r4 = (java.lang.String) r4
            java.lang.Object r5 = r2.L$2
            java.lang.String r5 = (java.lang.String) r5
            long r6 = r2.J$0
            java.lang.Object r8 = r2.L$1
            java.lang.String r8 = (java.lang.String) r8
            java.lang.Object r9 = r2.L$0
            c.c.a.l.b.b r9 = (c.c.a.l.b.b) r9
            h.e.a((java.lang.Object) r1)
            r14 = r6
            goto L_0x00a6
        L_0x006e:
            h.e.a((java.lang.Object) r1)
            c.c.a.l.b.a.e r3 = r0.f6103a
            r2.L$0 = r0
            r1 = r17
            r2.L$1 = r1
            r14 = r18
            r2.J$0 = r14
            r10 = r20
            r2.L$2 = r10
            r9 = r21
            r2.L$3 = r9
            r8 = r22
            r2.I$0 = r8
            r2.label = r13
            r4 = r17
            r5 = r18
            r7 = r20
            r8 = r21
            r9 = r22
            r10 = r2
            java.lang.Object r3 = r3.a(r4, r5, r7, r8, r9, r10)
            if (r3 != r11) goto L_0x009d
            return r11
        L_0x009d:
            r5 = r20
            r4 = r21
            r9 = r0
            r8 = r1
            r1 = r3
            r3 = r22
        L_0x00a6:
            com.farsitel.bazaar.data.entity.Either r1 = (com.farsitel.bazaar.data.entity.Either) r1
            java.lang.Object r6 = com.farsitel.bazaar.data.entity.EitherKt.getOrNull(r1)
            com.farsitel.bazaar.common.model.VideoStatsResult r6 = (com.farsitel.bazaar.common.model.VideoStatsResult) r6
            if (r6 == 0) goto L_0x00f1
            java.lang.String r7 = r6.getUrl()
            int r7 = r7.length()
            if (r7 <= 0) goto L_0x00bb
            goto L_0x00bc
        L_0x00bb:
            r13 = 0
        L_0x00bc:
            if (r13 == 0) goto L_0x00e9
            c.c.a.l.b.a.e r7 = r9.f6103a
            java.lang.String r10 = r6.getUrl()
            java.lang.String r13 = r6.getData()
            java.util.Map r12 = r6.getHeader()
            r2.L$0 = r9
            r2.L$1 = r8
            r2.J$0 = r14
            r2.L$2 = r5
            r2.L$3 = r4
            r2.I$0 = r3
            r2.L$4 = r1
            r2.L$5 = r6
            r1 = 2
            r2.label = r1
            java.lang.Object r1 = r7.a((java.lang.String) r10, (java.lang.String) r13, (java.util.Map<java.lang.String, java.lang.String>) r12, (h.c.b<? super com.farsitel.bazaar.data.entity.Either<java.lang.String>>) r2)
            if (r1 != r11) goto L_0x00e6
            return r11
        L_0x00e6:
            com.farsitel.bazaar.data.entity.Either r1 = (com.farsitel.bazaar.data.entity.Either) r1
            goto L_0x00ee
        L_0x00e9:
            com.farsitel.bazaar.data.entity.Either$Success r1 = new com.farsitel.bazaar.data.entity.Either$Success
            r1.<init>(r5)
        L_0x00ee:
            if (r1 == 0) goto L_0x00f1
            goto L_0x00f8
        L_0x00f1:
            com.farsitel.bazaar.data.entity.Either$Failure r1 = new com.farsitel.bazaar.data.entity.Either$Failure
            com.farsitel.bazaar.data.entity.ErrorModel$UnExpected r2 = com.farsitel.bazaar.data.entity.ErrorModel.UnExpected.INSTANCE
            r1.<init>(r2)
        L_0x00f8:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.l.b.b.a(java.lang.String, long, java.lang.String, java.lang.String, int, h.c.b):java.lang.Object");
    }
}
