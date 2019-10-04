package cab.snapp.passenger.units.forgot_password;

import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class ForgotPasswordController extends BaseController<a, c, ForgotPasswordView, d> {
    public int getLayout() {
        return R.layout.view_forgot_password;
    }

    public void onViewAttached() {
    }

    public void onViewDetached() {
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
