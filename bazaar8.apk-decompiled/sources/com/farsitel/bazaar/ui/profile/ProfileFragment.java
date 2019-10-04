package com.farsitel.bazaar.ui.profile;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import b.o.a.C0290n;
import b.r.E;
import b.r.G;
import b.w.b.b;
import c.c.a.d.b.d;
import c.c.a.d.f.a.a.a;
import c.c.a.d.f.a.b.a;
import c.c.a.e;
import c.c.a.n.c.d.f;
import c.c.a.n.t.c;
import c.c.a.n.t.g;
import c.c.a.n.t.h;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.what.GiftCardsItemClick;
import com.farsitel.bazaar.analytics.model.what.IncreaseCreditButtonClick;
import com.farsitel.bazaar.analytics.model.what.LogoutButtonClick;
import com.farsitel.bazaar.analytics.model.what.NickNameItemClick;
import com.farsitel.bazaar.analytics.model.what.TransactionsItemClick;
import com.farsitel.bazaar.analytics.model.where.ProfileScreen;
import com.farsitel.bazaar.app.BazaarApp;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.data.entity.None;
import com.farsitel.bazaar.ui.payment.PaymentActivity;
import com.farsitel.bazaar.widget.RTLImageView;
import h.a.l;
import h.f.b.j;
import java.util.Arrays;
import java.util.HashMap;

/* compiled from: ProfileFragment.kt */
public final class ProfileFragment extends f<ProfileRowItem, None, h> {
    public HashMap Aa;
    public int wa = R.layout.fragment_profile;
    public boolean xa;
    public final a ya = new a();
    public final c za = new c(this);

    public static final /* synthetic */ h a(ProfileFragment profileFragment) {
        return (h) profileFragment.cb();
    }

