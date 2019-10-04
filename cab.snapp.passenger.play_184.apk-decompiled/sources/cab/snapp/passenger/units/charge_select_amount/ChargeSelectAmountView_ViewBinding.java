package cab.snapp.passenger.units.charge_select_amount;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.LoadingButton;
import cab.snapp.snappuikit.MoneyAmountEditText;
import cab.snapp.snappuikit.SnappLoading;

public class ChargeSelectAmountView_ViewBinding implements Unbinder {
    private ChargeSelectAmountView target;
    private View view7f0a00dc;
    private View view7f0a01c3;
    private View view7f0a0280;
    private View view7f0a032f;
    private View view7f0a0330;

    public ChargeSelectAmountView_ViewBinding(ChargeSelectAmountView chargeSelectAmountView) {
        this(chargeSelectAmountView, chargeSelectAmountView);
    }

    public ChargeSelectAmountView_ViewBinding(final ChargeSelectAmountView chargeSelectAmountView, View view) {
        this.target = chargeSelectAmountView;
        chargeSelectAmountView.tvChargePackageType = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.tv_charge_type, "field 'tvChargePackageType'", AppCompatTextView.class);
        chargeSelectAmountView.recyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recyclerView_amounts, "field 'recyclerView'", RecyclerView.class);
        chargeSelectAmountView.mainLoading = (SnappLoading) Utils.findRequiredViewAsType(view, R.id.charge_view_main_loading, "field 'mainLoading'", SnappLoading.class);
        chargeSelectAmountView.selectChargeViewContainer = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.ll_select_amount_container, "field 'selectChargeViewContainer'", LinearLayout.class);
        chargeSelectAmountView.etAmount = (MoneyAmountEditText) Utils.findRequiredViewAsType(view, R.id.view_charge_amount_to_charge_app_compat_edit_text, "field 'etAmount'", MoneyAmountEditText.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.view_charge_decrease_fixed_amount_button_layout, "field 'btnDecrease' and method 'onDecreaseClicked'");
        chargeSelectAmountView.btnDecrease = (AppCompatImageButton) Utils.castView(findRequiredView, R.id.view_charge_decrease_fixed_amount_button_layout, "field 'btnDecrease'", AppCompatImageButton.class);
        this.view7f0a032f = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                chargeSelectAmountView.onDecreaseClicked();
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, R.id.view_charge_increase_fixed_amount_button, "field 'btnIncrease' and method 'onIncreaseClicked'");
        chargeSelectAmountView.btnIncrease = (AppCompatImageButton) Utils.castView(findRequiredView2, R.id.view_charge_increase_fixed_amount_button, "field 'btnIncrease'", AppCompatImageButton.class);
        this.view7f0a0330 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                chargeSelectAmountView.onIncreaseClicked();
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, R.id.charge_view_button, "field 'btnSubmit' and method 'onSubmitClicked'");
        chargeSelectAmountView.btnSubmit = (LoadingButton) Utils.castView(findRequiredView3, R.id.charge_view_button, "field 'btnSubmit'", LoadingButton.class);
        this.view7f0a00dc = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                chargeSelectAmountView.onSubmitClicked();
            }
        });
        chargeSelectAmountView.customAmountLayout = Utils.findRequiredView(view, R.id.view_charge_amount_input_layout, "field 'customAmountLayout'");
        View findRequiredView4 = Utils.findRequiredView(view, R.id.rl_charge_type_container, "field 'selectPackageTypeContainer' and method 'onChargeTypeClicked'");
        chargeSelectAmountView.selectPackageTypeContainer = findRequiredView4;
        this.view7f0a0280 = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                chargeSelectAmountView.onChargeTypeClicked();
            }
        });
        chargeSelectAmountView.ivCircle = (AppCompatImageView) Utils.findRequiredViewAsType(view, R.id.iv_circle, "field 'ivCircle'", AppCompatImageView.class);
        chargeSelectAmountView.ivCalendar = (AppCompatImageView) Utils.findRequiredViewAsType(view, R.id.iv_calender, "field 'ivCalendar'", AppCompatImageView.class);
        chargeSelectAmountView.errorRl = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.view_snapp_charge_error_rl, "field 'errorRl'", RelativeLayout.class);
        chargeSelectAmountView.errorMessageTextTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_snapp_charge_error_message_tv, "field 'errorMessageTextTv'", AppCompatTextView.class);
        View findRequiredView5 = Utils.findRequiredView(view, R.id.layout_snapp_charge_back_arrow_iv_layout, "method 'onBackArrowLayoutClicked'");
        this.view7f0a01c3 = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                chargeSelectAmountView.onBackArrowLayoutClicked();
            }
        });
    }

    public void unbind() {
        ChargeSelectAmountView chargeSelectAmountView = this.target;
        if (chargeSelectAmountView != null) {
            this.target = null;
            chargeSelectAmountView.tvChargePackageType = null;
            chargeSelectAmountView.recyclerView = null;
            chargeSelectAmountView.mainLoading = null;
            chargeSelectAmountView.selectChargeViewContainer = null;
            chargeSelectAmountView.etAmount = null;
            chargeSelectAmountView.btnDecrease = null;
            chargeSelectAmountView.btnIncrease = null;
            chargeSelectAmountView.btnSubmit = null;
            chargeSelectAmountView.customAmountLayout = null;
            chargeSelectAmountView.selectPackageTypeContainer = null;
            chargeSelectAmountView.ivCircle = null;
            chargeSelectAmountView.ivCalendar = null;
            chargeSelectAmountView.errorRl = null;
            chargeSelectAmountView.errorMessageTextTv = null;
            this.view7f0a032f.setOnClickListener(null);
            this.view7f0a032f = null;
            this.view7f0a0330.setOnClickListener(null);
            this.view7f0a0330 = null;
            this.view7f0a00dc.setOnClickListener(null);
            this.view7f0a00dc = null;
            this.view7f0a0280.setOnClickListener(null);
            this.view7f0a0280 = null;
            this.view7f0a01c3.setOnClickListener(null);
            this.view7f0a01c3 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
