package c.c.a.e.d.h.e.a.b;

import c.c.a.c.b.i;
import com.farsitel.bazaar.common.model.VideoDownloadQualityInfo;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.f.b.j;

/* compiled from: VideoDownloadRemoteDataSource.kt */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public final c f5129a;

    public e(c cVar) {
        j.b(cVar, "downloadService");
        this.f5129a = cVar;
    }

    public final Object a(String str, String str2, b<? super Either<VideoDownloadQualityInfo>> bVar) {
        return c.c.a.e.c.b.a(this.f5129a.a(new a(str, i.g(str2))), VideoDownloadRemoteDataSource$getVideoDownloadQuality$2.f12231a, bVar);
    }
}
