package cab.snapp.passenger.units.footer.ride_request_footer;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappLoading;

public class RideRequestFooterView_ViewBinding implements Unbinder {
    private RideRequestFooterView target;
    private View view7f0a0433;
    private View view7f0a0438;
    private View view7f0a043a;
    private View view7f0a043d;
    private View view7f0a0440;
    private View view7f0a0445;

    public RideRequestFooterView_ViewBinding(RideRequestFooterView rideRequestFooterView) {
        this(rideRequestFooterView, rideRequestFooterView);
    }

    public RideRequestFooterView_ViewBinding(final RideRequestFooterView rideRequestFooterView, View view) {
        this.target = rideRequestFooterView;
        rideRequestFooterView.tooltipsLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.view_ride_request_footer_service_types_tooltips_layout, "field 'tooltipsLayout'", RelativeLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.view_ride_request_footer_tooltip_more_desc_button, "field 'moreDescButton' and method 'onTooltipDetailsClicked'");
        rideRequestFooterView.moreDescButton = (AppCompatButton) Utils.castView(findRequiredView, R.id.view_ride_request_footer_tooltip_more_desc_button, "field 'moreDescButton'", AppCompatButton.class);
        this.view7f0a0445 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                rideRequestFooterView.onTooltipDetailsClicked();
            }
        });
        rideRequestFooterView.shortDescriptionTextView = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_ride_request_footer_tooltip_short_desc_textview, "field 'shortDescriptionTextView'", AppCompatTextView.class);
        rideRequestFooterView.recyclerLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_ride_request_footer_service_types_layout, "field 'recyclerLayout'", LinearLayout.class);
        rideRequestFooterView.recyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.view_ride_request_footer_service_types_recycler_view, "field 'recyclerView'", RecyclerView.class);
        rideRequestFooterView.optionsLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_ride_request_footer_options_layout, "field 'optionsLayout'", LinearLayout.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.view_ride_request_footer_options_button, "field 'optionsButton' and method 'onOptionsClicked'");
        rideRequestFooterView.optionsButton = (AppCompatButton) Utils.castView(findRequiredView2, R.id.view_ride_request_footer_options_button, "field 'optionsButton'", AppCompatButton.class);
        this.view7f0a0438 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                rideRequestFooterView.onOptionsClicked();
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, R.id.view_ride_request_footer_promo_button, "field 'promoButton' and method 'onPromoClicked'");
        rideRequestFooterView.promoButton = (AppCompatButton) Utils.castView(findRequiredView3, R.id.view_ride_request_footer_promo_button, "field 'promoButton'", AppCompatButton.class);
        this.view7f0a043d = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                rideRequestFooterView.onPromoClicked();
            }
        });
        rideRequestFooterView.priceCountingTextView = (SnappCountingTextView) Utils.findRequiredViewAsType(view, R.id.view_ride_request_footer_price_counting_textview, "field 'priceCountingTextView'", SnappCountingTextView.class);
        View findRequiredView4 = Utils.findRequiredView(view, R.id.view_ride_request_footer_action_button, "field 'actionButton' and method 'onActionClicked'");
        rideRequestFooterView.actionButton = (AppCompatButton) Utils.castView(findRequiredView4, R.id.view_ride_request_footer_action_button, "field 'actionButton'", AppCompatButton.class);
        this.view7f0a0433 = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                rideRequestFooterView.onActionClicked();
            }
        });
        rideRequestFooterView.promoLayout = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.view_ride_request_footer_promo_layout, "field 'promoLayout'", RelativeLayout.class);
        rideRequestFooterView.promoEditText = (AppCompatEditText) Utils.findRequiredViewAsType(view, R.id.view_ride_request_footer_promo_edittext, "field 'promoEditText'", AppCompatEditText.class);
        View findRequiredView5 = Utils.findRequiredView(view, R.id.view_ride_request_footer_promo_save_button, "field 'promoSaveButton' and method 'onPromoSaveClicked'");
        rideRequestFooterView.promoSaveButton = (AppCompatButton) Utils.castView(findRequiredView5, R.id.view_ride_request_footer_promo_save_button, "field 'promoSaveButton'", AppCompatButton.class);
        this.view7f0a0440 = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                rideRequestFooterView.onPromoSaveClicked();
            }
        });
        rideRequestFooterView.snapp = (SnappLoading) Utils.findRequiredViewAsType(view, R.id.view_ride_request_footer_promo_snapp_loading, "field 'snapp'", SnappLoading.class);
        rideRequestFooterView.moreControllersContainer = Utils.findRequiredView(view, R.id.view_ride_request_footer_more_controllers_container, "field 'moreControllersContainer'");
        rideRequestFooterView.actionLayout = Utils.findRequiredView(view, R.id.view_ride_request_footer_action_layout, "field 'actionLayout'");
        View findRequiredView6 = Utils.findRequiredView(view, R.id.view_ride_request_footer_phone_not_verified_layout, "field 'phoneNotVerifiedLayout' and method 'onPhoneNotVerifiedClicked'");
        rideRequestFooterView.phoneNotVerifiedLayout = findRequiredView6;
        this.view7f0a043a = findRequiredView6;
        findRequiredView6.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                rideRequestFooterView.onPhoneNotVerifiedClicked();
            }
        });
        rideRequestFooterView.freeRideTextView = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_ride_request_footer_free_textview, "field 'freeRideTextView'", AppCompatTextView.class);
        rideRequestFooterView.disabledTextView = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_ride_request_footer_disabled_textview, "field 'disabledTextView'", AppCompatTextView.class);
        rideRequestFooterView.priceLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_ride_request_footer_price_layout, "field 'priceLayout'", LinearLayout.class);
    }

    public void unbind() {
        RideRequestFooterView rideRequestFooterView = this.target;
        if (rideRequestFooterView != null) {
            this.target = null;
            rideRequestFooterView.tooltipsLayout = null;
            rideRequestFooterView.moreDescButton = null;
            rideRequestFooterView.shortDescriptionTextView = null;
            rideRequestFooterView.recyclerLayout = null;
            rideRequestFooterView.recyclerView = null;
            rideRequestFooterView.optionsLayout = null;
            rideRequestFooterView.optionsButton = null;
            rideRequestFooterView.promoButton = null;
            rideRequestFooterView.priceCountingTextView = null;
            rideRequestFooterView.actionButton = null;
            rideRequestFooterView.promoLayout = null;
            rideRequestFooterView.promoEditText = null;
            rideRequestFooterView.promoSaveButton = null;
            rideRequestFooterView.snapp = null;
            rideRequestFooterView.moreControllersContainer = null;
            rideRequestFooterView.actionLayout = null;
            rideRequestFooterView.phoneNotVerifiedLayout = null;
            rideRequestFooterView.freeRideTextView = null;
            rideRequestFooterView.disabledTextView = null;
            rideRequestFooterView.priceLayout = null;
            this.view7f0a0445.setOnClickListener(null);
            this.view7f0a0445 = null;
            this.view7f0a0438.setOnClickListener(null);
            this.view7f0a0438 = null;
            this.view7f0a043d.setOnClickListener(null);
            this.view7f0a043d = null;
            this.view7f0a0433.setOnClickListener(null);
            this.view7f0a0433 = null;
            this.view7f0a0440.setOnClickListener(null);
            this.view7f0a0440 = null;
            this.view7f0a043a.setOnClickListener(null);
            this.view7f0a043a = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
