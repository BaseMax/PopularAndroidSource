package cab.snapp.passenger.units.login.loginWithEmail;

import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappEditText;

public class LoginWithEmailView_ViewBinding implements Unbinder {
    private LoginWithEmailView target;
    private View view7f0a0352;
    private View view7f0a0354;
    private View view7f0a0358;
    private View view7f0a0359;
    private View view7f0a0360;

    public LoginWithEmailView_ViewBinding(LoginWithEmailView loginWithEmailView) {
        this(loginWithEmailView, loginWithEmailView);
    }

    public LoginWithEmailView_ViewBinding(final LoginWithEmailView loginWithEmailView, View view) {
        this.target = loginWithEmailView;
        loginWithEmailView.viewLogInEmailEditText = (SnappEditText) Utils.findRequiredViewAsType(view, R.id.view_log_in_email_edit_text, "field 'viewLogInEmailEditText'", SnappEditText.class);
        loginWithEmailView.viewLogInPasswordEditText = (SnappEditText) Utils.findRequiredViewAsType(view, R.id.view_log_in_password_edit_text, "field 'viewLogInPasswordEditText'", SnappEditText.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.view_log_in_with_google_button, "method 'loginWithGoogle'");
        this.view7f0a0359 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                loginWithEmailView.loginWithGoogle();
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, R.id.view_log_in_with_phone_number_button, "method 'loginWithPhone'");
        this.view7f0a0360 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                loginWithEmailView.loginWithPhone();
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, R.id.view_log_in_button, "method 'login'");
        this.view7f0a0352 = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                loginWithEmailView.login();
            }
        });
        View findRequiredView4 = Utils.findRequiredView(view, R.id.view_log_in_sign_up_textview, "method 'signUp'");
        this.view7f0a0358 = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                loginWithEmailView.signUp();
            }
        });
        View findRequiredView5 = Utils.findRequiredView(view, R.id.view_log_in_forgot_password_textview, "method 'forgetPassword'");
        this.view7f0a0354 = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                loginWithEmailView.forgetPassword();
            }
        });
    }

    public void unbind() {
        LoginWithEmailView loginWithEmailView = this.target;
        if (loginWithEmailView != null) {
            this.target = null;
            loginWithEmailView.viewLogInEmailEditText = null;
            loginWithEmailView.viewLogInPasswordEditText = null;
            this.view7f0a0359.setOnClickListener(null);
            this.view7f0a0359 = null;
            this.view7f0a0360.setOnClickListener(null);
            this.view7f0a0360 = null;
            this.view7f0a0352.setOnClickListener(null);
            this.view7f0a0352 = null;
            this.view7f0a0358.setOnClickListener(null);
            this.view7f0a0358 = null;
            this.view7f0a0354.setOnClickListener(null);
            this.view7f0a0354 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
