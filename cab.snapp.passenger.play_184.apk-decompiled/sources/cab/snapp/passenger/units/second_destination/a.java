package cab.snapp.passenger.units.second_destination;

import cab.snapp.passenger.c.b;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class a implements MembersInjector<SecondDestinationController> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<b> f1169a;

    public a(Provider<b> provider) {
        this.f1169a = provider;
    }

    public static MembersInjector<SecondDestinationController> create(Provider<b> provider) {
        return new a(provider);
    }

    public final void injectMembers(SecondDestinationController secondDestinationController) {
        injectSnappConfigDataManager(secondDestinationController, this.f1169a.get());
    }

    public static void injectSnappConfigDataManager(SecondDestinationController secondDestinationController, b bVar) {
        secondDestinationController.f1162a = bVar;
    }
}
