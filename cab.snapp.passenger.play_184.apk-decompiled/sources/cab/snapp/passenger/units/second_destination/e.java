package cab.snapp.passenger.units.second_destination;

import cab.snapp.passenger.f.b.b.c;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class e implements MembersInjector<d> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<c> f1182a;

    public e(Provider<c> provider) {
        this.f1182a = provider;
    }

    public static MembersInjector<d> create(Provider<c> provider) {
        return new e(provider);
    }

    public final void injectMembers(d dVar) {
        injectReportManagerHelper(dVar, this.f1182a.get());
    }

    public static void injectReportManagerHelper(d dVar, c cVar) {
        dVar.e = cVar;
    }
}
