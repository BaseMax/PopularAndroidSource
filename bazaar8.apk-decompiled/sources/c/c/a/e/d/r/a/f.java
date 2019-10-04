package c.c.a.e.d.r.a;

import c.c.a.e.d.r.a.a.j;
import c.c.a.e.d.r.a.b.d;
import com.farsitel.bazaar.data.entity.CommentAction;
import h.c.b;

/* compiled from: VoteCommentRepository.kt */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final d f5372a;

    /* renamed from: b  reason: collision with root package name */
    public final j f5373b;

    public f(d dVar, j jVar) {
        h.f.b.j.b(dVar, "voteCommentRemoteDataSource");
        h.f.b.j.b(jVar, "commentActionLocalDataSource");
        this.f5372a = dVar;
        this.f5373b = jVar;
    }

    public final Object a(int i2, boolean z, b<? super Boolean> bVar) {
        return a(i2, "D", CommentAction.DOWN_VOTE, z, bVar);
    }

    public final Object b(int i2, boolean z, b<? super Boolean> bVar) {
        return a(i2, "L", CommentAction.UP_VOTE, z, bVar);
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x004a  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0087  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x008d  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x002c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final /* synthetic */ java.lang.Object a(int r15, java.lang.String r16, com.farsitel.bazaar.data.entity.CommentAction r17, boolean r18, h.c.b<? super java.lang.Boolean> r19) {
        /*
            r14 = this;
            r0 = r14
            r8 = r15
            r9 = r16
            r10 = r18
            r1 = r19
            boolean r2 = r1 instanceof com.farsitel.bazaar.data.feature.review.action.VoteCommentRepository$voteComment$1
            if (r2 == 0) goto L_0x001b
            r2 = r1
            com.farsitel.bazaar.data.feature.review.action.VoteCommentRepository$voteComment$1 r2 = (com.farsitel.bazaar.data.feature.review.action.VoteCommentRepository$voteComment$1) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L_0x001b
            int r3 = r3 - r4
            r2.label = r3
            goto L_0x0020
        L_0x001b:
            com.farsitel.bazaar.data.feature.review.action.VoteCommentRepository$voteComment$1 r2 = new com.farsitel.bazaar.data.feature.review.action.VoteCommentRepository$voteComment$1
            r2.<init>(r14, r1)
        L_0x0020:
            r11 = r2
            java.lang.Object r1 = r11.result
            java.lang.Object r12 = h.c.a.b.a()
            int r2 = r11.label
            r13 = 1
            if (r2 == 0) goto L_0x004a
            if (r2 != r13) goto L_0x0042
            boolean r2 = r11.Z$0
            java.lang.Object r2 = r11.L$2
            com.farsitel.bazaar.data.entity.CommentAction r2 = (com.farsitel.bazaar.data.entity.CommentAction) r2
            java.lang.Object r3 = r11.L$1
            java.lang.String r3 = (java.lang.String) r3
            int r3 = r11.I$0
            java.lang.Object r4 = r11.L$0
            c.c.a.e.d.r.a.f r4 = (c.c.a.e.d.r.a.f) r4
            h.e.a((java.lang.Object) r1)
            goto L_0x0074
        L_0x0042:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L_0x004a:
            h.e.a((java.lang.Object) r1)
            c.c.a.e.d.r.a.a.j r1 = r0.f5373b
            r5 = 0
            r6 = 8
            r7 = 0
            r2 = r15
            r3 = r17
            r4 = r18
            c.c.a.e.d.r.a.a.j.a(r1, r2, r3, r4, r5, r6, r7)
            c.c.a.e.d.r.a.b.d r1 = r0.f5372a
            r11.L$0 = r0
            r11.I$0 = r8
            r11.L$1 = r9
            r2 = r17
            r11.L$2 = r2
            r11.Z$0 = r10
            r11.label = r13
            java.lang.Object r1 = r1.a(r15, r9, r10, r11)
            if (r1 != r12) goto L_0x0072
            return r12
        L_0x0072:
            r4 = r0
            r3 = r8
        L_0x0074:
            com.farsitel.bazaar.data.entity.Either r1 = (com.farsitel.bazaar.data.entity.Either) r1
            r5 = 0
            java.lang.Boolean r6 = h.c.b.a.a.a((boolean) r5)
            java.lang.Object r1 = com.farsitel.bazaar.data.entity.EitherKt.getOrDefault(r1, r6)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L_0x008d
            c.c.a.e.d.r.a.a.j r1 = r4.f5373b
            r1.a(r3, r2)
            goto L_0x008e
        L_0x008d:
            r13 = 0
        L_0x008e:
            java.lang.Boolean r1 = h.c.b.a.a.a((boolean) r13)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.r.a.f.a(int, java.lang.String, com.farsitel.bazaar.data.entity.CommentAction, boolean, h.c.b):java.lang.Object");
    }
}
