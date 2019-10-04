package cab.snapp.passenger.units.splash;

import cab.snapp.b.a;
import cab.snapp.passenger.c.d;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.f.b.b.c;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<a> f1316a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<cab.snapp.passenger.c.b> f1317b;
    private final Provider<g> c;
    private final Provider<d> d;
    private final Provider<c> e;
    private final Provider<cab.snapp.authenticator.c> f;
    private final Provider<cab.snapp.passenger.data_access_layer.network.b> g;
    private final Provider<cab.snapp.b> h;

    public b(Provider<a> provider, Provider<cab.snapp.passenger.c.b> provider2, Provider<g> provider3, Provider<d> provider4, Provider<c> provider5, Provider<cab.snapp.authenticator.c> provider6, Provider<cab.snapp.passenger.data_access_layer.network.b> provider7, Provider<cab.snapp.b> provider8) {
        this.f1316a = provider;
        this.f1317b = provider2;
        this.c = provider3;
        this.d = provider4;
        this.e = provider5;
        this.f = provider6;
        this.g = provider7;
        this.h = provider8;
    }

    public static MembersInjector<a> create(Provider<a> provider, Provider<cab.snapp.passenger.c.b> provider2, Provider<g> provider3, Provider<d> provider4, Provider<c> provider5, Provider<cab.snapp.authenticator.c> provider6, Provider<cab.snapp.passenger.data_access_layer.network.b> provider7, Provider<cab.snapp.b> provider8) {
        b bVar = new b(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8);
        return bVar;
    }

    public final void injectMembers(a aVar) {
        injectSharedPreferencesManager(aVar, this.f1316a.get());
        injectSnappConfigDataManager(aVar, this.f1317b.get());
        injectSnappRideDataManager(aVar, this.c.get());
        injectSnappGroupDataManager(aVar, this.d.get());
        injectReportManagerHelper(aVar, this.e.get());
        injectSnappAccountManager(aVar, this.f.get());
        injectNetworkModules(aVar, this.g.get());
        injectEventManager(aVar, this.h.get());
    }

    public static void injectSharedPreferencesManager(a aVar, a aVar2) {
        aVar.f1314a = aVar2;
    }

    public static void injectSnappConfigDataManager(a aVar, cab.snapp.passenger.c.b bVar) {
        aVar.f1315b = bVar;
    }

    public static void injectSnappRideDataManager(a aVar, g gVar) {
        aVar.c = gVar;
    }

    public static void injectSnappGroupDataManager(a aVar, d dVar) {
        aVar.d = dVar;
    }

    public static void injectReportManagerHelper(a aVar, c cVar) {
        aVar.e = cVar;
    }

    public static void injectSnappAccountManager(a aVar, cab.snapp.authenticator.c cVar) {
        aVar.f = cVar;
    }

    public static void injectNetworkModules(a aVar, cab.snapp.passenger.data_access_layer.network.b bVar) {
        aVar.g = bVar;
    }

    public static void injectEventManager(a aVar, cab.snapp.b bVar) {
        aVar.h = bVar;
    }
}
