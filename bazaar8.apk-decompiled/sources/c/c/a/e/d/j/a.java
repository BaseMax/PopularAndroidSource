package c.c.a.e.d.j;

import c.c.a.c.b.i;
import com.farsitel.bazaar.data.dto.requestdto.GetFehrestRequest;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.entity.FehrestTabPage;
import h.c.b;
import h.f.b.j;

/* compiled from: FehrestRemoteDataSource.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final e f5219a;

    public a(e eVar) {
        j.b(eVar, "service");
        this.f5219a = eVar;
    }

    public final Object a(String str, int i2, String str2, b<? super Either<FehrestTabPage>> bVar) {
        return c.c.a.e.c.b.a(this.f5219a.a(a(str, i2, str2)), new FehrestRemoteDataSource$getFehrest$2(i2), bVar);
    }

    public final GetFehrestRequest a(String str, int i2, String str2) {
        return new GetFehrestRequest(str, i2, i.g(str2));
    }
}
