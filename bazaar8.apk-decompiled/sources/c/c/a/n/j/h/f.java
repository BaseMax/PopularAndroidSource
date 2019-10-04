package c.c.a.n.j.h;

import c.c.a.f.Wb;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.common.model.cinema.SeriesSeason;
import h.f.b.j;

/* compiled from: SeasonPickerItemViewHolder.kt */
public final class f extends n<SeriesSeason> {
    public final Wb v;
    public final int w;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public f(Wb wb, int i2) {
        super(wb);
        j.b(wb, "viewBinding");
        this.v = wb;
        this.w = i2;
    }

    /* renamed from: a */
    public void b(SeriesSeason seriesSeason) {
        j.b(seriesSeason, "item");
        this.v.a(30, (Object) Integer.valueOf(this.w));
    }
}
