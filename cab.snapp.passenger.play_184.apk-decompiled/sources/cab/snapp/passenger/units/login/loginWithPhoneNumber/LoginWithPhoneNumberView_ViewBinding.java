package cab.snapp.passenger.units.login.loginWithPhoneNumber;

import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappButton;
import cab.snapp.snappuikit.SnappEditText;

public class LoginWithPhoneNumberView_ViewBinding implements Unbinder {
    private LoginWithPhoneNumberView target;
    private View view7f0a0357;
    private View view7f0a0362;

    public LoginWithPhoneNumberView_ViewBinding(LoginWithPhoneNumberView loginWithPhoneNumberView) {
        this(loginWithPhoneNumberView, loginWithPhoneNumberView);
    }

    public LoginWithPhoneNumberView_ViewBinding(final LoginWithPhoneNumberView loginWithPhoneNumberView, View view) {
        this.target = loginWithPhoneNumberView;
        View findRequiredView = Utils.findRequiredView(view, R.id.view_login_with_phone_back_layout, "field 'backLayout' and method 'onBackClicked'");
        loginWithPhoneNumberView.backLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.view_login_with_phone_back_layout, "field 'backLayout'", LinearLayout.class);
        this.view7f0a0362 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                loginWithPhoneNumberView.onBackClicked();
            }
        });
        loginWithPhoneNumberView.relativeAuthEnterPhoneTv = (AppCompatTextView) Utils.findRequiredViewAsType(view, R.id.relative_auth_enter_phone_tv, "field 'relativeAuthEnterPhoneTv'", AppCompatTextView.class);
        loginWithPhoneNumberView.viewLogInPhoneEditText = (SnappEditText) Utils.findRequiredViewAsType(view, R.id.view_log_in_phone_edit_text, "field 'viewLogInPhoneEditText'", SnappEditText.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.view_log_in_send_code_button, "field 'viewLogInSendCodeButton' and method 'sendPhoneNumber'");
        loginWithPhoneNumberView.viewLogInSendCodeButton = (SnappButton) Utils.castView(findRequiredView2, R.id.view_log_in_send_code_button, "field 'viewLogInSendCodeButton'", SnappButton.class);
        this.view7f0a0357 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                loginWithPhoneNumberView.sendPhoneNumber();
            }
        });
    }

    public void unbind() {
        LoginWithPhoneNumberView loginWithPhoneNumberView = this.target;
        if (loginWithPhoneNumberView != null) {
            this.target = null;
            loginWithPhoneNumberView.backLayout = null;
            loginWithPhoneNumberView.relativeAuthEnterPhoneTv = null;
            loginWithPhoneNumberView.viewLogInPhoneEditText = null;
            loginWithPhoneNumberView.viewLogInSendCodeButton = null;
            this.view7f0a0362.setOnClickListener(null);
            this.view7f0a0362 = null;
            this.view7f0a0357.setOnClickListener(null);
            this.view7f0a0357 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
