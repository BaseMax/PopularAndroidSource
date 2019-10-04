package cab.snapp.passenger.units.charge;

import android.os.Bundle;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public final class d extends BaseRouter<a> {
    public final void routeToChargeHistoryController() {
        navigateTo(R.id.action_snappChargeController_to_snappChargeTransactionsController);
    }

    public final void routeToChargeSelectAmount(Bundle bundle) {
        navigateTo(R.id.action_snappChargeController_to_snappChargeSelectAmountController, bundle);
    }

    public final void navigateToChargeConfirmPayment(Bundle bundle) {
        navigateTo(R.id.action_snappChargeController_to_snappChargeConfirmPaymentController, bundle);
    }
}
