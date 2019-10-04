package c.c.a.n.c.c;

import b.r.u;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import h.f.b.j;
import java.util.List;

/* compiled from: PageFragment.kt */
final class m<T> implements u<Resource<? extends List<? extends RecyclerData>>> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ n f6332a;

    public m(n nVar) {
        this.f6332a = nVar;
    }

    public final void a(Resource<? extends List<? extends RecyclerData>> resource) {
        if (j.a((Object) resource.d(), (Object) ResourceState.Success.f12179a)) {
            n.c(this.f6332a).j().a(this.f6332a.ba(), new l(this));
        }
    }
}
