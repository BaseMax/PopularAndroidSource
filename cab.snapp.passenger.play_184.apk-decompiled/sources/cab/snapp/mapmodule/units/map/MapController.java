package cab.snapp.mapmodule.units.map;

import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.mapmodule.b;

public class MapController extends BaseController<a, b, MapView, c> {
    public void onViewAttached() {
    }

    public void onViewDetached() {
    }

    public int getLayout() {
        return b.C0013b.view_map;
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
