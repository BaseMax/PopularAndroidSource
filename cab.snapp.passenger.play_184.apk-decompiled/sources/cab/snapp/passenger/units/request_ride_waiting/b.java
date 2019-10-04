package cab.snapp.passenger.units.request_ride_waiting;

import cab.snapp.passenger.c.g;
import cab.snapp.passenger.f.b.b.c;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<cab.snapp.passenger.c.b> f1066a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<g> f1067b;
    private final Provider<c> c;

    public b(Provider<cab.snapp.passenger.c.b> provider, Provider<g> provider2, Provider<c> provider3) {
        this.f1066a = provider;
        this.f1067b = provider2;
        this.c = provider3;
    }

    public static MembersInjector<a> create(Provider<cab.snapp.passenger.c.b> provider, Provider<g> provider2, Provider<c> provider3) {
        return new b(provider, provider2, provider3);
    }

    public final void injectMembers(a aVar) {
        injectSnappConfigDataManager(aVar, this.f1066a.get());
        injectSnappRideDataManager(aVar, this.f1067b.get());
        injectReportManagerHelper(aVar, this.c.get());
    }

    public static void injectSnappConfigDataManager(a aVar, cab.snapp.passenger.c.b bVar) {
        aVar.f1063a = bVar;
    }

    public static void injectSnappRideDataManager(a aVar, g gVar) {
        aVar.f1064b = gVar;
    }

    public static void injectReportManagerHelper(a aVar, c cVar) {
        aVar.c = cVar;
    }
}
