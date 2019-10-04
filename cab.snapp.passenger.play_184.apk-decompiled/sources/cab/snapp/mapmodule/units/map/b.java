package cab.snapp.mapmodule.units.map;

import android.view.ViewGroup;
import cab.snapp.arch.protocol.BasePresenter;

final class b extends BasePresenter<MapView, a> {
    b() {
    }

    public final ViewGroup getChildFrameContainer() {
        if (getView() != null) {
            return ((MapView) getView()).getChildFrameContainer();
        }
        return null;
    }
}
