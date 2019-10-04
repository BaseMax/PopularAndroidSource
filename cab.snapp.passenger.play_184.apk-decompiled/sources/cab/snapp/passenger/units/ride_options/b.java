package cab.snapp.passenger.units.ride_options;

import cab.snapp.passenger.c.f;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.f.b.b.c;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<g> f1113a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<f> f1114b;
    private final Provider<c> c;

    public b(Provider<g> provider, Provider<f> provider2, Provider<c> provider3) {
        this.f1113a = provider;
        this.f1114b = provider2;
        this.c = provider3;
    }

    public static MembersInjector<a> create(Provider<g> provider, Provider<f> provider2, Provider<c> provider3) {
        return new b(provider, provider2, provider3);
    }

    public final void injectMembers(a aVar) {
        injectSnappRideDataManager(aVar, this.f1113a.get());
        injectSnappProfileDataManager(aVar, this.f1114b.get());
        injectReportManagerHelper(aVar, this.c.get());
    }

    public static void injectSnappRideDataManager(a aVar, g gVar) {
        aVar.d = gVar;
    }

    public static void injectSnappProfileDataManager(a aVar, f fVar) {
        aVar.e = fVar;
    }

    public static void injectReportManagerHelper(a aVar, c cVar) {
        aVar.f = cVar;
    }
}
