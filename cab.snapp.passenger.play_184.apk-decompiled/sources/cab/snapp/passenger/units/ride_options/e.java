package cab.snapp.passenger.units.ride_options;

import android.os.Bundle;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public final class e extends BaseRouter<a> {
    public final void navigateToChooseSecondDestinationUnit(Bundle bundle) {
        if (getNavigationController() != null) {
            if (getNavigationController().getCurrentDestination() == null || getNavigationController().getCurrentDestination().getId() != R.id.overTheMapEmptyController) {
                navigateTo(R.id.secondDestinationController, bundle);
            } else {
                navigateTo(R.id.action_overTheMapEmptyController_to_secondDestinationController, bundle);
            }
        }
    }
}
