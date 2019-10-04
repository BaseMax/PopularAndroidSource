package cab.snapp.passenger.units.ride_history_details;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.data.models.DriverInfo;
import cab.snapp.passenger.data.models.FormattedAddress;
import cab.snapp.passenger.data.models.RideHistoryInfo;
import cab.snapp.passenger.data.models.RideInformation;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.units.support.SupportController;
import javax.inject.Inject;

public class a extends BaseInteractor<e, c> {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    c f1092a;

    /* renamed from: b  reason: collision with root package name */
    private RideHistoryInfo f1093b;

    public void rateRide() {
        if (!(this.f1093b == null || getRouter() == null)) {
            Bundle bundle = new Bundle();
            DriverInfo driverInfo = new DriverInfo();
            driverInfo.setName(this.f1093b.getDriverName());
            driverInfo.setImageUrl(this.f1093b.getDriverPhotoUrl());
            driverInfo.setVehicleModel(this.f1093b.getVehicleModel());
            bundle.putParcelable("ride_rating_driver_info_argument_key", driverInfo);
            RideInformation rideInformation = new RideInformation();
            rideInformation.setRideId(this.f1093b.getHumanReadableID());
            rideInformation.setTitle(this.f1093b.getTitle());
            FormattedAddress formattedAddress = new FormattedAddress();
            formattedAddress.setFormattedAddress(this.f1093b.getDestinationFormattedAddress());
            rideInformation.setDestination(formattedAddress);
            bundle.putParcelable("ride_rating_ride_info_argument_key", rideInformation);
            ((e) getRouter()).goToRideRating(bundle);
        }
    }

    public void supportRide() {
        if (getRouter() != null) {
            Bundle bundle = new Bundle();
            bundle.putParcelable(SupportController.KEY_RIDE_HISTORT_INFO, this.f1093b);
            ((e) getRouter()).routeToSupportController(bundle);
        }
    }

    public void downloadRideReceipt() {
        if (getActivity() != null && !getActivity().isFinishing()) {
            RideHistoryInfo rideHistoryInfo = this.f1093b;
            if (rideHistoryInfo != null && rideHistoryInfo.getReceiptLink() != null && !this.f1093b.getReceiptLink().isEmpty()) {
                getActivity().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.f1093b.getReceiptLink())));
            }
        }
    }

    public void finish() {
        if (getActivity() != null) {
            getActivity().onBackPressed();
        }
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            this.f1092a.reportScreenName("");
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        if (getController() != null) {
            if (getController().getArguments() != null) {
                Bundle arguments = getController().getArguments();
                if (arguments.containsKey(RideHistoryDetailsController.KEY_RIDE_HISTORY_DETAILS_INFO)) {
                    this.f1093b = cab.snapp.passenger.units.ride_history.a.getRideHistoryInfo(arguments.getString(RideHistoryDetailsController.KEY_RIDE_HISTORY_DETAILS_INFO));
                }
            }
            if (getRouter() != null) {
                ((e) getRouter()).setNavigationController(getController().getOvertheMapNavigationController());
            }
        }
        if (this.f1093b == null) {
            if (getRouter() != null) {
                ((e) getRouter()).popRideHistoryDetailsController();
            }
        } else if (getPresenter() != null) {
            ((c) getPresenter()).onInitialize(this.f1093b);
        }
    }
}
