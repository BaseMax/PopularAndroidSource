package cab.snapp.passenger.units.main;

import android.os.Bundle;
import androidx.navigation.NavController;
import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.data_access_layer.network.requests.CreditRequest;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.top_up_payment.TopUpBottomSheetDialogFragment;
import com.a.a.a;

public final class f extends BaseRouter<b> {
    public final void routeToRating() {
        navigateTo(R.id.action_global_rideRatingController);
    }

    public final void routeToSnappChargeController(Bundle bundle) {
        navigateTo(R.id.toSnappChargeController, bundle);
    }

    public final void routeToWebHost(Bundle bundle) {
        navigateTo(R.id.toSnappServicesWebHost, bundle);
    }

    public final void routeToSearchUnit(Bundle bundle) {
        navigateTo(R.id.action_overTheMapEmptyController_to_searchController, bundle);
    }

    public final void routeToWaiting(Bundle bundle) {
        navigateTo(R.id.requestRideWaitingController, bundle);
    }

    public final void routeToTourUnit() {
        navigateTo(R.id.action_overTheMapEmptyController_to_tourController);
    }

    public final void routeToEmpty() {
        navigateTo(R.id.overTheMapEmptyController);
    }

    public final void routeToSettingUnit() {
        navigateTo(R.id.action_global_settingsController);
    }

    public final void routeToReferralUnit() {
        navigateTo(R.id.action_global_referralController);
    }

    public final void routeToInbox() {
        navigateTo(R.id.action_global_messagesController);
    }

    public final void routeToFavoriteUnit() {
        navigateTo(R.id.action_global_favoriteAddressController);
    }

    public final void routeToAddCreditDialog() {
        TopUpBottomSheetDialogFragment newInstance = TopUpBottomSheetDialogFragment.newInstance(CreditRequest.PLACE.JEK_TOPUP);
        if (!newInstance.isAdded()) {
            newInstance.show(getFragmentManager(), "top_up_bottom_sheet");
        }
    }

    public final void routeToTopUpPayment(NavController navController) {
        if (navController != null) {
            try {
                navController.navigate((int) R.id.action_global_topUpPaymentController);
            } catch (Exception e) {
                a.logException(e);
                e.printStackTrace();
            }
        }
    }
}
