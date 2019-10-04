package c.c.a.n.y;

import androidx.lifecycle.LiveData;
import b.r.t;
import c.c.a.d.f.p;
import c.c.a.e.d.u.a;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.None;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;
import java.util.concurrent.TimeUnit;

/* compiled from: SplashViewModel.kt */
public final class e extends p {

    /* renamed from: d  reason: collision with root package name */
    public final t<Resource<None>> f7096d = new t<>();

    /* renamed from: e  reason: collision with root package name */
    public final a f7097e;

    /* renamed from: f  reason: collision with root package name */
    public final c.c.a.e.d.a.a f7098f;

    public e(a aVar, c.c.a.e.d.a.a aVar2) {
        j.b(aVar, "settingsRepository");
        j.b(aVar2, "accountRepository");
        this.f7097e = aVar;
        this.f7098f = aVar2;
    }

    public final LiveData<Resource<None>> e() {
        return this.f7096d;
    }

    public final boolean f() {
        return this.f7098f.q();
    }

    public final boolean g() {
        return System.currentTimeMillis() - this.f7098f.e() >= TimeUnit.DAYS.toMillis(1);
    }

    public final boolean h() {
        return this.f7098f.d() > 0;
    }

    public final boolean i() {
        return g() || !h() || f();
    }

    public final void j() {
        t<Resource<None>> tVar = this.f7096d;
        Resource resource = new Resource(ResourceState.Loading.f12178a, null, null, 6, null);
        tVar.b(resource);
        C1125ra unused = C1103g.b(this, null, null, new SplashViewModel$registerDeviceAndGetInfo$1(this, null), 3, null);
    }

    public final void k() {
        if (i()) {
            j();
            return;
        }
        t<Resource<None>> tVar = this.f7096d;
        Resource resource = new Resource(ResourceState.Success.f12179a, null, null, 6, null);
        tVar.b(resource);
    }
}
