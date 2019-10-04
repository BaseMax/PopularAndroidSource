package cab.snapp.passenger.units.search;

import cab.snapp.passenger.c.e;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.c.h;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.o;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<o> f1153a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<g> f1154b;
    private final Provider<h> c;
    private final Provider<e> d;
    private final Provider<d> e;
    private final Provider<c> f;

    public b(Provider<o> provider, Provider<g> provider2, Provider<h> provider3, Provider<e> provider4, Provider<d> provider5, Provider<c> provider6) {
        this.f1153a = provider;
        this.f1154b = provider2;
        this.c = provider3;
        this.d = provider4;
        this.e = provider5;
        this.f = provider6;
    }

    public static MembersInjector<a> create(Provider<o> provider, Provider<g> provider2, Provider<h> provider3, Provider<e> provider4, Provider<d> provider5, Provider<c> provider6) {
        b bVar = new b(provider, provider2, provider3, provider4, provider5, provider6);
        return bVar;
    }

    public final void injectMembers(a aVar) {
        injectShowcaseHelper(aVar, this.f1153a.get());
        injectSnappRideDataManager(aVar, this.f1154b.get());
        injectSnappSearchDataManager(aVar, this.c.get());
        injectSnappLocationDataManager(aVar, this.d.get());
        injectSnappDataLayer(aVar, this.e.get());
        injectReportManagerHelper(aVar, this.f.get());
    }

    public static void injectShowcaseHelper(a aVar, o oVar) {
        aVar.f1151b = oVar;
    }

    public static void injectSnappRideDataManager(a aVar, g gVar) {
        aVar.c = gVar;
    }

    public static void injectSnappSearchDataManager(a aVar, h hVar) {
        aVar.d = hVar;
    }

    public static void injectSnappLocationDataManager(a aVar, e eVar) {
        aVar.e = eVar;
    }

    public static void injectSnappDataLayer(a aVar, d dVar) {
        aVar.f = dVar;
    }

    public static void injectReportManagerHelper(a aVar, c cVar) {
        aVar.g = cVar;
    }
}
