package cab.snapp.passenger.units.main;

import cab.snapp.b.a;
import cab.snapp.passenger.c.b;
import cab.snapp.passenger.c.e;
import cab.snapp.passenger.c.f;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.c.h;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.f.o;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class c implements MembersInjector<b> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<o> f915a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<b> f916b;
    private final Provider<g> c;
    private final Provider<h> d;
    private final Provider<f> e;
    private final Provider<e> f;
    private final Provider<d> g;
    private final Provider<cab.snapp.passenger.f.b.b.c> h;
    private final Provider<a> i;
    private final Provider<cab.snapp.passenger.f.b> j;
    private final Provider<cab.snapp.passenger.c.d> k;

    public c(Provider<o> provider, Provider<b> provider2, Provider<g> provider3, Provider<h> provider4, Provider<f> provider5, Provider<e> provider6, Provider<d> provider7, Provider<cab.snapp.passenger.f.b.b.c> provider8, Provider<a> provider9, Provider<cab.snapp.passenger.f.b> provider10, Provider<cab.snapp.passenger.c.d> provider11) {
        this.f915a = provider;
        this.f916b = provider2;
        this.c = provider3;
        this.d = provider4;
        this.e = provider5;
        this.f = provider6;
        this.g = provider7;
        this.h = provider8;
        this.i = provider9;
        this.j = provider10;
        this.k = provider11;
    }

    public static MembersInjector<b> create(Provider<o> provider, Provider<b> provider2, Provider<g> provider3, Provider<h> provider4, Provider<f> provider5, Provider<e> provider6, Provider<d> provider7, Provider<cab.snapp.passenger.f.b.b.c> provider8, Provider<a> provider9, Provider<cab.snapp.passenger.f.b> provider10, Provider<cab.snapp.passenger.c.d> provider11) {
        c cVar = new c(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11);
        return cVar;
    }

    public final void injectMembers(b bVar) {
        injectShowcaseHelper(bVar, this.f915a.get());
        injectSnappConfigDataManager(bVar, this.f916b.get());
        injectSnappRideDataManager(bVar, this.c.get());
        injectSnappSearchDataManager(bVar, this.d.get());
        injectSnappProfileDataManager(bVar, this.e.get());
        injectSnappLocationDataManager(bVar, this.f.get());
        injectSnappDataLayer(bVar, this.g.get());
        injectReportManagerHelper(bVar, this.h.get());
        injectSharedPreferencesManager(bVar, this.i.get());
        injectDeepLinkHelper(bVar, this.j.get());
        injectSnappGroupDataManager(bVar, this.k.get());
    }

    public static void injectShowcaseHelper(b bVar, o oVar) {
        bVar.f910a = oVar;
    }

    public static void injectSnappConfigDataManager(b bVar, b bVar2) {
        bVar.f911b = bVar2;
    }

    public static void injectSnappRideDataManager(b bVar, g gVar) {
        bVar.c = gVar;
    }

    public static void injectSnappSearchDataManager(b bVar, h hVar) {
        bVar.d = hVar;
    }

    public static void injectSnappProfileDataManager(b bVar, f fVar) {
        bVar.e = fVar;
    }

    public static void injectSnappLocationDataManager(b bVar, e eVar) {
        bVar.f = eVar;
    }

    public static void injectSnappDataLayer(b bVar, d dVar) {
        bVar.g = dVar;
    }

    public static void injectReportManagerHelper(b bVar, cab.snapp.passenger.f.b.b.c cVar) {
        bVar.h = cVar;
    }

    public static void injectSharedPreferencesManager(b bVar, a aVar) {
        bVar.i = aVar;
    }

    public static void injectDeepLinkHelper(b bVar, cab.snapp.passenger.f.b bVar2) {
        bVar.j = bVar2;
    }

    public static void injectSnappGroupDataManager(b bVar, cab.snapp.passenger.c.d dVar) {
        bVar.k = dVar;
    }
}