    public void La() {
        HashMap hashMap = this.Aa;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public RecyclerView.h Xa() {
        return new c.c.a.o.a.a(0, 0);
    }

    public int Ya() {
        return this.wa;
    }

    public final void c(Resource<None> resource) {
        if (resource != null) {
            ResourceState d2 = resource.d();
            if (j.a((Object) d2, (Object) ResourceState.Loading.f12178a)) {
                a aVar = this.ya;
                C0290n Ia = Ia();
                j.a((Object) Ia, "requireFragmentManager()");
                aVar.a(Ia);
            } else if (j.a((Object) d2, (Object) ResourceState.Success.f12179a)) {
                this.ya.La();
                b.a(this).i();
                BazaarApp.f12104i.a().a(false);
            } else if (j.a((Object) d2, (Object) ResourceState.Error.f12177a)) {
                c.c.a.c.c.a.f4699b.b(new Throwable("Logout finished with error", resource.b()));
                this.ya.La();
                b.a(this).i();
            } else {
                c.c.a.c.c.a.f4699b.a(new Throwable("Illegal state in handle logout"));
            }
        }
    }

    public final void d(ErrorModel errorModel) {
        RecyclerView.a adapter = _a().getAdapter();
        if (!(adapter instanceof c.c.a.n.c.d.a)) {
            adapter = null;
        }
        c.c.a.n.c.d.a aVar = (c.c.a.n.c.d.a) adapter;
        if (aVar != null) {
            int i2 = 0;
            for (Object next : aVar.e()) {
                int i3 = i2 + 1;
                if (i2 >= 0) {
                    RecyclerData recyclerData = (RecyclerData) next;
                    if (recyclerData instanceof ProfileCreditItem) {
                        ProfileCreditItem profileCreditItem = (ProfileCreditItem) recyclerData;
                        profileCreditItem.b(false);
                        String b2 = b((int) R.string.your_credit);
                        j.a((Object) b2, "getString(R.string.your_credit)");
                        Object[] objArr = {""};
                        String format = String.format(b2, Arrays.copyOf(objArr, objArr.length));
                        j.a((Object) format, "java.lang.String.format(this, *args)");
                        profileCreditItem.b(format);
                        profileCreditItem.a(true);
                        Context Ha = Ha();
                        j.a((Object) Ha, "requireContext()");
                        profileCreditItem.a(d.b(Ha, errorModel));
                        RecyclerView.a adapter2 = _a().getAdapter();
                        if (adapter2 != null) {
                            adapter2.c(i2);
                        }
                    }
                    i2 = i3;
                } else {
                    l.b();
                    throw null;
                }
            }
            return;
        }
        j.a();
        throw null;
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

    public boolean hb() {
        return this.xa;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public final void qb() {
        RecyclerView.a adapter = _a().getAdapter();
        if (!(adapter instanceof c.c.a.n.c.d.a)) {
            adapter = null;
        }
        c.c.a.n.c.d.a aVar = (c.c.a.n.c.d.a) adapter;
        if (aVar != null) {
            int i2 = 0;
            for (Object next : aVar.e()) {
                int i3 = i2 + 1;
                if (i2 >= 0) {
                    RecyclerData recyclerData = (RecyclerData) next;
                    if (recyclerData instanceof ProfileCreditItem) {
                        ProfileCreditItem profileCreditItem = (ProfileCreditItem) recyclerData;
                        profileCreditItem.b(true);
                        String b2 = b((int) R.string.your_credit);
                        j.a((Object) b2, "getString(R.string.your_credit)");
                        Object[] objArr = {""};
                        String format = String.format(b2, Arrays.copyOf(objArr, objArr.length));
                        j.a((Object) format, "java.lang.String.format(this, *args)");
                        profileCreditItem.b(format);
                        profileCreditItem.a(false);
                        profileCreditItem.a((String) null);
                        RecyclerView.a adapter2 = _a().getAdapter();
                        if (adapter2 != null) {
                            adapter2.c(i2);
                        }
                    }
                    i2 = i3;
                } else {
                    l.b();
                    throw null;
                }
            }
            return;
        }
        j.a();
        throw null;
    }

    public ProfileScreen Sa() {
        return new ProfileScreen();
    }

    public c.c.a.n.t.a Ua() {
        return new c.c.a.n.t.a();
    }

    public None Za() {
        return None.INSTANCE;
    }

    public final void b(Resource<Long> resource) {
        if (resource != null) {
            ResourceState d2 = resource.d();
            if (j.a((Object) d2, (Object) ResourceState.Success.f12179a)) {
                a(resource.a());
            } else if (j.a((Object) d2, (Object) ResourceState.Error.f12177a)) {
                d(resource.c());
            } else if (j.a((Object) d2, (Object) ResourceState.Loading.f12178a)) {
                qb();
            }
        }
    }

    public h jb() {
        E a2 = G.a((Fragment) this, Ra()).a(h.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        h hVar = (h) a2;
        c.c.a.d.b.h.a(this, hVar.k(), new ProfileFragment$makeViewModel$1$1(this));
        c.c.a.d.b.h.a(this, hVar.j(), new ProfileFragment$makeViewModel$1$2(this));
        return hVar;
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        a(new c.c.a.n.t.d(this));
        super.a(view, bundle);
        ((RTLImageView) e(e.backButton)).setOnClickListener(new e(this));
        ((h) cb()).l().a(ba(), new f(this));
    }

    public final void a(ProfileRowItem profileRowItem) {
        j.b(profileRowItem, "item");
        if (profileRowItem instanceof ProfileCreditItem) {
            ProfileCreditItem profileCreditItem = (ProfileCreditItem) profileRowItem;
            if (profileCreditItem.c() == 6) {
                if (profileCreditItem.b()) {
                    ((h) cb()).m();
                    return;
                }
                c.c.a.n.c.a.b.a(this, new IncreaseCreditButtonClick(c.c.a.c.d.e.a()), null, null, 6, null);
                PaymentActivity.w.a(this);
            }
        } else if (profileRowItem instanceof ProfileItem) {
            int a2 = ((ProfileItem) profileRowItem).a();
            if (a2 == 1) {
                c.c.a.n.c.a.b.a(this, new NickNameItemClick(c.c.a.c.d.e.a()), null, null, 6, null);
                c.c.a.i.c.a(b.a(this), g.f6955a.a());
            } else if (a2 == 2) {
                c.c.a.c.c.a.f4699b.a(new Throwable("Not Implemented User Change Phone Number"));
            } else if (a2 == 5) {
                c.c.a.n.c.a.b.a(this, new LogoutButtonClick(c.c.a.c.d.e.a()), null, null, 6, null);
                a.C0076a aVar = c.c.a.d.f.a.a.a.sa;
                String b2 = b((int) R.string.logout_confirm);
                j.a((Object) b2, "getString(R.string.logout_confirm)");
                c.c.a.d.f.a.a.a a3 = a.C0076a.a(aVar, 0, b2, b((int) R.string.yes), b((int) R.string.no), 1, null);
                a3.a(this.za);
                C0290n Ia = Ia();
                j.a((Object) Ia, "requireFragmentManager()");
                a3.a(Ia);
            } else if (a2 == 7) {
                c.c.a.n.c.a.b.a(this, new TransactionsItemClick(c.c.a.c.d.e.a()), null, null, 6, null);
                c.c.a.i.c.a(b.a(this), g.f6955a.c());
            } else if (a2 == 8) {
                c.c.a.n.c.a.b.a(this, new GiftCardsItemClick(c.c.a.c.d.e.a()), null, null, 6, null);
                c.c.a.i.c.a(b.a(this), g.f6955a.b());
            }
        }
    }

    public final void a(Long l2) {
        RecyclerView.a adapter = _a().getAdapter();
        if (!(adapter instanceof c.c.a.n.c.d.a)) {
            adapter = null;
        }
        c.c.a.n.c.d.a aVar = (c.c.a.n.c.d.a) adapter;
        if (aVar != null) {
            int i2 = 0;
            for (Object next : aVar.e()) {
                int i3 = i2 + 1;
                if (i2 >= 0) {
                    RecyclerData recyclerData = (RecyclerData) next;
                    if (recyclerData instanceof ProfileCreditItem) {
                        ProfileCreditItem profileCreditItem = (ProfileCreditItem) recyclerData;
                        profileCreditItem.b(false);
                        Context Ha = Ha();
                        j.a((Object) Ha, "requireContext()");
                        String a2 = c.c.a.c.g.b.a(Ha, l2, false);
                        String b2 = b((int) R.string.your_credit);
                        j.a((Object) b2, "getString(R.string.your_credit)");
                        Object[] objArr = {a2};
                        String format = String.format(b2, Arrays.copyOf(objArr, objArr.length));
                        j.a((Object) format, "java.lang.String.format(this, *args)");
                        profileCreditItem.b(format);
                        profileCreditItem.a(false);
                        profileCreditItem.a((String) null);
                        RecyclerView.a adapter2 = _a().getAdapter();
                        if (adapter2 != null) {
                            adapter2.c(i2);
                        }
                    }
                    i2 = i3;
                } else {
                    l.b();
                    throw null;
                }
            }
            return;
        }
        j.a();
        throw null;
    }

    public void a(int i2, int i3, Intent intent) {
        if (i2 == 40001 && i3 == -1) {
            ((h) cb()).m();
        }
        super.a(i2, i3, intent);
    }
}
