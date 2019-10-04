package com.farsitel.bazaar.ui.fehrest;

import android.os.Bundle;
import android.view.View;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.Fragment;
import b.o.a.C0290n;
import b.r.E;
import b.r.G;
import c.c.a.d.b.l;
import c.c.a.n.c.c.c.c;
import c.c.a.n.c.c.c.e;
import c.c.a.n.l.f;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.where.FehrestContainerScreen;
import com.farsitel.bazaar.common.model.Page;
import com.farsitel.bazaar.common.model.page.PageTypeItem;
import com.farsitel.bazaar.ui.fehrest.FehrestFragment;
import com.farsitel.bazaar.widget.LocalAwareTextView;
import com.farsitel.bazaar.widget.RTLImageView;
import com.google.android.material.appbar.AppBarLayout;
import h.d;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: FehrestFragmentContainer.kt */
public final class FehrestFragmentContainer extends c<f, c.c.a.n.l.a> {
    public static final /* synthetic */ i[] pa;
    public final int qa = R.layout.fragment_fehrest_container;
    public final h.c ra = d.a(new FehrestFragmentContainer$showBackButton$2(this));
    public final h.c sa = d.a(new FehrestFragmentContainer$toolbarName$2(this));
    public f ta;
    public HashMap ua;

    /* compiled from: FehrestFragmentContainer.kt */
    public static final class a extends e {

        /* renamed from: i  reason: collision with root package name */
        public final List<Page> f12338i;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public a(List<Page> list, boolean z, C0290n nVar) {
            super(list, z, nVar);
            j.b(list, "data");
            j.b(nVar, "fragmentManager");
            this.f12338i = list;
        }

        public Fragment c(int i2) {
            List<Page> list = this.f12338i;
            Page page = list.get(a(i2, list.size()));
            FehrestFragment.a aVar = FehrestFragment.za;
            String slug = page.getSlug();
            if (slug != null) {
                List<PageTypeItem> items = page.getItems();
                String referrer = page.getReferrer();
                if (referrer == null) {
                    referrer = c.c.a.c.d.e.a();
                }
                FehrestParams fehrestParams = new FehrestParams(slug, items, null, false, false, referrer, 12, null);
                return aVar.a(fehrestParams);
            }
            j.a();
            throw null;
        }
    }

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(FehrestFragmentContainer.class), "showBackButton", "getShowBackButton()Z");
        k.a((PropertyReference1) propertyReference1Impl);
        PropertyReference1Impl propertyReference1Impl2 = new PropertyReference1Impl(k.a(FehrestFragmentContainer.class), "toolbarName", "getToolbarName()Ljava/lang/String;");
        k.a((PropertyReference1) propertyReference1Impl2);
        pa = new i[]{propertyReference1Impl, propertyReference1Impl2};
    }

    public static final /* synthetic */ f a(FehrestFragmentContainer fehrestFragmentContainer) {
        f fVar = fehrestFragmentContainer.ta;
        if (fVar != null) {
            return fVar;
        }
        j.c("fehrestTabArgs");
        throw null;
    }

    public void La() {
        HashMap hashMap = this.ua;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public int Ua() {
        return this.qa;
    }

    public final boolean _a() {
        h.c cVar = this.ra;
        i iVar = pa[0];
        return ((Boolean) cVar.getValue()).booleanValue();
    }

    public final String ab() {
        h.c cVar = this.sa;
        i iVar = pa[1];
        return (String) cVar.getValue();
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        f.a aVar = f.f6667a;
        Bundle C = C();
        if (C != null) {
            j.a((Object) C, "arguments!!");
            this.ta = aVar.a(C);
            return;
        }
        j.a();
        throw null;
    }

    public View e(int i2) {
        if (this.ua == null) {
            this.ua = new HashMap();
        }
        View view = (View) this.ua.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.ua.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public void l(boolean z) {
        if (z) {
            AppBarLayout appBarLayout = (AppBarLayout) e(c.c.a.e.appBarLayout);
            if (appBarLayout != null) {
                l.a(appBarLayout);
            }
            l.c(Va());
            CardView cardView = (CardView) e(c.c.a.e.tabBarCard);
            if (cardView != null) {
                l.c(cardView);
                return;
            }
            return;
        }
        l.a(Va());
        CardView cardView2 = (CardView) e(c.c.a.e.tabBarCard);
        if (cardView2 != null) {
            l.a(cardView2);
        }
        AppBarLayout appBarLayout2 = (AppBarLayout) e(c.c.a.e.appBarLayout);
        if (appBarLayout2 != null) {
            l.c(appBarLayout2);
        }
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public FehrestContainerScreen Sa() {
        return new FehrestContainerScreen();
    }

    public f Wa() {
        f fVar = this.ta;
        if (fVar != null) {
            return fVar;
        }
        j.c("fehrestTabArgs");
        throw null;
    }

    public c.c.a.n.l.a Za() {
        E a2 = G.a((Fragment) this, Ra()).a(c.c.a.n.l.a.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        return (c.c.a.n.l.a) a2;
    }

    public final void c(String str) {
        LocalAwareTextView localAwareTextView = (LocalAwareTextView) e(c.c.a.e.toolbarTitle);
        if (localAwareTextView != null) {
            localAwareTextView.setText(str);
        }
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        if (!(ab().length() > 0) || !_a()) {
            RTLImageView rTLImageView = (RTLImageView) e(c.c.a.e.toolbarBack);
            if (rTLImageView != null) {
                l.a(rTLImageView);
            }
        } else {
            RTLImageView rTLImageView2 = (RTLImageView) e(c.c.a.e.toolbarBack);
            if (rTLImageView2 != null) {
                l.c(rTLImageView2);
            }
        }
        c(ab());
        ((c.c.a.n.l.a) Xa()).e().a(ba(), new d(this));
        RTLImageView rTLImageView3 = (RTLImageView) e(c.c.a.e.toolbarBack);
        if (rTLImageView3 != null) {
            rTLImageView3.setOnClickListener(new e(this));
        }
    }

    public FehrestFragment a(Page page) {
        j.b(page, "page");
        FehrestFragment.a aVar = FehrestFragment.za;
        f fVar = this.ta;
        if (fVar != null) {
            String c2 = fVar.c();
            List<PageTypeItem> items = page.getItems();
            String title = page.getTitle();
            String title2 = page.getTitle();
            boolean z = !(title2 == null || title2.length() == 0);
            String referrer = page.getReferrer();
            if (referrer == null) {
                referrer = c.c.a.c.d.e.a();
            }
            FehrestParams fehrestParams = new FehrestParams(c2, items, title, z, false, referrer, 16, null);
            return aVar.a(fehrestParams);
        }
        j.c("fehrestTabArgs");
        throw null;
    }

    public e a(List<Page> list) {
        j.b(list, "data");
        boolean Ya = Ya();
        C0290n D = D();
        j.a((Object) D, "childFragmentManager");
        return new a(list, Ya, D);
    }
}
