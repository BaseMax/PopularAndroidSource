package cab.snapp.passenger.units.favorite_address;

import cab.snapp.passenger.c.c;
import cab.snapp.passenger.c.e;
import cab.snapp.passenger.c.g;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<g> f731a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<c> f732b;
    private final Provider<e> c;
    private final Provider<cab.snapp.passenger.f.b.b.c> d;

    public b(Provider<g> provider, Provider<c> provider2, Provider<e> provider3, Provider<cab.snapp.passenger.f.b.b.c> provider4) {
        this.f731a = provider;
        this.f732b = provider2;
        this.c = provider3;
        this.d = provider4;
    }

    public static MembersInjector<a> create(Provider<g> provider, Provider<c> provider2, Provider<e> provider3, Provider<cab.snapp.passenger.f.b.b.c> provider4) {
        return new b(provider, provider2, provider3, provider4);
    }

    public final void injectMembers(a aVar) {
        injectSnappRideDataManager(aVar, this.f731a.get());
        injectSnappFavoritesDataManager(aVar, this.f732b.get());
        injectSnappLocationDataManager(aVar, this.c.get());
        injectReportManagerHelper(aVar, this.d.get());
    }

    public static void injectSnappRideDataManager(a aVar, g gVar) {
        aVar.f726a = gVar;
    }

    public static void injectSnappFavoritesDataManager(a aVar, c cVar) {
        aVar.f727b = cVar;
    }

    public static void injectSnappLocationDataManager(a aVar, e eVar) {
        aVar.c = eVar;
    }

    public static void injectReportManagerHelper(a aVar, cab.snapp.passenger.f.b.b.c cVar) {
        aVar.d = cVar;
    }
}
