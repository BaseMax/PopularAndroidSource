package c.c.a.e.d.h.d.a.a;

import c.c.a.c.b.i;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.VideoPlayInfoModel;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.f.b.j;
import java.util.List;
import kotlin.Pair;

/* compiled from: EpisodeDetailRemoteDataSource.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final e f5094a;

    public a(e eVar) {
        j.b(eVar, "episodeService");
        this.f5094a = eVar;
    }

    public final Object a(String str, String str2, b<? super Either<? extends List<? extends RecyclerData>>> bVar) {
        return c.c.a.e.c.b.a(this.f5094a.a(new f(str, i.g(str2))), EpisodeDetailRemoteDataSource$getEpisodeDetailInfo$2.f12227a, bVar);
    }

    public final Object b(String str, String str2, b<? super Either<VideoPlayInfoModel>> bVar) {
        return c.c.a.e.c.b.a(this.f5094a.a(new h(str, i.g(str2))), new EpisodeDetailRemoteDataSource$getEpisodePlayInfo$2(str), bVar);
    }

    public final Object a(String str, int i2, int i3, int i4, String str2, b<? super Either<? extends Pair<Integer, ? extends List<? extends RecyclerData>>>> bVar) {
        g gVar = new g(str, i2, i3, i4, i.g(str2));
        return c.c.a.e.c.b.a(this.f5094a.a(gVar), EpisodeDetailRemoteDataSource$getEpisodeSeasonPage$2.f12228a, bVar);
    }
}
