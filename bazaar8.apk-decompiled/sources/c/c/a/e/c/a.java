package c.c.a.e.c;

import com.farsitel.bazaar.data.entity.Either;
import h.f.a.b;
import h.f.b.j;
import i.a.C1109j;
import kotlin.Result;
import l.C1158b;
import l.C1160d;
import l.D;
import retrofit2.HttpException;

/* compiled from: CallExt.kt */
public final class a implements C1160d<T> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1109j f4901a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1158b f4902b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ b f4903c;

    public a(C1109j jVar, C1158b bVar, b bVar2) {
        this.f4901a = jVar;
        this.f4902b = bVar;
        this.f4903c = bVar2;
    }

    public void a(C1158b<T> bVar, Throwable th) {
        j.b(bVar, "call");
        j.b(th, "throwable");
        a(th);
    }

    public void a(C1158b<T> bVar, D<T> d2) {
        j.b(bVar, "call");
        j.b(d2, "response");
        if (d2.d()) {
            try {
                C1109j jVar = this.f4901a;
                b bVar2 = this.f4903c;
                T a2 = d2.a();
                if (a2 != null) {
                    Either.Success success = new Either.Success(bVar2.a(a2));
                    Result.a aVar = Result.f15776a;
                    Result.a(success);
                    jVar.b(success);
                    return;
                }
                j.a();
                throw null;
            } catch (Throwable th) {
                a(th);
            }
        } else {
            a(new HttpException(d2));
        }
    }

    public final void a(Throwable th) {
        C1109j jVar = this.f4901a;
        Either.Failure failure = new Either.Failure(b.b(th));
        Result.a aVar = Result.f15776a;
        Result.a(failure);
        jVar.b(failure);
    }
}
