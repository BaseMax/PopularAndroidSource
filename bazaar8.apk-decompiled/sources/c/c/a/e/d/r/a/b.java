package c.c.a.e.d.r.a;

import c.c.a.e.d.r.a.a.j;

/* compiled from: CommentActionRepository.kt */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final f f5356a;

    /* renamed from: b  reason: collision with root package name */
    public final d f5357b;

    /* renamed from: c  reason: collision with root package name */
    public final j f5358c;

    public b(f fVar, d dVar, j jVar) {
        h.f.b.j.b(fVar, "voteCommentRepository");
        h.f.b.j.b(dVar, "reportCommentRepository");
        h.f.b.j.b(jVar, "commentActionLocalDataSource");
        this.f5356a = fVar;
        this.f5357b = dVar;
        this.f5358c = jVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0080  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x009d  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0144  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x0152  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0029  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object a(h.c.b<? super java.lang.Boolean> r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            boolean r2 = r1 instanceof com.farsitel.bazaar.data.feature.review.action.CommentActionRepository$sendPendingCommentAction$1
            if (r2 == 0) goto L_0x0017
            r2 = r1
            com.farsitel.bazaar.data.feature.review.action.CommentActionRepository$sendPendingCommentAction$1 r2 = (com.farsitel.bazaar.data.feature.review.action.CommentActionRepository$sendPendingCommentAction$1) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L_0x0017
            int r3 = r3 - r4
            r2.label = r3
            goto L_0x001c
        L_0x0017:
            com.farsitel.bazaar.data.feature.review.action.CommentActionRepository$sendPendingCommentAction$1 r2 = new com.farsitel.bazaar.data.feature.review.action.CommentActionRepository$sendPendingCommentAction$1
            r2.<init>(r0, r1)
        L_0x001c:
            java.lang.Object r1 = r2.result
            java.lang.Object r3 = h.c.a.b.a()
            int r4 = r2.label
            r5 = 3
            r6 = 2
            r7 = 1
            if (r4 == 0) goto L_0x0080
            if (r4 == r7) goto L_0x005b
            if (r4 == r6) goto L_0x0038
            if (r4 != r5) goto L_0x0030
            goto L_0x0038
        L_0x0030:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L_0x0038:
            java.lang.Object r4 = r2.L$7
            kotlin.jvm.internal.Ref$BooleanRef r4 = (kotlin.jvm.internal.Ref$BooleanRef) r4
            java.lang.Object r8 = r2.L$6
            com.farsitel.bazaar.data.entity.CommentActionEntity r8 = (com.farsitel.bazaar.data.entity.CommentActionEntity) r8
            java.lang.Object r8 = r2.L$5
            java.lang.Object r8 = r2.L$4
            java.util.Iterator r8 = (java.util.Iterator) r8
            java.lang.Object r9 = r2.L$3
            java.lang.Iterable r9 = (java.lang.Iterable) r9
            java.lang.Object r10 = r2.L$2
            kotlin.jvm.internal.Ref$BooleanRef r10 = (kotlin.jvm.internal.Ref$BooleanRef) r10
            java.lang.Object r11 = r2.L$1
            java.util.List r11 = (java.util.List) r11
            java.lang.Object r12 = r2.L$0
            c.c.a.e.d.r.a.b r12 = (c.c.a.e.d.r.a.b) r12
            h.e.a((java.lang.Object) r1)
            goto L_0x0107
        L_0x005b:
            java.lang.Object r4 = r2.L$7
            kotlin.jvm.internal.Ref$BooleanRef r4 = (kotlin.jvm.internal.Ref$BooleanRef) r4
            java.lang.Object r8 = r2.L$6
            com.farsitel.bazaar.data.entity.CommentActionEntity r8 = (com.farsitel.bazaar.data.entity.CommentActionEntity) r8
            java.lang.Object r8 = r2.L$5
            java.lang.Object r8 = r2.L$4
            java.util.Iterator r8 = (java.util.Iterator) r8
            java.lang.Object r9 = r2.L$3
            java.lang.Iterable r9 = (java.lang.Iterable) r9
            java.lang.Object r10 = r2.L$2
            kotlin.jvm.internal.Ref$BooleanRef r10 = (kotlin.jvm.internal.Ref$BooleanRef) r10
            java.lang.Object r11 = r2.L$1
            java.util.List r11 = (java.util.List) r11
            java.lang.Object r12 = r2.L$0
            c.c.a.e.d.r.a.b r12 = (c.c.a.e.d.r.a.b) r12
            h.e.a((java.lang.Object) r1)
            r7 = r1
            r1 = 1
            goto L_0x0135
        L_0x0080:
            h.e.a((java.lang.Object) r1)
            c.c.a.e.d.r.a.a.j r1 = r0.f5358c
            java.util.List r1 = r1.b()
            kotlin.jvm.internal.Ref$BooleanRef r4 = new kotlin.jvm.internal.Ref$BooleanRef
            r4.<init>()
            r4.element = r7
            java.util.Iterator r8 = r1.iterator()
            r12 = r0
            r9 = r1
            r11 = r9
        L_0x0097:
            boolean r1 = r8.hasNext()
            if (r1 == 0) goto L_0x0152
            java.lang.Object r1 = r8.next()
            r10 = r1
            com.farsitel.bazaar.data.entity.CommentActionEntity r10 = (com.farsitel.bazaar.data.entity.CommentActionEntity) r10
            com.farsitel.bazaar.data.entity.CommentAction r13 = r10.getCommentAction()
            int[] r14 = c.c.a.e.d.r.a.a.f5334a
            int r13 = r13.ordinal()
            r13 = r14[r13]
            if (r13 == r7) goto L_0x0110
            if (r13 == r6) goto L_0x00e3
            if (r13 != r5) goto L_0x00dd
            c.c.a.e.d.r.a.d r13 = r12.f5357b
            int r14 = r10.getReviewId()
            boolean r15 = r10.isReply()
            com.farsitel.bazaar.data.entity.EntityType r7 = r10.getEntityType()
            r2.L$0 = r12
            r2.L$1 = r11
            r2.L$2 = r4
            r2.L$3 = r9
            r2.L$4 = r8
            r2.L$5 = r1
            r2.L$6 = r10
            r2.L$7 = r4
            r2.label = r5
            java.lang.Object r1 = r13.a(r14, r15, r7, r2)
            if (r1 != r3) goto L_0x0106
            return r3
        L_0x00dd:
            kotlin.NoWhenBranchMatchedException r1 = new kotlin.NoWhenBranchMatchedException
            r1.<init>()
            throw r1
        L_0x00e3:
            c.c.a.e.d.r.a.f r7 = r12.f5356a
            int r13 = r10.getReviewId()
            boolean r14 = r10.isReply()
            r2.L$0 = r12
            r2.L$1 = r11
            r2.L$2 = r4
            r2.L$3 = r9
            r2.L$4 = r8
            r2.L$5 = r1
            r2.L$6 = r10
            r2.L$7 = r4
            r2.label = r6
            java.lang.Object r1 = r7.b(r13, r14, r2)
            if (r1 != r3) goto L_0x0106
            return r3
        L_0x0106:
            r10 = r4
        L_0x0107:
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            r7 = r1
            r1 = 1
            goto L_0x013b
        L_0x0110:
            c.c.a.e.d.r.a.f r7 = r12.f5356a
            int r13 = r10.getReviewId()
            boolean r14 = r10.isReply()
            r2.L$0 = r12
            r2.L$1 = r11
            r2.L$2 = r4
            r2.L$3 = r9
            r2.L$4 = r8
            r2.L$5 = r1
            r2.L$6 = r10
            r2.L$7 = r4
            r1 = 1
            r2.label = r1
            java.lang.Object r7 = r7.a(r13, r14, r2)
            if (r7 != r3) goto L_0x0134
            return r3
        L_0x0134:
            r10 = r4
        L_0x0135:
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
        L_0x013b:
            r16 = r3
            r3 = r2
            r2 = r4
            r4 = r10
            r10 = r16
            if (r7 == 0) goto L_0x014a
            boolean r7 = r4.element
            if (r7 == 0) goto L_0x014a
            r7 = 1
            goto L_0x014b
        L_0x014a:
            r7 = 0
        L_0x014b:
            r2.element = r7
            r2 = r3
            r3 = r10
            r7 = 1
            goto L_0x0097
        L_0x0152:
            boolean r1 = r4.element
            java.lang.Boolean r1 = h.c.b.a.a.a((boolean) r1)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.r.a.b.a(h.c.b):java.lang.Object");
    }

    public final void a() {
        this.f5358c.a();
    }
}
