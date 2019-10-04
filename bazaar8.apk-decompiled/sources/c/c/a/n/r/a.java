package c.c.a.n.r;

import androidx.recyclerview.widget.RecyclerView;
import b.r.u;
import com.farsitel.bazaar.data.entity.UpgradableCount;

/* compiled from: AppChildMyBazaarFragment.kt */
final class a<T> implements u<UpgradableCount> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ c f6773a;

    public a(c cVar) {
        this.f6773a = cVar;
    }

    public final void a(UpgradableCount upgradableCount) {
        this.f6773a.c(upgradableCount.getUpgradeableAppCount(), upgradableCount.getMaliciousAppCount());
        this.f6773a.g(upgradableCount.getUpgradeableAppCount());
        this.f6773a.f(upgradableCount.getMaliciousAppCount());
        RecyclerView.a adapter = this.f6773a._a().getAdapter();
        if (adapter != null) {
            adapter.d();
        }
    }
}
