package cab.snapp.passenger.units.footer.driver_assigned_footer;

import cab.snapp.passenger.c.f;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.o;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<o> f761a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<f> f762b;
    private final Provider<cab.snapp.passenger.c.b> c;
    private final Provider<g> d;
    private final Provider<d> e;
    private final Provider<c> f;

    public b(Provider<o> provider, Provider<f> provider2, Provider<cab.snapp.passenger.c.b> provider3, Provider<g> provider4, Provider<d> provider5, Provider<c> provider6) {
        this.f761a = provider;
        this.f762b = provider2;
        this.c = provider3;
        this.d = provider4;
        this.e = provider5;
        this.f = provider6;
    }

    public static MembersInjector<a> create(Provider<o> provider, Provider<f> provider2, Provider<cab.snapp.passenger.c.b> provider3, Provider<g> provider4, Provider<d> provider5, Provider<c> provider6) {
        b bVar = new b(provider, provider2, provider3, provider4, provider5, provider6);
        return bVar;
    }

    public final void injectMembers(a aVar) {
        injectShowcaseHelper(aVar, this.f761a.get());
        injectSnappProfileDataManager(aVar, this.f762b.get());
        injectSnappConfigDataManager(aVar, this.c.get());
        injectSnappRideDataManager(aVar, this.d.get());
        injectSnappDataLayer(aVar, this.e.get());
        injectReportManagerHelper(aVar, this.f.get());
    }

    public static void injectShowcaseHelper(a aVar, o oVar) {
        aVar.f757b = oVar;
    }

    public static void injectSnappProfileDataManager(a aVar, f fVar) {
        aVar.c = fVar;
    }

    public static void injectSnappConfigDataManager(a aVar, cab.snapp.passenger.c.b bVar) {
        aVar.d = bVar;
    }

    public static void injectSnappRideDataManager(a aVar, g gVar) {
        aVar.e = gVar;
    }

    public static void injectSnappDataLayer(a aVar, d dVar) {
        aVar.f = dVar;
    }

    public static void injectReportManagerHelper(a aVar, c cVar) {
        aVar.g = cVar;
    }
}
