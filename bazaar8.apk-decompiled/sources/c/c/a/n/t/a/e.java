package c.c.a.n.t.a;

import androidx.lifecycle.LiveData;
import b.r.t;
import c.c.a.d.c.b;
import c.c.a.d.f.p;
import c.c.a.e.d.a.a;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.None;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;

/* compiled from: NickNameViewModel.kt */
public final class e extends p {

    /* renamed from: d  reason: collision with root package name */
    public final t<Resource<None>> f6937d = new t<>();

    /* renamed from: e  reason: collision with root package name */
    public final a f6938e;

    /* renamed from: f  reason: collision with root package name */
    public final b f6939f;

    public e(a aVar, b bVar) {
        j.b(aVar, "accountRepository");
        j.b(bVar, "accountManager");
        this.f6938e = aVar;
        this.f6939f = bVar;
    }

    public final LiveData<Resource<None>> e() {
        return this.f6937d;
    }

    public final void a(String str) {
        j.b(str, "nickName");
        t<Resource<None>> tVar = this.f6937d;
        Resource resource = new Resource(ResourceState.Loading.f12178a, null, null, 6, null);
        tVar.b(resource);
        C1125ra unused = C1103g.b(this, null, null, new NickNameViewModel$setNickName$1(this, str, null), 3, null);
    }
}
