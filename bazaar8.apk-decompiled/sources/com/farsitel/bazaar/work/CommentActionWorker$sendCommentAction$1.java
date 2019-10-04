package com.farsitel.bazaar.work;

import c.c.a.e.d.r.a.f;
import h.c.b;
import h.c.b.a.a;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.work.CommentActionWorker$sendCommentAction$1", f = "CommentActionWorker.kt", l = {44, 46}, m = "invokeSuspend")
/* compiled from: CommentActionWorker.kt */
final class CommentActionWorker$sendCommentAction$1 extends SuspendLambda implements c<H, b<? super Boolean>, Object> {
    public final /* synthetic */ boolean $isReply;
    public final /* synthetic */ int $reviewId;
    public final /* synthetic */ boolean $upVote;
    public int label;
    public H p$;
    public final /* synthetic */ CommentActionWorker this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public CommentActionWorker$sendCommentAction$1(CommentActionWorker commentActionWorker, boolean z, int i2, boolean z2, b bVar) {
        super(2, bVar);
        this.this$0 = commentActionWorker;
        this.$upVote = z;
        this.$reviewId = i2;
        this.$isReply = z2;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        CommentActionWorker$sendCommentAction$1 commentActionWorker$sendCommentAction$1 = new CommentActionWorker$sendCommentAction$1(this.this$0, this.$upVote, this.$reviewId, this.$isReply, bVar);
        commentActionWorker$sendCommentAction$1.p$ = (H) obj;
        return commentActionWorker$sendCommentAction$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((CommentActionWorker$sendCommentAction$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            if (this.$upVote) {
                f a3 = this.this$0.f12455i;
                int i3 = this.$reviewId;
                boolean z = this.$isReply;
                this.label = 1;
                obj = a3.b(i3, z, this);
                if (obj == a2) {
                    return a2;
                }
            } else {
                f a4 = this.this$0.f12455i;
                int i4 = this.$reviewId;
                boolean z2 = this.$isReply;
                this.label = 2;
                obj = a4.a(i4, z2, this);
                if (obj == a2) {
                    return a2;
                }
            }
        } else if (i2 == 1 || i2 == 2) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return a.a(((Boolean) obj).booleanValue());
    }
}
