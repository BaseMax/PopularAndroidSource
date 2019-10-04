package cab.snapp.passenger.units.charge_confirm_payment;

import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class ChargeConfirmPaymentController extends BaseController<a, c, ChargeConfirmPaymentView, d> {
    public int getLayout() {
        return R.layout.view_charge_confirm_payment;
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
