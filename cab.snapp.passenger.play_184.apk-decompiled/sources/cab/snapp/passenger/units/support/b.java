package cab.snapp.passenger.units.support;

import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.f.b.b.c;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<cab.snapp.passenger.c.b> f1328a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<d> f1329b;
    private final Provider<c> c;

    public b(Provider<cab.snapp.passenger.c.b> provider, Provider<d> provider2, Provider<c> provider3) {
        this.f1328a = provider;
        this.f1329b = provider2;
        this.c = provider3;
    }

    public static MembersInjector<a> create(Provider<cab.snapp.passenger.c.b> provider, Provider<d> provider2, Provider<c> provider3) {
        return new b(provider, provider2, provider3);
    }

    public final void injectMembers(a aVar) {
        injectSnappConfigDataManager(aVar, this.f1328a.get());
        injectSnappDataLayer(aVar, this.f1329b.get());
        injectReportManagerHelper(aVar, this.c.get());
    }

    public static void injectSnappConfigDataManager(a aVar, cab.snapp.passenger.c.b bVar) {
        aVar.f1325b = bVar;
    }

    public static void injectSnappDataLayer(a aVar, d dVar) {
        aVar.c = dVar;
    }

    public static void injectReportManagerHelper(a aVar, c cVar) {
        aVar.d = cVar;
    }
}
