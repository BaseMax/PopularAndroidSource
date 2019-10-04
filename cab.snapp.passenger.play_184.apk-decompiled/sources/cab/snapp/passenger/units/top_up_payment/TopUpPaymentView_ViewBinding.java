package cab.snapp.passenger.units.top_up_payment;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.HorizontalScrollView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappButton;
import cab.snapp.snappuikit.SnappClearableEditText;
import cab.snapp.snappuikit.SnappLoading;

public class TopUpPaymentView_ViewBinding implements Unbinder {
    private TopUpPaymentView target;
    private View view7f0a03a8;
    private View view7f0a04b0;
    private TextWatcher view7f0a04b0TextWatcher;
    private View view7f0a04b1;
    private View view7f0a04b9;
    private View view7f0a04c1;
    private View view7f0a04c2;
    private View view7f0a04c3;
    private View view7f0a04c4;
    private View view7f0a04c6;
    private View view7f0a04c7;
    private View view7f0a04c8;
    private View view7f0a04cc;
    private View view7f0a04cf;
    private View view7f0a04d3;
    private View view7f0a04d6;

    public TopUpPaymentView_ViewBinding(TopUpPaymentView topUpPaymentView) {
        this(topUpPaymentView, topUpPaymentView);
    }

    public TopUpPaymentView_ViewBinding(final TopUpPaymentView topUpPaymentView, View view) {
        this.target = topUpPaymentView;
        View findRequiredView = Utils.findRequiredView(view, R.id.view_modal_bottom_sheet_close_imagebutton, "field 'closeButton' and method 'onBottomSheetCloseButtonClicked'");
        topUpPaymentView.closeButton = (ImageButton) Utils.castView(findRequiredView, R.id.view_modal_bottom_sheet_close_imagebutton, "field 'closeButton'", ImageButton.class);
        this.view7f0a03a8 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                topUpPaymentView.onBottomSheetCloseButtonClicked();
            }
        });
        topUpPaymentView.currentCreditTextView = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_top_up_payment_current_credit_value_text_view, "field 'currentCreditTextView'", AppCompatTextView.class);
        topUpPaymentView.creditCurrencyTextView = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_top_up_payment_current_credit_currency_text_view, "field 'creditCurrencyTextView'", AppCompatTextView.class);
        topUpPaymentView.tabLayoutScrollView = (HorizontalScrollView) Utils.findRequiredViewAsType(view, R.id.view_top_up_payment_tabs_container_layout, "field 'tabLayoutScrollView'", HorizontalScrollView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.view_top_up_payment_tabs_ap_wallet_tab_layout, "field 'apWalletTabLayout' and method 'onApWalletTabClicked'");
        topUpPaymentView.apWalletTabLayout = (ConstraintLayout) Utils.castView(findRequiredView2, R.id.view_top_up_payment_tabs_ap_wallet_tab_layout, "field 'apWalletTabLayout'", ConstraintLayout.class);
        this.view7f0a04cc = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                topUpPaymentView.onApWalletTabClicked();
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, R.id.view_top_up_payment_tabs_bank_card_tab_layout, "field 'bankCardTabLayout' and method 'onBankCardTabClicked'");
        topUpPaymentView.bankCardTabLayout = (ConstraintLayout) Utils.castView(findRequiredView3, R.id.view_top_up_payment_tabs_bank_card_tab_layout, "field 'bankCardTabLayout'", ConstraintLayout.class);
        this.view7f0a04cf = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                topUpPaymentView.onBankCardTabClicked();
            }
        });
        View findRequiredView4 = Utils.findRequiredView(view, R.id.view_top_up_payment_tabs_ussd_tab_layout, "field 'ussdTabLayout' and method 'onUssdTabClicked'");
        topUpPaymentView.ussdTabLayout = (ConstraintLayout) Utils.castView(findRequiredView4, R.id.view_top_up_payment_tabs_ussd_tab_layout, "field 'ussdTabLayout'", ConstraintLayout.class);
        this.view7f0a04d6 = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                topUpPaymentView.onUssdTabClicked();
            }
        });
        View findRequiredView5 = Utils.findRequiredView(view, R.id.view_top_up_payment_tabs_snapp_card_tab_layout, "field 'snappCardTabLayout' and method 'onSnappCardTabClicked'");
        topUpPaymentView.snappCardTabLayout = (ConstraintLayout) Utils.castView(findRequiredView5, R.id.view_top_up_payment_tabs_snapp_card_tab_layout, "field 'snappCardTabLayout'", ConstraintLayout.class);
        this.view7f0a04d3 = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                topUpPaymentView.onSnappCardTabClicked();
            }
        });
        topUpPaymentView.apWalletTabUnderlineView = Utils.findRequiredView(view, R.id.view_top_up_payment_tabs_ap_wallet_underline_view, "field 'apWalletTabUnderlineView'");
        topUpPaymentView.bankCardTabUnderlineView = Utils.findRequiredView(view, R.id.view_top_up_payment_tabs_bank_card_underline_view, "field 'bankCardTabUnderlineView'");
        topUpPaymentView.ussdTabUnderlineView = Utils.findRequiredView(view, R.id.view_top_up_payment_tabs_ussd_underline_view, "field 'ussdTabUnderlineView'");
        topUpPaymentView.snappCardTabUnderlineView = Utils.findRequiredView(view, R.id.view_top_up_payment_tabs_snapp_card_underline_view, "field 'snappCardTabUnderlineView'");
        topUpPaymentView.apWalletTitleTextView = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_top_up_payment_tabs_ap_wallet_tab_title_text_View, "field 'apWalletTitleTextView'", AppCompatTextView.class);
        topUpPaymentView.bankCardTitleTextView = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_top_up_payment_tabs_bank_card_tab_title_text_View, "field 'bankCardTitleTextView'", AppCompatTextView.class);
        topUpPaymentView.ussdTitleTextView = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_top_up_payment_tabs_ussd_tab_title_text_View, "field 'ussdTitleTextView'", AppCompatTextView.class);
        topUpPaymentView.snappCardTitleTextView = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_top_up_payment_tabs_snapp_card_tab_title_text_View, "field 'snappCardTitleTextView'", AppCompatTextView.class);
        topUpPaymentView.ApLogoImageView = (AppCompatImageView) Utils.findRequiredViewAsType(view, R.id.view_top_up_payment_asan_pardakht_logo, "field 'ApLogoImageView'", AppCompatImageView.class);
        topUpPaymentView.bankCardLayout = (ConstraintLayout) Utils.findRequiredViewAsType(view, R.id.view_top_up_payment_bank_card_layout, "field 'bankCardLayout'", ConstraintLayout.class);
        topUpPaymentView.snappLayout = (ConstraintLayout) Utils.findRequiredViewAsType(view, R.id.view_top_up_payment_snapp_card_layout, "field 'snappLayout'", ConstraintLayout.class);
        topUpPaymentView.apWalletActivationLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_top_up_payment_ap_wallet_activation_layout, "field 'apWalletActivationLayout'", LinearLayout.class);
        topUpPaymentView.apWalletActivationRequestCoordinator = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.view_top_up_payment_app_wallet_activation_request_coordinator, "field 'apWalletActivationRequestCoordinator'", RelativeLayout.class);
        topUpPaymentView.apWalletErrorLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_top_up_payment_app_wallet_error_layout, "field 'apWalletErrorLayout'", LinearLayout.class);
        topUpPaymentView.currentCreditLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_top_up_payment_current_credit_layout, "field 'currentCreditLayout'", LinearLayout.class);
        View findRequiredView6 = Utils.findRequiredView(view, R.id.view_top_up_payment_set_amount_to_500000_rial_button, "field 'setAmountTo500000RialButton' and method 'onSetAmountTo500000RialButtonClicked'");
        topUpPaymentView.setAmountTo500000RialButton = (AppCompatButton) Utils.castView(findRequiredView6, R.id.view_top_up_payment_set_amount_to_500000_rial_button, "field 'setAmountTo500000RialButton'", AppCompatButton.class);
        this.view7f0a04c8 = findRequiredView6;
        findRequiredView6.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                topUpPaymentView.onSetAmountTo500000RialButtonClicked();
            }
        });
        View findRequiredView7 = Utils.findRequiredView(view, R.id.view_top_up_payment_set_amount_to_200000_rial_button, "field 'setAmountTo200000RialButton' and method 'onSetAmountTo200000RialButtonClicked'");
        topUpPaymentView.setAmountTo200000RialButton = (AppCompatButton) Utils.castView(findRequiredView7, R.id.view_top_up_payment_set_amount_to_200000_rial_button, "field 'setAmountTo200000RialButton'", AppCompatButton.class);
        this.view7f0a04c7 = findRequiredView7;
        findRequiredView7.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                topUpPaymentView.onSetAmountTo200000RialButtonClicked();
            }
        });
        View findRequiredView8 = Utils.findRequiredView(view, R.id.view_top_up_payment_set_amount_to_100000_rial_button, "field 'setAmountTo100000RialButton' and method 'onSetAmountTo100000RialButtonClicked'");
        topUpPaymentView.setAmountTo100000RialButton = (AppCompatButton) Utils.castView(findRequiredView8, R.id.view_top_up_payment_set_amount_to_100000_rial_button, "field 'setAmountTo100000RialButton'", AppCompatButton.class);
        this.view7f0a04c6 = findRequiredView8;
        findRequiredView8.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                topUpPaymentView.onSetAmountTo100000RialButtonClicked();
            }
        });
        View findRequiredView9 = Utils.findRequiredView(view, R.id.view_top_up_payment_increase_fixed_amount_button, "field 'increaseByFixedAmountButton' and method 'onIncrementByFixedAmountButtonClicked'");
        topUpPaymentView.increaseByFixedAmountButton = (AppCompatImageButton) Utils.castView(findRequiredView9, R.id.view_top_up_payment_increase_fixed_amount_button, "field 'increaseByFixedAmountButton'", AppCompatImageButton.class);
        this.view7f0a04c2 = findRequiredView9;
        findRequiredView9.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                topUpPaymentView.onIncrementByFixedAmountButtonClicked();
            }
        });
        View findRequiredView10 = Utils.findRequiredView(view, R.id.view_top_up_payment_decrease_fixed_amount_button_layout, "field 'decreaseByFixedAmountButton' and method 'onDecreaseByFixedAmountButtonClicked'");
        topUpPaymentView.decreaseByFixedAmountButton = (AppCompatImageButton) Utils.castView(findRequiredView10, R.id.view_top_up_payment_decrease_fixed_amount_button_layout, "field 'decreaseByFixedAmountButton'", AppCompatImageButton.class);
        this.view7f0a04c1 = findRequiredView10;
        findRequiredView10.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                topUpPaymentView.onDecreaseByFixedAmountButtonClicked();
            }
        });
        View findRequiredView11 = Utils.findRequiredView(view, R.id.view_top_up_payment_amount_to_charge_app_compat_edit_text, "field 'amountToChargeEditText' and method 'onTextChanged'");
        topUpPaymentView.amountToChargeEditText = (AppCompatEditText) Utils.castView(findRequiredView11, R.id.view_top_up_payment_amount_to_charge_app_compat_edit_text, "field 'amountToChargeEditText'", AppCompatEditText.class);
        this.view7f0a04b0 = findRequiredView11;
        this.view7f0a04b0TextWatcher = new TextWatcher() {
            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public final void afterTextChanged(Editable editable) {
                topUpPaymentView.onTextChanged((CharSequence) Utils.castParam(editable, "afterTextChanged", 0, "onTextChanged", 0, CharSequence.class));
            }
        };
        ((TextView) findRequiredView11).addTextChangedListener(this.view7f0a04b0TextWatcher);
        topUpPaymentView.snappClearableEditText = (SnappClearableEditText) Utils.findRequiredViewAsType(view, R.id.view_top_up_payment_snapp_card_snapp_clearable_edit_text, "field 'snappClearableEditText'", SnappClearableEditText.class);
        topUpPaymentView.apWalletActivationDescriptionTextView = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_top_up_payment_app_wallet_activation_description, "field 'apWalletActivationDescriptionTextView'", AppCompatTextView.class);
        View findRequiredView12 = Utils.findRequiredView(view, R.id.view_top_up_payment_pay_button, "field 'payButton' and method 'onPayButtonClicked'");
        topUpPaymentView.payButton = (SnappButton) Utils.castView(findRequiredView12, R.id.view_top_up_payment_pay_button, "field 'payButton'", SnappButton.class);
        this.view7f0a04c3 = findRequiredView12;
        findRequiredView12.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                topUpPaymentView.onPayButtonClicked();
            }
        });
        View findRequiredView13 = Utils.findRequiredView(view, R.id.view_top_up_payment_ap_activation_button, "field 'apWalletActivationButton' and method 'onApWalletActivationButtonClicked'");
        topUpPaymentView.apWalletActivationButton = (TextView) Utils.castView(findRequiredView13, R.id.view_top_up_payment_ap_activation_button, "field 'apWalletActivationButton'", TextView.class);
        this.view7f0a04b1 = findRequiredView13;
        findRequiredView13.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                topUpPaymentView.onApWalletActivationButtonClicked();
            }
        });
        topUpPaymentView.apWalletActivationLoading = (SnappLoading) Utils.findRequiredViewAsType(view, R.id.view_top_up_payment_ap_activation_loading, "field 'apWalletActivationLoading'", SnappLoading.class);
        topUpPaymentView.apWalletActivationViewLoading = (SnappLoading) Utils.findRequiredViewAsType(view, R.id.view_top_up_payment_app_wallet_activation_loading, "field 'apWalletActivationViewLoading'", SnappLoading.class);
        topUpPaymentView.apWalletActivationLogo = (AppCompatImageView) Utils.findRequiredViewAsType(view, R.id.view_top_up_payment_app_wallet_activation_logo, "field 'apWalletActivationLogo'", AppCompatImageView.class);
        topUpPaymentView.nestedScrollView = (NestedScrollView) Utils.findRequiredViewAsType(view, R.id.view_modal_nested_scroll_view, "field 'nestedScrollView'", NestedScrollView.class);
        View findRequiredView14 = Utils.findRequiredView(view, R.id.view_top_up_payment_app_wallet_error_retry, "method 'onApWalletRetryClicked'");
        this.view7f0a04b9 = findRequiredView14;
        findRequiredView14.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                topUpPaymentView.onApWalletRetryClicked();
            }
        });
        View findRequiredView15 = Utils.findRequiredView(view, R.id.view_top_up_payment_qr_code_text_view, "method 'onQrCodeScannerClicked'");
        this.view7f0a04c4 = findRequiredView15;
        findRequiredView15.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                topUpPaymentView.onQrCodeScannerClicked();
            }
        });
    }

    public void unbind() {
        TopUpPaymentView topUpPaymentView = this.target;
        if (topUpPaymentView != null) {
            this.target = null;
            topUpPaymentView.closeButton = null;
            topUpPaymentView.currentCreditTextView = null;
            topUpPaymentView.creditCurrencyTextView = null;
            topUpPaymentView.tabLayoutScrollView = null;
            topUpPaymentView.apWalletTabLayout = null;
            topUpPaymentView.bankCardTabLayout = null;
            topUpPaymentView.ussdTabLayout = null;
            topUpPaymentView.snappCardTabLayout = null;
            topUpPaymentView.apWalletTabUnderlineView = null;
            topUpPaymentView.bankCardTabUnderlineView = null;
            topUpPaymentView.ussdTabUnderlineView = null;
            topUpPaymentView.snappCardTabUnderlineView = null;
            topUpPaymentView.apWalletTitleTextView = null;
            topUpPaymentView.bankCardTitleTextView = null;
            topUpPaymentView.ussdTitleTextView = null;
            topUpPaymentView.snappCardTitleTextView = null;
            topUpPaymentView.ApLogoImageView = null;
            topUpPaymentView.bankCardLayout = null;
            topUpPaymentView.snappLayout = null;
            topUpPaymentView.apWalletActivationLayout = null;
            topUpPaymentView.apWalletActivationRequestCoordinator = null;
            topUpPaymentView.apWalletErrorLayout = null;
            topUpPaymentView.currentCreditLayout = null;
            topUpPaymentView.setAmountTo500000RialButton = null;
            topUpPaymentView.setAmountTo200000RialButton = null;
            topUpPaymentView.setAmountTo100000RialButton = null;
            topUpPaymentView.increaseByFixedAmountButton = null;
            topUpPaymentView.decreaseByFixedAmountButton = null;
            topUpPaymentView.amountToChargeEditText = null;
            topUpPaymentView.snappClearableEditText = null;
            topUpPaymentView.apWalletActivationDescriptionTextView = null;
            topUpPaymentView.payButton = null;
            topUpPaymentView.apWalletActivationButton = null;
            topUpPaymentView.apWalletActivationLoading = null;
            topUpPaymentView.apWalletActivationViewLoading = null;
            topUpPaymentView.apWalletActivationLogo = null;
            topUpPaymentView.nestedScrollView = null;
            this.view7f0a03a8.setOnClickListener(null);
            this.view7f0a03a8 = null;
            this.view7f0a04cc.setOnClickListener(null);
            this.view7f0a04cc = null;
            this.view7f0a04cf.setOnClickListener(null);
            this.view7f0a04cf = null;
            this.view7f0a04d6.setOnClickListener(null);
            this.view7f0a04d6 = null;
            this.view7f0a04d3.setOnClickListener(null);
            this.view7f0a04d3 = null;
            this.view7f0a04c8.setOnClickListener(null);
            this.view7f0a04c8 = null;
            this.view7f0a04c7.setOnClickListener(null);
            this.view7f0a04c7 = null;
            this.view7f0a04c6.setOnClickListener(null);
            this.view7f0a04c6 = null;
            this.view7f0a04c2.setOnClickListener(null);
            this.view7f0a04c2 = null;
            this.view7f0a04c1.setOnClickListener(null);
            this.view7f0a04c1 = null;
            ((TextView) this.view7f0a04b0).removeTextChangedListener(this.view7f0a04b0TextWatcher);
            this.view7f0a04b0TextWatcher = null;
            this.view7f0a04b0 = null;
            this.view7f0a04c3.setOnClickListener(null);
            this.view7f0a04c3 = null;
            this.view7f0a04b1.setOnClickListener(null);
            this.view7f0a04b1 = null;
            this.view7f0a04b9.setOnClickListener(null);
            this.view7f0a04b9 = null;
            this.view7f0a04c4.setOnClickListener(null);
            this.view7f0a04c4 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
