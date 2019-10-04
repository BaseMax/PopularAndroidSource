package cab.snapp.passenger.units.charge_select_type;

import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class ChargeSelectTypeController extends BaseController<a, b, ChargeSelectTypeView, c> {
    public int getLayout() {
        return R.layout.view_charge_select_type;
    }

    public Class<a> getInteractorClass() {
        return a.class;
    }

    public /* synthetic */ BasePresenter buildPresenter() {
        return new b();
    }

    public /* synthetic */ BaseRouter buildRouter() {
        return new c();
    }
}
