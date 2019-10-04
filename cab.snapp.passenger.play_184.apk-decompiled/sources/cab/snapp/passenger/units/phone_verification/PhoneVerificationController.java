package cab.snapp.passenger.units.phone_verification;

import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class PhoneVerificationController extends BaseController<a, c, PhoneVerificationView, e> {
    public int getLayout() {
        return R.layout.view_phone_verification;
    }

    public Class<a> getInteractorClass() {
        return a.class;
    }

    public BaseController getParentController() {
        return super.getParentController();
    }

    public /* synthetic */ BasePresenter buildPresenter() {
        return new c();
    }

    public /* synthetic */ BaseRouter buildRouter() {
        return new e();
    }
}
