package cab.snapp.passenger.units.ride_rating;

import cab.snapp.passenger.c.g;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.o;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<o> f1134a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<g> f1135b;
    private final Provider<d> c;
    private final Provider<c> d;

    public b(Provider<o> provider, Provider<g> provider2, Provider<d> provider3, Provider<c> provider4) {
        this.f1134a = provider;
        this.f1135b = provider2;
        this.c = provider3;
        this.d = provider4;
    }

    public static MembersInjector<a> create(Provider<o> provider, Provider<g> provider2, Provider<d> provider3, Provider<c> provider4) {
        return new b(provider, provider2, provider3, provider4);
    }

    public final void injectMembers(a aVar) {
        injectShowcaseHelper(aVar, this.f1134a.get());
        injectSnappRideDataManager(aVar, this.f1135b.get());
        injectSnappDataLayer(aVar, this.c.get());
        injectReportManagerHelper(aVar, this.d.get());
    }

    public static void injectShowcaseHelper(a aVar, o oVar) {
        aVar.d = oVar;
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
