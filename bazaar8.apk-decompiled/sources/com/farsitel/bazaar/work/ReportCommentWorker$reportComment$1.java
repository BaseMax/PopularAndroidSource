package com.farsitel.bazaar.work;

import com.farsitel.bazaar.data.entity.EntityType;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.work.ReportCommentWorker$reportComment$1", f = "ReportCommentWorker.kt", l = {44}, m = "invokeSuspend")
/* compiled from: ReportCommentWorker.kt */
final class ReportCommentWorker$reportComment$1 extends SuspendLambda implements c<H, b<? super Boolean>, Object> {
    public final /* synthetic */ EntityType $entityType;
    public final /* synthetic */ boolean $reply;
    public final /* synthetic */ int $reviewId;
    public int label;
    public H p$;
    public final /* synthetic */ ReportCommentWorker this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public ReportCommentWorker$reportComment$1(ReportCommentWorker reportCommentWorker, int i2, boolean z, EntityType entityType, b bVar) {
        super(2, bVar);
        this.this$0 = reportCommentWorker;
        this.$reviewId = i2;
        this.$reply = z;
        this.$entityType = entityType;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        ReportCommentWorker$reportComment$1 reportCommentWorker$reportComment$1 = new ReportCommentWorker$reportComment$1(this.this$0, this.$reviewId, this.$reply, this.$entityType, bVar);
        reportCommentWorker$reportComment$1.p$ = (H) obj;
        return reportCommentWorker$reportComment$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((ReportCommentWorker$reportComment$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            c.c.a.e.d.r.a.d a3 = this.this$0.f12485i;
            int i3 = this.$reviewId;
            boolean z = this.$reply;
            EntityType entityType = this.$entityType;
            this.label = 1;
            obj = a3.a(i3, z, entityType, this);
            if (obj == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return obj;
    }
}
