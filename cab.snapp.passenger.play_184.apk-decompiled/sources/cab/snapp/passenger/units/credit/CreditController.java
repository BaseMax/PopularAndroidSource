package cab.snapp.passenger.units.credit;

import androidx.navigation.NavController;
import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class CreditController extends BaseController<a, c, CreditView, e> {
    public int getLayout() {
        return R.layout.view_credit;
    }

    public NavController getNavigationController() {
        return getOvertheMapNavigationController();
    }

    public void onViewAttached() {
        super.onViewAttached();
        if (getControllerPresenter() != null) {
            ((c) getControllerPresenter()).setFragmentManager(getChildFragmentManager());
        }
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
