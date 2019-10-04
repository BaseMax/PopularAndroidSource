package cab.snapp.passenger.units.footer.ride_request_footer;

import android.os.Bundle;
import androidx.navigation.NavController;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;
import com.a.a.a;

public final class e extends BaseRouter<a> {
    public final void navigateToRideOptions(NavController navController, Bundle bundle) {
        if (navController != null) {
            if (navController.getCurrentDestination() != null && navController.getCurrentDestination().getId() == R.id.rideOptionsController) {
                return;
            }
            if (navController.getCurrentDestination() == null || navController.getCurrentDestination().getId() != R.id.boxOptionsController) {
                try {
                    navController.navigate((int) R.id.action_emptyNoHeightPlaceHolderController_to_rideOptionsController, bundle);
                } catch (Exception e) {
                    e.printStackTrace();
                    a.logException(e);
                }
            } else {
                try {
                    navController.navigate((int) R.id.action_boxOptionsController_to_rideOptionsController, bundle);
                } catch (Exception e2) {
                    e2.printStackTrace();
                    a.logException(e2);
                }
            }
        }
    }

    public final void navigateToBoxOptions(NavController navController) {
        if (navController != null) {
            try {
                navController.navigate((int) R.id.boxOptionsController);
            } catch (Exception e) {
                e.printStackTrace();
                a.logException(e);
            }
        }
    }

    public final void navigateToEmpty(NavController navController) {
        if (navController != null && navController.getCurrentDestination() != null && navController.getCurrentDestination().getId() != R.id.emptyNoHeightPlaceHolderController) {
            if (navController.getCurrentDestination().getId() == R.id.rideOptionsController) {
                try {
                    navController.navigate((int) R.id.action_rideOptionsController_to_emptyNoHeightPlaceHolderController);
                } catch (Exception e) {
                    e.printStackTrace();
                    a.logException(e);
                }
            } else {
                if (navController.getCurrentDestination().getId() == R.id.boxOptionsController) {
                    try {
                        navController.navigate((int) R.id.action_boxOptionsController_to_emptyNoHeightPlaceHolderController);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        a.logException(e2);
                    }
                }
            }
        }
    }

    public final void navigateUpToMainFooter(NavController navController) {
        if (navController != null) {
            if (navController.getCurrentDestination() == null || navController.getCurrentDestination().getId() != R.id.rideRequestFooterController) {
                try {
                    navController.navigate((int) R.id.mainFooterController);
                } catch (Exception e) {
                    e.printStackTrace();
                    a.logException(e);
                }
            } else {
                try {
                    navController.navigate((int) R.id.action_rideRequestFooterController_to_mainFooterController);
                } catch (Exception e2) {
                    e2.printStackTrace();
                    a.logException(e2);
                }
            }
        }
    }

    public final void navigateToDriverAssignedFooter(NavController navController) {
        if (navController != null) {
            try {
                navController.navigate((int) R.id.driverAssignedFooterController);
            } catch (Exception e) {
                e.printStackTrace();
                a.logException(e);
            }
        }
    }
}
