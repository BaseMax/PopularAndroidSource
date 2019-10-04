package cab.snapp.passenger.units.footer.mainfooter;

import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public final class d extends BaseRouter<a> {
    public final void navigateToRideRequestFooter() {
        navigateTo(R.id.rideRequestFooterController);
    }

    public final void navigateToDriverAssignedFooter() {
        navigateTo(R.id.driverAssignedFooterController);
    }

    public final void navigateToMainFooter() {
        navigateTo(R.id.mainFooterController);
    }
}
