package c.c.a.n.j.h;

import c.c.a.n.c.d.m;
import com.farsitel.bazaar.common.model.cinema.SeriesSeason;
import h.f.b.j;

/* compiled from: SeasonPickerFragment.kt */
public final class c implements m<SeriesSeason> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ e f6584a;

    public c(e eVar) {
        this.f6584a = eVar;
    }

    public void a(SeriesSeason seriesSeason) {
        j.b(seriesSeason, "item");
        a b2 = this.f6584a.ma;
        if (b2 != null) {
            b2.a(seriesSeason);
        }
        this.f6584a.La();
    }
}
