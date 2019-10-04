package cab.snapp.passenger.units.skippable_mobile_verification;

import cab.snapp.passenger.c.d;
import cab.snapp.passenger.f.b.b.c;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<d> f1280a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<cab.snapp.passenger.data_access_layer.a.d> f1281b;
    private final Provider<c> c;

    public b(Provider<d> provider, Provider<cab.snapp.passenger.data_access_layer.a.d> provider2, Provider<c> provider3) {
        this.f1280a = provider;
        this.f1281b = provider2;
        this.c = provider3;
    }

    public static MembersInjector<a> create(Provider<d> provider, Provider<cab.snapp.passenger.data_access_layer.a.d> provider2, Provider<c> provider3) {
        return new b(provider, provider2, provider3);
    }

    public final void injectMembers(a aVar) {
        injectSnappGroupDataManager(aVar, this.f1280a.get());
        injectSnappDataLayer(aVar, this.f1281b.get());
        injectReportManagerHelper(aVar, this.c.get());
    }

    public static void injectSnappGroupDataManager(a aVar, d dVar) {
        aVar.c = dVar;
    }

    public static void injectSnappDataLayer(a aVar, cab.snapp.passenger.data_access_layer.a.d dVar) {
        aVar.d = dVar;
    }

    public static void injectReportManagerHelper(a aVar, c cVar) {
        aVar.e = cVar;
    }
}
