package com.farsitel.bazaar.ui.changelog;

import android.view.View;
import androidx.fragment.app.Fragment;
import b.r.E;
import b.r.G;
import c.c.a.n.c.d.k;
import c.c.a.n.i.g;
import c.c.a.n.i.h;
import com.farsitel.bazaar.analytics.model.where.ReleaseNoteScreen;
import com.farsitel.bazaar.data.entity.None;
import h.c;
import h.d;
import h.f.b.j;
import h.i.i;
import java.util.HashMap;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: ReleaseNoteFragment.kt */
public final class ReleaseNoteFragment extends k<ReleaseNoteItem, None, h> {
    public static final /* synthetic */ i[] ya;
    public boolean Aa;
    public HashMap Ba;
    public final c za = d.a(new ReleaseNoteFragment$titleName$2(this));

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(h.f.b.k.a(ReleaseNoteFragment.class), "titleName", "getTitleName()Ljava/lang/String;");
        h.f.b.k.a((PropertyReference1) propertyReference1Impl);
        ya = new i[]{propertyReference1Impl};
    }

    public void La() {
        HashMap hashMap = this.Ba;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public View e(int i2) {
        if (this.Ba == null) {
            this.Ba = new HashMap();
        }
        View view = (View) this.Ba.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.Ba.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public boolean hb() {
        return this.Aa;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public String rb() {
        c cVar = this.za;
        i iVar = ya[0];
        return (String) cVar.getValue();
    }

    public ReleaseNoteScreen Sa() {
        return new ReleaseNoteScreen();
    }

    public g Ua() {
        return new g();
    }

    public None Za() {
        return None.INSTANCE;
    }

    public h jb() {
        E a2 = G.a((Fragment) this, Ra()).a(h.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        return (h) a2;
    }
}
