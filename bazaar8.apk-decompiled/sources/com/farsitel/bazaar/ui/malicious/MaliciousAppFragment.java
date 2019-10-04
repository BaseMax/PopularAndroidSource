package com.farsitel.bazaar.ui.malicious;

import android.content.Context;
import android.view.View;
import androidx.fragment.app.Fragment;
import b.r.E;
import b.r.G;
import c.c.a.c.d.c;
import c.c.a.n.c.a.b;
import c.c.a.n.c.c.n;
import c.c.a.n.c.d.l;
import c.c.a.n.q.a;
import c.c.a.n.q.e;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.what.MaliciousAppsMoreDescriptionButtonClick;
import com.farsitel.bazaar.analytics.model.what.MaliciousAppsVisit;
import com.farsitel.bazaar.analytics.model.where.MaliciousAppsScreen;
import com.farsitel.bazaar.data.entity.None;
import h.c;
import h.d;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import java.util.HashMap;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: MaliciousAppFragment.kt */
public final class MaliciousAppFragment extends n<None, e> {
    public static final /* synthetic */ i[] za;
    public int Aa = R.layout.view_empty_malicious_app;
    public final c Ba = d.a(new MaliciousAppFragment$titleName$2(this));
    public boolean Ca;
    public HashMap Da;

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(MaliciousAppFragment.class), "titleName", "getTitleName()Ljava/lang/String;");
        k.a((PropertyReference1) propertyReference1Impl);
        za = new i[]{propertyReference1Impl};
    }

    public final void Ab() {
        b.a(this, new MaliciousAppsMoreDescriptionButtonClick(zb()), null, null, 6, null);
        Context Ha = Ha();
        j.a((Object) Ha, "requireContext()");
        c.c.a.i.b.a(Ha, "https://cafebazaar.ir/security-notifications/", false, 2, null);
    }

    public final c.c.a.n.q.b Bb() {
        return new c.c.a.n.q.b(this);
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
        l lVar = new l(0, R.layout.view_empty_malicious_app, R.string.more_info, new MaliciousAppFragment$emptyViewData$1(this), 1, null);
        return lVar;
    }

    public String rb() {
        c cVar = this.Ba;
        i iVar = za[0];
        return (String) cVar.getValue();
    }

    public void ta() {
        super.ta();
        b.a(this, new MaliciousAppsVisit(zb()), null, null, 6, null);
    }

    public final String zb() {
        return c.c.a.c.d.d.a(new c.j(), null, 1, null);
    }

    public MaliciousAppsScreen Sa() {
        return new MaliciousAppsScreen();
    }

    public None Za() {
        return None.INSTANCE;
    }

    public e jb() {
        E a2 = G.a((Fragment) this, Ra()).a(e.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        return (e) a2;
    }

    public a Ua() {
        a aVar = new a(yb(), yb(), yb(), vb(), ub(), wb(), xb(), tb(), Bb());
        return aVar;
    }
}
