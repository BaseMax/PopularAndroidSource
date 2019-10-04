package c.c.a.n.j.h;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import b.r.E;
import b.r.G;
import c.c.a.c.c.a;
import c.c.a.d.b.h;
import c.c.a.n.j.d.t;
import c.c.a.n.j.j.l;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.SeriesSeason;
import com.farsitel.bazaar.ui.cinema.episode.EpisodeDetailFragment;
import com.farsitel.bazaar.ui.cinema.season.SeasonPickerParams;
import com.farsitel.bazaar.ui.cinema.series.SeriesDetailFragment;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import h.f.b.j;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* compiled from: SeasonPickerFragment.kt */
public final class e extends c.c.a.d.f.e {
    public b la;
    public a<RecyclerData, SeasonPickerParams> ma;
    public HashMap na;

    public void Qa() {
        HashMap hashMap = this.na;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public final void Ua() {
        a<RecyclerData, SeasonPickerParams> aVar = this.ma;
        this.la = new b(aVar != null ? aVar.j() : 1);
        b bVar = this.la;
        if (bVar != null) {
            bVar.a(new c(this));
        }
        RecyclerView recyclerView = (RecyclerView) e(c.c.a.e.bottomSheetRecyclerView);
        j.a((Object) recyclerView, "bottomSheetRecyclerView");
        recyclerView.setAdapter(this.la);
        a<RecyclerData, SeasonPickerParams> aVar2 = this.ma;
        a(aVar2 != null ? aVar2.k() : null);
    }

    public final a<RecyclerData, SeasonPickerParams> Va() {
        a<RecyclerData, SeasonPickerParams> aVar;
        Fragment Q = Q();
        if (Q instanceof SeriesDetailFragment) {
            Fragment Q2 = Q();
            if (Q2 == null) {
                return null;
            }
            E a2 = G.a(Q2, Sa()).a(l.class);
            j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
            aVar = (l) a2;
            a(aVar);
        } else if (!(Q instanceof EpisodeDetailFragment)) {
            return null;
        } else {
            Fragment Q3 = Q();
            if (Q3 == null) {
                return null;
            }
            E a3 = G.a(Q3, Sa()).a(t.class);
            j.a((Object) a3, "ViewModelProviders.of(th…, factory)[T::class.java]");
            aVar = (t) a3;
            a(aVar);
        }
        return aVar;
    }

    public View e(int i2) {
        if (this.na == null) {
            this.na = new HashMap();
        }
        View view = (View) this.na.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.na.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public /* synthetic */ void qa() {
        super.qa();
        Qa();
    }

    public void b(Bundle bundle) {
        super.b(bundle);
        this.ma = Va();
        if (this.ma == null) {
            a aVar = a.f4699b;
            aVar.a(new Throwable("Parent of " + e.class.getName() + " is null! ,it will be dismiss!"));
            La();
        }
    }

    public final void a(a<RecyclerData, SeasonPickerParams> aVar) {
        h.a(this, aVar.g(), new SeasonPickerFragment$observeSeasonList$1(this));
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.fragment_season_bottom_sheet, viewGroup, false);
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        b(view);
    }

    public final void a(List<SeriesSeason> list) {
        if (ea() && list != null) {
            b bVar = this.la;
            if (bVar != null) {
                bVar.a(new ArrayList(list));
            }
        }
    }

    public final void b(View view) {
        ((RecyclerView) e(c.c.a.e.bottomSheetRecyclerView)).setHasFixedSize(true);
        RecyclerView recyclerView = (RecyclerView) e(c.c.a.e.bottomSheetRecyclerView);
        j.a((Object) recyclerView, "bottomSheetRecyclerView");
        recyclerView.setLayoutManager(new LinearLayoutManager(Ha()));
        BottomSheetBehavior b2 = BottomSheetBehavior.b((ConstraintLayout) e(c.c.a.e.bottomSheetContainer));
        j.a((Object) b2, "BottomSheetBehavior.from(bottomSheetContainer)");
        a((BottomSheetBehavior<View>) b2);
        view.getViewTreeObserver().addOnGlobalLayoutListener(new d(this, view));
    }
}
