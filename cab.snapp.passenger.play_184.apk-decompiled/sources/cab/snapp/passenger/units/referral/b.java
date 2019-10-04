package cab.snapp.passenger.units.referral;

import cab.snapp.passenger.f.b.b.c;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<cab.snapp.passenger.c.b> f1055a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<c> f1056b;

    public b(Provider<cab.snapp.passenger.c.b> provider, Provider<c> provider2) {
        this.f1055a = provider;
        this.f1056b = provider2;
    }

    public static MembersInjector<a> create(Provider<cab.snapp.passenger.c.b> provider, Provider<c> provider2) {
        return new b(provider, provider2);
    }

    public final void injectMembers(a aVar) {
        injectSnappConfigDataManager(aVar, this.f1055a.get());
        injectReportManagerHelper(aVar, this.f1056b.get());
    }

    public static void injectSnappConfigDataManager(a aVar, cab.snapp.passenger.c.b bVar) {
        aVar.f1050b = bVar;
    }

    public static void injectReportManagerHelper(a aVar, c cVar) {
        aVar.c = cVar;
    }
}
