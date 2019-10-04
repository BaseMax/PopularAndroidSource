package cab.snapp.passenger.units.mainheader;

import androidx.navigation.NavController;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;
import com.a.a.a;

public final class e extends BaseRouter<a> {
    public final void navigateToRideOptions() {
        navigateTo(R.id.action_emptyNoHeightPlaceHolderController_to_rideOptionsController);
    }

    public final void navigateToEmpty() {
        if (getNavigationController() != null) {
            if (getNavigationController().getCurrentDestination() == null || getNavigationController().getCurrentDestination().getId() != R.id.rideOptionsController) {
                navigateTo(R.id.emptyNoHeightPlaceHolderController);
            } else {
                navigateTo(R.id.action_rideOptionsController_to_emptyNoHeightPlaceHolderController);
            }
        }
    }

    public final void navigateToAddFavorite(NavController navController) {
        if (navController != null) {
            try {
                navController.navigate((int) R.id.action_overTheMapEmptyController_to_favoriteAddAddressController);
            } catch (Exception e) {
                e.printStackTrace();
                a.logException(e);
            }
        }
    }

    public final void navigateToJekHeader(NavController navController) {
        if (navController != null) {
            try {
                navController.navigate((int) R.id.action_mainHeaderController_to_jekHeaderController);
            } catch (Exception e) {
                e.printStackTrace();
                a.logException(e);
            }
        }
    }
}
