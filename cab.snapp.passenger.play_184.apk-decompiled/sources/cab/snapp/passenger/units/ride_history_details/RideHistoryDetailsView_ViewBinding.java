package cab.snapp.passenger.units.ride_history_details;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappButton;

public class RideHistoryDetailsView_ViewBinding implements Unbinder {
    private RideHistoryDetailsView target;
    private View view7f0a03f1;
    private View view7f0a0400;
    private View view7f0a0407;

    public RideHistoryDetailsView_ViewBinding(RideHistoryDetailsView rideHistoryDetailsView) {
        this(rideHistoryDetailsView, rideHistoryDetailsView);
    }

    public RideHistoryDetailsView_ViewBinding(final RideHistoryDetailsView rideHistoryDetailsView, View view) {
        this.target = rideHistoryDetailsView;
        rideHistoryDetailsView.mapIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.view_ride_history_details_map_iv, "field 'mapIv'", ImageView.class);
        rideHistoryDetailsView.driverImageIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.view_ride_history_details_driver_image_iv, "field 'driverImageIv'", ImageView.class);
        rideHistoryDetailsView.rateLayout = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.view_ride_history_rate_layout, "field 'rateLayout'", FrameLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.view_ride_history_rate_this_ride_tv, "field 'rateRideTv' and method 'onRateRideClick'");
        rideHistoryDetailsView.rateRideTv = (AppCompatTextView) Utils.castView(findRequiredView, R.id.view_ride_history_rate_this_ride_tv, "field 'rateRideTv'", AppCompatTextView.class);
        this.view7f0a0407 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                rideHistoryDetailsView.onRateRideClick();
            }
        });
        rideHistoryDetailsView.rideRatingBar = (RatingBar) Utils.findRequiredViewAsType(view, R.id.view_ride_history_details_rate_rating_bar, "field 'rideRatingBar'", RatingBar.class);
        rideHistoryDetailsView.driverNameLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_ride_history_details_driver_name_layout, "field 'driverNameLayout'", LinearLayout.class);
        rideHistoryDetailsView.driverNameTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_ride_history_details_driver_name_tv, "field 'driverNameTv'", AppCompatTextView.class);
        rideHistoryDetailsView.vehicleModelLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_ride_history_details_vehicle_model_layout, "field 'vehicleModelLayout'", LinearLayout.class);
        rideHistoryDetailsView.vehicleModelLabelTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_ride_history_details_vehicle_model_label_tv, "field 'vehicleModelLabelTv'", AppCompatTextView.class);
        rideHistoryDetailsView.vehicleModelTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_ride_history_details_vehicle_model_tv, "field 'vehicleModelTv'", AppCompatTextView.class);
        rideHistoryDetailsView.originLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_ride_history_details_origin_layout, "field 'originLayout'", LinearLayout.class);
        rideHistoryDetailsView.originAddressTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_ride_history_details_origin_address_tv, "field 'originAddressTv'", AppCompatTextView.class);
        rideHistoryDetailsView.destinationLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_ride_history_details_destination_layout, "field 'destinationLayout'", LinearLayout.class);
        rideHistoryDetailsView.destinationAddressTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_ride_history_details_destination_address_tv, "field 'destinationAddressTv'", AppCompatTextView.class);
        rideHistoryDetailsView.secondDestinationLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_ride_history_details_second_destination_layout, "field 'secondDestinationLayout'", LinearLayout.class);
        rideHistoryDetailsView.secondDestinationAddressTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_ride_history_details_second_destination_address_tv, "field 'secondDestinationAddressTv'", AppCompatTextView.class);
        rideHistoryDetailsView.roundTripLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_ride_history_details_round_trip_layout, "field 'roundTripLayout'", LinearLayout.class);
        rideHistoryDetailsView.waitingLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_ride_history_details_waiting_layout, "field 'waitingLayout'", LinearLayout.class);
        rideHistoryDetailsView.waitingTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_ride_history_details_waiting_tv, "field 'waitingTv'", AppCompatTextView.class);
        rideHistoryDetailsView.parcelLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_ride_history_details_parcel_layout, "field 'parcelLayout'", LinearLayout.class);
        rideHistoryDetailsView.rideDetailsRecycler = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.view_ride_history_details_recycler, "field 'rideDetailsRecycler'", RecyclerView.class);
        rideHistoryDetailsView.buttonsLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_ride_history_details_button_layout, "field 'buttonsLayout'", LinearLayout.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.view_ride_history_details_support_button, "field 'supportBtn' and method 'onSupportClicked'");
        rideHistoryDetailsView.supportBtn = (SnappButton) Utils.castView(findRequiredView2, R.id.view_ride_history_details_support_button, "field 'supportBtn'", SnappButton.class);
        this.view7f0a0400 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                rideHistoryDetailsView.onSupportClicked();
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, R.id.view_ride_history_details_download_receipt_button, "field 'downloadReceiptBtn' and method 'onDownloadReceiptClicked'");
        rideHistoryDetailsView.downloadReceiptBtn = (SnappButton) Utils.castView(findRequiredView3, R.id.view_ride_history_details_download_receipt_button, "field 'downloadReceiptBtn'", SnappButton.class);
        this.view7f0a03f1 = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                rideHistoryDetailsView.onDownloadReceiptClicked();
            }
        });
        rideHistoryDetailsView.buttonsDivider = Utils.findRequiredView(view, R.id.view_ride_history_details_buttons_divider, "field 'buttonsDivider'");
    }

    public void unbind() {
        RideHistoryDetailsView rideHistoryDetailsView = this.target;
        if (rideHistoryDetailsView != null) {
            this.target = null;
            rideHistoryDetailsView.mapIv = null;
            rideHistoryDetailsView.driverImageIv = null;
            rideHistoryDetailsView.rateLayout = null;
            rideHistoryDetailsView.rateRideTv = null;
            rideHistoryDetailsView.rideRatingBar = null;
            rideHistoryDetailsView.driverNameLayout = null;
            rideHistoryDetailsView.driverNameTv = null;
            rideHistoryDetailsView.vehicleModelLayout = null;
            rideHistoryDetailsView.vehicleModelLabelTv = null;
            rideHistoryDetailsView.vehicleModelTv = null;
            rideHistoryDetailsView.originLayout = null;
            rideHistoryDetailsView.originAddressTv = null;
            rideHistoryDetailsView.destinationLayout = null;
            rideHistoryDetailsView.destinationAddressTv = null;
            rideHistoryDetailsView.secondDestinationLayout = null;
            rideHistoryDetailsView.secondDestinationAddressTv = null;
            rideHistoryDetailsView.roundTripLayout = null;
            rideHistoryDetailsView.waitingLayout = null;
            rideHistoryDetailsView.waitingTv = null;
            rideHistoryDetailsView.parcelLayout = null;
            rideHistoryDetailsView.rideDetailsRecycler = null;
            rideHistoryDetailsView.buttonsLayout = null;
            rideHistoryDetailsView.supportBtn = null;
            rideHistoryDetailsView.downloadReceiptBtn = null;
            rideHistoryDetailsView.buttonsDivider = null;
            this.view7f0a0407.setOnClickListener(null);
            this.view7f0a0407 = null;
            this.view7f0a0400.setOnClickListener(null);
            this.view7f0a0400 = null;
            this.view7f0a03f1.setOnClickListener(null);
            this.view7f0a03f1 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
