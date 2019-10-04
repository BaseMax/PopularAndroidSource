package cab.snapp.passenger.units.signup;

import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public final class d extends BaseRouter<a> {
    public final void backToSplash() {
        do {
        } while (getNavigationController().popBackStack());
        navigateTo(R.id.splashController);
    }
}
