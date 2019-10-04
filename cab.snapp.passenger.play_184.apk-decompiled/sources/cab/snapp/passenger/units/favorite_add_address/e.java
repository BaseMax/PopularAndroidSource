package cab.snapp.passenger.units.favorite_add_address;

import android.os.Bundle;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public final class e extends BaseRouter<b> {
    public final void routeToSearchUnit(Bundle bundle) {
        navigateTo(R.id.action_favoriteAddAddressController_to_searchController, bundle);
    }
}
