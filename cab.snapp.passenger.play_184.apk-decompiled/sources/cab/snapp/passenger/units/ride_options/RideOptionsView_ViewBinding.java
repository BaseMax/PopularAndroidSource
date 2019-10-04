package cab.snapp.passenger.units.ride_options;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatTextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappLoading;

public class RideOptionsView_ViewBinding implements Unbinder {
    private RideOptionsView target;
    private View view7f0a0409;
    private View view7f0a040f;
    private View view7f0a0412;
    private View view7f0a0415;
    private View view7f0a0419;

    public RideOptionsView_ViewBinding(RideOptionsView rideOptionsView) {
        this(rideOptionsView, rideOptionsView);
    }

    public RideOptionsView_ViewBinding(final RideOptionsView rideOptionsView, View view) {
        this.target = rideOptionsView;
        View findRequiredView = Utils.findRequiredView(view, R.id.view_ride_options_second_destination_layout, "field 'secondDestinationLayout' and method 'onSecondDestinationClick'");
        rideOptionsView.secondDestinationLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.view_ride_options_second_destination_layout, "field 'secondDestinationLayout'", LinearLayout.class);
        this.view7f0a0412 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                rideOptionsView.onSecondDestinationClick();
            }
        });
        rideOptionsView.secondDestinationIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.view_ride_options_second_destination_iv, "field 'secondDestinationIv'", ImageView.class);
        rideOptionsView.secondDestinationTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_ride_options_second_destination_tv, "field 'secondDestinationTv'", AppCompatTextView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.view_ride_options_round_trip_layout, "field 'roundTripLayout' and method 'onRoundTripClick'");
        rideOptionsView.roundTripLayout = (LinearLayout) Utils.castView(findRequiredView2, R.id.view_ride_options_round_trip_layout, "field 'roundTripLayout'", LinearLayout.class);
        this.view7f0a040f = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                rideOptionsView.onRoundTripClick();
            }
        });
        rideOptionsView.roundTripIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.view_ride_options_round_trip_iv, "field 'roundTripIv'", ImageView.class);
        rideOptionsView.roundTripTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_ride_options_round_trip_tv, "field 'roundTripTv'", AppCompatTextView.class);
        rideOptionsView.rootRideStopLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_ride_options_root_ride_stop_layout, "field 'rootRideStopLayout'", LinearLayout.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.view_ride_options_waiting_layout, "field 'waitingLayout' and method 'onWaitingClick'");
        rideOptionsView.waitingLayout = (LinearLayout) Utils.castView(findRequiredView3, R.id.view_ride_options_waiting_layout, "field 'waitingLayout'", LinearLayout.class);
        this.view7f0a0419 = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                rideOptionsView.onWaitingClick();
            }
        });
        rideOptionsView.waitingIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.view_ride_options_waiting_iv, "field 'waitingIv'", ImageView.class);
        rideOptionsView.waitingTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_ride_options_waiting_tv, "field 'waitingTv'", AppCompatTextView.class);
        View findRequiredView4 = Utils.findRequiredView(view, R.id.view_ride_options_stop_time_layout, "field 'stopTimeLayout' and method 'onStopTimeClick'");
        rideOptionsView.stopTimeLayout = (LinearLayout) Utils.castView(findRequiredView4, R.id.view_ride_options_stop_time_layout, "field 'stopTimeLayout'", LinearLayout.class);
        this.view7f0a0415 = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                rideOptionsView.onStopTimeClick();
            }
        });
        rideOptionsView.stopTimeIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.view_ride_options_stop_time_iv, "field 'stopTimeIv'", ImageView.class);
        rideOptionsView.stopTimeTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_ride_options_stop_time_tv, "field 'stopTimeTv'", AppCompatTextView.class);
        rideOptionsView.confirmOptionsLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_ride_options_confirm_options_layout, "field 'confirmOptionsLayout'", LinearLayout.class);
        rideOptionsView.userNameTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_ride_options_user_name_tv, "field 'userNameTv'", AppCompatTextView.class);
        View findRequiredView5 = Utils.findRequiredView(view, R.id.view_ride_options_confirm_options_btn, "field 'confirmOptionsBtn' and method 'onConfirmOptionsClick'");
        rideOptionsView.confirmOptionsBtn = (AppCompatButton) Utils.castView(findRequiredView5, R.id.view_ride_options_confirm_options_btn, "field 'confirmOptionsBtn'", AppCompatButton.class);
        this.view7f0a0409 = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                rideOptionsView.onConfirmOptionsClick();
            }
        });
        rideOptionsView.loading = (SnappLoading) Utils.findRequiredViewAsType(view, R.id.view_ride_options_confirm_options_loading, "field 'loading'", SnappLoading.class);
    }

    public void unbind() {
        RideOptionsView rideOptionsView = this.target;
        if (rideOptionsView != null) {
            this.target = null;
            rideOptionsView.secondDestinationLayout = null;
            rideOptionsView.secondDestinationIv = null;
            rideOptionsView.secondDestinationTv = null;
            rideOptionsView.roundTripLayout = null;
            rideOptionsView.roundTripIv = null;
            rideOptionsView.roundTripTv = null;
            rideOptionsView.rootRideStopLayout = null;
            rideOptionsView.waitingLayout = null;
            rideOptionsView.waitingIv = null;
            rideOptionsView.waitingTv = null;
            rideOptionsView.stopTimeLayout = null;
            rideOptionsView.stopTimeIv = null;
            rideOptionsView.stopTimeTv = null;
            rideOptionsView.confirmOptionsLayout = null;
            rideOptionsView.userNameTv = null;
            rideOptionsView.confirmOptionsBtn = null;
            rideOptionsView.loading = null;
            this.view7f0a0412.setOnClickListener(null);
            this.view7f0a0412 = null;
            this.view7f0a040f.setOnClickListener(null);
            this.view7f0a040f = null;
            this.view7f0a0419.setOnClickListener(null);
            this.view7f0a0419 = null;
            this.view7f0a0415.setOnClickListener(null);
            this.view7f0a0415 = null;
            this.view7f0a0409.setOnClickListener(null);
            this.view7f0a0409 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
