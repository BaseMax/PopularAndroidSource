package c.c.a.e.d.r;

import c.c.a.e.g.a;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import com.farsitel.bazaar.data.dto.requestdto.GetReviewRequestDto;
import com.farsitel.bazaar.data.dto.requestdto.GetSingleReviewRequestDto;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.f.b.j;
import java.util.List;

/* compiled from: ReviewRemoteDataSource.kt */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final g f5403a;

    public c(g gVar) {
        j.b(gVar, "reviewService");
        this.f5403a = gVar;
    }

    public final Object a(String str, int i2, int i3, String str2, Long l2, b<? super Either<? extends List<ReviewItem>>> bVar) {
        return c.c.a.e.c.b.a(this.f5403a.a(new GetReviewRequestDto(str, i2, i3, str2)), new ReviewRemoteDataSource$getReviews$2(l2), bVar);
    }

    public final Object a(int i2, b<? super Either<a>> bVar) {
        return c.c.a.e.c.b.a(this.f5403a.a(new GetSingleReviewRequestDto(i2)), ReviewRemoteDataSource$getReviewById$2.f12281a, bVar);
    }
}
