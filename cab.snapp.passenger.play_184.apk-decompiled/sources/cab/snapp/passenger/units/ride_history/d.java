package cab.snapp.passenger.units.ride_history;

import android.os.Bundle;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public final class d extends BaseRouter<a> {
    public final void routeToRideHistoryDetailsController(Bundle bundle) {
        navigateTo(R.id.action_rideHistoryController_to_rideHistoryDetailsController, bundle);
    }
}
