package cab.snapp.passenger.units.credit;

import cab.snapp.passenger.f.b.b.c;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class d implements MembersInjector<c> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<c> f699a;

    public d(Provider<c> provider) {
        this.f699a = provider;
    }

    public static MembersInjector<c> create(Provider<c> provider) {
        return new d(provider);
    }

    public final void injectMembers(c cVar) {
        injectReportManagerHelper(cVar, this.f699a.get());
    }

    public static void injectReportManagerHelper(c cVar, c cVar2) {
        cVar.f698b = cVar2;
    }
}
