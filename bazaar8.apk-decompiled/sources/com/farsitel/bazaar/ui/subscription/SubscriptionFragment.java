package com.farsitel.bazaar.ui.subscription;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import b.o.a.C0290n;
import b.r.E;
import b.r.G;
import c.c.a.d.f.a.a.a;
import c.c.a.i.f;
import c.c.a.n.c.d.k;
import c.c.a.n.c.d.l;
import c.c.a.n.z.a;
import c.c.a.n.z.e;
import c.c.a.n.z.g;
import c.c.a.n.z.i;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.where.SubscriptionScreen;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.subscription.SubscriptionItem;
import com.farsitel.bazaar.data.entity.None;
import h.c;
import h.d;
import h.f.b.j;
import java.util.HashMap;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: SubscriptionFragment.kt */
public final class SubscriptionFragment extends k<RecyclerData, None, i> {
    public static final /* synthetic */ h.i.i[] ya;
    public final c Aa = d.a(new SubscriptionFragment$titleName$2(this));
    public int Ba = R.layout.view_empty_link_fehrest_app;
    public HashMap Ca;
    public boolean za;

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(h.f.b.k.a(SubscriptionFragment.class), "titleName", "getTitleName()Ljava/lang/String;");
        h.f.b.k.a((PropertyReference1) propertyReference1Impl);
        ya = new h.i.i[]{propertyReference1Impl};
    }

    public static final /* synthetic */ i c(SubscriptionFragment subscriptionFragment) {
        return (i) subscriptionFragment.cb();
    }

    public void La() {
        HashMap hashMap = this.Ca;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public int Wa() {
        return this.Ba;
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
        return this.za;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public l qb() {
        return new l(R.string.title_subscription_app_empty, R.drawable.ic_mybazaar_basket, R.string.title_action_top_bought_empty, new SubscriptionFragment$emptyViewData$1(this));
    }

    public String rb() {
        c cVar = this.Aa;
        h.i.i iVar = ya[0];
        return (String) cVar.getValue();
    }

    public final g tb() {
        return new g(this);
    }

    public SubscriptionScreen Sa() {
        return new SubscriptionScreen();
    }

    public a Ua() {
        return new a(tb());
    }

    public None Za() {
        return None.INSTANCE;
    }

    public void b(Bundle bundle) {
        super.b(bundle);
        RecyclerView _a = _a();
        c.c.a.o.a.d dVar = new c.c.a.o.a.d(E(), 0, 0, 0, 14, null);
        _a.a((RecyclerView.h) dVar);
    }

    public i jb() {
        E a2 = G.a((Fragment) this, Ra()).a(i.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        i iVar = (i) a2;
        iVar.k().a(ba(), new c(this));
        iVar.j().a(ba(), new d(this));
        return iVar;
    }

    public final void a(View view, SubscriptionItem subscriptionItem) {
        Context Ha = Ha();
        j.a((Object) Ha, "requireContext()");
        View inflate = c.c.a.d.b.d.c(Ha).inflate(R.layout.popup_subscription, null);
        j.a((Object) inflate, "popupView");
        inflate.findViewById(R.id.cancelSubscription).setOnClickListener(new f(this, subscriptionItem, f.a(inflate, view)));
    }

    public final void a(SubscriptionItem subscriptionItem) {
        a.C0076a aVar = c.c.a.d.f.a.a.a.sa;
        String a2 = a((int) R.string.subs_cancel_body, subscriptionItem.getTitle(), subscriptionItem.getEndDate());
        j.a((Object) a2, "getString(R.string.subs_…subscriptionItem.endDate)");
        c.c.a.d.f.a.a.a a3 = a.C0076a.a(aVar, 0, a2, b((int) R.string.yes), b((int) R.string.cancel), 1, null);
        a3.a(new e(this, subscriptionItem));
        C0290n Ia = Ia();
        j.a((Object) Ia, "requireFragmentManager()");
        a3.a(Ia);
    }
}
