package cab.snapp.passenger.units.ride_options;

import cab.snapp.passenger.f.b.b.c;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class d implements MembersInjector<c> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<c> f1119a;

    public d(Provider<c> provider) {
        this.f1119a = provider;
    }

    public static MembersInjector<c> create(Provider<c> provider) {
        return new d(provider);
    }

    public final void injectMembers(c cVar) {
        injectReportManagerHelper(cVar, this.f1119a.get());
    }

    public static void injectReportManagerHelper(c cVar, c cVar2) {
        cVar.m = cVar2;
    }
}
