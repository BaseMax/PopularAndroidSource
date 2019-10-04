package cab.snapp.passenger.units.login.loginWithOTP;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappButton;
import cab.snapp.snappuikit.SnappEditText;

public class LoginWithOTPView_ViewBinding implements Unbinder {
    private LoginWithOTPView target;
    private View view7f0a035c;
    private View view7f0a035d;
    private View view7f0a035e;
    private View view7f0a0361;

    public LoginWithOTPView_ViewBinding(LoginWithOTPView loginWithOTPView) {
        this(loginWithOTPView, loginWithOTPView);
    }

    public LoginWithOTPView_ViewBinding(final LoginWithOTPView loginWithOTPView, View view) {
        this.target = loginWithOTPView;
        View findRequiredView = Utils.findRequiredView(view, R.id.view_login_with_otp_back_layout, "field 'backLayout' and method 'onBackClicked'");
        loginWithOTPView.backLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.view_login_with_otp_back_layout, "field 'backLayout'", LinearLayout.class);
        this.view7f0a0361 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                loginWithOTPView.onBackClicked();
            }
        });
        loginWithOTPView.viewLogInWithOtpDescTextview = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_log_in_with_otp_desc_textview, "field 'viewLogInWithOtpDescTextview'", AppCompatTextView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.view_log_in_with_otp_enter_phone_button, "field 'viewLogInWithOtpEnterPhoneButton' and method 'fixPhoneNumberClicked'");
        loginWithOTPView.viewLogInWithOtpEnterPhoneButton = (AppCompatTextView) Utils.castView(findRequiredView2, R.id.view_log_in_with_otp_enter_phone_button, "field 'viewLogInWithOtpEnterPhoneButton'", AppCompatTextView.class);
        this.view7f0a035c = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                loginWithOTPView.fixPhoneNumberClicked();
            }
        });
        loginWithOTPView.viewLogInWithOtpEditText = (SnappEditText) Utils.findRequiredViewAsType(view, R.id.view_log_in_with_otp_edit_text, "field 'viewLogInWithOtpEditText'", SnappEditText.class);
        loginWithOTPView.viewLogInWithOtpTimerTextview = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.view_log_in_with_otp_timer_textview, "field 'viewLogInWithOtpTimerTextview'", AppCompatTextView.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.view_log_in_with_otp_resend_code_button, "field 'viewLogInWithOtpResendCodeButton' and method 'resendSmsButtonClicked'");
        loginWithOTPView.viewLogInWithOtpResendCodeButton = (AppCompatTextView) Utils.castView(findRequiredView3, R.id.view_log_in_with_otp_resend_code_button, "field 'viewLogInWithOtpResendCodeButton'", AppCompatTextView.class);
        this.view7f0a035e = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                loginWithOTPView.resendSmsButtonClicked();
            }
        });
        View findRequiredView4 = Utils.findRequiredView(view, R.id.view_log_in_with_otp_login_button, "field 'viewLogInWithOtpLoginButton' and method 'loginWithOtpClick'");
        loginWithOTPView.viewLogInWithOtpLoginButton = (SnappButton) Utils.castView(findRequiredView4, R.id.view_log_in_with_otp_login_button, "field 'viewLogInWithOtpLoginButton'", SnappButton.class);
        this.view7f0a035d = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                loginWithOTPView.loginWithOtpClick();
            }
        });
    }

    public void unbind() {
        LoginWithOTPView loginWithOTPView = this.target;
        if (loginWithOTPView != null) {
            this.target = null;
            loginWithOTPView.backLayout = null;
            loginWithOTPView.viewLogInWithOtpDescTextview = null;
            loginWithOTPView.viewLogInWithOtpEnterPhoneButton = null;
            loginWithOTPView.viewLogInWithOtpEditText = null;
            loginWithOTPView.viewLogInWithOtpTimerTextview = null;
            loginWithOTPView.viewLogInWithOtpResendCodeButton = null;
            loginWithOTPView.viewLogInWithOtpLoginButton = null;
            this.view7f0a0361.setOnClickListener(null);
            this.view7f0a0361 = null;
            this.view7f0a035c.setOnClickListener(null);
            this.view7f0a035c = null;
            this.view7f0a035e.setOnClickListener(null);
            this.view7f0a035e = null;
            this.view7f0a035d.setOnClickListener(null);
            this.view7f0a035d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
