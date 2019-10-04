package c.c.a.n.c.c.c;

import androidx.lifecycle.LiveData;
import b.r.r;
import c.c.a.d.f.p;
import com.farsitel.bazaar.common.model.Page;
import com.farsitel.bazaar.core.model.PageContainerState;
import com.farsitel.bazaar.core.model.RecyclerState;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.BaseTabPage;
import com.farsitel.bazaar.data.entity.ErrorModel;
import h.f.b.j;
import java.util.List;

/* compiled from: BasePageContainerViewModel.kt */
public abstract class d<Params> extends p {

    /* renamed from: d  reason: collision with root package name */
    public final r<Resource<List<Page>>> f6320d = new r<>();

    public final void a(BaseTabPage baseTabPage) {
        Resource resource;
        j.b(baseTabPage, "page");
        r<Resource<List<Page>>> rVar = this.f6320d;
        if (baseTabPage.getPages().size() == 1) {
            resource = new Resource(PageContainerState.SinglePage.f12161a, baseTabPage.getPages(), null, 4, null);
        } else {
            resource = new Resource(PageContainerState.MultiPage.f12160a, baseTabPage.getPages(), null, 4, null);
        }
        rVar.b(resource);
    }

    public void b(Params params) {
        if (this.f6320d.a() != null) {
            Resource a2 = this.f6320d.a();
            if (!j.a((Object) a2 != null ? a2.d() : null, (Object) ResourceState.Error.f12177a)) {
                return;
            }
        }
        r<Resource<List<Page>>> rVar = this.f6320d;
        Resource resource = new Resource(ResourceState.Loading.f12178a, null, null, 6, null);
        rVar.b(resource);
        c(params);
    }

    public abstract void c(Params params);

    public final LiveData<Resource<List<Page>>> e() {
        return this.f6320d;
    }

    public final void a(ErrorModel errorModel) {
        j.b(errorModel, "errorModel");
        r<Resource<List<Page>>> rVar = this.f6320d;
        Resource a2 = rVar.a();
        List list = null;
        ResourceState resourceState = j.a((Object) a2 != null ? a2.d() : null, (Object) ResourceState.Loading.f12178a) ? ResourceState.Error.f12177a : RecyclerState.ErrorLoadMore.f12174a;
        Resource a3 = this.f6320d.a();
        if (a3 != null) {
            list = (List) a3.a();
        }
        rVar.b(new Resource(resourceState, list, errorModel));
    }
}
