package cab.snapp.passenger.units.referral;

import androidx.navigation.NavController;
import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class ReferralController extends BaseController<a, c, ReferralView, d> {
    public int getLayout() {
        return R.layout.view_referral;
    }

    public NavController getNavigationController() {
        return getOvertheMapNavigationController();
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
