package cab.snapp.passenger.units.payment;

import cab.snapp.passenger.c.f;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.f.b.b.c;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<f> f1007a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<d> f1008b;
    private final Provider<c> c;
    private final Provider<g> d;
    private final Provider<cab.snapp.passenger.c.b> e;

    public b(Provider<f> provider, Provider<d> provider2, Provider<c> provider3, Provider<g> provider4, Provider<cab.snapp.passenger.c.b> provider5) {
        this.f1007a = provider;
        this.f1008b = provider2;
        this.c = provider3;
        this.d = provider4;
        this.e = provider5;
    }

    public static MembersInjector<a> create(Provider<f> provider, Provider<d> provider2, Provider<c> provider3, Provider<g> provider4, Provider<cab.snapp.passenger.c.b> provider5) {
        b bVar = new b(provider, provider2, provider3, provider4, provider5);
        return bVar;
    }

    public final void injectMembers(a aVar) {
        injectSnappProfileDataManager(aVar, this.f1007a.get());
        injectSnappDataLayer(aVar, this.f1008b.get());
        injectReportManagerHelper(aVar, this.c.get());
        injectSnappRideDataManager(aVar, this.d.get());
        injectConfigDataManager(aVar, this.e.get());
    }

    public static void injectSnappProfileDataManager(a aVar, f fVar) {
        aVar.c = fVar;
    }

    public static void injectSnappDataLayer(a aVar, d dVar) {
        aVar.d = dVar;
    }

    public static void injectReportManagerHelper(a aVar, c cVar) {
        aVar.e = cVar;
    }

    public static void injectSnappRideDataManager(a aVar, g gVar) {
        aVar.f = gVar;
    }

    public static void injectConfigDataManager(a aVar, cab.snapp.passenger.c.b bVar) {
        aVar.g = bVar;
    }
}
