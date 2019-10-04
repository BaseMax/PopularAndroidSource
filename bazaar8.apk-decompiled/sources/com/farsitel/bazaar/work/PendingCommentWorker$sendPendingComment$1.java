package com.farsitel.bazaar.work;

import h.c.b;
import h.c.b.a.d;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.work.PendingCommentWorker$sendPendingComment$1", f = "PendingCommentWorker.kt", l = {29, 29}, m = "invokeSuspend")
/* compiled from: PendingCommentWorker.kt */
final class PendingCommentWorker$sendPendingComment$1 extends SuspendLambda implements c<H, b<? super Boolean>, Object> {
    public int label;
    public H p$;
    public final /* synthetic */ PendingCommentWorker this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PendingCommentWorker$sendPendingComment$1(PendingCommentWorker pendingCommentWorker, b bVar) {
        super(2, bVar);
        this.this$0 = pendingCommentWorker;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        PendingCommentWorker$sendPendingComment$1 pendingCommentWorker$sendPendingComment$1 = new PendingCommentWorker$sendPendingComment$1(this.this$0, bVar);
        pendingCommentWorker$sendPendingComment$1.p$ = (H) obj;
        return pendingCommentWorker$sendPendingComment$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((PendingCommentWorker$sendPendingComment$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0047, code lost:
        if (((java.lang.Boolean) r5).booleanValue() == false) goto L_0x004a;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object d(java.lang.Object r5) {
        /*
            r4 = this;
            java.lang.Object r0 = h.c.a.b.a()
            int r1 = r4.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L_0x001e
            if (r1 == r3) goto L_0x001a
            if (r1 != r2) goto L_0x0012
            h.e.a((java.lang.Object) r5)
            goto L_0x0041
        L_0x0012:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L_0x001a:
            h.e.a((java.lang.Object) r5)
            goto L_0x002e
        L_0x001e:
            h.e.a((java.lang.Object) r5)
            i.a.H r5 = r4.p$
            com.farsitel.bazaar.work.PendingCommentWorker r5 = r4.this$0
            r4.label = r3
            java.lang.Object r5 = r5.b(r4)
            if (r5 != r0) goto L_0x002e
            return r0
        L_0x002e:
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            if (r5 == 0) goto L_0x004a
            com.farsitel.bazaar.work.PendingCommentWorker r5 = r4.this$0
            r4.label = r2
            java.lang.Object r5 = r5.a(r4)
            if (r5 != r0) goto L_0x0041
            return r0
        L_0x0041:
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            if (r5 == 0) goto L_0x004a
            goto L_0x004b
        L_0x004a:
            r3 = 0
        L_0x004b:
            java.lang.Boolean r5 = h.c.b.a.a.a((boolean) r3)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.work.PendingCommentWorker$sendPendingComment$1.d(java.lang.Object):java.lang.Object");
    }
}
