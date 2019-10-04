package com.farsitel.bazaar.ui.screenshot;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ObservableField;
import androidx.viewpager.widget.ViewPager;
import c.c.a.d.f.l;
import c.c.a.f.C0471w;
import c.c.a.n.v.e;
import c.c.a.n.v.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.data.entity.None;
import com.farsitel.bazaar.ui.appdetail.ScreenShotPagerItem;
import h.c;
import h.d;
import h.f.b.f;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import java.util.HashMap;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: ScreenshotFragment.kt */
public final class ScreenshotFragment extends l<None> {
    public static final /* synthetic */ i[] sa;
    public static final a ta = new a(null);
    public ObservableField<Boolean> Aa;
    public ObservableField<Boolean> Ba;
    public HashMap Ca;
    public e ua;
    public final c va = d.a(new ScreenshotFragment$isLocalePersian$2(this));
    public final String wa = "Screenshot";
    public boolean xa = true;
    public int ya = -16777216;
    public g za;

    /* compiled from: ScreenshotFragment.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(ScreenshotFragment.class), "isLocalePersian", "isLocalePersian()Z");
        k.a((PropertyReference1) propertyReference1Impl);
        sa = new i[]{propertyReference1Impl};
    }

    public void Qa() {
        HashMap hashMap = this.Ca;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public String Sa() {
        return this.wa;
    }

    public int Ta() {
        return this.ya;
    }

    public boolean Ya() {
        return this.xa;
    }

    public final boolean Za() {
        c cVar = this.va;
        i iVar = sa[0];
        return ((Boolean) cVar.getValue()).booleanValue();
    }

    public final void _a() {
        ViewPager viewPager = (ViewPager) e(c.c.a.e.screenshotViewPager);
        j.a((Object) viewPager, "screenshotViewPager");
        if (viewPager.getCurrentItem() > 0) {
            ViewPager viewPager2 = (ViewPager) e(c.c.a.e.screenshotViewPager);
            j.a((Object) viewPager2, "screenshotViewPager");
            ((ViewPager) e(c.c.a.e.screenshotViewPager)).a(viewPager2.getCurrentItem() - 1, true);
        }
    }

    public final void ab() {
        g gVar = this.za;
        if (gVar != null) {
            int a2 = gVar.a();
            ViewPager viewPager = (ViewPager) e(c.c.a.e.screenshotViewPager);
            j.a((Object) viewPager, "screenshotViewPager");
            if (a2 > viewPager.getCurrentItem()) {
                ViewPager viewPager2 = (ViewPager) e(c.c.a.e.screenshotViewPager);
                j.a((Object) viewPager2, "screenshotViewPager");
                ((ViewPager) e(c.c.a.e.screenshotViewPager)).a(viewPager2.getCurrentItem() + 1, true);
                return;
            }
            return;
        }
        j.c("viewPagerAdapter");
        throw null;
    }

    public final void b(View view) {
        View findViewById = view.findViewById(R.id.leftArrowButton);
        View findViewById2 = view.findViewById(R.id.rightArrowButton);
        View findViewById3 = view.findViewById(R.id.screenshotToolbarBackButton);
        findViewById.setOnClickListener(new a(this));
        findViewById2.setOnClickListener(new b(this));
        findViewById3.setOnClickListener(new c(this));
    }

    public final void bb() {
        La();
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        e.a aVar = e.f7030a;
        Bundle C = C();
        if (C != null) {
            j.a((Object) C, "arguments!!");
            this.ua = aVar.a(C);
            return;
        }
        j.a();
        throw null;
    }

    public View e(int i2) {
        if (this.Ca == null) {
            this.Ca = new HashMap();
        }
        View view = (View) this.Ca.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.Ca.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public void e(Bundle bundle) {
        int i2;
        j.b(bundle, "outState");
        super.e(bundle);
        e eVar = this.ua;
        if (eVar != null) {
            ScreenShotPagerItem a2 = eVar.a();
            ViewPager viewPager = (ViewPager) e(c.c.a.e.screenshotViewPager);
            if (viewPager != null) {
                i2 = viewPager.getCurrentItem();
            } else {
                e eVar2 = this.ua;
                if (eVar2 != null) {
                    i2 = eVar2.a().b();
                } else {
                    j.c("screenshotArgs");
                    throw null;
                }
            }
            a2.a(i2);
            e eVar3 = this.ua;
            if (eVar3 != null) {
                bundle.putParcelable("data", eVar3.a());
            } else {
                j.c("screenshotArgs");
                throw null;
            }
        } else {
            j.c("screenshotArgs");
            throw null;
        }
    }

    public /* synthetic */ void qa() {
        super.qa();
        Qa();
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        this.Aa = new ObservableField<>(Boolean.valueOf(Za()));
        this.Ba = new ObservableField<>(Boolean.valueOf(!Za()));
        C0471w a2 = C0471w.a(layoutInflater, viewGroup, false);
        ObservableField<Boolean> observableField = this.Aa;
        if (observableField != null) {
            a2.a(25, (Object) observableField);
            ObservableField<Boolean> observableField2 = this.Ba;
            if (observableField2 != null) {
                a2.a(6, (Object) observableField2);
                j.a((Object) a2, "FragmentScreenshotBindin…wObserverField)\n        }");
                View h2 = a2.h();
                j.a((Object) h2, "FragmentScreenshotBindin…rverField)\n        }.root");
                return h2;
            }
            j.c("showRightArrowObserverField");
            throw null;
        }
        j.c("showLeftArrowObserverField");
        throw null;
    }

