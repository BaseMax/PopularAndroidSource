package c.c.a.n.m;

import b.r.u;
import c.c.a.e;
import c.c.a.i.a;
import com.farsitel.bazaar.data.entity.UpgradableCount;
import com.farsitel.bazaar.ui.home.MainActivity;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import h.f.b.j;

/* compiled from: MainActivity.kt */
final class h<T> implements u<UpgradableCount> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ MainActivity f6687a;

    public h(MainActivity mainActivity) {
        this.f6687a = mainActivity;
    }

    public final void a(UpgradableCount upgradableCount) {
        BottomNavigationView bottomNavigationView = (BottomNavigationView) this.f6687a.d(e.bottomNavigation);
        j.a((Object) bottomNavigationView, "bottomNavigation");
        a.a(bottomNavigationView, 0, upgradableCount.getNeedToShowBadge());
    }
}
