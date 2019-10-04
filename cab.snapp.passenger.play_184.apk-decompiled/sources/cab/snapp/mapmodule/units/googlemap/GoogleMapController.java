package cab.snapp.mapmodule.units.googlemap;

import android.os.Bundle;
import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.mapmodule.b;

public class GoogleMapController extends BaseController<a, b, GoogleMapView, c> {
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (getControllerView() != null && ((GoogleMapView) getControllerView()).getMapView() != null) {
            ((GoogleMapView) getControllerView()).getMapView().onCreate(bundle);
            ((GoogleMapView) getControllerView()).getMapView().onStart();
        }
    }

    public void onResume() {
        super.onResume();
        if (getControllerView() != null && ((GoogleMapView) getControllerView()).getMapView() != null) {
            ((GoogleMapView) getControllerView()).getMapView().onResume();
        }
    }

    public void onPause() {
        super.onPause();
        if (getControllerView() != null && ((GoogleMapView) getControllerView()).getMapView() != null) {
            ((GoogleMapView) getControllerView()).getMapView().onPause();
        }
    }

    public void onStop() {
        super.onStop();
        if (getControllerView() != null && ((GoogleMapView) getControllerView()).getMapView() != null) {
            ((GoogleMapView) getControllerView()).getMapView().onStop();
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (getControllerView() != null && ((GoogleMapView) getControllerView()).getMapView() != null) {
            ((GoogleMapView) getControllerView()).getMapView().onSaveInstanceState(bundle);
        }
    }

    public void onDestroy() {
        super.onDestroy();
        if (getControllerView() != null && ((GoogleMapView) getControllerView()).getMapView() != null) {
            ((GoogleMapView) getControllerView()).getMapView().onDestroy();
        }
    }

    public int getLayout() {
        return b.C0013b.view_google_map;
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
