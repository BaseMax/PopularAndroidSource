package cab.snapp.passenger.units.messages;

import android.os.Bundle;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public final class d extends BaseRouter<a> {
    public final void routeToWebHost(Bundle bundle) {
        navigateTo(R.id.action_messagesController_to_webHostController, bundle);
    }
}
