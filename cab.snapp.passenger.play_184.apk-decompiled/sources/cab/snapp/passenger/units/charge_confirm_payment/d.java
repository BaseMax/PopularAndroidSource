package cab.snapp.passenger.units.charge_confirm_payment;

import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public final class d extends BaseRouter<a> {
    public final void finish() {
        navigateTo(R.id.action_charge_confirm_to_empty);
    }
}
