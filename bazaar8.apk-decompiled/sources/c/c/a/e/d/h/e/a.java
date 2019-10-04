package c.c.a.e.d.h.e;

import c.c.a.e.d.h.c.b.b;
import c.c.a.e.d.h.e.b.k;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.cinema.VideoPlayInfoModel;
import com.farsitel.bazaar.data.entity.Either;
import h.f.b.j;
import i.a.I;
import java.util.List;

/* compiled from: VideoDetailRepository.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final int f5101a = 4;

    /* renamed from: b  reason: collision with root package name */
    public final int f5102b;

    /* renamed from: c  reason: collision with root package name */
    public final k f5103c;

    /* renamed from: d  reason: collision with root package name */
    public final b f5104d;

    public a(k kVar, b bVar) {
        j.b(kVar, "videoDetailRemoteDataSource");
        j.b(bVar, "videoReviewsRemoteDataSource");
        this.f5103c = kVar;
        this.f5104d = bVar;
    }

    public final Object a(String str, String str2, h.c.b<? super Either<? extends List<? extends RecyclerData>>> bVar) {
        return I.a(new VideoDetailRepository$getVideoDetail$2(this, str, str2, null), bVar);
    }

    public final Object b(String str, String str2, h.c.b<? super Either<VideoPlayInfoModel>> bVar) {
        return this.f5103c.b(str, str2, bVar);
    }
}
