package cab.snapp.passenger.units.jek_header;

import cab.snapp.passenger.c.d;
import cab.snapp.passenger.c.f;
import cab.snapp.passenger.c.g;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<d> f824a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<f> f825b;
    private final Provider<g> c;

    public b(Provider<d> provider, Provider<f> provider2, Provider<g> provider3) {
        this.f824a = provider;
        this.f825b = provider2;
        this.c = provider3;
    }

    public static MembersInjector<a> create(Provider<d> provider, Provider<f> provider2, Provider<g> provider3) {
        return new b(provider, provider2, provider3);
    }

    public final void injectMembers(a aVar) {
        injectSnappGroupDataManager(aVar, this.f824a.get());
        injectSnappProfileDataManager(aVar, this.f825b.get());
        injectSnappRideDataManager(aVar, this.c.get());
    }

    public static void injectSnappGroupDataManager(a aVar, d dVar) {
        aVar.f822a = dVar;
    }

    public static void injectSnappProfileDataManager(a aVar, f fVar) {
        aVar.f823b = fVar;
    }

    public static void injectSnappRideDataManager(a aVar, g gVar) {
        aVar.c = gVar;
    }
}
