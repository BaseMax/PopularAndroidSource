package cab.snapp.passenger.units.search;

import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class SearchController extends BaseController<a, c, SearchView, e> {
    public static final String KEY_IS_PUSHED_FOR = "Key Is Pushed For";
    public static final String KEY_SEARCH_REQUEST_CODE = "Key Search Request Code";
    public static final int SEARCH_GEOCODE = 0;
    public static final int SET_DESTINATION = 2;
    public static final int SET_ORIGIN = 1;

    public int getLayout() {
        return R.layout.view_search;
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
