package cab.snapp.passenger.units.snapp_charge_transactions;

import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class SnappChargeTransactionsController extends BaseController<a, c, SnappChargeTransactionsView, d> {
    public int getLayout() {
        return R.layout.view_snapp_charge_transactions;
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
