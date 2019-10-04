package c.c.a.e.d.s;

import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.entity.None;
import com.farsitel.bazaar.data.entity.SearchPrediction;
import h.c.b;
import h.f.b.j;
import h.h;
import java.util.List;

/* compiled from: SearchPredictionRepository.kt */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final a f5413a;

    public c(a aVar) {
        j.b(aVar, "remoteDataSource");
        this.f5413a = aVar;
    }

    public final Object a(String str, b<? super Either<? extends List<? extends SearchPrediction>>> bVar) {
        return this.f5413a.a(str, bVar);
    }

    public final Object b(b<? super Either<? extends List<? extends SearchPrediction>>> bVar) {
        return this.f5413a.a("", bVar);
    }

    public final Object a(b<? super Either<None>> bVar) {
        return this.f5413a.a(bVar);
    }

    public final Object b(String str, b<? super h> bVar) {
        return this.f5413a.b(str, bVar);
    }
}
