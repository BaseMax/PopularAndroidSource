package cab.snapp.passenger.units.favorite_add_address;

import cab.snapp.passenger.c.b;
import cab.snapp.passenger.c.e;
import cab.snapp.passenger.c.h;
import cab.snapp.passenger.data_access_layer.a.d;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class c implements MembersInjector<b> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<b> f710a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<h> f711b;
    private final Provider<cab.snapp.passenger.c.c> c;
    private final Provider<e> d;
    private final Provider<d> e;
    private final Provider<cab.snapp.passenger.f.b.b.c> f;

    public c(Provider<b> provider, Provider<h> provider2, Provider<cab.snapp.passenger.c.c> provider3, Provider<e> provider4, Provider<d> provider5, Provider<cab.snapp.passenger.f.b.b.c> provider6) {
        this.f710a = provider;
        this.f711b = provider2;
        this.c = provider3;
        this.d = provider4;
        this.e = provider5;
        this.f = provider6;
    }

    public static MembersInjector<b> create(Provider<b> provider, Provider<h> provider2, Provider<cab.snapp.passenger.c.c> provider3, Provider<e> provider4, Provider<d> provider5, Provider<cab.snapp.passenger.f.b.b.c> provider6) {
        c cVar = new c(provider, provider2, provider3, provider4, provider5, provider6);
        return cVar;
    }

    public final void injectMembers(b bVar) {
        injectSnappConfigDataManager(bVar, this.f710a.get());
        injectSnappSearchDataManager(bVar, this.f711b.get());
        injectSnappFavoritesDataManager(bVar, this.c.get());
        injectSnappLocationDataManager(bVar, this.d.get());
        injectSnappDataLayer(bVar, this.e.get());
        injectReportManagerHelper(bVar, this.f.get());
    }

    public static void injectSnappConfigDataManager(b bVar, b bVar2) {
        bVar.f708a = bVar2;
    }

    public static void injectSnappSearchDataManager(b bVar, h hVar) {
        bVar.f709b = hVar;
    }

    public static void injectSnappFavoritesDataManager(b bVar, cab.snapp.passenger.c.c cVar) {
        bVar.c = cVar;
    }

    public static void injectSnappLocationDataManager(b bVar, e eVar) {
        bVar.d = eVar;
    }

    public static void injectSnappDataLayer(b bVar, d dVar) {
        bVar.e = dVar;
    }

    public static void injectReportManagerHelper(b bVar, cab.snapp.passenger.f.b.b.c cVar) {
        bVar.f = cVar;
    }
}
