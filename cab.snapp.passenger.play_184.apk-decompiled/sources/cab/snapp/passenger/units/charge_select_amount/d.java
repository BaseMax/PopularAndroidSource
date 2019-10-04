package cab.snapp.passenger.units.charge_select_amount;

import android.os.Bundle;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public final class d extends BaseRouter<a> {
    public final void navigateToChargeConfirmPayment(Bundle bundle) {
        navigateTo(R.id.action_snappChargeSelectAmountController_to_snappChargeConfirmPaymentController, bundle);
    }
}
