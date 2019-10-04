package com.farsitel.bazaar.ui.mybazaar;

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
import c.c.a.d.a.a;
import c.c.a.e;
import c.c.a.f.C0454q;
import c.c.a.n.A.k;
import c.c.a.n.r.n;
import c.c.a.n.r.o;
import c.c.a.n.r.p;
import c.c.a.n.r.q;
import c.c.a.n.r.t;
import com.crashlytics.android.answers.AnswersRetryFilesSender;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.where.MyBazaarScreen;
import com.farsitel.bazaar.common.model.user.User;
import com.farsitel.bazaar.ui.login.LoginActivity;
import com.google.android.material.tabs.TabLayout;
import h.a.l;
import h.a.u;
import h.c;
import h.d;
import h.f.b.f;
import h.f.b.j;
import h.i.i;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: MyBazaarFragment.kt */
public final class MyBazaarFragment extends c.c.a.n.c.a.b implements p {
    public static final /* synthetic */ i[] ia;
    public static final a ja = new a(null);
    public final int ka = AnswersRetryFilesSender.BACKOFF_MS;
    public C0454q la;
    public q ma;
    public k na;
    public Integer oa;
    public final c pa = d.a(new MyBazaarFragment$isLocalePersian$2(this));
    public c.c.a.o.c qa;
    public ViewPager.f ra;
    public HashMap sa;

    /* compiled from: MyBazaarFragment.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }

        public final int a(int i2, boolean z) {
            return Math.abs(i2 - (z ? 1 : 0));
        }
    }

    @SuppressLint({"WrongConstant"})
    /* compiled from: MyBazaarFragment.kt */
    public static final class b extends z {

        /* renamed from: g  reason: collision with root package name */
        public final List<String> f12339g;

        /* renamed from: h  reason: collision with root package name */
        public final boolean f12340h;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public b(List<String> list, boolean z, C0290n nVar) {
            super(nVar, 1);
            j.b(list, "tabTitles");
            j.b(nVar, "fragmentManager");
            this.f12339g = list;
            this.f12340h = z;
        }

        public int a() {
            return 2;
        }

        public Fragment c(int i2) {
            int a2 = MyBazaarFragment.ja.a(i2, this.f12340h);
            if (a2 == 0) {
                return new c.c.a.n.r.c();
            }
            if (a2 == 1) {
                return new t();
            }
            throw new RuntimeException("Wrong index for my bazaar pager adapter");
        }

