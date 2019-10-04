package cab.snapp.passenger.units.charge_confirm_payment;

import cab.snapp.passenger.data_access_layer.a.d;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<d> f646a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<cab.snapp.passenger.f.b> f647b;

    public b(Provider<d> provider, Provider<cab.snapp.passenger.f.b> provider2) {
        this.f646a = provider;
        this.f647b = provider2;
    }

    public static MembersInjector<a> create(Provider<d> provider, Provider<cab.snapp.passenger.f.b> provider2) {
        return new b(provider, provider2);
    }

    public final void injectMembers(a aVar) {
        injectSnappDataLayer(aVar, this.f646a.get());
        injectDeepLinkHelper(aVar, this.f647b.get());
    }

    public static void injectSnappDataLayer(a aVar, d dVar) {
        aVar.c = dVar;
    }

    public static void injectDeepLinkHelper(a aVar, cab.snapp.passenger.f.b bVar) {
        aVar.d = bVar;
    }
}
