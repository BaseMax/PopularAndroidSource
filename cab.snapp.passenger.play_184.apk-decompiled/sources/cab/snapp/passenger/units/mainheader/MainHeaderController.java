package cab.snapp.passenger.units.mainheader;

import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class MainHeaderController extends BaseController<a, c, MainHeaderView, e> {
    public int getLayout() {
        return R.layout.view_main_header;
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
