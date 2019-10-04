package cab.snapp.passenger.units.ride_rating;

import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;
import com.a.a.a;

public final class d extends BaseRouter<a> {
    public final void routeBackToEmpty() {
        if (getNavigationController() != null) {
            if (getNavigationController().getCurrentDestination() == null || getNavigationController().getCurrentDestination().getId() != R.id.rideRatingController) {
                try {
                    getNavigationController().navigate((int) R.id.overTheMapEmptyController);
                } catch (Exception e) {
                    a.logException(e);
                    e.printStackTrace();
                }
            } else {
                try {
                    getNavigationController().navigate((int) R.id.action_rideRatingController_to_emptyController);
                } catch (Exception e2) {
                    a.logException(e2);
                    e2.printStackTrace();
                }
            }
        }
    }
}
