package cab.snapp.passenger.units.credit;

import android.os.Bundle;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public final class e extends BaseRouter<a> {
    public final void navigateUp() {
        super.navigateUp();
    }

    public final void routeToSupportController(Bundle bundle) {
        navigateTo(R.id.action_creditController_to_supportController, bundle);
    }
}
