package c.c.a.e.d.t.a;

import com.farsitel.bazaar.common.model.Page;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.f.b.j;

/* compiled from: SeasonEpisodeRemoteDataSource.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final e f5422a;

    public a(e eVar) {
        j.b(eVar, "seasonEpisodeService");
        this.f5422a = eVar;
    }

    public final Object a(int i2, int i3, String str, int i4, b<? super Either<Page>> bVar) {
        return c.c.a.e.c.b.a(this.f5422a.a(new c(i2, i3, str, i4)), new SeasonEpisodeRemoteDataSource$getSeasonEpisodeList$2(i2), bVar);
    }
}
