package cab.snapp.mapmodule.units.mapbox;

import android.os.Bundle;
import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.mapmodule.b;

public class MapBoxController extends BaseController<a, b, MapBoxView, c> {
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getControllerView() != null && ((MapBoxView) getControllerView()).getMapView() != null) {
            ((MapBoxView) getControllerView()).getMapView().onCreate(bundle);
        }
    }

    public void onStart() {
        super.onStart();
        if (getControllerView() != null && ((MapBoxView) getControllerView()).getMapView() != null) {
            ((MapBoxView) getControllerView()).getMapView().onStart();
        }
    }

    public void onResume() {
        super.onResume();
        if (getControllerView() != null && ((MapBoxView) getControllerView()).getMapView() != null) {
            ((MapBoxView) getControllerView()).getMapView().onResume();
        }
    }

    public void onPause() {
        super.onPause();
        if (getControllerView() != null && ((MapBoxView) getControllerView()).getMapView() != null) {
            ((MapBoxView) getControllerView()).getMapView().onPause();
        }
    }

    public void onStop() {
        super.onStop();
        if (getControllerView() != null && ((MapBoxView) getControllerView()).getMapView() != null) {
            ((MapBoxView) getControllerView()).getMapView().onStop();
        }
    }

    public void onDestroy() {
        super.onDestroy();
        if (getControllerView() != null && ((MapBoxView) getControllerView()).getMapView() != null) {
            ((MapBoxView) getControllerView()).getMapView().onDestroy();
        }
    }

    public int getLayout() {
        return b.C0013b.view_map_box;
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
