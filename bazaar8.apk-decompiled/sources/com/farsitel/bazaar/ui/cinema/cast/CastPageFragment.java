package com.farsitel.bazaar.ui.cinema.cast;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import b.r.E;
import b.r.G;
import c.c.a.n.c.c.n;
import c.c.a.n.j.a.a;
import c.c.a.n.j.a.b;
import com.farsitel.bazaar.analytics.model.where.CastPageScreen;
import h.c;
import h.d;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import java.util.HashMap;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: CastPageFragment.kt */
public final class CastPageFragment extends n<a, b> {
    public static final /* synthetic */ i[] za;
    public a Aa;
    public boolean Ba;
    public final c Ca = d.a(new CastPageFragment$titleName$2(this));
    public HashMap Da;

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(CastPageFragment.class), "titleName", "getTitleName()Ljava/lang/String;");
        k.a((PropertyReference1) propertyReference1Impl);
        za = new i[]{propertyReference1Impl};
    }

    public static final /* synthetic */ a a(CastPageFragment castPageFragment) {
        a aVar = castPageFragment.Aa;
        if (aVar != null) {
            return aVar;
        }
        j.c("castPageFragmentArgs");
        throw null;
    }

    public void La() {
        HashMap hashMap = this.Da;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        a.C0095a aVar = a.f6438a;
        Bundle C = C();
        if (C != null) {
            j.a((Object) C, "arguments!!");
            this.Aa = aVar.a(C);
            return;
        }
        j.a();
        throw null;
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
        return this.Ba;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public String rb() {
        c cVar = this.Ca;
        i iVar = za[0];
        return (String) cVar.getValue();
    }

    public CastPageScreen Sa() {
        a aVar = this.Aa;
        if (aVar != null) {
            return new CastPageScreen(aVar.a());
        }
        j.c("castPageFragmentArgs");
        throw null;
    }

    public a Za() {
        a aVar = this.Aa;
        if (aVar != null) {
            return aVar;
        }
        j.c("castPageFragmentArgs");
        throw null;
    }

    public b jb() {
        E a2 = G.a((Fragment) this, Ra()).a(b.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        return (b) a2;
    }
}
