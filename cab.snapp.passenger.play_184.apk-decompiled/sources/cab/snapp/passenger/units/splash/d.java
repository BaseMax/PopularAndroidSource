package cab.snapp.passenger.units.splash;

import androidx.fragment.app.FragmentTransaction;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.welcome.WelcomeController;
import com.a.a.a;

final class d extends BaseRouter<a> {
    d() {
    }

    public final FragmentTransaction addWelcomeController(WelcomeController welcomeController, int i) {
        return loadChildController(i, welcomeController);
    }

    public final void removeWelcomeController() {
        try {
            navigateChildUp();
        } catch (Exception e) {
            a.logException(e);
        }
    }

    public final void routeToMainController() {
        navigateTo(R.id.action_navigation_id_splash_unit_to_mainController, null);
    }

    public final void routeToSignUpController() {
        navigateTo(R.id.action_navigation_id_splash_unit_to_signUpController, null);
    }

    public final void routeToLogInController() {
        navigateTo(R.id.action_navigation_id_splash_unit_to_loginWithEmailController, null);
    }

    public final void goToSkippablePhoneVerificationUnit() {
        navigateTo(R.id.action_splashController_to_skippablePhoneVerificationController, null);
    }
}
