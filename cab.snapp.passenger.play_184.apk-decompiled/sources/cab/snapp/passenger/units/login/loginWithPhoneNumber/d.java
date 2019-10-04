package cab.snapp.passenger.units.login.loginWithPhoneNumber;

import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.login.loginWithOTP.LoginWithOTPController;

final class d extends BaseRouter<a> {
    d() {
    }

    public final void routeToLoginWithOTP(String str) {
        navigateTo(R.id.action_loginWithPhoneNumberController_to_loginWithOTPController, LoginWithOTPController.newDataBundle(str));
    }
}