        public String a(int i2) {
            return this.f12339g.get(i2);
        }
    }

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(h.f.b.k.a(MyBazaarFragment.class), "isLocalePersian", "isLocalePersian()Z");
        h.f.b.k.a((PropertyReference1) propertyReference1Impl);
        ia = new i[]{propertyReference1Impl};
    }

    public void La() {
        HashMap hashMap = this.sa;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public final String Ua() {
        a.C0074a aVar = c.c.a.d.a.a.f4744b;
        Context Ha = Ha();
        j.a((Object) Ha, "requireContext()");
        String language = aVar.a(Ha).n().getLanguage();
        return "http://help.cafebazaar.ir/?l=" + language;
    }

    public final boolean Va() {
        c cVar = this.pa;
        i iVar = ia[0];
        return ((Boolean) cVar.getValue()).booleanValue();
    }

    public final void Wa() {
        C0454q qVar = this.la;
        if (qVar != null) {
            String Ua = Ua();
            qVar.L.setOnClickListener(new l(this));
            qVar.J.setOnClickListener(new m(Ua, this));
            return;
        }
        j.c("binding");
        throw null;
    }

    public final void Xa() {
        ViewPager viewPager = (ViewPager) e(e.viewPager);
        j.a((Object) viewPager, "viewPager");
        if (viewPager.getAdapter() == null) {
            ((TabLayout) e(e.tabLayout)).setupWithViewPager((ViewPager) e(e.viewPager));
            List c2 = l.c(Ha().getString(R.string.my_bazaar_app_title), Ha().getString(R.string.my_bazaar_video_title));
            if (Va()) {
                c2 = u.d(c2);
            }
            ViewPager viewPager2 = (ViewPager) e(e.viewPager);
            j.a((Object) viewPager2, "viewPager");
            boolean Va = Va();
            C0290n D = D();
            j.a((Object) D, "childFragmentManager");
            viewPager2.setAdapter(new b(c2, Va, D));
        }
        Context E = E();
        TabLayout tabLayout = (TabLayout) e(e.tabLayout);
        j.a((Object) tabLayout, "tabLayout");
        ViewPager viewPager3 = (ViewPager) e(e.viewPager);
        j.a((Object) viewPager3, "viewPager");
        this.qa = new c.c.a.o.c(E, tabLayout, viewPager3);
        TabLayout tabLayout2 = (TabLayout) e(e.tabLayout);
        c.c.a.o.c cVar = this.qa;
        if (cVar != null) {
            tabLayout2.a((TabLayout.b) cVar);
            this.ra = new n(this);
            ViewPager viewPager4 = (ViewPager) e(e.viewPager);
            ViewPager.f fVar = this.ra;
            if (fVar != null) {
                viewPager4.a(fVar);
                if (this.oa == null) {
                    this.oa = Va() ? 1 : 0;
                }
                ViewPager viewPager5 = (ViewPager) e(e.viewPager);
                j.a((Object) viewPager5, "viewPager");
                Integer num = this.oa;
                if (num != null) {
                    viewPager5.setCurrentItem(num.intValue());
                } else {
                    j.a();
                    throw null;
                }
            } else {
                j.a();
                throw null;
            }
        } else {
            j.a();
            throw null;
        }
    }

    public void b(Bundle bundle) {
        super.b(bundle);
        E a2 = G.a((Fragment) this, Ra()).a(k.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        k kVar = (k) a2;
        kVar.e().a(ba(), new k(this));
        this.na = kVar;
        E a3 = G.a((Fragment) this, Ra()).a(q.class);
        j.a((Object) a3, "ViewModelProviders.of(th…, factory)[T::class.java]");
        this.ma = (q) a3;
        C0454q qVar = this.la;
        if (qVar != null) {
            q qVar2 = this.ma;
            if (qVar2 != null) {
                qVar.a(qVar2.e());
                qVar.a((p) this);
                qVar.a(ba());
                Xa();
                return;
            }
            j.c("myBazaarViewModel");
            throw null;
        }
        j.c("binding");
        throw null;
    }

    public View e(int i2) {
        if (this.sa == null) {
            this.sa = new HashMap();
        }
        View view = (View) this.sa.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.sa.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public final void k(boolean z) {
    }

    public void n() {
        c.c.a.i.c.a(b.w.b.b.a(this), o.f6801a.b());
    }

    public void p() {
        LoginActivity.a.a(LoginActivity.w, this, this.ka, null, null, 12, null);
    }

    public void q() {
        q qVar = this.ma;
        if (qVar != null) {
            User a2 = qVar.e().a();
            if (a2 != null && a2.isLoggedIn()) {
                n();
                return;
            }
            return;
        }
        j.c("myBazaarViewModel");
        throw null;
    }

    public void qa() {
        c.c.a.o.c cVar = this.qa;
        if (cVar != null) {
            cVar.b();
            ((TabLayout) e(e.tabLayout)).b((TabLayout.b) cVar);
        }
        this.qa = null;
        ViewPager.f fVar = this.ra;
        if (fVar != null) {
            ((ViewPager) e(e.viewPager)).b(fVar);
            this.ra = null;
        }
        super.qa();
        La();
    }

    public MyBazaarScreen Sa() {
        return new MyBazaarScreen();
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        C0454q a2 = C0454q.a(layoutInflater);
        j.a((Object) a2, "FragmentMyBazaarBinding.inflate(inflater)");
        this.la = a2;
        C0454q qVar = this.la;
        if (qVar != null) {
            return qVar.h();
        }
        j.c("binding");
        throw null;
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        Wa();
    }
}
