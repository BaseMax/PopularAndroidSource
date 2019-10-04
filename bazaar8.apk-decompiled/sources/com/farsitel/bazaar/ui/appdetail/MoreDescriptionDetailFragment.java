package com.farsitel.bazaar.ui.appdetail;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import c.c.a.f.C0442m;
import c.c.a.n.b.C0666D;
import c.c.a.n.c.a.c;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.where.AppMoreDescriptionDetailScreen;
import h.f.b.j;
import java.util.HashMap;

/* compiled from: MoreDescriptionDetailFragment.kt */
public final class MoreDescriptionDetailFragment extends c {
    public C0666D fa;
    public HashMap ga;

    public void La() {
        HashMap hashMap = this.ga;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        C0442m a2 = C0442m.a(layoutInflater, viewGroup, false);
        C0666D d2 = this.fa;
        if (d2 != null) {
            a2.a(53, (Object) d2.b());
            C0666D d3 = this.fa;
            if (d3 != null) {
                a2.a(42, (Object) d3.a());
                j.a((Object) a2, "FragmentMoreDescriptionD…lArgs.pageDesc)\n        }");
                return a2.h();
            }
            j.c("moreDescriptionDetailArgs");
            throw null;
        }
        j.c("moreDescriptionDetailArgs");
        throw null;
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        C0666D.a aVar = C0666D.f6192a;
        Bundle C = C();
        if (C != null) {
            j.a((Object) C, "arguments!!");
            this.fa = aVar.a(C);
            return;
        }
        j.a();
        throw null;
    }

    public View e(int i2) {
        if (this.ga == null) {
            this.ga = new HashMap();
        }
        View view = (View) this.ga.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.ga.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public AppMoreDescriptionDetailScreen Qa() {
        return new AppMoreDescriptionDetailScreen();
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        view.findViewById(R.id.backButton).setOnClickListener(new C0665C(this));
    }
}
