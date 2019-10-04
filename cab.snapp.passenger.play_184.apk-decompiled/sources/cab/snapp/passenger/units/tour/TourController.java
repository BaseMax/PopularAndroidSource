package cab.snapp.passenger.units.tour;

import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class TourController extends BaseController<b, e, TourView, g> {
    public int getLayout() {
        return R.layout.view_tour;
    }

    public boolean handleBack() {
        return true;
    }

    public Class<b> getInteractorClass() {
        return b.class;
    }

    public /* synthetic */ BasePresenter buildPresenter() {
        return new e();
    }

    public /* synthetic */ BaseRouter buildRouter() {
        return new g();
    }
}
