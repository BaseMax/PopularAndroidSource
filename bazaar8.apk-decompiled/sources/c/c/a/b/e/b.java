package c.c.a.b.e;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.Fragment;
import androidx.navigation.fragment.NavHostFragment;
import b.o.a.C0290n;
import b.w.C0313j;
import b.w.o;
import c.c.a.e;
import c.c.a.e.d.a.a;
import com.crashlytics.android.answers.SearchEvent;
import com.crashlytics.android.core.MetaDataStore;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.what.TabChangeEvent;
import com.farsitel.bazaar.analytics.model.where.WholeApplication;
import com.farsitel.bazaar.ui.home.MainActivity;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import h.a.A;
import h.c;
import h.d;
import h.f;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: NavigationManager.kt */
public final class b implements BottomNavigationView.b, BottomNavigationView.a {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ i[] f4627a;
    public final C0313j.a A;
    public final MainActivity B;
    public final a C;

    /* renamed from: b  reason: collision with root package name */
    public final int f4628b = 1;

    /* renamed from: c  reason: collision with root package name */
    public final int f4629c = 2;

    /* renamed from: d  reason: collision with root package name */
    public final int f4630d = 3;

    /* renamed from: e  reason: collision with root package name */
    public final int f4631e = 4;

    /* renamed from: f  reason: collision with root package name */
    public final int f4632f = 5;

    /* renamed from: g  reason: collision with root package name */
    public final int f4633g = 6;

    /* renamed from: h  reason: collision with root package name */
    public final int f4634h = 7;

    /* renamed from: i  reason: collision with root package name */
    public final Map<Integer, Integer> f4635i;

    /* renamed from: j  reason: collision with root package name */
    public int f4636j;

    /* renamed from: k  reason: collision with root package name */
    public C0313j f4637k;

