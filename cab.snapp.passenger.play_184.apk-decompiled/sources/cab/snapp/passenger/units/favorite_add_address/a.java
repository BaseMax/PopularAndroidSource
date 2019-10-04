package cab.snapp.passenger.units.favorite_add_address;

import cab.snapp.passenger.c.b;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class a implements MembersInjector<FavoriteAddAddressController> {

    /* renamed from: a  reason: collision with root package name */
    private final Provider<b> f707a;

    public a(Provider<b> provider) {
        this.f707a = provider;
    }

    public static MembersInjector<FavoriteAddAddressController> create(Provider<b> provider) {
        return new a(provider);
    }

    public final void injectMembers(FavoriteAddAddressController favoriteAddAddressController) {
        injectSnappConfigDataManager(favoriteAddAddressController, this.f707a.get());
    }

    public static void injectSnappConfigDataManager(FavoriteAddAddressController favoriteAddAddressController, b bVar) {
        favoriteAddAddressController.f700a = bVar;
    }
}
