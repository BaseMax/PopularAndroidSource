package cab.snapp.passenger.units.sideMenu;

import cab.snapp.passenger.c.c;
import cab.snapp.passenger.c.d;
import cab.snapp.passenger.c.f;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.c.h;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<c> f1243a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<f> f1244b;
    private final Provider<cab.snapp.passenger.c.b> c;
    private final Provider<h> d;
    private final Provider<g> e;
    private final Provider<d> f;
    private final Provider<cab.snapp.passenger.f.b.b.c> g;
    private final Provider<cab.snapp.authenticator.c> h;

    public b(Provider<c> provider, Provider<f> provider2, Provider<cab.snapp.passenger.c.b> provider3, Provider<h> provider4, Provider<g> provider5, Provider<d> provider6, Provider<cab.snapp.passenger.f.b.b.c> provider7, Provider<cab.snapp.authenticator.c> provider8) {
        this.f1243a = provider;
        this.f1244b = provider2;
        this.c = provider3;
        this.d = provider4;
        this.e = provider5;
        this.f = provider6;
        this.g = provider7;
        this.h = provider8;
    }

    public static MembersInjector<a> create(Provider<c> provider, Provider<f> provider2, Provider<cab.snapp.passenger.c.b> provider3, Provider<h> provider4, Provider<g> provider5, Provider<d> provider6, Provider<cab.snapp.passenger.f.b.b.c> provider7, Provider<cab.snapp.authenticator.c> provider8) {
        b bVar = new b(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8);
        return bVar;
    }

    public final void injectMembers(a aVar) {
        injectSnappFavoritesDataManager(aVar, this.f1243a.get());
        injectSnappProfileDataManager(aVar, this.f1244b.get());
        injectSnappConfigDataManager(aVar, this.c.get());
        injectSnappSearchDataManager(aVar, this.d.get());
        injectSnappRideDataManager(aVar, this.e.get());
        injectSnappGroupDataManager(aVar, this.f.get());
        injectReportManagerHelper(aVar, this.g.get());
        injectSnappAccountManager(aVar, this.h.get());
    }

    public static void injectSnappFavoritesDataManager(a aVar, c cVar) {
        aVar.f1240a = cVar;
    }

    public static void injectSnappProfileDataManager(a aVar, f fVar) {
        aVar.f1241b = fVar;
    }

    public static void injectSnappConfigDataManager(a aVar, cab.snapp.passenger.c.b bVar) {
        aVar.c = bVar;
    }

    public static void injectSnappSearchDataManager(a aVar, h hVar) {
        aVar.d = hVar;
    }

    public static void injectSnappRideDataManager(a aVar, g gVar) {
        aVar.e = gVar;
    }

    public static void injectSnappGroupDataManager(a aVar, d dVar) {
        aVar.f = dVar;
    }

    public static void injectReportManagerHelper(a aVar, cab.snapp.passenger.f.b.b.c cVar) {
        aVar.g = cVar;
    }

    public static void injectSnappAccountManager(a aVar, cab.snapp.authenticator.c cVar) {
        aVar.h = cVar;
    }
}
