package cab.snapp.passenger.units.login.loginWithEmail;

import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public final class d extends BaseRouter<a> {
    public final void routeToSignUp() {
        navigateTo(R.id.action_loginWithEmailController_to_signUpController, null);
    }

    public final void routeToForgotPassword() {
        navigateTo(R.id.action_loginWithEmailController_to_forgotPasswordController, null);
    }

    public final void routeToLoginWithPhone() {
        navigateTo(R.id.action_loginWithEmailController_to_loginWithPhoneNumberController, null);
    }

    public final void backToSplash() {
        do {
        } while (getNavigationController().popBackStack());
        navigateTo(R.id.splashController);
    }
}
