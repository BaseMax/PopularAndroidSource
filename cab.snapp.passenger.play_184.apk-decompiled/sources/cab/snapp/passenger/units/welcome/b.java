package cab.snapp.passenger.units.welcome;

import cab.snapp.passenger.c.f;
import cab.snapp.passenger.f.b.b.c;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<c> f1434a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<f> f1435b;

    public b(Provider<c> provider, Provider<f> provider2) {
        this.f1434a = provider;
        this.f1435b = provider2;
    }

    public static MembersInjector<a> create(Provider<c> provider, Provider<f> provider2) {
        return new b(provider, provider2);
    }

    public final void injectMembers(a aVar) {
        injectReportManagerHelper(aVar, this.f1434a.get());
        injectSnappProfileDataManager(aVar, this.f1435b.get());
    }

    public static void injectReportManagerHelper(a aVar, c cVar) {
        aVar.f1433b = cVar;
    }

    public static void injectSnappProfileDataManager(a aVar, f fVar) {
        aVar.c = fVar;
    }
}
