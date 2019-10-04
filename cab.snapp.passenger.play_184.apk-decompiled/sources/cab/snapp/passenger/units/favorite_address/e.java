package cab.snapp.passenger.units.favorite_address;

import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public final class e extends BaseRouter<a> {
    public final void routeToAddFavoriteAddress() {
        navigateTo(R.id.action_favoriteAddressController_to_favoriteAddAddressController);
    }

    public final void navigateUp() {
        super.navigateUp();
    }
}
