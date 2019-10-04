package c.c.a.e.d.r;

import c.c.a.e.d.h.c.b.b;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b.a.a;
import h.f.b.j;
import java.util.List;

/* compiled from: ReviewRepository.kt */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public final c f5405a;

    /* renamed from: b  reason: collision with root package name */
    public final b f5406b;

    public e(c cVar, b bVar) {
        j.b(cVar, "reviewRemoteDataSource");
        j.b(bVar, "videoReviewsRemoteDataSource");
        this.f5405a = cVar;
        this.f5406b = bVar;
    }

    public final Object a(String str, int i2, int i3, String str2, long j2, h.c.b<? super Either<? extends List<ReviewItem>>> bVar) {
        return this.f5405a.a(str, i2, i3, str2, a.a(j2), bVar);
    }

    public final Object a(String str, int i2, int i3, h.c.b<? super Either<? extends List<ReviewItem>>> bVar) {
        return this.f5406b.a(str, i2, i3, bVar);
    }

    public final Object a(int i2, h.c.b<? super Either<c.c.a.e.g.a>> bVar) {
        return this.f5405a.a(i2, bVar);
    }
}
