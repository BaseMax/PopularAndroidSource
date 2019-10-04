package c.c.a.n.r.a;

import androidx.lifecycle.LiveData;
import b.r.t;
import c.c.a.d.f.p;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.InvalidPassWordException;
import com.farsitel.bazaar.data.entity.RetryMoreThanTreeTimesException;
import h.f.b.f;
import h.f.b.j;

/* compiled from: BazaarKidsViewModel.kt */
public final class d extends p {

    /* renamed from: d  reason: collision with root package name */
    public static final a f6777d = new a(null);

    /* renamed from: e  reason: collision with root package name */
    public final t<Resource<Boolean>> f6778e = new t<>();

    /* renamed from: f  reason: collision with root package name */
    public final t<Boolean> f6779f = new t<>();

    /* renamed from: g  reason: collision with root package name */
    public Boolean f6780g = false;

    /* renamed from: h  reason: collision with root package name */
    public int f6781h;

    /* renamed from: i  reason: collision with root package name */
    public final c.c.a.e.d.u.a f6782i;

    /* compiled from: BazaarKidsViewModel.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public d(c.c.a.e.d.u.a aVar) {
        j.b(aVar, "settingsRepository");
        this.f6782i = aVar;
    }

    public final void a(String str) {
        j.b(str, "birthday");
        this.f6782i.d();
        if (j.a((Object) this.f6780g, (Object) true)) {
            b(str);
        } else {
            c(str);
        }
    }

    public final void b(String str) {
        if (j.a((Object) this.f6782i.h(), (Object) str)) {
            this.f6782i.b();
            t<Resource<Boolean>> tVar = this.f6778e;
            Resource resource = new Resource(ResourceState.Success.f12179a, false, null, 4, null);
            tVar.b(resource);
            return;
        }
        t<Resource<Boolean>> tVar2 = this.f6778e;
        Resource resource2 = new Resource(ResourceState.Error.f12177a, null, new InvalidPassWordException(), 2, null);
        tVar2.b(resource2);
        if (this.f6781h >= 2) {
            t<Resource<Boolean>> tVar3 = this.f6778e;
            Resource resource3 = new Resource(ResourceState.Error.f12177a, null, new RetryMoreThanTreeTimesException(), 2, null);
            tVar3.b(resource3);
        }
        this.f6781h++;
    }

    public final void c(String str) {
        this.f6782i.a(str);
        t<Resource<Boolean>> tVar = this.f6778e;
        Resource resource = new Resource(ResourceState.Success.f12179a, true, null, 4, null);
        tVar.b(resource);
    }

    public final void e() {
        this.f6782i.c();
    }

    public final LiveData<Resource<Boolean>> f() {
        return this.f6778e;
    }

    public final void g() {
        boolean u = this.f6782i.u();
        this.f6780g = Boolean.valueOf(this.f6782i.u());
        this.f6779f.b(Boolean.valueOf(u));
    }

    public final LiveData<Boolean> h() {
        return this.f6779f;
    }

    public final boolean i() {
        return this.f6782i.u();
    }

    public final boolean j() {
        return this.f6782i.F();
    }
}
