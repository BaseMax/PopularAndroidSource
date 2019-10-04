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

@d(c = "com.farsitel.bazaar.work.PostCommentWorker$sendComment$1", f = "PostCommentWorker.kt", l = {47}, m = "invokeSuspend")
/* compiled from: PostCommentWorker.kt */
final class PostCommentWorker$sendComment$1 extends SuspendLambda implements c<H, b<? super Boolean>, Object> {
    public final /* synthetic */ long $appVersion;
    public final /* synthetic */ String $comment;
    public final /* synthetic */ String $entityId;
    public final /* synthetic */ EntityType $entityType;
    public final /* synthetic */ int $rateValue;
    public int label;
    public H p$;
    public final /* synthetic */ PostCommentWorker this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PostCommentWorker$sendComment$1(PostCommentWorker postCommentWorker, String str, int i2, String str2, long j2, EntityType entityType, b bVar) {
        super(2, bVar);
        this.this$0 = postCommentWorker;
        this.$entityId = str;
        this.$rateValue = i2;
        this.$comment = str2;
        this.$appVersion = j2;
        this.$entityType = entityType;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        PostCommentWorker$sendComment$1 postCommentWorker$sendComment$1 = new PostCommentWorker$sendComment$1(this.this$0, this.$entityId, this.$rateValue, this.$comment, this.$appVersion, this.$entityType, bVar);
        postCommentWorker$sendComment$1.p$ = (H) obj;
        return postCommentWorker$sendComment$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((PostCommentWorker$sendComment$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            c.c.a.e.d.r.b.b a3 = this.this$0.f12473i;
            String str = this.$entityId;
            int i3 = this.$rateValue;
            String str2 = this.$comment;
            long j2 = this.$appVersion;
            EntityType entityType = this.$entityType;
            this.label = 1;
            obj = a3.a(str, i3, str2, j2, entityType, this);
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
