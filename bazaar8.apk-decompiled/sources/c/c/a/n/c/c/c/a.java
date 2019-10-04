package c.c.a.n.c.c.c;

import b.r.u;
import com.farsitel.bazaar.common.model.Page;
import com.farsitel.bazaar.core.model.PageContainerState;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.ErrorModel;
import h.f.b.j;
import java.util.List;

/* compiled from: BasePageContainerFragment.kt */
final class a<T> implements u<Resource<? extends List<? extends Page>>> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ c f6318a;

    public a(c cVar) {
        this.f6318a = cVar;
    }

    public final void a(Resource<? extends List<Page>> resource) {
        ResourceState d2 = resource.d();
        if (j.a((Object) d2, (Object) PageContainerState.SinglePage.f12161a)) {
            c cVar = this.f6318a;
            Object a2 = resource.a();
            if (a2 != null) {
                cVar.b((Page) ((List) a2).get(0));
                c.a(this.f6318a, false, 1, null);
                this.f6318a.Oa();
                c.b(this.f6318a, false, 1, null);
                return;
            }
            j.a();
            throw null;
        } else if (j.a((Object) d2, (Object) PageContainerState.MultiPage.f12160a)) {
            c cVar2 = this.f6318a;
            Object a3 = resource.a();
            if (a3 != null) {
                cVar2.b((List<Page>) (List) a3);
                c.a(this.f6318a, false, 1, null);
                this.f6318a.Oa();
                this.f6318a.l(true);
                return;
            }
            j.a();
            throw null;
        } else if (j.a((Object) d2, (Object) ResourceState.Error.f12177a)) {
            ErrorModel c2 = resource.c();
            if (c2 != null) {
                c.a(this.f6318a, false, 1, null);
                this.f6318a.a(c2, false);
                c.c.a.c.c.a.f4699b.a((Throwable) c2);
            }
        } else if (j.a((Object) d2, (Object) ResourceState.Loading.f12178a)) {
            this.f6318a.k(true);
        }
    }
}
