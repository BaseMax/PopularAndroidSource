package c.c.a.e.d.r.a.b;

import c.c.a.e.d.r.b.b.a;
import com.farsitel.bazaar.data.dto.requestdto.VoteReviewRequestDto;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.f.b.j;

/* compiled from: VoteCommentRemoteDataSource.kt */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final a f5361a;

    public d(a aVar) {
        j.b(aVar, "commentService");
        this.f5361a = aVar;
    }

    public final Object a(int i2, String str, boolean z, b<? super Either<Boolean>> bVar) {
        return c.c.a.e.c.b.a(this.f5361a.a(new VoteReviewRequestDto(i2, str, z)), VoteCommentRemoteDataSource$voteComment$2.f12283a, bVar);
    }
}
