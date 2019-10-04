package cab.snapp.passenger.units.charge;

import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.f.b.b.c;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<cab.snapp.passenger.c.b> f633a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<d> f634b;
    private final Provider<c> c;

    public b(Provider<cab.snapp.passenger.c.b> provider, Provider<d> provider2, Provider<c> provider3) {
        this.f633a = provider;
        this.f634b = provider2;
        this.c = provider3;
    }

    public static MembersInjector<a> create(Provider<cab.snapp.passenger.c.b> provider, Provider<d> provider2, Provider<c> provider3) {
        return new b(provider, provider2, provider3);
    }

    public final void injectMembers(a aVar) {
        injectSnappConfigDataManager(aVar, this.f633a.get());
        injectSnappDataLayer(aVar, this.f634b.get());
        injectReportManagerHelper(aVar, this.c.get());
    }

    public static void injectSnappConfigDataManager(a aVar, cab.snapp.passenger.c.b bVar) {
        aVar.e = bVar;
    }

    public static void injectSnappDataLayer(a aVar, d dVar) {
        aVar.f = dVar;
    }

    public static void injectReportManagerHelper(a aVar, c cVar) {
        aVar.g = cVar;
    }
}
