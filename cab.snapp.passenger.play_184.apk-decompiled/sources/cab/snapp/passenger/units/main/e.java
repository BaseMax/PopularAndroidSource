package cab.snapp.passenger.units.main;

import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.o;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class e implements MembersInjector<d> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<o> f922a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<c> f923b;

    public e(Provider<o> provider, Provider<c> provider2) {
        this.f922a = provider;
        this.f923b = provider2;
    }

    public static MembersInjector<d> create(Provider<o> provider, Provider<c> provider2) {
        return new e(provider, provider2);
    }

    public final void injectMembers(d dVar) {
        injectShowcaseHelper(dVar, this.f922a.get());
        injectReportManagerHelper(dVar, this.f923b.get());
    }

    public static void injectShowcaseHelper(d dVar, o oVar) {
        dVar.e = oVar;
    }

    public static void injectReportManagerHelper(d dVar, c cVar) {
        dVar.f = cVar;
    }
}
