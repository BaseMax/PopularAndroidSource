package com.farsitel.bazaar.ui.installedapp;

import android.view.View;
import androidx.fragment.app.Fragment;
import b.r.E;
import b.r.G;
import c.c.a.n.c.c.n;
import c.c.a.n.n.a;
import com.farsitel.bazaar.analytics.model.where.InstalledAppsScreen;
import com.farsitel.bazaar.data.entity.None;
import h.c;
import h.d;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import java.util.HashMap;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: InstalledAppsFragment.kt */
public final class InstalledAppsFragment extends n<None, a> {
    public static final /* synthetic */ i[] za;
    public final c Aa = d.a(new InstalledAppsFragment$titleName$2(this));
    public boolean Ba;
    public HashMap Ca;

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(InstalledAppsFragment.class), "titleName", "getTitleName()Ljava/lang/String;");
        k.a((PropertyReference1) propertyReference1Impl);
        za = new i[]{propertyReference1Impl};
    }

    public void La() {
        HashMap hashMap = this.Ca;
        if (hashMap != null) {
            hashMap.clear();
        }
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

    public boolean hb() {
        return this.Ba;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public String rb() {
        c cVar = this.Aa;
        i iVar = za[0];
        return (String) cVar.getValue();
    }

    public InstalledAppsScreen Sa() {
        return new InstalledAppsScreen();
    }

    public None Za() {
        return None.INSTANCE;
    }

    public a jb() {
        E a2 = G.a((Fragment) this, Ra()).a(a.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        return (a) a2;
    }
}
