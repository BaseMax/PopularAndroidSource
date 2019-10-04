package com.farsitel.bazaar.ui.upgradableapps;

import android.view.View;
import androidx.fragment.app.Fragment;
import b.r.E;
import b.r.G;
import c.c.a.n.A.g;
import c.c.a.n.c.c.n;
import c.c.a.n.c.d.l;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.where.UpgradableAppsScreen;
import com.farsitel.bazaar.data.entity.None;
import h.c;
import h.d;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import java.util.HashMap;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: UpgradableAppsFragment.kt */
public final class UpgradableAppsFragment extends n<None, g> {
    public static final /* synthetic */ i[] za;
    public int Aa = R.layout.view_empty_upgradable_apps;
    public final c Ba = d.a(new UpgradableAppsFragment$titleName$2(this));
    public boolean Ca;
    public HashMap Da;

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(UpgradableAppsFragment.class), "titleName", "getTitleName()Ljava/lang/String;");
        k.a((PropertyReference1) propertyReference1Impl);
        za = new i[]{propertyReference1Impl};
    }

    public static final /* synthetic */ g a(UpgradableAppsFragment upgradableAppsFragment) {
        return (g) upgradableAppsFragment.cb();
    }

    public void La() {
        HashMap hashMap = this.Da;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public int Wa() {
        return this.Aa;
    }

    public View e(int i2) {
        if (this.Da == null) {
            this.Da = new HashMap();
        }
        View view = (View) this.Da.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.Da.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public boolean hb() {
        return this.Ca;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public l qb() {
        l lVar = new l(R.string.title_upgradable_app_empty, R.drawable.ic_party, 0, null, 12, null);
        return lVar;
    }

    public String rb() {
        c cVar = this.Ba;
        i iVar = za[0];
        return (String) cVar.getValue();
    }

    public final c.c.a.n.A.d zb() {
        return new c.c.a.n.A.d(this);
    }

    public UpgradableAppsScreen Sa() {
        return new UpgradableAppsScreen();
    }

    public None Za() {
        return None.INSTANCE;
    }

    public g jb() {
        E a2 = G.a((Fragment) this, Ra()).a(g.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        return (g) a2;
    }

    public c.c.a.n.A.c Ua() {
        c.c.a.n.A.c cVar = new c.c.a.n.A.c(yb(), yb(), yb(), vb(), ub(), wb(), xb(), tb(), zb());
        return cVar;
    }
}
