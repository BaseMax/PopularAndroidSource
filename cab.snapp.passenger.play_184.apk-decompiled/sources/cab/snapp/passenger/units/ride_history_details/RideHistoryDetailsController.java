package cab.snapp.passenger.units.ride_history_details;

import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class RideHistoryDetailsController extends BaseController<a, c, RideHistoryDetailsView, e> {
    public static final String KEY_RIDE_HISTORY_DETAILS_INFO = "Key Ride History Details Info";

    public int getLayout() {
        return R.layout.view_ride_history_details;
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
