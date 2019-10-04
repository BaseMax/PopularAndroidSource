package cab.snapp.passenger.units.favorite_bar;

import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class FavoriteBarController extends BaseController<a, c, FavoriteBarView, e> {
    public static final String KEY_FAVORITES_LIST = "Key Favorites List";

    public int getLayout() {
        return R.layout.view_favorite_bar;
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
