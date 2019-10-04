package cab.snapp.passenger.units.snapp_charge_transactions;

import cab.snapp.passenger.data_access_layer.a.d;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<d> f1294a;

    public b(Provider<d> provider) {
        this.f1294a = provider;
    }

    public static MembersInjector<a> create(Provider<d> provider) {
        return new b(provider);
    }

    public final void injectMembers(a aVar) {
        injectSnappDataLayer(aVar, this.f1294a.get());
    }

    public static void injectSnappDataLayer(a aVar, d dVar) {
        aVar.f1292a = dVar;
    }
}
