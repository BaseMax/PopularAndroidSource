package c.c.a.e.d.h.c.b;

import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import com.farsitel.bazaar.data.entity.Either;
import h.f.b.j;
import java.util.List;

/* compiled from: VideoReviewsRemoteDataSource.kt */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final f f5087a;

    public b(f fVar) {
        j.b(fVar, "videoReviewsService");
        this.f5087a = fVar;
    }

    public final Object a(String str, int i2, int i3, h.c.b<? super Either<? extends List<ReviewItem>>> bVar) {
        return c.c.a.e.c.b.a(this.f5087a.a(new d(str, i2, i3)), VideoReviewsRemoteDataSource$getVideoReviews$2.f12226a, bVar);
    }
}
