package c.c.a.n.c.c.c;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import b.o.a.C;
import c.c.a.d.b.l;
import c.c.a.d.f.o;
import c.c.a.e;
import c.c.a.n.c.a.b;
import c.c.a.n.c.c.c.d;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.Page;
import com.farsitel.bazaar.core.widget.loading.SpinKitView;
import com.google.android.material.tabs.TabLayout;
import h.f.a.a;
import h.f.b.j;
import h.f.b.k;
import h.h;
import h.i.i;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: BasePageContainerFragment.kt */
public abstract class c<Params, VM extends d<Params>> extends b {
    public static final /* synthetic */ i[] ia;
    public VM ja;
    public TabLayout ka;
    public ViewPager la;
    public final h.c ma = h.d.a(new BasePageContainerFragment$isLocalePersian$2(this));
    public Integer na;
    public HashMap oa;

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(c.class), "isLocalePersian", "isLocalePersian()Z");
        k.a((PropertyReference1) propertyReference1Impl);
        ia = new i[]{propertyReference1Impl};
    }

    public void La() {
        HashMap hashMap = this.oa;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public a<h> Pa() {
        return new BasePageContainerFragment$retryLoadData$1(this);
    }

    public abstract int Ua();

    public final ViewPager Va() {
        ViewPager viewPager = this.la;
        if (viewPager != null) {
            return viewPager;
        }
        j.c("pageTabViewPager");
        throw null;
    }

    public abstract Params Wa();

    public final VM Xa() {
        VM vm = this.ja;
        if (vm != null) {
            return vm;
        }
        j.c("viewModel");
        throw null;
    }

    public final boolean Ya() {
        h.c cVar = this.ma;
        i iVar = ia[0];
        return ((Boolean) cVar.getValue()).booleanValue();
    }

    public abstract VM Za();

    public abstract o a(Page page);

    public abstract e a(List<Page> list);

    public final void b(Page page) {
        if (D().a((int) R.id.pageContainer) == null) {
            C a2 = D().a();
            j.a((Object) a2, "childFragmentManager.beginTransaction()");
            a2.a((int) R.id.pageContainer, (Fragment) a(page));
            a2.b();
        }
    }

    public View e(int i2) {
        if (this.oa == null) {
            this.oa = new HashMap();
        }
        View view = (View) this.oa.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.oa.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public final void k(boolean z) {
        if (z) {
            SpinKitView spinKitView = (SpinKitView) e(e.loading);
            j.a((Object) spinKitView, "loading");
            l.c(spinKitView);
            return;
        }
        SpinKitView spinKitView2 = (SpinKitView) e(e.loading);
        j.a((Object) spinKitView2, "loading");
        l.a(spinKitView2);
    }

    public abstract void l(boolean z);

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public final void b(List<Page> list) {
        e a2 = a(list);
        TabLayout tabLayout = this.ka;
        if (tabLayout != null) {
            ViewPager viewPager = this.la;
            if (viewPager != null) {
                tabLayout.setupWithViewPager(viewPager);
                ViewPager viewPager2 = this.la;
                if (viewPager2 != null) {
                    viewPager2.setOffscreenPageLimit(list.size());
                    ViewPager viewPager3 = this.la;
                    if (viewPager3 != null) {
                        viewPager3.setAdapter(a2);
                        ViewPager viewPager4 = this.la;
                        if (viewPager4 != null) {
                            viewPager4.a((ViewPager.f) new b(this));
                            if (this.na == null) {
                                this.na = Integer.valueOf(Ya() ? list.size() - 1 : 0);
                            }
                            ViewPager viewPager5 = this.la;
                            if (viewPager5 != null) {
                                Integer num = this.na;
                                if (num != null) {
                                    viewPager5.setCurrentItem(num.intValue());
                                } else {
                                    j.a();
                                    throw null;
                                }
                            } else {
                                j.c("pageTabViewPager");
                                throw null;
                            }
                        } else {
                            j.c("pageTabViewPager");
                            throw null;
                        }
                    } else {
                        j.c("pageTabViewPager");
                        throw null;
                    }
                } else {
                    j.c("pageTabViewPager");
                    throw null;
                }
            } else {
                j.c("pageTabViewPager");
                throw null;
            }
        } else {
            j.c("tabLayout");
            throw null;
        }
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(Ua(), viewGroup, false);
        j.a((Object) inflate, "view");
        a(inflate, viewGroup);
        b(inflate);
        return inflate;
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        View findViewById = view.findViewById(R.id.tabLayout);
        j.a((Object) findViewById, "view.findViewById(R.id.tabLayout)");
        this.ka = (TabLayout) findViewById;
        View findViewById2 = view.findViewById(R.id.pageTabViewPager);
        j.a((Object) findViewById2, "view.findViewById(R.id.pageTabViewPager)");
        this.la = (ViewPager) findViewById2;
        VM Za = Za();
        Za.b(Wa());
        Za.e().a(ba(), new a(this));
        this.ja = Za;
    }

    public static /* synthetic */ void a(c cVar, boolean z, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 1) != 0) {
                z = false;
            }
            cVar.k(z);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setLoadingVisibility");
    }

    public static /* synthetic */ void b(c cVar, boolean z, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 1) != 0) {
                z = false;
            }
            cVar.l(z);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setVisibilityOfHeader");
    }

    public final void a(View view, ViewGroup viewGroup) {
        FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.emptyView);
        if (frameLayout != null) {
            frameLayout.addView(M().inflate(R.layout.view_empty, viewGroup, false));
        }
    }
}
