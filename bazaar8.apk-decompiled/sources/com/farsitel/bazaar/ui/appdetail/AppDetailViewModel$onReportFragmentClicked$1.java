package com.farsitel.bazaar.ui.appdetail;

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

@d(c = "com.farsitel.bazaar.ui.appdetail.AppDetailViewModel$onReportFragmentClicked$1", f = "AppDetailViewModel.kt", l = {}, m = "invokeSuspend")
/* compiled from: AppDetailViewModel.kt */
final class AppDetailViewModel$onReportFragmentClicked$1 extends SuspendLambda implements b<h.c.b<? super h>, Object> {
    public int label;
    public final /* synthetic */ w this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public AppDetailViewModel$onReportFragmentClicked$1(w wVar, h.c.b bVar) {
        super(1, bVar);
        this.this$0 = wVar;
    }

    public final h.c.b<h> a(h.c.b<?> bVar) {
        j.b(bVar, "completion");
        return new AppDetailViewModel$onReportFragmentClicked$1(this.this$0, bVar);
    }

    public final Object a(Object obj) {
        return ((AppDetailViewModel$onReportFragmentClicked$1) a((h.c.b<?>) (h.c.b) obj)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        h.c.a.b.a();
        if (this.label == 0) {
            e.a(obj);
            if (this.this$0.z.f()) {
                r g2 = this.this$0.g();
                AppDetailState.Report report = AppDetailState.Report.f12159a;
                Resource resource = (Resource) this.this$0.g().a();
                ErrorModel errorModel = null;
                List list = resource != null ? (List) resource.a() : null;
                Resource resource2 = (Resource) this.this$0.g().a();
                if (resource2 != null) {
                    errorModel = resource2.c();
                }
                g2.a(new Resource(report, list, errorModel));
            } else {
                this.this$0.r.a(a.a(1003));
            }
            return h.f14579a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
