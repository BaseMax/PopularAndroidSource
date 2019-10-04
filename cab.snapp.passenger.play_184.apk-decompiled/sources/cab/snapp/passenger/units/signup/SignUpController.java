package cab.snapp.passenger.units.signup;

import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class SignUpController extends BaseController<a, c, SignUpView, d> {
    public int getLayout() {
        return R.layout.view_sign_up;
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
