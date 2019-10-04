package cab.snapp.passenger.units.skippable_mobile_verification;

import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatTextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappEditText;
import com.alimuzaffar.lib.pin.PinEntryEditText;

public class SkippablePhoneVerificationView_ViewBinding implements Unbinder {
    private SkippablePhoneVerificationView target;
    private View view7f0a048c;
    private View view7f0a048d;
    private View view7f0a0491;
    private View view7f0a0494;
    private View view7f0a0495;
    private View view7f0a0496;

    public SkippablePhoneVerificationView_ViewBinding(SkippablePhoneVerificationView skippablePhoneVerificationView) {
        this(skippablePhoneVerificationView, skippablePhoneVerificationView);
    }

    public SkippablePhoneVerificationView_ViewBinding(final SkippablePhoneVerificationView skippablePhoneVerificationView, View view) {
        this.target = skippablePhoneVerificationView;
        View findRequiredView = Utils.findRequiredView(view, R.id.view_skippable_toolbar_back_ib, "field 'toolbarBackButton' and method 'onToolbarBackPressed'");
        skippablePhoneVerificationView.toolbarBackButton = (ImageButton) Utils.castView(findRequiredView, R.id.view_skippable_toolbar_back_ib, "field 'toolbarBackButton'", ImageButton.class);
        this.view7f0a0495 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                skippablePhoneVerificationView.onToolbarBackPressed();
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, R.id.view_skippable_toolbar_tv, "field 'toolbarTextView' and method 'onToolbarTextBackPressed'");
        skippablePhoneVerificationView.toolbarTextView = (AppCompatTextView) Utils.castView(findRequiredView2, R.id.view_skippable_toolbar_tv, "field 'toolbarTextView'", AppCompatTextView.class);
        this.view7f0a0496 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                skippablePhoneVerificationView.onToolbarTextBackPressed();
            }
        });
        skippablePhoneVerificationView.bigIcon = (ImageView) Utils.findRequiredViewAsType(view, R.id.view_skippable_big_icon, "field 'bigIcon'", ImageView.class);
        skippablePhoneVerificationView.phoneEditText = (SnappEditText) Utils.findRequiredViewAsType(view, R.id.view_skippable_phone_number_et, "field 'phoneEditText'", SnappEditText.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.view_skippable_phone_number_continue, "field 'nextButton' and method 'onNextClicked'");
        skippablePhoneVerificationView.nextButton = (Button) Utils.castView(findRequiredView3, R.id.view_skippable_phone_number_continue, "field 'nextButton'", Button.class);
        this.view7f0a048d = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                skippablePhoneVerificationView.onNextClicked();
            }
        });
        skippablePhoneVerificationView.pinInputView = (PinEntryEditText) Utils.findRequiredViewAsType(view, R.id.view_skippable_phone_number_pin_input_view, "field 'pinInputView'", PinEntryEditText.class);
        skippablePhoneVerificationView.codeErrorTextView = (TextView) Utils.findRequiredViewAsType(view, R.id.view_skippable_code_error_tv, "field 'codeErrorTextView'", TextView.class);
        skippablePhoneVerificationView.phoneNumberTextView = (TextView) Utils.findRequiredViewAsType(view, R.id.view_skippable_phone_number_tv, "field 'phoneNumberTextView'", TextView.class);
        View findRequiredView4 = Utils.findRequiredView(view, R.id.view_skippable_code_sms_resend_btn, "field 'smsResendButton' and method 'onSmsResendClicked'");
        skippablePhoneVerificationView.smsResendButton = (AppCompatButton) Utils.castView(findRequiredView4, R.id.view_skippable_code_sms_resend_btn, "field 'smsResendButton'", AppCompatButton.class);
        this.view7f0a048c = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                skippablePhoneVerificationView.onSmsResendClicked();
            }
        });
        View findRequiredView5 = Utils.findRequiredView(view, R.id.view_skippable_retry_code_tv, "field 'retryCodeView' and method 'onRetryCodeClicked'");
        skippablePhoneVerificationView.retryCodeView = findRequiredView5;
        this.view7f0a0494 = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                skippablePhoneVerificationView.onRetryCodeClicked();
            }
        });
        skippablePhoneVerificationView.phoneEntryLayout = Utils.findRequiredView(view, R.id.view_skippable_phone_number_entry_layout, "field 'phoneEntryLayout'");
        skippablePhoneVerificationView.verificationLayout = Utils.findRequiredView(view, R.id.view_skippable_phone_number_verification_layout, "field 'verificationLayout'");
        skippablePhoneVerificationView.codeLoading = Utils.findRequiredView(view, R.id.view_skippable_code_loading_2, "field 'codeLoading'");
        skippablePhoneVerificationView.phoneLoading = Utils.findRequiredView(view, R.id.view_skippable_code_loading_1, "field 'phoneLoading'");
        View findRequiredView6 = Utils.findRequiredView(view, R.id.view_skippable_phone_number_skip_layout, "method 'onSkipClicked'");
        this.view7f0a0491 = findRequiredView6;
        findRequiredView6.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                skippablePhoneVerificationView.onSkipClicked();
            }
        });
    }

    public void unbind() {
        SkippablePhoneVerificationView skippablePhoneVerificationView = this.target;
        if (skippablePhoneVerificationView != null) {
            this.target = null;
            skippablePhoneVerificationView.toolbarBackButton = null;
            skippablePhoneVerificationView.toolbarTextView = null;
            skippablePhoneVerificationView.bigIcon = null;
            skippablePhoneVerificationView.phoneEditText = null;
            skippablePhoneVerificationView.nextButton = null;
            skippablePhoneVerificationView.pinInputView = null;
            skippablePhoneVerificationView.codeErrorTextView = null;
            skippablePhoneVerificationView.phoneNumberTextView = null;
            skippablePhoneVerificationView.smsResendButton = null;
            skippablePhoneVerificationView.retryCodeView = null;
            skippablePhoneVerificationView.phoneEntryLayout = null;
            skippablePhoneVerificationView.verificationLayout = null;
            skippablePhoneVerificationView.codeLoading = null;
            skippablePhoneVerificationView.phoneLoading = null;
            this.view7f0a0495.setOnClickListener(null);
            this.view7f0a0495 = null;
            this.view7f0a0496.setOnClickListener(null);
            this.view7f0a0496 = null;
            this.view7f0a048d.setOnClickListener(null);
            this.view7f0a048d = null;
            this.view7f0a048c.setOnClickListener(null);
            this.view7f0a048c = null;
            this.view7f0a0494.setOnClickListener(null);
            this.view7f0a0494 = null;
            this.view7f0a0491.setOnClickListener(null);
            this.view7f0a0491 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
