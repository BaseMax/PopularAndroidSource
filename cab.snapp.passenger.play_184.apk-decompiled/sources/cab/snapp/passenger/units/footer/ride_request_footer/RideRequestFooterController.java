package cab.snapp.passenger.units.footer.ride_request_footer;

import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class RideRequestFooterController extends BaseController<a, c, RideRequestFooterView, e> {
    public int getLayout() {
        return R.layout.view_ride_request_footer;
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
        return new e();
    }
}
