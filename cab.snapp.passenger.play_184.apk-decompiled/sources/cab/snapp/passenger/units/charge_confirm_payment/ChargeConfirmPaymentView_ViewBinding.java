package cab.snapp.passenger.units.charge_confirm_payment;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.LoadingButton;

public class ChargeConfirmPaymentView_ViewBinding implements Unbinder {
    private ChargeConfirmPaymentView target;
    private View view7f0a00cc;
    private View view7f0a01c3;

    public ChargeConfirmPaymentView_ViewBinding(ChargeConfirmPaymentView chargeConfirmPaymentView) {
        this(chargeConfirmPaymentView, chargeConfirmPaymentView);
    }

    public ChargeConfirmPaymentView_ViewBinding(final ChargeConfirmPaymentView chargeConfirmPaymentView, View view) {
        this.target = chargeConfirmPaymentView;
        chargeConfirmPaymentView.quickChargeContainer = (CardView) Utils.findRequiredViewAsType(view, R.id.quick_charge_container, "field 'quickChargeContainer'", CardView.class);
        chargeConfirmPaymentView.quickChargeOperatorLogo = (AppCompatImageView) Utils.findRequiredViewAsType(view, R.id.quick_charge_operator_logo, "field 'quickChargeOperatorLogo'", AppCompatImageView.class);
        chargeConfirmPaymentView.taxDescriptionTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.tv_tax_description, "field 'taxDescriptionTv'", AppCompatTextView.class);
        chargeConfirmPaymentView.payableAmountTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.tv_payable_amount, "field 'payableAmountTv'", AppCompatTextView.class);
        chargeConfirmPaymentView.quickChargeOperatorLogoBackground = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.charge_operator_icon_fl, "field 'quickChargeOperatorLogoBackground'", LinearLayout.class);
        chargeConfirmPaymentView.quickChargeLastPaymentTitle = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.charge_last_payment_title_tv, "field 'quickChargeLastPaymentTitle'", AppCompatTextView.class);
        chargeConfirmPaymentView.quickChargeLastPaymentAmount = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.charge_last_payment_amount_tv, "field 'quickChargeLastPaymentAmount'", AppCompatTextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.charge_confirm_pay, "field 'chargePaymentBtn' and method 'paymentButtonClicked'");
        chargeConfirmPaymentView.chargePaymentBtn = (LoadingButton) Utils.castView(findRequiredView, R.id.charge_confirm_pay, "field 'chargePaymentBtn'", LoadingButton.class);
        this.view7f0a00cc = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                chargeConfirmPaymentView.paymentButtonClicked();
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, R.id.layout_snapp_charge_back_arrow_iv_layout, "method 'onBackArrowLayoutClicked'");
        this.view7f0a01c3 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                chargeConfirmPaymentView.onBackArrowLayoutClicked();
            }
        });
    }

    public void unbind() {
        ChargeConfirmPaymentView chargeConfirmPaymentView = this.target;
        if (chargeConfirmPaymentView != null) {
            this.target = null;
            chargeConfirmPaymentView.quickChargeContainer = null;
            chargeConfirmPaymentView.quickChargeOperatorLogo = null;
            chargeConfirmPaymentView.taxDescriptionTv = null;
            chargeConfirmPaymentView.payableAmountTv = null;
            chargeConfirmPaymentView.quickChargeOperatorLogoBackground = null;
            chargeConfirmPaymentView.quickChargeLastPaymentTitle = null;
            chargeConfirmPaymentView.quickChargeLastPaymentAmount = null;
            chargeConfirmPaymentView.chargePaymentBtn = null;
            this.view7f0a00cc.setOnClickListener(null);
            this.view7f0a00cc = null;
            this.view7f0a01c3.setOnClickListener(null);
            this.view7f0a01c3 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
