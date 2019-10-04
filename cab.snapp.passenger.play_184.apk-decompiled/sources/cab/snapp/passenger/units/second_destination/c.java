package cab.snapp.passenger.units.second_destination;

import cab.snapp.passenger.c.b;
import cab.snapp.passenger.c.e;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.c.h;
import cab.snapp.passenger.data_access_layer.a.d;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class c implements MembersInjector<b> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<b> f1172a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<g> f1173b;
    private final Provider<h> c;
    private final Provider<e> d;
    private final Provider<d> e;
    private final Provider<cab.snapp.passenger.f.b.b.c> f;

    public c(Provider<b> provider, Provider<g> provider2, Provider<h> provider3, Provider<e> provider4, Provider<d> provider5, Provider<cab.snapp.passenger.f.b.b.c> provider6) {
        this.f1172a = provider;
        this.f1173b = provider2;
        this.c = provider3;
        this.d = provider4;
        this.e = provider5;
        this.f = provider6;
    }

    public static MembersInjector<b> create(Provider<b> provider, Provider<g> provider2, Provider<h> provider3, Provider<e> provider4, Provider<d> provider5, Provider<cab.snapp.passenger.f.b.b.c> provider6) {
        c cVar = new c(provider, provider2, provider3, provider4, provider5, provider6);
        return cVar;
    }

    public final void injectMembers(b bVar) {
        injectSnappConfigDataManager(bVar, this.f1172a.get());
        injectSnappRideDataManager(bVar, this.f1173b.get());
        injectSnappSearchDataManager(bVar, this.c.get());
        injectSnappLocationDataManager(bVar, this.d.get());
        injectSnappDataLayer(bVar, this.e.get());
        injectReportManagerHelper(bVar, this.f.get());
    }

    public static void injectSnappConfigDataManager(b bVar, b bVar2) {
        bVar.f1171b = bVar2;
    }

    public static void injectSnappRideDataManager(b bVar, g gVar) {
        bVar.c = gVar;
    }

    public static void injectSnappSearchDataManager(b bVar, h hVar) {
        bVar.d = hVar;
    }

    public static void injectSnappLocationDataManager(b bVar, e eVar) {
        bVar.e = eVar;
    }

    public static void injectSnappDataLayer(b bVar, d dVar) {
        bVar.f = dVar;
    }

    public static void injectReportManagerHelper(b bVar, cab.snapp.passenger.f.b.b.c cVar) {
        bVar.g = cVar;
    }
}
