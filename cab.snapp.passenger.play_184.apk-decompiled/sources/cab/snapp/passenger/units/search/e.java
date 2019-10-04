package cab.snapp.passenger.units.search;

import android.app.Activity;
import cab.snapp.arch.protocol.BaseRouter;

public final class e extends BaseRouter<a> {
    public final void navigateUp(Activity activity) {
        if (activity != null) {
            activity.onBackPressed();
        }
    }
}
