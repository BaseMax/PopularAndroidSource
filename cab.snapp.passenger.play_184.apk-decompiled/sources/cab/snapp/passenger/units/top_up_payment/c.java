package cab.snapp.passenger.units.top_up_payment;

import cab.snapp.passenger.c.b;
import cab.snapp.passenger.c.f;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.data_access_layer.a.d;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class c implements MembersInjector<b> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<d> f1381a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<cab.snapp.passenger.f.b.b.c> f1382b;
    private final Provider<f> c;
    private final Provider<b> d;
    private final Provider<g> e;

    public c(Provider<d> provider, Provider<cab.snapp.passenger.f.b.b.c> provider2, Provider<f> provider3, Provider<b> provider4, Provider<g> provider5) {
        this.f1381a = provider;
        this.f1382b = provider2;
        this.c = provider3;
        this.d = provider4;
        this.e = provider5;
    }

    public static MembersInjector<b> create(Provider<d> provider, Provider<cab.snapp.passenger.f.b.b.c> provider2, Provider<f> provider3, Provider<b> provider4, Provider<g> provider5) {
        c cVar = new c(provider, provider2, provider3, provider4, provider5);
        return cVar;
    }

    public final void injectMembers(b bVar) {
        injectSnappDataLayer(bVar, this.f1381a.get());
        injectReportManagerHelper(bVar, this.f1382b.get());
        injectSnappProfileDataManager(bVar, this.c.get());
        injectSnappConfigDataManager(bVar, this.d.get());
        injectSnappRideDataManager(bVar, this.e.get());
    }

    public static void injectSnappDataLayer(b bVar, d dVar) {
        bVar.f1379a = dVar;
    }

    public static void injectReportManagerHelper(b bVar, cab.snapp.passenger.f.b.b.c cVar) {
        bVar.f1380b = cVar;
    }

    public static void injectSnappProfileDataManager(b bVar, f fVar) {
        bVar.c = fVar;
    }

    public static void injectSnappConfigDataManager(b bVar, b bVar2) {
        bVar.d = bVar2;
    }

    public static void injectSnappRideDataManager(b bVar, g gVar) {
        bVar.e = gVar;
    }
}