    public final void c(int i2, int i3) {
        ObservableField<Boolean> observableField = this.Aa;
        if (observableField != null) {
            boolean z = false;
            observableField.a(Boolean.valueOf(i2 != 0));
            ObservableField<Boolean> observableField2 = this.Ba;
            if (observableField2 != null) {
                if (i2 != i3 - 1) {
                    z = true;
                }
                observableField2.a(Boolean.valueOf(z));
                return;
            }
            j.c("showRightArrowObserverField");
            throw null;
        }
        j.c("showLeftArrowObserverField");
        throw null;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:3:0x0013, code lost:
        if (r6 != null) goto L_0x001e;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(android.view.View r5, android.os.Bundle r6) {
        /*
            r4 = this;
            java.lang.String r0 = "view"
            h.f.b.j.b(r5, r0)
            super.a((android.view.View) r5, (android.os.Bundle) r6)
            r0 = 0
            if (r6 == 0) goto L_0x0016
            java.lang.String r1 = "data"
            android.os.Parcelable r6 = r6.getParcelable(r1)
            com.farsitel.bazaar.ui.appdetail.ScreenShotPagerItem r6 = (com.farsitel.bazaar.ui.appdetail.ScreenShotPagerItem) r6
            if (r6 == 0) goto L_0x0016
            goto L_0x001e
        L_0x0016:
            c.c.a.n.v.e r6 = r4.ua
            if (r6 == 0) goto L_0x00a3
            com.farsitel.bazaar.ui.appdetail.ScreenShotPagerItem r6 = r6.a()
        L_0x001e:
            int r1 = c.c.a.e.screenshotViewPager
            android.view.View r1 = r4.e((int) r1)
            androidx.viewpager.widget.ViewPager r1 = (androidx.viewpager.widget.ViewPager) r1
            c.c.a.n.v.d r2 = new c.c.a.n.v.d
            r2.<init>(r4, r6)
            r1.a((androidx.viewpager.widget.ViewPager.f) r2)
            c.c.a.n.v.g r1 = new c.c.a.n.v.g
            b.o.a.n r2 = r4.D()
            java.lang.String r3 = "childFragmentManager"
            h.f.b.j.a((java.lang.Object) r2, (java.lang.String) r3)
            boolean r3 = r4.Za()
            if (r3 == 0) goto L_0x0048
            java.util.List r3 = r6.a()
            java.util.List r3 = h.a.u.d(r3)
            goto L_0x004c
        L_0x0048:
            java.util.List r3 = r6.a()
        L_0x004c:
            r1.<init>(r2, r3)
            r4.za = r1
            int r1 = c.c.a.e.screenshotViewPager
            android.view.View r1 = r4.e((int) r1)
            androidx.viewpager.widget.ViewPager r1 = (androidx.viewpager.widget.ViewPager) r1
            c.c.a.n.v.g r2 = r4.za
            if (r2 == 0) goto L_0x009d
            r1.setAdapter(r2)
            boolean r0 = r4.Za()
            if (r0 == 0) goto L_0x0076
            java.util.List r0 = r6.a()
            int r0 = r0.size()
            int r2 = r6.b()
            int r0 = r0 - r2
            int r0 = r0 + -1
            goto L_0x007a
        L_0x0076:
            int r0 = r6.b()
        L_0x007a:
            r1.setCurrentItem(r0)
            int r0 = c.c.a.e.screenshotViewPager
            android.view.View r0 = r4.e((int) r0)
            androidx.viewpager.widget.ViewPager r0 = (androidx.viewpager.widget.ViewPager) r0
            java.lang.String r1 = "screenshotViewPager"
            h.f.b.j.a((java.lang.Object) r0, (java.lang.String) r1)
            int r0 = r0.getCurrentItem()
            java.util.List r6 = r6.a()
            int r6 = r6.size()
            r4.c(r0, r6)
            r4.b(r5)
            return
        L_0x009d:
            java.lang.String r5 = "viewPagerAdapter"
            h.f.b.j.c(r5)
            throw r0
        L_0x00a3:
            java.lang.String r5 = "screenshotArgs"
            h.f.b.j.c(r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.ui.screenshot.ScreenshotFragment.a(android.view.View, android.os.Bundle):void");
    }
}
