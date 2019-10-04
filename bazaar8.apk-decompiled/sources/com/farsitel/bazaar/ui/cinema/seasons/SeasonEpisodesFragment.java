package com.farsitel.bazaar.ui.cinema.seasons;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import b.r.E;
import b.r.G;
import c.c.a.n.c.c.n;
import c.c.a.n.j.i.a;
import c.c.a.n.j.i.b;
import com.farsitel.bazaar.analytics.model.where.SeasonEpisodeScreen;
import h.f.b.j;
import java.util.HashMap;

/* compiled from: SeasonEpisodesFragment.kt */
public final class SeasonEpisodesFragment extends n<a, b> {
    public HashMap Aa;
    public a za;

    public void La() {
        HashMap hashMap = this.Aa;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        a.C0098a aVar = a.f6587a;
        Bundle C = C();
        if (C != null) {
            j.a((Object) C, "arguments!!");
            this.za = aVar.a(C);
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

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public SeasonEpisodeScreen Sa() {
        return new SeasonEpisodeScreen();
    }

    public a Za() {
        a aVar = this.za;
        if (aVar != null) {
            return aVar;
        }
        j.c("args");
        throw null;
    }

    public b jb() {
        E a2 = G.a((Fragment) this, Ra()).a(b.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        return (b) a2;
    }
}
