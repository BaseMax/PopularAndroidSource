package c.c.a.l.b.a;

import com.farsitel.bazaar.common.model.VideoStatsResult;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.entity.None;
import h.c.b;
import h.f.b.j;
import java.util.Map;
import org.json.JSONObject;

/* compiled from: VideoStatsRemoteDataSource.kt */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public final g f6101a;

    /* renamed from: b  reason: collision with root package name */
    public final d f6102b;

    public e(g gVar, d dVar) {
        j.b(gVar, "videoStatsService");
        j.b(dVar, "thirdPartyService");
        this.f6101a = gVar;
        this.f6102b = dVar;
    }

    public final Object a(String str, String str2, String str3, b<? super Either<None>> bVar) {
        return c.c.a.e.c.b.a(this.f6101a.a(new a(str, str2, str3)), VideoStatsRemoteDataSource$setUserStreamingError$2.f12322a, bVar);
    }

    public final Object a(String str, long j2, String str2, String str3, int i2, b<? super Either<VideoStatsResult>> bVar) {
        return c.c.a.e.c.b.a(this.f6101a.a(new b(new c(str, j2).a(), str2, str3, String.valueOf(i2))), VideoStatsRemoteDataSource$setVideoStats$2.f12323a, bVar);
    }

    public final Object a(String str, String str2, Map<String, String> map, b<? super Either<String>> bVar) {
        return c.c.a.e.c.b.a(this.f6102b.a(str, map, new JSONObject(str2)), VideoStatsRemoteDataSource$authorizeVideoStat$2.f12321a, bVar);
    }
}