    /* renamed from: l  reason: collision with root package name */
    public final c f4638l;
    public final c m;
    public final c n;
    public final c o;
    public final c p;
    public final c q;
    public final c r;
    public final c s;
    public final c t;
    public final c u;
    public final c v;
    public final c w;
    public final c x;
    public final c y;
    public final c z;

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(b.class), "intentHandler", "getIntentHandler()Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandler;");
        k.a((PropertyReference1) propertyReference1Impl);
        PropertyReference1Impl propertyReference1Impl2 = new PropertyReference1Impl(k.a(b.class), "navHomeController", "getNavHomeController()Landroidx/navigation/NavController;");
        k.a((PropertyReference1) propertyReference1Impl2);
        PropertyReference1Impl propertyReference1Impl3 = new PropertyReference1Impl(k.a(b.class), "navAppController", "getNavAppController()Landroidx/navigation/NavController;");
        k.a((PropertyReference1) propertyReference1Impl3);
        PropertyReference1Impl propertyReference1Impl4 = new PropertyReference1Impl(k.a(b.class), "navGameController", "getNavGameController()Landroidx/navigation/NavController;");
        k.a((PropertyReference1) propertyReference1Impl4);
        PropertyReference1Impl propertyReference1Impl5 = new PropertyReference1Impl(k.a(b.class), "navVideosController", "getNavVideosController()Landroidx/navigation/NavController;");
        k.a((PropertyReference1) propertyReference1Impl5);
        PropertyReference1Impl propertyReference1Impl6 = new PropertyReference1Impl(k.a(b.class), "navCategoriesController", "getNavCategoriesController()Landroidx/navigation/NavController;");
        k.a((PropertyReference1) propertyReference1Impl6);
        PropertyReference1Impl propertyReference1Impl7 = new PropertyReference1Impl(k.a(b.class), "navSearchController", "getNavSearchController()Landroidx/navigation/NavController;");
        k.a((PropertyReference1) propertyReference1Impl7);
        PropertyReference1Impl propertyReference1Impl8 = new PropertyReference1Impl(k.a(b.class), "navMyBazaarController", "getNavMyBazaarController()Landroidx/navigation/NavController;");
        k.a((PropertyReference1) propertyReference1Impl8);
        PropertyReference1Impl propertyReference1Impl9 = new PropertyReference1Impl(k.a(b.class), "homeTabContainer", "getHomeTabContainer()Landroid/view/View;");
        k.a((PropertyReference1) propertyReference1Impl9);
        PropertyReference1Impl propertyReference1Impl10 = new PropertyReference1Impl(k.a(b.class), "appTabContainer", "getAppTabContainer()Landroid/view/View;");
        k.a((PropertyReference1) propertyReference1Impl10);
        PropertyReference1Impl propertyReference1Impl11 = new PropertyReference1Impl(k.a(b.class), "gameTabContainer", "getGameTabContainer()Landroid/view/View;");
        k.a((PropertyReference1) propertyReference1Impl11);
        PropertyReference1Impl propertyReference1Impl12 = new PropertyReference1Impl(k.a(b.class), "videosTabContainer", "getVideosTabContainer()Landroid/view/View;");
        k.a((PropertyReference1) propertyReference1Impl12);
        PropertyReference1Impl propertyReference1Impl13 = new PropertyReference1Impl(k.a(b.class), "categoriesTabContainer", "getCategoriesTabContainer()Landroid/view/View;");
        k.a((PropertyReference1) propertyReference1Impl13);
        PropertyReference1Impl propertyReference1Impl14 = new PropertyReference1Impl(k.a(b.class), "searchTabContainer", "getSearchTabContainer()Landroid/view/View;");
        k.a((PropertyReference1) propertyReference1Impl14);
        PropertyReference1Impl propertyReference1Impl15 = new PropertyReference1Impl(k.a(b.class), "myBazaarTabContainer", "getMyBazaarTabContainer()Landroid/view/View;");
        k.a((PropertyReference1) propertyReference1Impl15);
        f4627a = new i[]{propertyReference1Impl, propertyReference1Impl2, propertyReference1Impl3, propertyReference1Impl4, propertyReference1Impl5, propertyReference1Impl6, propertyReference1Impl7, propertyReference1Impl8, propertyReference1Impl9, propertyReference1Impl10, propertyReference1Impl11, propertyReference1Impl12, propertyReference1Impl13, propertyReference1Impl14, propertyReference1Impl15};
    }

    public b(MainActivity mainActivity, a aVar, Locale locale) {
        j.b(mainActivity, "mainActivity");
        j.b(aVar, "accountRepository");
        j.b(locale, "locale");
        this.B = mainActivity;
        this.C = aVar;
        ((BottomNavigationView) this.B.d(e.bottomNavigation)).setOnNavigationItemSelectedListener(this);
        ((BottomNavigationView) this.B.d(e.bottomNavigation)).setOnNavigationItemReselectedListener(this);
        r();
        this.f4635i = A.b(f.a(Integer.valueOf(this.f4628b), Integer.valueOf(R.id.homeFragment)), f.a(Integer.valueOf(this.f4629c), Integer.valueOf(R.id.appFragment)), f.a(Integer.valueOf(this.f4630d), Integer.valueOf(R.id.gameFragment)), f.a(Integer.valueOf(this.f4631e), Integer.valueOf(R.id.videosFragment)), f.a(Integer.valueOf(this.f4632f), Integer.valueOf(R.id.categoriesFragment)), f.a(Integer.valueOf(this.f4633g), Integer.valueOf(R.id.searchFragment)), f.a(Integer.valueOf(this.f4634h), Integer.valueOf(R.id.myBazaarFragment)));
        this.f4636j = this.f4628b;
        this.f4638l = d.a(new NavigationManager$intentHandler$2(this, locale));
        this.m = d.a(new NavigationManager$navHomeController$2(this));
        this.n = d.a(new NavigationManager$navAppController$2(this));
        this.o = d.a(new NavigationManager$navGameController$2(this));
        this.p = d.a(new NavigationManager$navVideosController$2(this));
        this.q = d.a(new NavigationManager$navCategoriesController$2(this));
        this.r = d.a(new NavigationManager$navSearchController$2(this));
        this.s = d.a(new NavigationManager$navMyBazaarController$2(this));
        this.t = d.a(new NavigationManager$homeTabContainer$2(this));
        this.u = d.a(new NavigationManager$appTabContainer$2(this));
        this.v = d.a(new NavigationManager$gameTabContainer$2(this));
        this.w = d.a(new NavigationManager$videosTabContainer$2(this));
        this.x = d.a(new NavigationManager$categoriesTabContainer$2(this));
        this.y = d.a(new NavigationManager$searchTabContainer$2(this));
        this.z = d.a(new NavigationManager$myBazaarTabContainer$2(this));
        this.A = new a(this);
    }

    public final View b() {
        c cVar = this.u;
        i iVar = f4627a[9];
        return (View) cVar.getValue();
    }

    public final View c() {
        c cVar = this.x;
        i iVar = f4627a[12];
        return (View) cVar.getValue();
    }

    public final View d() {
        c cVar = this.v;
        i iVar = f4627a[10];
        return (View) cVar.getValue();
    }

    public final View e() {
        c cVar = this.t;
        i iVar = f4627a[8];
        return (View) cVar.getValue();
    }

    public final c.c.a.b.e.a.a f() {
        c cVar = this.f4638l;
        i iVar = f4627a[0];
        return (c.c.a.b.e.a.a) cVar.getValue();
    }

    public final MainActivity g() {
        return this.B;
    }

    public final View h() {
        c cVar = this.z;
        i iVar = f4627a[14];
        return (View) cVar.getValue();
    }

    public final C0313j i() {
        c cVar = this.n;
        i iVar = f4627a[2];
        return (C0313j) cVar.getValue();
    }

    public final C0313j j() {
        c cVar = this.q;
        i iVar = f4627a[5];
        return (C0313j) cVar.getValue();
    }

    public final C0313j k() {
        c cVar = this.o;
        i iVar = f4627a[3];
        return (C0313j) cVar.getValue();
    }

    public final C0313j l() {
        c cVar = this.m;
        i iVar = f4627a[1];
        return (C0313j) cVar.getValue();
    }

    public final C0313j m() {
        c cVar = this.s;
        i iVar = f4627a[7];
        return (C0313j) cVar.getValue();
    }

    public final C0313j n() {
        c cVar = this.r;
        i iVar = f4627a[6];
        return (C0313j) cVar.getValue();
    }

    public final C0313j o() {
        c cVar = this.p;
        i iVar = f4627a[4];
        return (C0313j) cVar.getValue();
    }

    public final View p() {
        c cVar = this.y;
        i iVar = f4627a[13];
        return (View) cVar.getValue();
    }

    public final View q() {
        c cVar = this.w;
        i iVar = f4627a[11];
        return (View) cVar.getValue();
    }

    public final void r() {
        try {
            if (this.C.s()) {
                int i2 = this.f4628b;
                String string = this.B.getString(R.string.tab_title_home);
                j.a((Object) string, "mainActivity.getString(R.string.tab_title_home)");
                a(i2, 0, string, R.drawable.ic_round_home_24px);
            }
            if (this.C.n()) {
                int i3 = this.f4629c;
                String string2 = this.B.getString(R.string.tab_title_app);
                j.a((Object) string2, "mainActivity.getString(R.string.tab_title_app)");
                a(i3, 1, string2, R.drawable.ic_round_apps_24px);
            }
            if (this.C.r()) {
                int i4 = this.f4630d;
                String string3 = this.B.getString(R.string.tab_title_games);
                j.a((Object) string3, "mainActivity.getString(R.string.tab_title_games)");
                a(i4, 2, string3, R.drawable.ic_round_games_24px);
            }
            if (this.C.y()) {
                int i5 = this.f4631e;
                String string4 = this.B.getString(R.string.tab_title_video);
                j.a((Object) string4, "mainActivity.getString(R.string.tab_title_video)");
                a(i5, 3, string4, R.drawable.ic_round_play_circle_filled_24px);
            }
            if (this.C.o()) {
                int i6 = this.f4632f;
                String string5 = this.B.getString(R.string.tab_title_categories);
                j.a((Object) string5, "mainActivity.getString(R…ing.tab_title_categories)");
                a(i6, 4, string5, R.drawable.ic_categories);
            }
            if (this.C.w()) {
                int i7 = this.f4633g;
                String string6 = this.B.getString(R.string.tab_title_search);
                j.a((Object) string6, "mainActivity.getString(R.string.tab_title_search)");
                a(i7, 5, string6, R.drawable.ic_round_search_24px);
            }
            if (this.C.v()) {
                int i8 = this.f4634h;
                String string7 = this.B.getString(R.string.tab_title_my_bazaar);
                j.a((Object) string7, "mainActivity.getString(R…ring.tab_title_my_bazaar)");
                a(i8, 6, string7, R.drawable.ic_mybazaar_logo);
            }
        } catch (IllegalArgumentException unused) {
            BottomNavigationView bottomNavigationView = (BottomNavigationView) this.B.d(e.bottomNavigation);
            j.a((Object) bottomNavigationView, "mainActivity.bottomNavigation");
            bottomNavigationView.getMenu().clear();
            int i9 = this.f4628b;
            String string8 = this.B.getString(R.string.tab_title_home);
            j.a((Object) string8, "mainActivity.getString(R.string.tab_title_home)");
            a(i9, 0, string8, R.drawable.ic_round_home_24px);
            int i10 = this.f4631e;
            String string9 = this.B.getString(R.string.tab_title_video);
            j.a((Object) string9, "mainActivity.getString(R.string.tab_title_video)");
            a(i10, 1, string9, R.drawable.ic_round_play_circle_filled_24px);
            int i11 = this.f4632f;
            String string10 = this.B.getString(R.string.tab_title_categories);
            j.a((Object) string10, "mainActivity.getString(R…ing.tab_title_categories)");
            a(i11, 2, string10, R.drawable.ic_categories);
            int i12 = this.f4633g;
            String string11 = this.B.getString(R.string.tab_title_search);
            j.a((Object) string11, "mainActivity.getString(R.string.tab_title_search)");
            a(i12, 3, string11, R.drawable.ic_round_search_24px);
            int i13 = this.f4634h;
            String string12 = this.B.getString(R.string.tab_title_my_bazaar);
            j.a((Object) string12, "mainActivity.getString(R…ring.tab_title_my_bazaar)");
            a(i13, 4, string12, R.drawable.ic_mybazaar_logo);
        }
    }

    public final void s() {
        b(this.f4628b);
    }

    public final void t() {
        C0313j jVar = this.f4637k;
        if (jVar != null) {
            o c2 = jVar.c();
            if (c2 == null || c2.d() != ((Number) A.b(this.f4635i, Integer.valueOf(this.f4636j))).intValue()) {
                jVar.h();
            } else if (j.a((Object) this.f4637k, (Object) l())) {
                this.B.finish();
            } else {
                b(this.f4628b);
            }
        } else {
            this.B.finish();
        }
    }

    public final void u() {
        C0313j jVar = this.f4637k;
        if (jVar != null) {
            jVar.h();
        }
    }

    public final void a(Bundle bundle) {
        if (bundle != null) {
            BottomNavigationView bottomNavigationView = (BottomNavigationView) this.B.d(e.bottomNavigation);
            j.a((Object) bottomNavigationView, "bottomNavigation");
            b(bottomNavigationView.getSelectedItemId());
        }
    }

    public final void b(int i2) {
        String a2 = a(this.f4636j);
        String a3 = a(i2);
        this.f4636j = i2;
        BottomNavigationView bottomNavigationView = (BottomNavigationView) this.B.d(e.bottomNavigation);
        j.a((Object) bottomNavigationView, "mainActivity.bottomNavigation");
        MenuItem findItem = bottomNavigationView.getMenu().findItem(i2);
        if (findItem != null) {
            findItem.setChecked(true);
        }
        if (i2 == this.f4628b) {
            this.f4637k = l();
            a(this, 0, 0, 0, 0, 0, 0, 0, 126, null);
        } else if (i2 == this.f4629c) {
            this.f4637k = i();
            a(this, 0, 0, 0, 0, 0, 0, 0, 125, null);
        } else if (i2 == this.f4630d) {
            this.f4637k = k();
            a(this, 0, 0, 0, 0, 0, 0, 0, 123, null);
        } else if (i2 == this.f4631e) {
            this.f4637k = o();
            a(this, 0, 0, 0, 0, 0, 0, 0, 119, null);
        } else if (i2 == this.f4632f) {
            this.f4637k = j();
            a(this, 0, 0, 0, 0, 0, 0, 0, 111, null);
        } else if (i2 == this.f4633g) {
            this.f4637k = n();
            a(this, 0, 0, 0, 0, 0, 0, 0, 95, null);
        } else if (i2 == this.f4634h) {
            this.f4637k = m();
            a(this, 0, 0, 0, 0, 0, 0, 0, 63, null);
        } else {
            c.c.a.c.c.a.f4699b.a(new Throwable("Invalid tab Id"));
        }
        if (a2 != null && a3 != null) {
            c.c.a.a.a.f4477c.a(new c.c.a.a.a.a(MetaDataStore.USERDATA_SUFFIX, new TabChangeEvent(a2, a3), new WholeApplication()));
        }
    }

    public final void a(int i2, int i3, CharSequence charSequence, int i4) {
        BottomNavigationView bottomNavigationView = (BottomNavigationView) this.B.d(e.bottomNavigation);
        j.a((Object) bottomNavigationView, "mainActivity.bottomNavigation");
        bottomNavigationView.getMenu().add(0, i2, i3, charSequence).setIcon(i4);
    }

    public final String a(int i2) {
        if (i2 == this.f4628b) {
            return "home";
        }
        if (i2 == this.f4629c) {
            return "app";
        }
        if (i2 == this.f4630d) {
            return "game";
        }
        if (i2 == this.f4631e) {
            return "video";
        }
        if (i2 == this.f4632f) {
            return "category";
        }
        if (i2 == this.f4633g) {
            return SearchEvent.TYPE;
        }
        if (i2 == this.f4634h) {
            return "my_bazaar";
        }
        c.c.a.c.c.a.f4699b.a(new Throwable("Invalid tab Id"));
        return null;
    }

    public static /* synthetic */ void a(b bVar, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            i2 = 4;
        }
        if ((i9 & 2) != 0) {
            i3 = 4;
        }
        if ((i9 & 4) != 0) {
            i4 = 4;
        }
        if ((i9 & 8) != 0) {
            i5 = 4;
        }
        if ((i9 & 16) != 0) {
            i6 = 4;
        }
        if ((i9 & 32) != 0) {
            i7 = 4;
        }
        if ((i9 & 64) != 0) {
            i8 = 4;
        }
        bVar.a(i2, i3, i4, i5, i6, i7, i8);
    }

    public final void a(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        e().setVisibility(i2);
        b().setVisibility(i3);
        d().setVisibility(i4);
        q().setVisibility(i5);
        c().setVisibility(i6);
        p().setVisibility(i7);
        h().setVisibility(i8);
        if (i7 != 0) {
            MainActivity mainActivity = this.B;
            CoordinatorLayout D = mainActivity.D();
            c.c.a.d.b.a.a(mainActivity, D != null ? D.getWindowToken() : null);
        }
    }

    public boolean a(MenuItem menuItem) {
        j.b(menuItem, "item");
        b(menuItem.getItemId());
        return true;
    }

    public final void a(Intent intent) {
        j.b(intent, "intent");
        f().a(intent, this.B);
    }

    public final C0313j a() {
        return this.f4637k;
    }

    public void b(MenuItem menuItem) {
        j.b(menuItem, "item");
        C0313j jVar = this.f4637k;
        Integer num = this.f4635i.get(Integer.valueOf(menuItem.getItemId()));
        Boolean bool = null;
        if (jVar != null) {
            if (num != null) {
                bool = Boolean.valueOf(jVar.a(num.intValue(), false));
            } else {
                j.a();
                throw null;
            }
        }
        if (j.a((Object) bool, (Object) false)) {
            try {
                C0290n r2 = this.B.r();
                j.a((Object) r2, "mainActivity.supportFragmentManager");
                List<Fragment> c2 = r2.c();
                j.a((Object) c2, "mainActivity.supportFragmentManager.fragments");
                for (Fragment fragment : c2) {
                    j.a((Object) fragment, "parent");
                    if ((fragment.ma() && fragment.Z() && fragment.ka() && j.a((Object) b.w.b.b.a(fragment), (Object) this.f4637k)) && (fragment instanceof NavHostFragment)) {
                        C0290n D = ((NavHostFragment) fragment).D();
                        j.a((Object) D, "parent.childFragmentManager");
                        List<Fragment> c3 = D.c();
                        j.a((Object) c3, "parent.childFragmentManager.fragments");
                        if (!c3.isEmpty()) {
                            C0290n D2 = ((NavHostFragment) fragment).D();
                            j.a((Object) D2, "parent.childFragmentManager");
                            Fragment fragment2 = D2.c().get(0);
                            if (fragment2 instanceof c.c.a.n.c.d.f) {
                                ((c.c.a.n.c.d.f) fragment2).lb();
                            }
                        }
                    }
                }
            } catch (Exception e2) {
                c.c.a.c.c.a.f4699b.a((Throwable) e2);
            }
        }
    }
}
