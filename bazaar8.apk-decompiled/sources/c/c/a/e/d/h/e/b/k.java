package c.c.a.e.d.h.e.b;

import c.c.a.c.b.i;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.VideoPlayInfoModel;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.f.b.j;
import java.util.List;

/* compiled from: VideoDetailRemoteDataSource.kt */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public final o f5145a;

    public k(o oVar) {
        j.b(oVar, "videoService");
        this.f5145a = oVar;
    }

    public final Object a(String str, String str2, b<? super Either<? extends List<? extends RecyclerData>>> bVar) {
        return c.c.a.e.c.b.a(this.f5145a.a(new c(str, i.g(str2))), VideoDetailRemoteDataSource$getVideoInfo$2.f12233a, bVar);
    }

    public final Object b(String str, String str2, b<? super Either<VideoPlayInfoModel>> bVar) {
        return c.c.a.e.c.b.a(this.f5145a.a(new d(str, i.g(str2))), new VideoDetailRemoteDataSource$getVideoPlayInfo$2(str), bVar);
    }
}
