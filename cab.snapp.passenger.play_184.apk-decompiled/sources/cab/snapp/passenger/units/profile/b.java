package cab.snapp.passenger.units.profile;

import cab.snapp.passenger.c.f;
import cab.snapp.passenger.f.b.b.c;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<f> f1033a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<c> f1034b;

    public b(Provider<f> provider, Provider<c> provider2) {
        this.f1033a = provider;
        this.f1034b = provider2;
    }

    public static MembersInjector<a> create(Provider<f> provider, Provider<c> provider2) {
        return new b(provider, provider2);
    }

    public final void injectMembers(a aVar) {
        injectSnappProfileDataManager(aVar, this.f1033a.get());
        injectReportManagerHelper(aVar, this.f1034b.get());
    }

    public static void injectSnappProfileDataManager(a aVar, f fVar) {
        aVar.f1031a = fVar;
    }

    public static void injectReportManagerHelper(a aVar, c cVar) {
        aVar.f1032b = cVar;
    }
}
