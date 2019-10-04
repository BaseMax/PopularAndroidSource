package cab.snapp.passenger.units.support;

import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public class SupportController extends BaseController<a, c, SupportView, d> {
    public static final String KEY_RIDE_HISTORT_INFO = "Key Ride History Info";
    public static final String KEY_SUPPORT_RELATION = "Key Support Relation";
    public static final String KEY_SUPPORT_TYPE = "Key Support Type";
    public static final int TYPE_SUPPORT_GENERAL = 1;
    public static final int TYPE_SUPPORT_RIDE = 3;
    public static final int TYPE_SUPPORT_TRANSACTION = 2;

    public int getLayout() {
        return R.layout.view_support;
    }

    public boolean handleBack() {
        return true;
    }

    public Class<a> getInteractorClass() {
        return a.class;
    }

    public /* synthetic */ BasePresenter buildPresenter() {
        return new c();
    }

    public /* synthetic */ BaseRouter buildRouter() {
        return new d();
    }
}
