package c.c.a.e.d.c.a;

import c.c.a.c.b.i;
import com.farsitel.bazaar.common.model.appdetail.AppInfo;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.f.b.j;

/* compiled from: AppDetailRemoteDataSource.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final e f5028a;

    public a(e eVar) {
        j.b(eVar, "appDetailService");
        this.f5028a = eVar;
    }

    public final Object a(String str, String str2, b<? super Either<AppInfo>> bVar) {
        return c.c.a.e.c.b.a(this.f5028a.a(new c(str, i.g(str2))), AppDetailRemoteDataSource$getAppDetail$2.f12214a, bVar);
    }
}
