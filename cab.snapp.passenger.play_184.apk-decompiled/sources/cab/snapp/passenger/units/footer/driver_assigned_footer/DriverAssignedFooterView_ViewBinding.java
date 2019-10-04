package cab.snapp.passenger.units.footer.driver_assigned_footer;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappLoading;

public class DriverAssignedFooterView_ViewBinding implements Unbinder {
    private DriverAssignedFooterView target;
    private View view7f0a0131;
    private View view7f0a0136;
    private View view7f0a0337;

    public DriverAssignedFooterView_ViewBinding(DriverAssignedFooterView driverAssignedFooterView) {
        this(driverAssignedFooterView, driverAssignedFooterView);
    }

    public DriverAssignedFooterView_ViewBinding(final DriverAssignedFooterView driverAssignedFooterView, View view) {
        this.target = driverAssignedFooterView;
        driverAssignedFooterView.messageLayout = Utils.findRequiredView(view, R.id.view_driver_assigned_footer_message_layout, "field 'messageLayout'");
        driverAssignedFooterView.messageLayoutTextView = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_driver_assigned_footer_message_textview, "field 'messageLayoutTextView'", AppCompatTextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.view_driver_assigned_footer_message_button, "field 'messageLayoutIconImageView' and method 'onMessageCloseBtnClicked'");
        driverAssignedFooterView.messageLayoutIconImageView = (ImageView) Utils.castView(findRequiredView, R.id.view_driver_assigned_footer_message_button, "field 'messageLayoutIconImageView'", ImageView.class);
        this.view7f0a0337 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                driverAssignedFooterView.onMessageCloseBtnClicked();
            }
        });
        driverAssignedFooterView.bottomButtonsLayout = Utils.findRequiredView(view, R.id.driver_assigned_footer_bottom_buttons_layout, "field 'bottomButtonsLayout'");
        View findRequiredView2 = Utils.findRequiredView(view, R.id.driver_assigned_footer_view_call_driver, "field 'callDriverButton' and method 'onCallClicked'");
        driverAssignedFooterView.callDriverButton = (AppCompatTextView) Utils.castView(findRequiredView2, R.id.driver_assigned_footer_view_call_driver, "field 'callDriverButton'", AppCompatTextView.class);
        this.view7f0a0131 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                driverAssignedFooterView.onCallClicked();
            }
        });
        driverAssignedFooterView.rootView = Utils.findRequiredView(view, R.id.view_driver_assigned_footer_base_layout, "field 'rootView'");
        View findRequiredView3 = Utils.findRequiredView(view, R.id.driver_assigned_footer_view_pay_cost, "field 'payCostTextView' and method 'onPayCostClicked'");
        driverAssignedFooterView.payCostTextView = (AppCompatTextView) Utils.castView(findRequiredView3, R.id.driver_assigned_footer_view_pay_cost, "field 'payCostTextView'", AppCompatTextView.class);
        this.view7f0a0136 = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                driverAssignedFooterView.onPayCostClicked();
            }
        });
        driverAssignedFooterView.driverNameTextView = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.driver_assigned_footer_view_driver_name_text_view, "field 'driverNameTextView'", AppCompatTextView.class);
        driverAssignedFooterView.cabTypeTextView = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.driver_assigned_footer_view_cab_type_text_view, "field 'cabTypeTextView'", AppCompatTextView.class);
        driverAssignedFooterView.driverAvatarImageView = (ImageView) Utils.findRequiredViewAsType(view, R.id.view_driver_assigned_footer_driver_avatar, "field 'driverAvatarImageView'", ImageView.class);
        driverAssignedFooterView.plateNumberLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.driver_assigned_footer_view_number_plate, "field 'plateNumberLayout'", LinearLayout.class);
        driverAssignedFooterView.payCostLoading = (SnappLoading) Utils.findRequiredViewAsType(view, R.id.driver_assigned_footer_view_pay_cost_loading, "field 'payCostLoading'", SnappLoading.class);
    }

    public void unbind() {
        DriverAssignedFooterView driverAssignedFooterView = this.target;
        if (driverAssignedFooterView != null) {
            this.target = null;
            driverAssignedFooterView.messageLayout = null;
            driverAssignedFooterView.messageLayoutTextView = null;
            driverAssignedFooterView.messageLayoutIconImageView = null;
            driverAssignedFooterView.bottomButtonsLayout = null;
            driverAssignedFooterView.callDriverButton = null;
            driverAssignedFooterView.rootView = null;
            driverAssignedFooterView.payCostTextView = null;
            driverAssignedFooterView.driverNameTextView = null;
            driverAssignedFooterView.cabTypeTextView = null;
            driverAssignedFooterView.driverAvatarImageView = null;
            driverAssignedFooterView.plateNumberLayout = null;
            driverAssignedFooterView.payCostLoading = null;
            this.view7f0a0337.setOnClickListener(null);
            this.view7f0a0337 = null;
            this.view7f0a0131.setOnClickListener(null);
            this.view7f0a0131 = null;
            this.view7f0a0136.setOnClickListener(null);
            this.view7f0a0136 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
