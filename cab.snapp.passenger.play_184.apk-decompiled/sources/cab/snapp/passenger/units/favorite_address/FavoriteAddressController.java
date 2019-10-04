package cab.snapp.passenger.units.favorite_address;

import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class FavoriteAddressController extends BaseController<a, c, FavoriteAddressView, e> {
    public int getLayout() {
        return R.layout.view_favorite_address;
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
