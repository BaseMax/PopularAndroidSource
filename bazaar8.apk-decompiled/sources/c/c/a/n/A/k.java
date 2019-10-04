package c.c.a.n.A;

import androidx.lifecycle.LiveData;
import b.r.r;
import c.c.a.d.f.p;
import c.c.a.e.d.b.ba;
import com.farsitel.bazaar.data.entity.UpgradableCount;
import h.f.b.j;

/* compiled from: UpgradableBadgeViewModel.kt */
public final class k extends p {

    /* renamed from: d  reason: collision with root package name */
    public UpgradableCount f6165d = new UpgradableCount(0, 0, 0, 0);

    /* renamed from: e  reason: collision with root package name */
    public final r<UpgradableCount> f6166e;

    /* renamed from: f  reason: collision with root package name */
    public final ba f6167f;

    public k(ba baVar) {
        j.b(baVar, "repository");
        this.f6167f = baVar;
        r<UpgradableCount> rVar = new r<>();
        rVar.a(this.f6167f.c(), new i(this));
        rVar.a(this.f6167f.d(), new j(this));
        this.f6166e = rVar;
    }

    public final LiveData<UpgradableCount> e() {
        return this.f6166e;
    }

    public final void a(int i2, int i3) {
        this.f6165d = UpgradableCount.copy$default(this.f6165d, 0, i2, 0, i3, 5, null);
        a(this.f6165d);
    }

    public final void b(int i2, int i3) {
        this.f6165d = UpgradableCount.copy$default(this.f6165d, i2, 0, i3, 0, 10, null);
        a(this.f6165d);
    }

    public final void a(UpgradableCount upgradableCount) {
        this.f6166e.b(upgradableCount);
    }
}
