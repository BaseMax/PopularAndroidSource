package cab.snapp.passenger.units.favorite_bar;

import cab.snapp.passenger.c.c;
import cab.snapp.passenger.c.g;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<g> f743a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<c> f744b;
    private final Provider<cab.snapp.passenger.f.b.b.c> c;

    public b(Provider<g> provider, Provider<c> provider2, Provider<cab.snapp.passenger.f.b.b.c> provider3) {
        this.f743a = provider;
        this.f744b = provider2;
        this.c = provider3;
    }

    public static MembersInjector<a> create(Provider<g> provider, Provider<c> provider2, Provider<cab.snapp.passenger.f.b.b.c> provider3) {
        return new b(provider, provider2, provider3);
    }

    public final void injectMembers(a aVar) {
        injectSnappRideDataManager(aVar, this.f743a.get());
        injectSnappFavoritesDataManager(aVar, this.f744b.get());
        injectReportManagerHelper(aVar, this.c.get());
    }

    public static void injectSnappRideDataManager(a aVar, g gVar) {
        aVar.f741a = gVar;
    }

    public static void injectSnappFavoritesDataManager(a aVar, c cVar) {
        aVar.f742b = cVar;
    }

    public static void injectReportManagerHelper(a aVar, cab.snapp.passenger.f.b.b.c cVar) {
        aVar.c = cVar;
    }
}
