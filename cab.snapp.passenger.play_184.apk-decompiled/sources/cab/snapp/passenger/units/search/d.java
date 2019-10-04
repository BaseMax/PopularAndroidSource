package cab.snapp.passenger.units.search;

import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.o;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class d implements MembersInjector<c> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<o> f1160a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<c> f1161b;

    public d(Provider<o> provider, Provider<c> provider2) {
        this.f1160a = provider;
        this.f1161b = provider2;
    }

    public static MembersInjector<c> create(Provider<o> provider, Provider<c> provider2) {
        return new d(provider, provider2);
    }

    public final void injectMembers(c cVar) {
        injectShowcaseHelper(cVar, this.f1160a.get());
        injectReportManagerHelper(cVar, this.f1161b.get());
    }

    public static void injectShowcaseHelper(c cVar, o oVar) {
        cVar.f1156b = oVar;
    }

    public static void injectReportManagerHelper(c cVar, c cVar2) {
        cVar.c = cVar2;
    }
}
