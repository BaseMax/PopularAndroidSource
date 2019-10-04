package cab.snapp.passenger.units.over_the_map_empty;

import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<cab.snapp.passenger.c.b> f980a;

    public b(Provider<cab.snapp.passenger.c.b> provider) {
        this.f980a = provider;
    }

    public static MembersInjector<a> create(Provider<cab.snapp.passenger.c.b> provider) {
        return new b(provider);
    }

    public final void injectMembers(a aVar) {
        injectM(aVar, this.f980a.get());
    }

    public static void injectM(a aVar, cab.snapp.passenger.c.b bVar) {
        aVar.f978a = bVar;
    }
}
