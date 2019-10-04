package c.c.a.n.j.b.a;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import c.c.a.f.Ib;
import c.c.a.n.c.d.a;
import c.c.a.n.c.d.n;
import c.c.a.n.j.b.b.c;
import c.c.a.n.j.b.b.d;
import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;

/* compiled from: CrewItemAdapter.kt */
public final class b extends a<RecyclerData> {

    /* renamed from: f  reason: collision with root package name */
    public final d.a f6452f;

    public b(d.a aVar) {
        j.b(aVar, "crewsPersonClickListener");
        this.f6452f = aVar;
    }

    public n<RecyclerData> c(ViewGroup viewGroup, int i2) {
        j.b(viewGroup, "parent");
        Ib a2 = Ib.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        j.a((Object) a2, "ItemVideoDetailCrewItemB….context), parent, false)");
        return new c(a2, this.f6452f);
    }
}
