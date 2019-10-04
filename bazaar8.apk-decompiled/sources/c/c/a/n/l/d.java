package c.c.a.n.l;

import b.r.u;
import com.farsitel.bazaar.common.model.Page;
import com.farsitel.bazaar.core.model.PageContainerState;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.ui.fehrest.FehrestFragmentContainer;
import h.f.b.j;
import java.util.List;

/* compiled from: FehrestFragmentContainer.kt */
final class d<T> implements u<Resource<? extends List<? extends Page>>> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ FehrestFragmentContainer f6665a;

    public d(FehrestFragmentContainer fehrestFragmentContainer) {
        this.f6665a = fehrestFragmentContainer;
    }

    public final void a(Resource<? extends List<Page>> resource) {
        if (j.a((Object) resource.d(), (Object) PageContainerState.SinglePage.f12161a)) {
            FehrestFragmentContainer fehrestFragmentContainer = this.f6665a;
            Object a2 = resource.a();
            if (a2 != null) {
                fehrestFragmentContainer.c(((Page) ((List) a2).get(0)).getTitle());
            } else {
                j.a();
                throw null;
            }
        }
    }
}
