package cab.snapp.passenger.units.footer.empty_no_height_place_holder;

import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class EmptyNoHeightPlaceHolderController extends BaseController<a, b, EmptyNoHeightPlaceHolderView, c> {
    public int getLayout() {
        return R.layout.view_empty_no_height_place_holder;
    }

    public Class<a> getInteractorClass() {
        return a.class;
    }

    public /* synthetic */ BasePresenter buildPresenter() {
        return new b();
    }

    public /* synthetic */ BaseRouter buildRouter() {
        return new c();
    }
}
