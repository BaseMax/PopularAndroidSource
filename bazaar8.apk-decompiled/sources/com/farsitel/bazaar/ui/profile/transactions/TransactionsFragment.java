package com.farsitel.bazaar.ui.profile.transactions;

import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import b.r.E;
import b.r.G;
import b.y.a.C0346p;
import c.c.a.n.c.d.k;
import c.c.a.n.t.c.a;
import c.c.a.n.t.c.b;
import c.c.a.n.t.c.c;
import com.farsitel.bazaar.analytics.model.where.TransactionsScreen;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.data.entity.None;
import h.d;
import h.f.b.j;
import h.i.i;
import java.util.HashMap;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: TransactionsFragment.kt */
public final class TransactionsFragment extends k<RecyclerData, None, c> {
    public static final /* synthetic */ i[] ya;
    public HashMap Aa;
    public final h.c za = d.a(new TransactionsFragment$titleName$2(this));

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(h.f.b.k.a(TransactionsFragment.class), "titleName", "getTitleName()Ljava/lang/String;");
        h.f.b.k.a((PropertyReference1) propertyReference1Impl);
        ya = new i[]{propertyReference1Impl};
    }

    public void La() {
        HashMap hashMap = this.Aa;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public RecyclerView.h Xa() {
        return new C0346p(E(), 1);
    }

    public View e(int i2) {
        if (this.Aa == null) {
            this.Aa = new HashMap();
        }
        View view = (View) this.Aa.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.Aa.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public String rb() {
        h.c cVar = this.za;
        i iVar = ya[0];
        return (String) cVar.getValue();
    }

    public final b tb() {
        return new b(this);
    }

    public TransactionsScreen Sa() {
        return new TransactionsScreen();
    }

    public a Ua() {
        return new a(tb());
    }

    public None Za() {
        return None.INSTANCE;
    }

    public c jb() {
        E a2 = G.a((Fragment) this, Ra()).a(c.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        return (c) a2;
    }
}
