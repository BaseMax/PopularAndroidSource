package cab.snapp.passenger.units.charge;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.LoadingButton;
import cab.snapp.snappuikit.SnappLoading;
import cab.snapp.snappuikit.StartDrawableButton;

public class ChargeView_ViewBinding implements Unbinder {
    private ChargeView target;
    private View view7f0a00df;
    private View view7f0a00e1;
    private View view7f0a00e2;
    private View view7f0a00ed;
    private View view7f0a01c3;
    private View view7f0a01da;
    private View view7f0a0247;

    public ChargeView_ViewBinding(ChargeView chargeView) {
        this(chargeView, chargeView);
    }

    public ChargeView_ViewBinding(final ChargeView chargeView, View view) {
        this.target = chargeView;
        chargeView.mobileNumberEt = (AppCompatEditText) Utils.findRequiredViewAsType(view, R.id.view_charge_mobile_number_et, "field 'mobileNumberEt'", AppCompatEditText.class);
        chargeView.mobileInputLayoutHint = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.hit_tv, "field 'mobileInputLayoutHint'", AppCompatTextView.class);
        chargeView.mobileInputLayoutError = Utils.findRequiredView(view, R.id.phone_number_input_error, "field 'mobileInputLayoutError'");
        chargeView.mobileNumberContainerRl = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.rl_mobile_number_container, "field 'mobileNumberContainerRl'", RelativeLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.clear_text_iv, "field 'clearMobileNumberIv' and method 'onClearMobileNumberClicked'");
        chargeView.clearMobileNumberIv = (AppCompatImageView) Utils.castView(findRequiredView, R.id.clear_text_iv, "field 'clearMobileNumberIv'", AppCompatImageView.class);
        this.view7f0a00ed = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                chargeView.onClearMobileNumberClicked();
            }
        });
        chargeView.chargeViewLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_snapp_charge_base_layout, "field 'chargeViewLayout'", LinearLayout.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.layout_snapp_charge_back_arrow_iv_layout, "field 'toolbarBackArrowLayout' and method 'onBackArrowLayoutClicked'");
        chargeView.toolbarBackArrowLayout = (LinearLayout) Utils.castView(findRequiredView2, R.id.layout_snapp_charge_back_arrow_iv_layout, "field 'toolbarBackArrowLayout'", LinearLayout.class);
        this.view7f0a01c3 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                chargeView.onBackArrowLayoutClicked();
            }
        });
        chargeView.containerScrollView = (ScrollView) Utils.findRequiredViewAsType(view, R.id.charge_view_sv, "field 'containerScrollView'", ScrollView.class);
        chargeView.nextBtnContainer = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.charge_view_button_container, "field 'nextBtnContainer'", LinearLayout.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.charge_view_next_btn, "field 'nextBtn' and method 'onNextBtnClicked'");
        chargeView.nextBtn = (LoadingButton) Utils.castView(findRequiredView3, R.id.charge_view_next_btn, "field 'nextBtn'", LoadingButton.class);
        this.view7f0a00df = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                chargeView.onNextBtnClicked();
            }
        });
        chargeView.mainLoading = (SnappLoading) Utils.findRequiredViewAsType(view, R.id.charge_view_main_loading, "field 'mainLoading'", SnappLoading.class);
        chargeView.recyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recyclerView, "field 'recyclerView'", RecyclerView.class);
        chargeView.errorRl = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.view_snapp_charge_error_rl, "field 'errorRl'", RelativeLayout.class);
        chargeView.errorMessageTextTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_snapp_charge_error_message_tv, "field 'errorMessageTextTv'", AppCompatTextView.class);
        View findRequiredView4 = Utils.findRequiredView(view, R.id.quick_charge_container, "field 'quickChargeContainer' and method 'onQuickChargeClicked'");
        chargeView.quickChargeContainer = (CardView) Utils.castView(findRequiredView4, R.id.quick_charge_container, "field 'quickChargeContainer'", CardView.class);
        this.view7f0a0247 = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                chargeView.onQuickChargeClicked();
            }
        });
        chargeView.quickChargeOperatorLogo = (AppCompatImageView) Utils.findRequiredViewAsType(view, R.id.quick_charge_operator_logo, "field 'quickChargeOperatorLogo'", AppCompatImageView.class);
        chargeView.quickChargeLoading = (SnappLoading) Utils.findRequiredViewAsType(view, R.id.charge_view_quick_charge_loading, "field 'quickChargeLoading'", SnappLoading.class);
        chargeView.chevronView = Utils.findRequiredView(view, R.id.charge_last_payment_chevron_iv, "field 'chevronView'");
        chargeView.quickChargeBtn = Utils.findRequiredView(view, R.id.charge_last_payment_fast_tv, "field 'quickChargeBtn'");
        chargeView.quickChargeOperatorLogoBackground = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.charge_operator_icon_fl, "field 'quickChargeOperatorLogoBackground'", LinearLayout.class);
        chargeView.quickChargeLastPaymentTitle = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.charge_last_payment_title_tv, "field 'quickChargeLastPaymentTitle'", AppCompatTextView.class);
        chargeView.quickChargeLastPaymentAmount = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.charge_last_payment_amount_tv, "field 'quickChargeLastPaymentAmount'", AppCompatTextView.class);
        View findRequiredView5 = Utils.findRequiredView(view, R.id.charge_view_select_mobile_number_from_recently_btn, "field 'btnSelectMobileNumberFromRecently' and method 'onSelectMobileNumberFromRecentlyClicked'");
        chargeView.btnSelectMobileNumberFromRecently = (StartDrawableButton) Utils.castView(findRequiredView5, R.id.charge_view_select_mobile_number_from_recently_btn, "field 'btnSelectMobileNumberFromRecently'", StartDrawableButton.class);
        this.view7f0a00e2 = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                chargeView.onSelectMobileNumberFromRecentlyClicked();
            }
        });
        View findRequiredView6 = Utils.findRequiredView(view, R.id.charge_view_select_mobile_number_from_contacts_btn, "method 'onSelectMobileNumberFromContactsClicked'");
        this.view7f0a00e1 = findRequiredView6;
        findRequiredView6.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                chargeView.onSelectMobileNumberFromContactsClicked();
            }
        });
        View findRequiredView7 = Utils.findRequiredView(view, R.id.layout_snapp_charge_transactions_tv, "method 'onTransactionsClicked'");
        this.view7f0a01da = findRequiredView7;
        findRequiredView7.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                chargeView.onTransactionsClicked();
            }
        });
    }

    public void unbind() {
        ChargeView chargeView = this.target;
        if (chargeView != null) {
            this.target = null;
            chargeView.mobileNumberEt = null;
            chargeView.mobileInputLayoutHint = null;
            chargeView.mobileInputLayoutError = null;
            chargeView.mobileNumberContainerRl = null;
            chargeView.clearMobileNumberIv = null;
            chargeView.chargeViewLayout = null;
            chargeView.toolbarBackArrowLayout = null;
            chargeView.containerScrollView = null;
            chargeView.nextBtnContainer = null;
            chargeView.nextBtn = null;
            chargeView.mainLoading = null;
            chargeView.recyclerView = null;
            chargeView.errorRl = null;
            chargeView.errorMessageTextTv = null;
            chargeView.quickChargeContainer = null;
            chargeView.quickChargeOperatorLogo = null;
            chargeView.quickChargeLoading = null;
            chargeView.chevronView = null;
            chargeView.quickChargeBtn = null;
            chargeView.quickChargeOperatorLogoBackground = null;
            chargeView.quickChargeLastPaymentTitle = null;
            chargeView.quickChargeLastPaymentAmount = null;
            chargeView.btnSelectMobileNumberFromRecently = null;
            this.view7f0a00ed.setOnClickListener(null);
            this.view7f0a00ed = null;
            this.view7f0a01c3.setOnClickListener(null);
            this.view7f0a01c3 = null;
            this.view7f0a00df.setOnClickListener(null);
            this.view7f0a00df = null;
            this.view7f0a0247.setOnClickListener(null);
            this.view7f0a0247 = null;
            this.view7f0a00e2.setOnClickListener(null);
            this.view7f0a00e2 = null;
            this.view7f0a00e1.setOnClickListener(null);
            this.view7f0a00e1 = null;
            this.view7f0a01da.setOnClickListener(null);
            this.view7f0a01da = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
