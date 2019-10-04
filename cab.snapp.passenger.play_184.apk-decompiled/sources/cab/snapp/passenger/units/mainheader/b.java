package cab.snapp.passenger.units.mainheader;

import cab.snapp.passenger.c.g;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.o;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<o> f954a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<cab.snapp.passenger.c.b> f955b;
    private final Provider<g> c;
    private final Provider<d> d;
    private final Provider<c> e;
    private final Provider<cab.snapp.passenger.c.d> f;

    public b(Provider<o> provider, Provider<cab.snapp.passenger.c.b> provider2, Provider<g> provider3, Provider<d> provider4, Provider<c> provider5, Provider<cab.snapp.passenger.c.d> provider6) {
        this.f954a = provider;
        this.f955b = provider2;
        this.c = provider3;
        this.d = provider4;
        this.e = provider5;
        this.f = provider6;
    }

    public static MembersInjector<a> create(Provider<o> provider, Provider<cab.snapp.passenger.c.b> provider2, Provider<g> provider3, Provider<d> provider4, Provider<c> provider5, Provider<cab.snapp.passenger.c.d> provider6) {
        b bVar = new b(provider, provider2, provider3, provider4, provider5, provider6);
        return bVar;
    }

    public final void injectMembers(a aVar) {
        injectShowcaseHelper(aVar, this.f954a.get());
        injectSnappConfigDataManager(aVar, this.f955b.get());
        injectSnappRideDataManager(aVar, this.c.get());
        injectSnappDataLayer(aVar, this.d.get());
        injectReportManagerHelper(aVar, this.e.get());
        injectSnappGroupDataManager(aVar, this.f.get());
    }

    public static void injectShowcaseHelper(a aVar, o oVar) {
        aVar.f950a = oVar;
    }

    public static void injectSnappConfigDataManager(a aVar, cab.snapp.passenger.c.b bVar) {
        aVar.f951b = bVar;
    }

    public static void injectSnappRideDataManager(a aVar, g gVar) {
        aVar.c = gVar;
    }

    public static void injectSnappDataLayer(a aVar, d dVar) {
        aVar.d = dVar;
    }

    public static void injectReportManagerHelper(a aVar, c cVar) {
        aVar.e = cVar;
    }

    public static void injectSnappGroupDataManager(a aVar, cab.snapp.passenger.c.d dVar) {
        aVar.f = dVar;
    }
}
