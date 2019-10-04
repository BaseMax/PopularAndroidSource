package cab.snapp.passenger.units.sideMenu;

import cab.snapp.arch.protocol.BaseRouter;
import cab.snapp.passenger.play.R;

public final class e extends BaseRouter<a> {
    public final void routeToProfileUnit() {
        navigateTo(R.id.action_overTheMapEmptyController_to_profileController);
    }

    public final void routeToTransactions() {
        navigateTo(R.id.action_overTheMapEmptyController_to_creditController);
    }

    public final void routeToRideHistory() {
        navigateTo(R.id.action_overTheMapEmptyController_to_rideHistoryController);
    }

    public final void routeToFavorites() {
        navigateTo(R.id.action_overTheMapEmptyController_to_favoriteAddressController);
    }

    public final void routeToMessages() {
        navigateTo(R.id.action_overTheMapEmptyController_to_messagesController);
    }

    public final void routeToSupport() {
        navigateTo(R.id.action_overTheMapEmptyController_to_supportController);
    }

    public final void routeToAbout() {
        navigateTo(R.id.action_overTheMapEmptyController_to_aboutUsController);
    }

    public final void routeToSettings() {
        navigateTo(R.id.action_overTheMapEmptyController_to_settingController);
    }

    public final void routeToFreeRide() {
        navigateTo(R.id.action_overTheMapEmptyController_to_referralController);
    }
}
