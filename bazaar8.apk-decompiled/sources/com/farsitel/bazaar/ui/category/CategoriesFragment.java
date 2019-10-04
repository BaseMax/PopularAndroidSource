package com.farsitel.bazaar.ui.category;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import b.o.a.C0290n;
import b.o.a.z;
import b.r.E;
import b.r.G;
import c.c.a.d.b.l;
import c.c.a.n.h.c;
import c.c.a.n.h.e;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.where.CategoriesScreen;
import com.farsitel.bazaar.common.model.categroy.CategoryModel;
import com.farsitel.bazaar.core.widget.loading.SpinKitView;
import com.google.android.material.tabs.TabLayout;
import h.a.u;
import h.d;
import h.f.b.f;
import h.f.b.j;
import h.f.b.k;
import h.h;
import h.i.i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: CategoriesFragment.kt */
public final class CategoriesFragment extends c.c.a.n.c.a.b {
    public static final /* synthetic */ i[] ia;
    public static final b ja = new b(null);
    public c ka;
    public int la = 1;
    public a ma;
    public final h.c na = d.a(new CategoriesFragment$isLocalePersian$2(this));
    public c.c.a.o.c oa;
    public HashMap pa;

    @SuppressLint({"WrongConstant"})
    /* compiled from: CategoriesFragment.kt */
    public static final class a extends z {

        /* renamed from: g  reason: collision with root package name */
        public final CategoryModel f12332g;

        /* renamed from: h  reason: collision with root package name */
        public final List<String> f12333h;

        /* renamed from: i  reason: collision with root package name */
        public final boolean f12334i;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public a(CategoryModel categoryModel, List<String> list, boolean z, C0290n nVar) {
            super(nVar, 1);
            j.b(categoryModel, "categoryModel");
            j.b(list, "tabTitles");
            j.b(nVar, "fragmentManager");
            this.f12332g = categoryModel;
            this.f12333h = list;
            this.f12334i = z;
        }

        public int a() {
            return 2;
        }

        public Fragment c(int i2) {
            int abs = Math.abs(i2 - (this.f12334i ? 1 : 0));
            if (abs == 0) {
                return e.wa.a(new ArrayList(this.f12332g.getAppItems()));
            }
            if (abs == 1) {
                return e.wa.a(new ArrayList(this.f12332g.getGameItems()));
            }
            throw new RuntimeException("Wrong index for category pager adapter");
        }

        public String a(int i2) {
            return this.f12333h.get(i2);
        }
    }

    /* compiled from: CategoriesFragment.kt */
    public static final class b {
        public b() {
        }

        public /* synthetic */ b(f fVar) {
            this();
        }
    }

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(CategoriesFragment.class), "isLocalePersian", "isLocalePersian()Z");
        k.a((PropertyReference1) propertyReference1Impl);
        ia = new i[]{propertyReference1Impl};
    }

    public void La() {
        HashMap hashMap = this.pa;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public h.f.a.a<h> Pa() {
        return new CategoriesFragment$retryLoadData$1(this);
    }

    public final c Ua() {
        c cVar = this.ka;
        if (cVar != null) {
            return cVar;
        }
        j.c("viewModel");
        throw null;
    }

    public final boolean Va() {
        h.c cVar = this.na;
        i iVar = ia[0];
        return ((Boolean) cVar.getValue()).booleanValue();
    }

    public View e(int i2) {
        if (this.pa == null) {
            this.pa = new HashMap();
        }
        View view = (View) this.pa.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.pa.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public final void k(boolean z) {
        if (z) {
            SpinKitView spinKitView = (SpinKitView) e(c.c.a.e.loading);
            j.a((Object) spinKitView, "loading");
            l.c(spinKitView);
            return;
        }
        SpinKitView spinKitView2 = (SpinKitView) e(c.c.a.e.loading);
        j.a((Object) spinKitView2, "loading");
        l.a(spinKitView2);
    }

    public void qa() {
        c.c.a.o.c cVar = this.oa;
        if (cVar != null) {
            cVar.b();
            ((TabLayout) e(c.c.a.e.tabLayout)).b((TabLayout.b) cVar);
        }
        this.oa = null;
        super.qa();
        La();
    }

    public CategoriesScreen Sa() {
        return new CategoriesScreen();
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.fragment_category, viewGroup, false);
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        b((ViewGroup) view.findViewById(R.id.errorView));
        E a2 = G.a((Fragment) this, Ra()).a(c.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        c cVar = (c) a2;
        cVar.f();
        c.c.a.d.b.h.a(this, cVar.e(), new CategoriesFragment$onViewCreated$$inlined$createViewModel$lambda$1(this));
        this.ka = cVar;
    }

    public final void a(CategoryModel categoryModel) {
        if (this.ma != null) {
            ViewPager viewPager = (ViewPager) e(c.c.a.e.viewPager);
            j.a((Object) viewPager, "viewPager");
            if (viewPager.getAdapter() != null) {
                return;
            }
        }
        List c2 = h.a.l.c(b((int) R.string.apps), b((int) R.string.games));
        if (Va()) {
            c2 = u.d(c2);
        }
        ((TabLayout) e(c.c.a.e.tabLayout)).setupWithViewPager((ViewPager) e(c.c.a.e.viewPager));
        Context E = E();
        TabLayout tabLayout = (TabLayout) e(c.c.a.e.tabLayout);
        j.a((Object) tabLayout, "tabLayout");
        ViewPager viewPager2 = (ViewPager) e(c.c.a.e.viewPager);
        j.a((Object) viewPager2, "viewPager");
        this.oa = new c.c.a.o.c(E, tabLayout, viewPager2);
        TabLayout tabLayout2 = (TabLayout) e(c.c.a.e.tabLayout);
        c.c.a.o.c cVar = this.oa;
        if (cVar != null) {
            tabLayout2.a((TabLayout.b) cVar);
            boolean Va = Va();
            C0290n D = D();
            j.a((Object) D, "childFragmentManager");
            this.ma = new a(categoryModel, c2, Va, D);
            ViewPager viewPager3 = (ViewPager) e(c.c.a.e.viewPager);
            j.a((Object) viewPager3, "viewPager");
            viewPager3.setAdapter(this.ma);
            ((ViewPager) e(c.c.a.e.viewPager)).a((ViewPager.f) new c.c.a.n.h.a(this));
            if (Va()) {
                ViewPager viewPager4 = (ViewPager) e(c.c.a.e.viewPager);
                j.a((Object) viewPager4, "viewPager");
                viewPager4.setCurrentItem(this.la);
                return;
            }
            return;
        }
        j.a();
        throw null;
    }

    public static /* synthetic */ void a(CategoriesFragment categoriesFragment, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = false;
        }
        categoriesFragment.k(z);
    }
}
