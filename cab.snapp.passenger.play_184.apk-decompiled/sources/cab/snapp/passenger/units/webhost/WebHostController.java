package cab.snapp.passenger.units.webhost;

import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class WebHostController extends BaseController<a, c, WebHostView, d> {
    public int getLayout() {
        return R.layout.view_web_host;
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
        return new d();
    }
}
