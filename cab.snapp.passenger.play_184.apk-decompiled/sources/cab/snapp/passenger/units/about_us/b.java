package cab.snapp.passenger.units.about_us;

import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.f.b.b.c;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<d> f600a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<c> f601b;

    public b(Provider<d> provider, Provider<c> provider2) {
        this.f600a = provider;
        this.f601b = provider2;
    }

    public static MembersInjector<a> create(Provider<d> provider, Provider<c> provider2) {
        return new b(provider, provider2);
    }

    public final void injectMembers(a aVar) {
        injectSnappDataLayer(aVar, this.f600a.get());
        injectReportManagerHelper(aVar, this.f601b.get());
    }

    public static void injectSnappDataLayer(a aVar, d dVar) {
        aVar.f598a = dVar;
    }

    public static void injectReportManagerHelper(a aVar, c cVar) {
        aVar.f599b = cVar;
    }
}
