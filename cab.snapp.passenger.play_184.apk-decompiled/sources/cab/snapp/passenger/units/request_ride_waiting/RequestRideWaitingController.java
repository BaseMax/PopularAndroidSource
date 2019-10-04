package cab.snapp.passenger.units.request_ride_waiting;

import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class RequestRideWaitingController extends BaseController<a, c, RequestRideWaitingView, e> {
    public int getLayout() {
        return R.layout.view_request_ride_waiting;
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
