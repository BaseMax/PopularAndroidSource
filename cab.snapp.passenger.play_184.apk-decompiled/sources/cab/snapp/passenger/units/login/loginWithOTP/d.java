package cab.snapp.passenger.units.login.loginWithOTP;

import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

final class d extends BaseRouter<a> {
    d() {
    }

    public final void backToSplash() {
        do {
        } while (getNavigationController().popBackStack());
        navigateTo(R.id.splashController);
    }

    public final void navigateUp() {
        super.navigateUp();
    }
}
