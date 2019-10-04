package cab.snapp.passenger.units.main;

import cab.snapp.passenger.c.b;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class a implements MembersInjector<MainController> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<b> f892a;

    public a(Provider<b> provider) {
        this.f892a = provider;
    }

    public static MembersInjector<MainController> create(Provider<b> provider) {
        return new a(provider);
    }

    public final void injectMembers(MainController mainController) {
        injectSnappConfigDataManager(mainController, this.f892a.get());
    }

    public static void injectSnappConfigDataManager(MainController mainController, b bVar) {
        mainController.f877a = bVar;
    }
}
