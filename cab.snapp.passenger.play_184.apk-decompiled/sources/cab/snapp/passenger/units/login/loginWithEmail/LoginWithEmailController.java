package cab.snapp.passenger.units.login.loginWithEmail;

import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class LoginWithEmailController extends BaseController<a, c, LoginWithEmailView, d> {
    public int getLayout() {
        return R.layout.view_login_with_email;
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
