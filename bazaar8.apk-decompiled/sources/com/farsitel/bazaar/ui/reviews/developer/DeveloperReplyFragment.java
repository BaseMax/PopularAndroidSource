package com.farsitel.bazaar.ui.reviews.developer;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import androidx.fragment.app.Fragment;
import b.r.E;
import b.r.G;
import c.c.a.f.C0448o;
import c.c.a.n.c.d.f;
import c.c.a.n.u.a.d;
import c.c.a.n.u.a.e;
import c.c.a.n.u.a.i;
import c.c.a.n.u.a.j;
import c.c.a.n.u.q;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.where.DeveloperReplayScreen;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import com.farsitel.bazaar.widget.RTLImageView;
import com.google.android.material.snackbar.Snackbar;
import java.util.HashMap;

/* compiled from: DeveloperReplyFragment.kt */
public final class DeveloperReplyFragment extends f<RecyclerData, Integer, j> {
    public int Aa = R.layout.fragment_more_review;
    public boolean Ba;
    public HashMap Ca;
    public C0448o wa;
    public q xa;
    public i ya;
    public final Object za = new Object();

    public void La() {
        HashMap hashMap = this.Ca;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public int Ya() {
        return this.Aa;
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        i.a aVar = i.f6978a;
        Bundle C = C();
        if (C != null) {
            h.f.b.j.a((Object) C, "arguments!!");
            this.ya = aVar.a(C);
            return;
        }
        h.f.b.j.a();
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

    public boolean hb() {
        return this.Ba;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public final C0448o qb() {
        C0448o oVar = this.wa;
        if (oVar != null) {
            return oVar;
        }
        h.f.b.j.c("dataBinding");
        throw null;
    }

    public final q rb() {
        q qVar = this.xa;
        if (qVar != null) {
            return qVar;
        }
        h.f.b.j.c("replyViewModel");
        throw null;
    }

    public final void sb() {
        E a2 = G.a((Fragment) this, Ra()).a(q.class);
        h.f.b.j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        q qVar = (q) a2;
        qVar.m().a(ba(), new a(this));
        qVar.j().a(ba(), new b(this));
        this.xa = qVar;
    }

    public final d tb() {
        return new d(this);
    }

    public final e ub() {
        return new e(this);
    }

    public DeveloperReplayScreen Sa() {
        return new DeveloperReplayScreen();
    }

    public c.c.a.n.u.e Ua() {
        return new c.c.a.n.u.e(tb(), ub());
    }

    public Integer Za() {
        i iVar = this.ya;
        if (iVar != null) {
            return Integer.valueOf(iVar.a());
        }
        h.f.b.j.c("developerArg");
        throw null;
    }

    public j jb() {
        E a2 = G.a((Fragment) this, Ra()).a(j.class);
        h.f.b.j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        j jVar = (j) a2;
        jVar.j().a(ba(), new c(this));
        return jVar;
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        h.f.b.j.b(layoutInflater, "inflater");
        C0448o a2 = C0448o.a(layoutInflater, viewGroup, false);
        h.f.b.j.a((Object) a2, "FragmentMoreReviewBindin…flater, container, false)");
        this.wa = a2;
        C0448o oVar = this.wa;
        if (oVar != null) {
            return oVar.h();
        }
        h.f.b.j.c("dataBinding");
        throw null;
    }

    public void a(View view, Bundle bundle) {
        h.f.b.j.b(view, "view");
        super.a(view, bundle);
        ((RTLImageView) e(c.c.a.e.reviewToolbarBackButton)).setOnClickListener(new f(this));
        sb();
    }

    public final void a(View view, ReviewItem reviewItem) {
        Context Ha = Ha();
        h.f.b.j.a((Object) Ha, "requireContext()");
        View inflate = c.c.a.d.b.d.c(Ha).inflate(R.layout.popup_report_developer, null);
        h.f.b.j.a((Object) inflate, "popupView");
        PopupWindow a2 = c.c.a.i.f.a(inflate, view);
        inflate.findViewById(R.id.reportButton).setOnClickListener(new g(this, reviewItem, a2));
        inflate.findViewById(R.id.reportDeveloperButton).setOnClickListener(new h(this, reviewItem, a2));
    }

    public void a(int i2, int i3, Intent intent) {
        super.a(i2, i3, intent);
        q qVar = this.xa;
        if (qVar != null) {
            qVar.a(i2, i3, intent);
        } else {
            h.f.b.j.c("replyViewModel");
            throw null;
        }
    }

    public final void a(int i2, boolean z) {
        q qVar = this.xa;
        if (qVar != null) {
            qVar.b(i2, z);
            View aa = aa();
            if (aa != null) {
                Snackbar.a(aa, b((int) R.string.thanksForReport), 0).m();
            } else {
                h.f.b.j.a();
                throw null;
            }
        } else {
            h.f.b.j.c("replyViewModel");
            throw null;
        }
    }
}
