package cab.snapp.passenger.units.login.loginWithOTP;

import android.os.Bundle;
import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class LoginWithOTPController extends BaseController<a, c, LoginWithOTPView, d> {
    public static final String ARGS_PHONE_NUMBER = "ARGS_PHONE_NUMBER";

    public int getLayout() {
        return R.layout.view_login_with_otp;
    }

    public static Bundle newDataBundle(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(ARGS_PHONE_NUMBER, str);
        return bundle;
    }

    public Class<a> getInteractorClass() {
        return a.class;
    }

    public /* synthetic */ BasePresenter buildPresenter() {
        return new c();
    }

    public /* synthetic */ BaseRouter buildRouter() {
        return new d();
    }
}
