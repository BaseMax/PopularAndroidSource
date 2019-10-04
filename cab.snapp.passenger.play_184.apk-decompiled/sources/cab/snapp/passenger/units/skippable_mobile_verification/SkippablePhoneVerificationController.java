package cab.snapp.passenger.units.skippable_mobile_verification;

import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class SkippablePhoneVerificationController extends BaseController<a, c, SkippablePhoneVerificationView, d> {
    public int getLayout() {
        return R.layout.view_skippable_phone_verification;
    }

    public boolean handleBack() {
        return true;
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
