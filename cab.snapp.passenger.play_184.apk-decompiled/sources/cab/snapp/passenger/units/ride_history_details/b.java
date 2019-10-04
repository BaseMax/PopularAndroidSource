package cab.snapp.passenger.units.ride_history_details;

import cab.snapp.passenger.f.b.b.c;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<c> f1094a;

    public b(Provider<c> provider) {
        this.f1094a = provider;
    }

    public static MembersInjector<a> create(Provider<c> provider) {
        return new b(provider);
    }

    public final void injectMembers(a aVar) {
        injectReportManagerHelper(aVar, this.f1094a.get());
    }

    public static void injectReportManagerHelper(a aVar, c cVar) {
        aVar.f1092a = cVar;
    }
}
