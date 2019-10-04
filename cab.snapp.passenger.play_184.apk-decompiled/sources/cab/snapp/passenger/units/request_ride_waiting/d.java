package cab.snapp.passenger.units.request_ride_waiting;

import cab.snapp.passenger.f.b.b.c;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class d implements MembersInjector<c> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<c> f1073a;

    public d(Provider<c> provider) {
        this.f1073a = provider;
    }

    public static MembersInjector<c> create(Provider<c> provider) {
        return new d(provider);
    }

    public final void injectMembers(c cVar) {
        injectReportManagerHelper(cVar, this.f1073a.get());
    }

    public static void injectReportManagerHelper(c cVar, c cVar2) {
        cVar.d = cVar2;
    }
}
