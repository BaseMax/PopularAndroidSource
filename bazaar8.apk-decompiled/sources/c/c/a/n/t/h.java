package c.c.a.n.t;

import androidx.lifecycle.LiveData;
import b.r.t;
import c.c.a.d.c.b;
import c.c.a.e.d.a.a;
import c.c.a.e.d.m.d;
import c.c.a.n.c.d.g;
import c.c.a.p.I;
import com.farsitel.bazaar.common.model.user.User;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.None;
import com.farsitel.bazaar.ui.profile.ProfileRowItem;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;

/* compiled from: ProfileViewModel.kt */
public final class h extends g<ProfileRowItem, None> {

    /* renamed from: j  reason: collision with root package name */
    public final t<Resource<Long>> f6956j = new t<>();

    /* renamed from: k  reason: collision with root package name */
    public final t<Resource<None>> f6957k = new t<>();

    /* renamed from: l  reason: collision with root package name */
    public final a f6958l;
    public final b m;
    public final d n;
    public final c.c.a.e.d.r.b.b o;
    public final c.c.a.e.d.r.a.b p;
    public final c.c.a.e.d.d.b q;
    public final I r;

    public h(a aVar, b bVar, d dVar, c.c.a.e.d.r.b.b bVar2, c.c.a.e.d.r.a.b bVar3, c.c.a.e.d.d.b bVar4, I i2) {
        j.b(aVar, "accountRepository");
        j.b(bVar, "accountManager");
        j.b(dVar, "paymentRepository");
        j.b(bVar2, "commentRepository");
        j.b(bVar3, "commentActionRepository");
        j.b(bVar4, "bookmarkRepository");
        j.b(i2, "workManagerScheduler");
        this.f6958l = aVar;
        this.m = bVar;
        this.n = dVar;
        this.o = bVar2;
        this.p = bVar3;
        this.q = bVar4;
        this.r = i2;
    }

    public final LiveData<Resource<Long>> j() {
        return this.f6956j;
    }

    public final LiveData<Resource<None>> k() {
        return this.f6957k;
    }

    public final LiveData<User> l() {
        return this.m.c();
    }

    public final void m() {
        t<Resource<Long>> tVar = this.f6956j;
        Resource resource = new Resource(ResourceState.Loading.f12178a, null, null, 6, null);
        tVar.b(resource);
        C1125ra unused = C1103g.b(this, null, null, new ProfileViewModel$loadCredit$1(this, null), 3, null);
    }

    public final void n() {
        t<Resource<None>> tVar = this.f6957k;
        Resource resource = new Resource(ResourceState.Loading.f12178a, null, null, 6, null);
        tVar.b(resource);
        C1125ra unused = C1103g.b(this, null, null, new ProfileViewModel$logout$1(this, null), 3, null);
    }

    /* renamed from: a */
    public void d(None none) {
        j.b(none, "params");
        a(b.f6942a.a(this.f6958l.h(), this.f6958l.i()));
        m();
    }
}
