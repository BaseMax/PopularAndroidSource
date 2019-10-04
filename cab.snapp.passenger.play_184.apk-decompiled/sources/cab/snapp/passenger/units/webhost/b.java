package cab.snapp.passenger.units.webhost;

import cab.snapp.passenger.c.d;
import cab.snapp.passenger.c.e;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.f.b.b.c;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<c> f1414a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<g> f1415b;
    private final Provider<d> c;
    private final Provider<e> d;

    public b(Provider<c> provider, Provider<g> provider2, Provider<d> provider3, Provider<e> provider4) {
        this.f1414a = provider;
        this.f1415b = provider2;
        this.c = provider3;
        this.d = provider4;
    }

    public static MembersInjector<a> create(Provider<c> provider, Provider<g> provider2, Provider<d> provider3, Provider<e> provider4) {
        return new b(provider, provider2, provider3, provider4);
    }

    public final void injectMembers(a aVar) {
        injectReportManagerHelper(aVar, this.f1414a.get());
        injectRideDataManager(aVar, this.f1415b.get());
        injectGroupDataManager(aVar, this.c.get());
        injectLocationDataManager(aVar, this.d.get());
    }

    public static void injectReportManagerHelper(a aVar, c cVar) {
        aVar.f1412a = cVar;
    }

    public static void injectRideDataManager(a aVar, g gVar) {
        aVar.f1413b = gVar;
    }

    public static void injectGroupDataManager(a aVar, d dVar) {
        aVar.c = dVar;
    }

    public static void injectLocationDataManager(a aVar, e eVar) {
        aVar.d = eVar;
    }
}
