package cab.snapp.passenger.units.login.loginWithPhoneNumber;

import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class LoginWithPhoneNumberController extends BaseController<a, c, LoginWithPhoneNumberView, d> {
    public int getLayout() {
        return R.layout.view_login_with_phone_number;
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
