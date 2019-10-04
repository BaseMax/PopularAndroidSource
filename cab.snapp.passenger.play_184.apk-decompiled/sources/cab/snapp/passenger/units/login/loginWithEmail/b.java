package cab.snapp.passenger.units.login.loginWithEmail;

import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.f.b.b.c;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class b implements MembersInjector<a> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<d> f841a;

    /* renamed from: b  reason: collision with root package name */
    private final Provider<c> f842b;
    private final Provider<cab.snapp.authenticator.c> c;

    public b(Provider<d> provider, Provider<c> provider2, Provider<cab.snapp.authenticator.c> provider3) {
        this.f841a = provider;
        this.f842b = provider2;
        this.c = provider3;
    }

    public static MembersInjector<a> create(Provider<d> provider, Provider<c> provider2, Provider<cab.snapp.authenticator.c> provider3) {
        return new b(provider, provider2, provider3);
    }

    public final void injectMembers(a aVar) {
        injectSnappDataLayer(aVar, this.f841a.get());
        injectReportManagerHelper(aVar, this.f842b.get());
        injectSnappAccountManager(aVar, this.c.get());
    }

    public static void injectSnappDataLayer(a aVar, d dVar) {
        aVar.f840b = dVar;
    }

    public static void injectReportManagerHelper(a aVar, c cVar) {
        aVar.c = cVar;
    }

    public static void injectSnappAccountManager(a aVar, cab.snapp.authenticator.c cVar) {
        aVar.d = cVar;
    }
}
