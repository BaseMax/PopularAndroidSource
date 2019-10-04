package cab.snapp.passenger.units.ride_history_details;

import android.app.Activity;
import androidx.recyclerview.widget.LinearLayoutManager;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.a.i;
import cab.snapp.passenger.data.models.Options;
import cab.snapp.passenger.data.models.RideHistoryInfo;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.c.a;
import javax.inject.Inject;

public final class c extends BasePresenter<RideHistoryDetailsView, a> {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    cab.snapp.passenger.f.b.b.c f1095a;

    public final void onInitialize(RideHistoryInfo rideHistoryInfo) {
        String str;
        if (!(getView() == null || ((RideHistoryDetailsView) getView()).getContext() == null)) {
            BaseApplication.get(((RideHistoryDetailsView) getView()).getContext()).getAppComponent().inject(this);
            if (rideHistoryInfo != null) {
                RideHistoryDetailsView rideHistoryDetailsView = (RideHistoryDetailsView) getView();
                if (rideHistoryDetailsView != null) {
                    rideHistoryDetailsView.setToolbarTitle(rideHistoryInfo.getTitle());
                    if (rideHistoryInfo == null || rideHistoryInfo.getMap_url() == null) {
                        str = null;
                    } else {
                        str = rideHistoryInfo.getMap_url();
                    }
                    rideHistoryDetailsView.showTopMapImage(str, R.color.silver_chalice, R.color.silver_chalice);
                    if (rideHistoryInfo.getHasRated()) {
                        rideHistoryDetailsView.showRateLayout();
                        rideHistoryDetailsView.showRideRatingBar();
                        rideHistoryDetailsView.setRating(rideHistoryInfo.getRate());
                        rideHistoryDetailsView.hideRateRideButton();
                    } else if (rideHistoryInfo.getLastestRideStatus() == 7 || rideHistoryInfo.getLastestRideStatus() == 6 || rideHistoryInfo.getLastestRideStatus() == 8) {
                        rideHistoryDetailsView.hideRateLayout();
                    } else {
                        rideHistoryDetailsView.showRateLayout();
                        rideHistoryDetailsView.showRateRideButton();
                        rideHistoryDetailsView.hideRideRatingBar();
                    }
                    if (rideHistoryInfo.getLastestRideStatus() == 7 || rideHistoryInfo.getLastestRideStatus() == 6 || rideHistoryInfo.getLastestRideStatus() == 8) {
                        rideHistoryDetailsView.disableDownloadReceiptButton();
                    }
                    rideHistoryDetailsView.showDriverImage(rideHistoryInfo.getDriverPhotoUrl(), R.drawable.ph_profile_picture, R.drawable.ph_profile_picture);
                    rideHistoryDetailsView.setDriverName(rideHistoryInfo.getDriverName());
                    if (rideHistoryInfo.isDelivery()) {
                        rideHistoryDetailsView.hideRateLayout();
                        rideHistoryDetailsView.hideVehicleModelLayout();
                    }
                    rideHistoryDetailsView.setVehicleModel(rideHistoryInfo.getVehicleModel());
                    rideHistoryDetailsView.setOriginAddress(rideHistoryInfo.getOriginFormattedAddress());
                    rideHistoryDetailsView.setDestinationAddress(rideHistoryInfo.getDestinationFormattedAddress());
                    Options rideOptions = rideHistoryInfo.getRideOptions();
                    if (rideOptions != null) {
                        if (rideOptions.getExtraDestination() != null) {
                            rideHistoryDetailsView.showSecondDestination();
                            rideHistoryDetailsView.setSecondDestinationAddress(rideOptions.getExtraDestination().getFormattedAddress());
                        } else {
                            rideHistoryDetailsView.hideSecondDestination();
                        }
                        if (rideOptions.getRoundTripPrice() > 0.0d) {
                            rideHistoryDetailsView.showRoundTrip();
                        } else {
                            rideHistoryDetailsView.hideRoundTrip();
                        }
                        if (rideOptions.getSnappWaiting() != null) {
                            rideHistoryDetailsView.showRideWaiting();
                            rideHistoryDetailsView.setRideWaiting(rideOptions.getSnappWaiting().getText());
                        } else {
                            rideHistoryDetailsView.hideRideWaiting();
                        }
                        if (rideOptions.getServicePrice() > 0.0d) {
                            rideHistoryDetailsView.showParcel();
                        } else {
                            rideHistoryDetailsView.hideParcel();
                        }
                    }
                    if (rideHistoryDetailsView.getContext() == null || rideHistoryInfo.getRows() == null || rideHistoryInfo.getRows().isEmpty()) {
                        rideHistoryDetailsView.hideDetailsRecycler();
                    } else {
                        i iVar = new i(rideHistoryDetailsView.getContext(), rideHistoryInfo.getRows());
                        AnonymousClass1 r8 = new LinearLayoutManager(rideHistoryDetailsView.getContext()) {
                            public final boolean canScrollVertically() {
                                return false;
                            }
                        };
                        rideHistoryDetailsView.showDetailsRecycler();
                        rideHistoryDetailsView.loadRideHistoryDetailsFields(iVar, r8);
                    }
                    setStatusBarColor();
                }
            }
        }
    }

    public final void setStatusBarColor() {
        if (getView() != null && (((RideHistoryDetailsView) getView()).getContext() instanceof Activity)) {
            a.setStatusBarColorRes((Activity) ((RideHistoryDetailsView) getView()).getContext(), R.color.colorPrimary);
        }
    }

    public final void onBackClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).finish();
        }
    }

    public final void onRateRideClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).rateRide();
        }
    }

    public final void onSupportClicked() {
        this.f1095a.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Ride Details Support");
        if (getInteractor() != null) {
            ((a) getInteractor()).supportRide();
        }
    }

    public final void onDownloadRideReceiptClicked() {
        this.f1095a.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Ride Details Support");
        if (getInteractor() != null) {
            ((a) getInteractor()).downloadRideReceipt();
        }
    }
}
