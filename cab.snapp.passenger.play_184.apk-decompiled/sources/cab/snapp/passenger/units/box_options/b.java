package cab.snapp.passenger.units.box_options;

import cab.snapp.passenger.c.g;
import cab.snapp.passenger.f.b.b.c;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<g> f607a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<c> f608b;

    public b(Provider<g> provider, Provider<c> provider2) {
        this.f607a = provider;
        this.f608b = provider2;
    }

    public static MembersInjector<a> create(Provider<g> provider, Provider<c> provider2) {
        return new b(provider, provider2);
    }

    public final void injectMembers(a aVar) {
        injectSnappRideDataManager(aVar, this.f607a.get());
        injectReportManagerHelper(aVar, this.f608b.get());
    }

    public static void injectSnappRideDataManager(a aVar, g gVar) {
        aVar.f605a = gVar;
    }

    public static void injectReportManagerHelper(a aVar, c cVar) {
        aVar.f606b = cVar;
    }
}
