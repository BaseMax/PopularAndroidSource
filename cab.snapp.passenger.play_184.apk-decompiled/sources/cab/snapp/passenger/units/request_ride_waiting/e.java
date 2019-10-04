package cab.snapp.passenger.units.request_ride_waiting;

import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public final class e extends BaseRouter<a> {
    public final void navigateUp() {
        navigateTo(R.id.overTheMapEmptyController);
    }
}
