package cab.snapp.passenger.units.footer.driver_assigned_footer;

import cab.snapp.passenger.f.o;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class d implements MembersInjector<c> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<o> f764a;

    public d(Provider<o> provider) {
        this.f764a = provider;
    }

    public static MembersInjector<c> create(Provider<o> provider) {
        return new d(provider);
    }

    public final void injectMembers(c cVar) {
        injectShowcaseHelper(cVar, this.f764a.get());
    }

    public static void injectShowcaseHelper(c cVar, o oVar) {
        cVar.f763a = oVar;
    }
}
