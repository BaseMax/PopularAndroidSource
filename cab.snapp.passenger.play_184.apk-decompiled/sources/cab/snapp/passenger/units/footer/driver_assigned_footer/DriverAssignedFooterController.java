package cab.snapp.passenger.units.footer.driver_assigned_footer;

import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class DriverAssignedFooterController extends BaseController<a, c, DriverAssignedFooterView, e> {
    public int getLayout() {
        return R.layout.view_driver_assigned_footer;
    }

    public Class<a> getInteractorClass() {
        return a.class;
    }

    public /* synthetic */ BasePresenter buildPresenter() {
        return new c();
    }

    public /* synthetic */ BaseRouter buildRouter() {
        return new e();
    }
}
