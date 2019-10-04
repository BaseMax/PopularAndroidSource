package c.c.a.n.t.b;

import androidx.lifecycle.LiveData;
import b.r.t;
import c.c.a.c.b.i;
import c.c.a.d.f.p;
import c.c.a.e.d.a.a;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.data.entity.InvalidPhoneNumberException;
import com.farsitel.bazaar.data.entity.None;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;

/* compiled from: ChangePhoneNumberViewModel.kt */
public final class c extends p {

    /* renamed from: d  reason: collision with root package name */
    public final t<Resource<None>> f6944d = new t<>();

    /* renamed from: e  reason: collision with root package name */
    public final a f6945e;

    public c(a aVar) {
        j.b(aVar, "accountRepository");
        this.f6945e = aVar;
    }

    public final LiveData<Resource<None>> e() {
        return this.f6944d;
    }

    public final void a(String str) {
        j.b(str, "phoneNumber");
        if (i.e(str)) {
            t<Resource<None>> tVar = this.f6944d;
            Resource resource = new Resource(ResourceState.Loading.f12178a, null, null, 6, null);
            tVar.b(resource);
            C1125ra unused = C1103g.b(this, null, null, new ChangePhoneNumberViewModel$changePhoneNumber$1(this, str, null), 3, null);
            return;
        }
        a((ErrorModel) new InvalidPhoneNumberException());
    }

    public final void a(None none) {
        t<Resource<None>> tVar = this.f6944d;
        Resource resource = new Resource(ResourceState.Success.f12179a, none, null, 4, null);
        tVar.b(resource);
    }

    public final void a(ErrorModel errorModel) {
        t<Resource<None>> tVar = this.f6944d;
        Resource resource = new Resource(ResourceState.Error.f12177a, null, errorModel, 2, null);
        tVar.b(resource);
    }
}
