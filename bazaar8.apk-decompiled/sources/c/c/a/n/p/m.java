package c.c.a.n.p;

import androidx.lifecycle.LiveData;
import b.r.t;
import c.c.a.c.b.i;
import c.c.a.c.h.g;
import c.c.a.d.f.p;
import c.c.a.e.d.a.a;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.data.entity.InvalidPhoneNumberException;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;
import java.util.List;

/* compiled from: RegisterViewModel.kt */
public final class m extends p {

    /* renamed from: d  reason: collision with root package name */
    public final g<Resource<Long>> f6746d = new g<>();

    /* renamed from: e  reason: collision with root package name */
    public final t<List<String>> f6747e = new t<>();

    /* renamed from: f  reason: collision with root package name */
    public final a f6748f;

    public m(a aVar) {
        j.b(aVar, "accountRepository");
        this.f6748f = aVar;
    }

    public final LiveData<Resource<Long>> e() {
        return this.f6746d;
    }

    public final LiveData<List<String>> f() {
        return this.f6747e;
    }

    public final boolean g() {
        return this.f6748f.u();
    }

    public final void h() {
        C1125ra unused = C1103g.b(this, null, null, new RegisterViewModel$loadSavedPhones$1(this, null), 3, null);
    }

    public final void a(String str) {
        j.b(str, "phoneNumber");
        if (i.e(str)) {
            g<Resource<Long>> gVar = this.f6746d;
            Resource resource = new Resource(ResourceState.Loading.f12178a, null, null, 6, null);
            gVar.a(resource);
            C1125ra unused = C1103g.b(this, null, null, new RegisterViewModel$register$1(this, str, null), 3, null);
            return;
        }
        a((ErrorModel) new InvalidPhoneNumberException());
    }

    public final void a(ErrorModel errorModel) {
        g<Resource<Long>> gVar = this.f6746d;
        Resource resource = new Resource(ResourceState.Error.f12177a, null, errorModel, 2, null);
        gVar.a(resource);
    }

    public final void a(long j2) {
        g<Resource<Long>> gVar = this.f6746d;
        Resource resource = new Resource(ResourceState.Success.f12179a, Long.valueOf(j2), null, 4, null);
        gVar.a(resource);
    }
}
