package cab.snapp.passenger.units.charge_recently;

import cab.snapp.passenger.data_access_layer.a.d;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<d> f656a;

    public b(Provider<d> provider) {
        this.f656a = provider;
    }

    public static MembersInjector<a> create(Provider<d> provider) {
        return new b(provider);
    }

    public final void injectMembers(a aVar) {
        injectSnappDataLayer(aVar, this.f656a.get());
    }

    public static void injectSnappDataLayer(a aVar, d dVar) {
        aVar.f654a = dVar;
    }
}
