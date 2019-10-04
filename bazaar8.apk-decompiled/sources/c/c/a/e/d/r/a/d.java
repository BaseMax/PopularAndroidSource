package c.c.a.e.d.r.a;

import c.c.a.e.d.h.c.a.a.f;
import c.c.a.e.d.r.a.a.j;
import c.c.a.e.d.r.a.b.a;

/* compiled from: ReportCommentRepository.kt */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final a f5366a;

    /* renamed from: b  reason: collision with root package name */
    public final f f5367b;

    /* renamed from: c  reason: collision with root package name */
    public final j f5368c;

    public d(a aVar, f fVar, j jVar) {
        h.f.b.j.b(aVar, "reportCommentRemoteDataSource");
        h.f.b.j.b(fVar, "reportVideoCommentRemoteDataSource");
        h.f.b.j.b(jVar, "commentActionLocalDataSource");
        this.f5366a = aVar;
        this.f5367b = fVar;
        this.f5368c = jVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x0041  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x008e  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0024  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object a(int r6, boolean r7, com.farsitel.bazaar.data.entity.EntityType r8, h.c.b<? super java.lang.Boolean> r9) {
        /*
            r5 = this;
            boolean r0 = r9 instanceof com.farsitel.bazaar.data.feature.review.action.ReportCommentRepository$reportReview$1
            if (r0 == 0) goto L_0x0013
            r0 = r9
            com.farsitel.bazaar.data.feature.review.action.ReportCommentRepository$reportReview$1 r0 = (com.farsitel.bazaar.data.feature.review.action.ReportCommentRepository$reportReview$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.review.action.ReportCommentRepository$reportReview$1 r0 = new com.farsitel.bazaar.data.feature.review.action.ReportCommentRepository$reportReview$1
            r0.<init>(r5, r9)
        L_0x0018:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L_0x0041
            if (r2 == r4) goto L_0x0031
            if (r2 != r3) goto L_0x0029
            goto L_0x0031
        L_0x0029:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L_0x0031:
            java.lang.Object r6 = r0.L$1
            com.farsitel.bazaar.data.entity.EntityType r6 = (com.farsitel.bazaar.data.entity.EntityType) r6
            boolean r6 = r0.Z$0
            int r6 = r0.I$0
            java.lang.Object r7 = r0.L$0
            c.c.a.e.d.r.a.d r7 = (c.c.a.e.d.r.a.d) r7
            h.e.a((java.lang.Object) r9)
            goto L_0x0063
        L_0x0041:
            h.e.a((java.lang.Object) r9)
            c.c.a.e.d.r.a.a.j r9 = r5.f5368c
            com.farsitel.bazaar.data.entity.CommentAction r2 = com.farsitel.bazaar.data.entity.CommentAction.REPORT
            r9.a(r6, r2, r7, r8)
            com.farsitel.bazaar.data.entity.EntityType r9 = com.farsitel.bazaar.data.entity.EntityType.APP
            if (r8 != r9) goto L_0x0066
            c.c.a.e.d.r.a.b.a r9 = r5.f5366a
            r0.L$0 = r5
            r0.I$0 = r6
            r0.Z$0 = r7
            r0.L$1 = r8
            r0.label = r4
            java.lang.Object r9 = r9.a(r6, r7, r0)
            if (r9 != r1) goto L_0x0062
            return r1
        L_0x0062:
            r7 = r5
        L_0x0063:
            com.farsitel.bazaar.data.entity.Either r9 = (com.farsitel.bazaar.data.entity.Either) r9
            goto L_0x007d
        L_0x0066:
            c.c.a.e.d.h.c.a.a.f r9 = r5.f5367b
            java.lang.String r2 = java.lang.String.valueOf(r6)
            r0.L$0 = r5
            r0.I$0 = r6
            r0.Z$0 = r7
            r0.L$1 = r8
            r0.label = r3
            java.lang.Object r9 = r9.a(r2, r0)
            if (r9 != r1) goto L_0x0062
            return r1
        L_0x007d:
            r8 = 0
            java.lang.Boolean r0 = h.c.b.a.a.a((boolean) r8)
            java.lang.Object r9 = com.farsitel.bazaar.data.entity.EitherKt.getOrDefault(r9, r0)
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto L_0x0096
            c.c.a.e.d.r.a.a.j r7 = r7.f5368c
            com.farsitel.bazaar.data.entity.CommentAction r8 = com.farsitel.bazaar.data.entity.CommentAction.REPORT
            r7.a(r6, r8)
            r8 = 1
        L_0x0096:
            java.lang.Boolean r6 = h.c.b.a.a.a((boolean) r8)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.r.a.d.a(int, boolean, com.farsitel.bazaar.data.entity.EntityType, h.c.b):java.lang.Object");
    }
}
