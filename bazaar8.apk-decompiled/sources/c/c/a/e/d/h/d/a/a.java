package c.c.a.e.d.h.d.a;

import c.c.a.e.d.h.c.b.b;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.VideoPlayInfoModel;
import com.farsitel.bazaar.data.entity.Either;
import h.f.b.j;
import i.a.I;
import java.util.List;
import kotlin.Pair;

/* compiled from: EpisodeDetailRepository.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final int f5090a = 4;

    /* renamed from: b  reason: collision with root package name */
    public final int f5091b;

    /* renamed from: c  reason: collision with root package name */
    public final c.c.a.e.d.h.d.a.a.a f5092c;

    /* renamed from: d  reason: collision with root package name */
    public final b f5093d;

    public a(c.c.a.e.d.h.d.a.a.a aVar, b bVar) {
        j.b(aVar, "episodeDetailRemoteDataSource");
        j.b(bVar, "videoReviewsRemoteDataSource");
        this.f5092c = aVar;
        this.f5093d = bVar;
    }

    public final Object a(String str, String str2, h.c.b<? super Either<? extends List<? extends RecyclerData>>> bVar) {
        return I.a(new EpisodeDetailRepository$getEpisodeDetail$2(this, str, str2, null), bVar);
    }

    public final Object b(String str, String str2, h.c.b<? super Either<VideoPlayInfoModel>> bVar) {
        return this.f5092c.b(str, str2, bVar);
    }

    public final Object a(String str, int i2, int i3, int i4, String str2, h.c.b<? super Either<? extends Pair<Integer, ? extends List<? extends RecyclerData>>>> bVar) {
        return this.f5092c.a(str, i2, i3, i4, str2, bVar);
    }
}
