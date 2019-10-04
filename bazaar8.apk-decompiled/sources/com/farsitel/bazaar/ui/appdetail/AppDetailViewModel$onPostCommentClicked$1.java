package com.farsitel.bazaar.ui.appdetail;

import android.os.Handler;
import android.os.Looper;
import b.r.r;
import c.c.a.n.b.w;
import com.farsitel.bazaar.core.model.AppDetailState;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.data.entity.ErrorModel;
import h.c.b.a.a;
import h.c.b.a.d;
import h.e;
import h.f.a.b;
import h.f.b.j;
import h.h;
import java.util.List;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.appdetail.AppDetailViewModel$onPostCommentClicked$1", f = "AppDetailViewModel.kt", l = {}, m = "invokeSuspend")
/* compiled from: AppDetailViewModel.kt */
final class AppDetailViewModel$onPostCommentClicked$1 extends SuspendLambda implements b<h.c.b<? super h>, Object> {
    public final /* synthetic */ int $rateValue;
    public int label;
    public final /* synthetic */ w this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AppDetailViewModel$onPostCommentClicked$1(w wVar, int i2, h.c.b bVar) {
        super(1, bVar);
        this.this$0 = wVar;
        this.$rateValue = i2;
    }

    public final h.c.b<h> a(h.c.b<?> bVar) {
        j.b(bVar, "completion");
        return new AppDetailViewModel$onPostCommentClicked$1(this.this$0, this.$rateValue, bVar);
    }

    public final Object a(Object obj) {
        return ((AppDetailViewModel$onPostCommentClicked$1) a((h.c.b<?>) (h.c.b) obj)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        h.c.a.b.a();
        if (this.label == 0) {
            e.a(obj);
            if (this.this$0.z.f()) {
                int p = this.this$0.p();
                this.this$0.d(this.$rateValue);
                r g2 = this.this$0.g();
                AppDetailState.PostComment postComment = AppDetailState.PostComment.f12158a;
                Resource resource = (Resource) this.this$0.g().a();
                ErrorModel errorModel = null;
                List list = resource != null ? (List) resource.a() : null;
                Resource resource2 = (Resource) this.this$0.g().a();
                if (resource2 != null) {
                    errorModel = resource2.c();
                }
                g2.a(new Resource(postComment, list, errorModel));
                new Handler(Looper.getMainLooper()).postDelayed(new z(this, p), 400);
            } else {
                this.this$0.r.a(a.a(1002));
                w wVar = this.this$0;
                wVar.d(wVar.p());
            }
            return h.f14579a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
