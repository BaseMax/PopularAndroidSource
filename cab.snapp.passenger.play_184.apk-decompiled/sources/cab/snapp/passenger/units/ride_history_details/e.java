package cab.snapp.passenger.units.ride_history_details;

import android.os.Bundle;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public final class e extends BaseRouter<a> {
    public final void popRideHistoryDetailsController() {
        navigateUp();
    }

    public final void routeToSupportController(Bundle bundle) {
        navigateTo(R.id.action_rideHistoryDetailsController_to_supportController, bundle);
    }

    public final void goToRideRating(Bundle bundle) {
        navigateTo(R.id.action_rideHistoryController_to_rideRatingController, bundle);
    }
}
