package c.c.a.n.p.a.a;

import androidx.lifecycle.LiveData;
import c.c.a.c.b.i;
import c.c.a.c.h.g;
import c.c.a.d.f.p;
import c.c.a.e.d.a.a;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.data.entity.InvalidEmailException;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;

/* compiled from: LoginWithEmailViewModel.kt */
public final class e extends p {

    /* renamed from: d  reason: collision with root package name */
    public final g<Resource<Long>> f6710d = new g<>();

    /* renamed from: e  reason: collision with root package name */
    public final a f6711e;

    public e(a aVar) {
        j.b(aVar, "accountRepository");
        this.f6711e = aVar;
    }

    public final LiveData<Resource<Long>> e() {
        return this.f6710d;
    }

    public final void a(String str) {
        j.b(str, "email");
        if (i.d(str)) {
            g<Resource<Long>> gVar = this.f6710d;
            Resource resource = new Resource(ResourceState.Loading.f12178a, null, null, 6, null);
            gVar.a(resource);
            C1125ra unused = C1103g.b(this, null, null, new LoginWithEmailViewModel$register$1(this, str, null), 3, null);
            return;
        }
        a((ErrorModel) new InvalidEmailException());
    }

    public final void a(ErrorModel errorModel) {
        g<Resource<Long>> gVar = this.f6710d;
        Resource resource = new Resource(ResourceState.Error.f12177a, null, errorModel, 2, null);
        gVar.a(resource);
    }

    public final void a(long j2) {
        g<Resource<Long>> gVar = this.f6710d;
        Resource resource = new Resource(ResourceState.Success.f12179a, Long.valueOf(j2), null, 4, null);
        gVar.a(resource);
    }
}
