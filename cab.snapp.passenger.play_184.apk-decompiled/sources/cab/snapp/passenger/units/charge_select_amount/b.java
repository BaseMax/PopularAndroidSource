package cab.snapp.passenger.units.charge_select_amount;

import cab.snapp.passenger.data_access_layer.a.d;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<d> f673a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<cab.snapp.passenger.c.b> f674b;

    public b(Provider<d> provider, Provider<cab.snapp.passenger.c.b> provider2) {
        this.f673a = provider;
        this.f674b = provider2;
    }

    public static MembersInjector<a> create(Provider<d> provider, Provider<cab.snapp.passenger.c.b> provider2) {
        return new b(provider, provider2);
    }

    public final void injectMembers(a aVar) {
        injectSnappDataLayer(aVar, this.f673a.get());
        injectSnappConfigDataManager(aVar, this.f674b.get());
    }

    public static void injectSnappDataLayer(a aVar, d dVar) {
        aVar.c = dVar;
    }

    public static void injectSnappConfigDataManager(a aVar, cab.snapp.passenger.c.b bVar) {
        aVar.d = bVar;
    }
}
