package cab.snapp.mapmodule.units.map;

import android.view.ViewGroup;
import cab.snapp.arch.protocol.BaseInteractor;

public class a extends BaseInteractor<c, b> {
    public static final int ANIMATION_DURATION = 250;

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getPresenter() != null && getController() != null && getRouter() != null && getActivity() != null) {
            ViewGroup childFrameContainer = ((b) getPresenter()).getChildFrameContainer();
            if (cab.snapp.mapmodule.a.getInstance().getMapType() != 0) {
                ((c) getRouter()).loadMapBoxController(childFrameContainer);
            } else {
                ((c) getRouter()).loadGoogleMapController(childFrameContainer);
            }
        }
    }
}
