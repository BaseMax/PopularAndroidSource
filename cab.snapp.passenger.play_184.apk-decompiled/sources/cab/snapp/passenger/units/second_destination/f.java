package cab.snapp.passenger.units.second_destination;

import android.os.Bundle;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public final class f extends BaseRouter<b> {
    public final void routeToSearchUnit(Bundle bundle) {
        navigateTo(R.id.action_secondDestinationController_to_searchController, bundle);
    }

    public final void routeToAddFavoriteAddress() {
        navigateTo(R.id.action_secondDestinationController_to_addFavoriteAddressController);
    }
}
