package cab.snapp.passenger.units.charge_recently;

import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class ChargeRecentlyMobileNumbersController extends BaseController<a, c, ChargeRecentlyMobileNumbersView, d> {
    public int getLayout() {
        return R.layout.view_charge_recently_mobile_numbers;
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
