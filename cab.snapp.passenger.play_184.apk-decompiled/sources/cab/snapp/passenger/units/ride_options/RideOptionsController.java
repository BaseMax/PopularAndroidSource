package cab.snapp.passenger.units.ride_options;

import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class RideOptionsController extends BaseController<a, c, RideOptionsView, e> {
    public static final String KEY_SERVICE_TYPE = "ride option service type key";

    public int getLayout() {
        return R.layout.view_ride_options;
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
