package cab.snapp.passenger.units.setting;

import cab.snapp.b.a;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.f.b.b.c;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<cab.snapp.passenger.c.b> f1230a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<a> f1231b;
    private final Provider<d> c;
    private final Provider<c> d;

    public b(Provider<cab.snapp.passenger.c.b> provider, Provider<a> provider2, Provider<d> provider3, Provider<c> provider4) {
        this.f1230a = provider;
        this.f1231b = provider2;
        this.c = provider3;
        this.d = provider4;
    }

    public static MembersInjector<a> create(Provider<cab.snapp.passenger.c.b> provider, Provider<a> provider2, Provider<d> provider3, Provider<c> provider4) {
        return new b(provider, provider2, provider3, provider4);
    }

    public final void injectMembers(a aVar) {
        injectSnappConfigDataManager(aVar, this.f1230a.get());
        injectSharedPreferencesManager(aVar, this.f1231b.get());
        injectSnappDataLayer(aVar, this.c.get());
        injectReportManagerHelper(aVar, this.d.get());
    }

    public static void injectSnappConfigDataManager(a aVar, cab.snapp.passenger.c.b bVar) {
        aVar.f1228a = bVar;
    }

    public static void injectSharedPreferencesManager(a aVar, a aVar2) {
        aVar.f1229b = aVar2;
    }

    public static void injectSnappDataLayer(a aVar, d dVar) {
        aVar.c = dVar;
    }

    public static void injectReportManagerHelper(a aVar, c cVar) {
        aVar.d = cVar;
    }
}
