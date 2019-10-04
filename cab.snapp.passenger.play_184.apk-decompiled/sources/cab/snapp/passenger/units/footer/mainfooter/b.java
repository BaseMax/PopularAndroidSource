package cab.snapp.passenger.units.footer.mainfooter;

import cab.snapp.passenger.c.g;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<g> f772a;

    public b(Provider<g> provider) {
        this.f772a = provider;
    }

    public static MembersInjector<a> create(Provider<g> provider) {
        return new b(provider);
    }

    public final void injectMembers(a aVar) {
        injectSnappRideDataManager(aVar, this.f772a.get());
    }

    public static void injectSnappRideDataManager(a aVar, g gVar) {
        aVar.f767a = gVar;
    }
}
