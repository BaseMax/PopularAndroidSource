package c.c.a.e.d.b;

import c.c.a.e.d.q.a;
import c.c.a.e.f.g;
import com.farsitel.bazaar.data.entity.Either;
import com.farsitel.bazaar.data.entity.InstalledApp;
import com.farsitel.bazaar.data.entity.UpgradableApps;
import h.c.b;
import h.f.b.j;
import java.util.List;

/* compiled from: UpgradableAppsRemoteDataSource.kt */
public final class da {

    /* renamed from: a  reason: collision with root package name */
    public final fa f4990a;

    /* renamed from: b  reason: collision with root package name */
    public final a f4991b;

    public da(fa faVar, a aVar) {
        j.b(faVar, "service");
        j.b(aVar, "requestPropertiesRepository");
        this.f4990a = faVar;
        this.f4991b = aVar;
    }

    public final Object a(int i2, List<InstalledApp> list, b<? super Either<UpgradableApps>> bVar) {
        return c.c.a.e.c.b.a(this.f4990a.a(g.a(list, i2, this.f4991b.a())), UpgradableAppsRemoteDataSource$getUpgradableApps$2.f12213a, bVar);
    }
}
