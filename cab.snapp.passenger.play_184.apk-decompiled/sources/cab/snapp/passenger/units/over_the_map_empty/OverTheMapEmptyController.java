package cab.snapp.passenger.units.over_the_map_empty;

import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class OverTheMapEmptyController extends BaseController<a, c, OverTheMapEmptyView, d> {
    public int getLayout() {
        return R.layout.view_over_the_map_empty;
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
