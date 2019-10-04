package c.c.a.e.d.r.b.b;

import c.c.a.e.d.q.a;
import com.farsitel.bazaar.data.dto.requestdto.SubmitReviewRequest;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.entity.EntityType;
import com.farsitel.bazaar.data.entity.RequestProperties;
import h.f.b.j;

/* compiled from: PostCommentRemoteDataSource.kt */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final a f5396a;

    /* renamed from: b  reason: collision with root package name */
    public final a f5397b;

    public b(a aVar, a aVar2) {
        j.b(aVar, "requestPropertiesRepository");
        j.b(aVar2, "service");
        this.f5396a = aVar;
        this.f5397b = aVar2;
    }

    public final Object a(String str, int i2, String str2, long j2, EntityType entityType, h.c.b<? super Either<Boolean>> bVar) {
        RequestProperties a2 = this.f5396a.a();
        boolean z = entityType == EntityType.INLINE;
        a aVar = this.f5397b;
        SubmitReviewRequest submitReviewRequest = new SubmitReviewRequest(str, i2, str2, (long) a2.getAndroidClientInfo().getSdkVersion(), j2, z);
        return c.c.a.e.c.b.a(aVar.a(submitReviewRequest), PostCommentRemoteDataSource$postComment$2.f12284a, bVar);
    }
}
