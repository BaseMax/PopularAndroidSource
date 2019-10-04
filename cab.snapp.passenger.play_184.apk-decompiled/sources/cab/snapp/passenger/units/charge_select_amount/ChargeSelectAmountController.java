package cab.snapp.passenger.units.charge_select_amount;

import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class ChargeSelectAmountController extends BaseController<a, c, ChargeSelectAmountView, d> {
    public int getLayout() {
        return R.layout.view_charge_select_amount;
    }

    public Class<a> getInteractorClass() {
        return a.class;
    }

    public void onViewAttached() {
        super.onViewAttached();
        if (getControllerPresenter() != null) {
            ((c) getControllerPresenter()).setFragmentManager(getChildFragmentManager());
        }
    }

    public /* synthetic */ BasePresenter buildPresenter() {
        return new c();
    }

    public /* synthetic */ BaseRouter buildRouter() {
        return new d();
    }
}
