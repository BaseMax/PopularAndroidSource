package c.c.a.e.d.h.d.b;

import c.c.a.c.b.i;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.f.b.j;
import java.util.List;

/* compiled from: SeriesDetailRemoteDataSource.kt */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public final k f5099a;

    public h(k kVar) {
        j.b(kVar, "cinemaService");
        this.f5099a = kVar;
    }

    public final Object a(String str, int i2, String str2, b<? super Either<? extends List<? extends RecyclerData>>> bVar) {
        return c.c.a.e.c.b.a(this.f5099a.a(new d(str, i2, i.g(str2))), SeriesDetailRemoteDataSource$getEpisodes$2.f12229a, bVar);
    }

    public final Object b(String str, int i2, String str2, b<? super Either<? extends List<? extends RecyclerData>>> bVar) {
        return c.c.a.e.c.b.a(this.f5099a.a(new c(str, i.g(str2))), new SeriesDetailRemoteDataSource$getSeriesInfo$2(i2), bVar);
    }
}
