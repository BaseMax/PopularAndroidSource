package cab.snapp.passenger.units.tour;

import cab.snapp.passenger.f.o;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class c implements MembersInjector<b> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<o> f1395a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<cab.snapp.passenger.f.b.b.c> f1396b;

    public c(Provider<o> provider, Provider<cab.snapp.passenger.f.b.b.c> provider2) {
        this.f1395a = provider;
        this.f1396b = provider2;
    }

    public static MembersInjector<b> create(Provider<o> provider, Provider<cab.snapp.passenger.f.b.b.c> provider2) {
        return new c(provider, provider2);
    }

    public final void injectMembers(b bVar) {
        injectShowcaseHelper(bVar, this.f1395a.get());
        injectReportManagerHelper(bVar, this.f1396b.get());
    }

    public static void injectShowcaseHelper(b bVar, o oVar) {
        bVar.f1393a = oVar;
    }

    public static void injectReportManagerHelper(b bVar, cab.snapp.passenger.f.b.b.c cVar) {
        bVar.f1394b = cVar;
    }
}
