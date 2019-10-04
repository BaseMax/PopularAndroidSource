package c.c.a.n.j.h;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import c.c.a.f.Wb;
import c.c.a.n.c.d.a;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.common.model.cinema.SeriesSeason;
import h.f.b.j;

/* compiled from: SeasonPickerAdapter.kt */
public final class b extends a<SeriesSeason> {

    /* renamed from: f  reason: collision with root package name */
    public final int f6583f;

    public b(int i2) {
        this.f6583f = i2;
    }

    public n<SeriesSeason> c(ViewGroup viewGroup, int i2) {
        j.b(viewGroup, "parent");
        Wb a2 = Wb.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        j.a((Object) a2, "ItemVideoDetailSeasonLis…      false\n            )");
        return new f(a2, this.f6583f);
    }
}
