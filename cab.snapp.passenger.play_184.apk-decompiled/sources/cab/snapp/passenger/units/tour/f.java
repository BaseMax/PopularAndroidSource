package cab.snapp.passenger.units.tour;

import cab.snapp.passenger.f.b.b.c;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class f implements MembersInjector<e> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<c> f1404a;

    public f(Provider<c> provider) {
        this.f1404a = provider;
    }

    public static MembersInjector<e> create(Provider<c> provider) {
        return new f(provider);
    }

    public final void injectMembers(e eVar) {
        injectReportManagerHelper(eVar, this.f1404a.get());
    }

    public static void injectReportManagerHelper(e eVar, c cVar) {
        eVar.f1399a = cVar;
    }
}
