package cab.snapp.passenger.units.payment;

import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.SwitchCompat;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappLoading;

public class PaymentView_ViewBinding implements Unbinder {
    private PaymentView target;
    private View view7f0a0213;
    private View view7f0a03b4;
    private View view7f0a03bb;
    private View view7f0a03c0;
    private View view7f0a03c1;
    private View view7f0a03c3;
    private View view7f0a03c5;
    private View view7f0a03d0;
    private View view7f0a03d1;
    private View view7f0a03d2;

    public PaymentView_ViewBinding(PaymentView paymentView) {
        this(paymentView, paymentView);
    }

    public PaymentView_ViewBinding(final PaymentView paymentView, View view) {
        this.target = paymentView;
        paymentView.donateSwitch = (SwitchCompat) Utils.findRequiredViewAsType(view, R.id.view_payment_donate_switch, "field 'donateSwitch'", SwitchCompat.class);
        paymentView.donateLayout = (ViewGroup) Utils.findRequiredViewAsType(view, R.id.view_payment_donate_layout, "field 'donateLayout'", ViewGroup.class);
        paymentView.donateDoneLayout = (ViewGroup) Utils.findRequiredViewAsType(view, R.id.view_payment_donate_done_layout, "field 'donateDoneLayout'", ViewGroup.class);
        paymentView.donateDoneTitleTextView = (TextView) Utils.findRequiredViewAsType(view, R.id.view_payment_donate_done_title_text_view, "field 'donateDoneTitleTextView'", TextView.class);
        paymentView.donateDoneAmountTextView = (TextView) Utils.findRequiredViewAsType(view, R.id.view_payment_donate_done_amount_text_view, "field 'donateDoneAmountTextView'", TextView.class);
        paymentView.donateTitleTextView = (TextView) Utils.findRequiredViewAsType(view, R.id.view_payment_donate_title_text_view, "field 'donateTitleTextView'", TextView.class);
        paymentView.donateDescTextView = (TextView) Utils.findRequiredViewAsType(view, R.id.view_payment_donate_description_text_view, "field 'donateDescTextView'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.view_payment_decrease_amount_of_requesting_charge_layout, "field 'decreaseRequestingChargeValueLayout' and method 'decreaseOfAmountRequestingChargeClick'");
        paymentView.decreaseRequestingChargeValueLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.view_payment_decrease_amount_of_requesting_charge_layout, "field 'decreaseRequestingChargeValueLayout'", LinearLayout.class);
        this.view7f0a03b4 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                paymentView.decreaseOfAmountRequestingChargeClick(view);
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, R.id.view_payment_increase_amount_of_requesting_charge_layout, "field 'increaseRequestingChargeValueLayout' and method 'increaseOfAmountRequestingChargeClick'");
        paymentView.increaseRequestingChargeValueLayout = (LinearLayout) Utils.castView(findRequiredView2, R.id.view_payment_increase_amount_of_requesting_charge_layout, "field 'increaseRequestingChargeValueLayout'", LinearLayout.class);
        this.view7f0a03c3 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                paymentView.increaseOfAmountRequestingChargeClick(view);
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, R.id.view_payment_pay_button, "field 'payButton' and method 'onPayClick'");
        paymentView.payButton = (Button) Utils.castView(findRequiredView3, R.id.view_payment_pay_button, "field 'payButton'", Button.class);
        this.view7f0a03c5 = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                paymentView.onPayClick();
            }
        });
        paymentView.paymentActionLoading = (SnappLoading) Utils.findRequiredViewAsType(view, R.id.view_payment_pay_loading, "field 'paymentActionLoading'", SnappLoading.class);
        paymentView.bottomMessageLayout = Utils.findRequiredView(view, R.id.view_payment_bottom_message_layout, "field 'bottomMessageLayout'");
        paymentView.bottomMessageTextView = (TextView) Utils.findRequiredViewAsType(view, R.id.view_payment_bottom_message_text_view, "field 'bottomMessageTextView'", TextView.class);
        paymentView.rideCostTextView = (TextView) Utils.findRequiredViewAsType(view, R.id.view_payment_ride_cost_text_view, "field 'rideCostTextView'", TextView.class);
        paymentView.rideCostLayout = Utils.findRequiredView(view, R.id.view_payment_ride_cost_layout, "field 'rideCostLayout'");
        paymentView.payableCostInCashOrUssdLayout = Utils.findRequiredView(view, R.id.view_payment_ride_payable_cost_in_cash_or_ussd_layout, "field 'payableCostInCashOrUssdLayout'");
        paymentView.payableCostInCashOrUssdTitleTextView = (TextView) Utils.findRequiredViewAsType(view, R.id.view_payment_ride_payable_cost_in_cash_or_ussd_title_text_view, "field 'payableCostInCashOrUssdTitleTextView'", TextView.class);
        paymentView.payableCostInCashOrUssdValueTextView = (TextView) Utils.findRequiredViewAsType(view, R.id.view_payment_ride_payable_cost_in_cash_or_ussd_value_text_view, "field 'payableCostInCashOrUssdValueTextView'", TextView.class);
        paymentView.currentCreditTextView = (TextView) Utils.findRequiredViewAsType(view, R.id.view_payment_current_credit_text_view, "field 'currentCreditTextView'", TextView.class);
        paymentView.currentCreditLayout = (ViewGroup) Utils.findRequiredViewAsType(view, R.id.view_payment_current_credit_layout, "field 'currentCreditLayout'", ViewGroup.class);
        paymentView.amountNeededForChargeLayout = (ViewGroup) Utils.findRequiredViewAsType(view, R.id.view_payment_amount_needed_for_charge_layout, "field 'amountNeededForChargeLayout'", ViewGroup.class);
        paymentView.amountNeededForChargeTextView = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_payment_amount_needed_for_charge_text_view, "field 'amountNeededForChargeTextView'", AppCompatTextView.class);
        paymentView.paymentTypeButtonLayout = Utils.findRequiredView(view, R.id.view_payment_payment_type_buttons_layout, "field 'paymentTypeButtonLayout'");
        paymentView.paymentMethodTitleTextView = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_payment_payment_method_title_text_view, "field 'paymentMethodTitleTextView'", AppCompatTextView.class);
        paymentView.paymentDoneLayout = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.view_payment_payment_done_layout, "field 'paymentDoneLayout'", FrameLayout.class);
        paymentView.paymentDoneTypeTextView = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_payment_payment_done_type_textview, "field 'paymentDoneTypeTextView'", AppCompatTextView.class);
        paymentView.apWalletActivationLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_payment_ap_wallet_activation_layout, "field 'apWalletActivationLayout'", LinearLayout.class);
        paymentView.apWalletActivationDescriptionTextView = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_top_up_payment_app_wallet_activation_description, "field 'apWalletActivationDescriptionTextView'", AppCompatTextView.class);
        paymentView.retryPanel = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_payment_error_layout_container, "field 'retryPanel'", LinearLayout.class);
        paymentView.retryTextView = (TextView) Utils.findRequiredViewAsType(view, R.id.view_payment_error_text_view, "field 'retryTextView'", TextView.class);
        View findRequiredView4 = Utils.findRequiredView(view, R.id.panel_ap_retry, "field 'retryButton' and method 'retryAp'");
        paymentView.retryButton = (LinearLayout) Utils.castView(findRequiredView4, R.id.panel_ap_retry, "field 'retryButton'", LinearLayout.class);
        this.view7f0a0213 = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                paymentView.retryAp();
            }
        });
        paymentView.transferCreditLayout = Utils.findRequiredView(view, R.id.view_payment_layout_transfer_snapp_credit_to_ap, "field 'transferCreditLayout'");
        paymentView.dividerHeader = Utils.findRequiredView(view, R.id.divider_header, "field 'dividerHeader'");
        View findRequiredView5 = Utils.findRequiredView(view, R.id.view_payment_first_payment_method_button, "method 'onlinePaymentMethodClick'");
        this.view7f0a03c0 = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                paymentView.onlinePaymentMethodClick(view);
            }
        });
        View findRequiredView6 = Utils.findRequiredView(view, R.id.view_payment_second_payment_method_button, "method 'onlinePaymentMethodClick'");
        this.view7f0a03d0 = findRequiredView6;
        findRequiredView6.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                paymentView.onlinePaymentMethodClick(view);
            }
        });
        View findRequiredView7 = Utils.findRequiredView(view, R.id.view_payment_third_payment_method_button, "method 'onlinePaymentMethodClick'");
        this.view7f0a03d1 = findRequiredView7;
        findRequiredView7.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                paymentView.onlinePaymentMethodClick(view);
            }
        });
        View findRequiredView8 = Utils.findRequiredView(view, R.id.view_payment_fourth_payment_method_button, "method 'onlinePaymentMethodClick'");
        this.view7f0a03c1 = findRequiredView8;
        findRequiredView8.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                paymentView.onlinePaymentMethodClick(view);
            }
        });
        View findRequiredView9 = Utils.findRequiredView(view, R.id.view_payment_donate_link_text_view, "method 'donateDescriptionClick'");
        this.view7f0a03bb = findRequiredView9;
        findRequiredView9.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                paymentView.donateDescriptionClick();
            }
        });
        View findRequiredView10 = Utils.findRequiredView(view, R.id.view_payment_transfer_button, "method 'onTransferCreditClick'");
        this.view7f0a03d2 = findRequiredView10;
        findRequiredView10.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                paymentView.onTransferCreditClick();
            }
        });
        paymentView.paymentTypeButtons = Utils.listFilteringNull((Button) Utils.findRequiredViewAsType(view, R.id.view_payment_first_payment_method_button, "field 'paymentTypeButtons'", Button.class), (Button) Utils.findRequiredViewAsType(view, R.id.view_payment_second_payment_method_button, "field 'paymentTypeButtons'", Button.class), (Button) Utils.findRequiredViewAsType(view, R.id.view_payment_third_payment_method_button, "field 'paymentTypeButtons'", Button.class), (Button) Utils.findRequiredViewAsType(view, R.id.view_payment_fourth_payment_method_button, "field 'paymentTypeButtons'", Button.class));
    }

    public void unbind() {
        PaymentView paymentView = this.target;
        if (paymentView != null) {
            this.target = null;
            paymentView.donateSwitch = null;
            paymentView.donateLayout = null;
            paymentView.donateDoneLayout = null;
            paymentView.donateDoneTitleTextView = null;
            paymentView.donateDoneAmountTextView = null;
            paymentView.donateTitleTextView = null;
            paymentView.donateDescTextView = null;
            paymentView.decreaseRequestingChargeValueLayout = null;
            paymentView.increaseRequestingChargeValueLayout = null;
            paymentView.payButton = null;
            paymentView.paymentActionLoading = null;
            paymentView.bottomMessageLayout = null;
            paymentView.bottomMessageTextView = null;
            paymentView.rideCostTextView = null;
            paymentView.rideCostLayout = null;
            paymentView.payableCostInCashOrUssdLayout = null;
            paymentView.payableCostInCashOrUssdTitleTextView = null;
            paymentView.payableCostInCashOrUssdValueTextView = null;
            paymentView.currentCreditTextView = null;
            paymentView.currentCreditLayout = null;
            paymentView.amountNeededForChargeLayout = null;
            paymentView.amountNeededForChargeTextView = null;
            paymentView.paymentTypeButtonLayout = null;
            paymentView.paymentMethodTitleTextView = null;
            paymentView.paymentDoneLayout = null;
            paymentView.paymentDoneTypeTextView = null;
            paymentView.apWalletActivationLayout = null;
            paymentView.apWalletActivationDescriptionTextView = null;
            paymentView.retryPanel = null;
            paymentView.retryTextView = null;
            paymentView.retryButton = null;
            paymentView.transferCreditLayout = null;
            paymentView.dividerHeader = null;
            paymentView.paymentTypeButtons = null;
            this.view7f0a03b4.setOnClickListener(null);
            this.view7f0a03b4 = null;
            this.view7f0a03c3.setOnClickListener(null);
            this.view7f0a03c3 = null;
            this.view7f0a03c5.setOnClickListener(null);
            this.view7f0a03c5 = null;
            this.view7f0a0213.setOnClickListener(null);
            this.view7f0a0213 = null;
            this.view7f0a03c0.setOnClickListener(null);
            this.view7f0a03c0 = null;
            this.view7f0a03d0.setOnClickListener(null);
            this.view7f0a03d0 = null;
            this.view7f0a03d1.setOnClickListener(null);
            this.view7f0a03d1 = null;
            this.view7f0a03c1.setOnClickListener(null);
            this.view7f0a03c1 = null;
            this.view7f0a03bb.setOnClickListener(null);
            this.view7f0a03bb = null;
            this.view7f0a03d2.setOnClickListener(null);
            this.view7f0a03d2 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
