package cab.snapp.passenger.units.sideMenu;

import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class SideMenuController extends BaseController<a, c, SideMenuView, e> {
    public int getLayout() {
        return R.layout.view_side_menu;
    }

    public void onViewAttached() {
    }

    public void onViewDetached() {
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
