package com.farsitel.bazaar.ui.appdetail.article;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import b.r.E;
import b.r.G;
import c.c.a.f.C0430i;
import c.c.a.n.b.a.b;
import c.c.a.n.b.a.d;
import c.c.a.n.b.a.e;
import c.c.a.n.c.d.a;
import c.c.a.n.c.d.f;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.where.MoreArticleScreen;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.appdetail.ArticleItem;
import com.farsitel.bazaar.common.model.appdetail.MoreArticleItem;
import h.f.b.j;
import java.util.HashMap;

/* compiled from: MoreArticleFragment.kt */
public final class MoreArticleFragment extends f<RecyclerData, MoreArticleItem, e> {
    public int wa = R.layout.fragment_more_article;
    public d xa;
    public boolean ya;
    public HashMap za;

    public void La() {
        HashMap hashMap = this.za;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public a<RecyclerData> Ua() {
        return new c.c.a.n.b.a.a();
    }

    public RecyclerView.h Xa() {
        return null;
    }

    public int Ya() {
        return this.wa;
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        C0430i a2 = C0430i.a(layoutInflater, viewGroup, false);
        d dVar = this.xa;
        if (dVar != null) {
            a2.a(53, (Object) dVar.b());
            View h2 = a2.h();
            j.a((Object) h2, "root");
            a(h2, viewGroup);
            View h3 = a2.h();
            j.a((Object) h3, "root");
            b(h3);
            j.a((Object) a2, "FragmentMoreArticleBindi…ErrorView(root)\n        }");
            return a2.h();
        }
        j.c("moreArticleArgs");
        throw null;
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        d.a aVar = d.f6209a;
        Bundle C = C();
        if (C != null) {
            j.a((Object) C, "arguments!!");
            this.xa = aVar.a(C);
            return;
        }
        j.a();
        throw null;
    }

    public View e(int i2) {
        if (this.za == null) {
            this.za = new HashMap();
        }
        View view = (View) this.za.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.za.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public boolean hb() {
        return this.ya;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public MoreArticleScreen Sa() {
        return new MoreArticleScreen();
    }

    public MoreArticleItem Za() {
        d dVar = this.xa;
        if (dVar != null) {
            return dVar.a();
        }
        j.c("moreArticleArgs");
        throw null;
    }

    public e jb() {
        E a2 = G.a((Fragment) this, Ra()).a(e.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        return (e) a2;
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        a(new b(this));
        super.a(view, bundle);
        view.findViewById(R.id.toolbarBackButton).setOnClickListener(new c(this));
    }

    public final void a(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        if (recyclerData instanceof ArticleItem) {
            Context Ha = Ha();
            j.a((Object) Ha, "requireContext()");
            c.c.a.i.b.a(Ha, ((ArticleItem) recyclerData).getUri(), false, 2, null);
        }
    }
}
