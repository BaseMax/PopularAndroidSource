package cab.snapp.passenger.units.signup;

import android.view.View;
import android.view.ViewGroup;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappButton;
import cab.snapp.snappuikit.SnappCheckBox;
import cab.snapp.snappuikit.SnappEditText;
import cab.snapp.snappuikit.SnappLoading;

public class SignUpView_ViewBinding implements Unbinder {
    private SignUpView target;
    private View view7f0a047f;
    private View view7f0a0485;

    public SignUpView_ViewBinding(SignUpView signUpView) {
        this(signUpView, signUpView);
    }

    public SignUpView_ViewBinding(final SignUpView signUpView, View view) {
        this.target = signUpView;
        signUpView.fullNameEditText = (SnappEditText) Utils.findRequiredViewAsType(view, R.id.view_sign_up_fullname_edit_text, "field 'fullNameEditText'", SnappEditText.class);
        signUpView.emailEditText = (SnappEditText) Utils.findRequiredViewAsType(view, R.id.view_sign_up_email_edit_text, "field 'emailEditText'", SnappEditText.class);
        signUpView.passwordEditText = (SnappEditText) Utils.findRequiredViewAsType(view, R.id.view_sign_up_password_edit_text, "field 'passwordEditText'", SnappEditText.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.view_sign_up_button, "field 'signUpButton' and method 'onSignUpClick'");
        signUpView.signUpButton = (SnappButton) Utils.castView(findRequiredView, R.id.view_sign_up_button, "field 'signUpButton'", SnappButton.class);
        this.view7f0a047f = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                signUpView.onSignUpClick();
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, R.id.view_sign_up_with_google_button, "field 'signUpWithGoogleButton' and method 'onSignUpWithGoogleClick'");
        signUpView.signUpWithGoogleButton = (SnappButton) Utils.castView(findRequiredView2, R.id.view_sign_up_with_google_button, "field 'signUpWithGoogleButton'", SnappButton.class);
        this.view7f0a0485 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                signUpView.onSignUpWithGoogleClick();
            }
        });
        signUpView.loadingWithGoogle = (SnappLoading) Utils.findRequiredViewAsType(view, R.id.view_sign_up_with_google_loading, "field 'loadingWithGoogle'", SnappLoading.class);
        signUpView.loading = (SnappLoading) Utils.findRequiredViewAsType(view, R.id.view_sign_up_loading, "field 'loading'", SnappLoading.class);
        signUpView.newsLetterCheckBox = (SnappCheckBox) Utils.findRequiredViewAsType(view, R.id.view_sign_up_news_letter_checkbox, "field 'newsLetterCheckBox'", SnappCheckBox.class);
        signUpView.signUpWithGoogleLayout = (ViewGroup) Utils.findRequiredViewAsType(view, R.id.view_sign_up_with_google_layout, "field 'signUpWithGoogleLayout'", ViewGroup.class);
        signUpView.panelSeparatorLayout = (ViewGroup) Utils.findRequiredViewAsType(view, R.id.panel_separator, "field 'panelSeparatorLayout'", ViewGroup.class);
    }

    public void unbind() {
        SignUpView signUpView = this.target;
        if (signUpView != null) {
            this.target = null;
            signUpView.fullNameEditText = null;
            signUpView.emailEditText = null;
            signUpView.passwordEditText = null;
            signUpView.signUpButton = null;
            signUpView.signUpWithGoogleButton = null;
            signUpView.loadingWithGoogle = null;
            signUpView.loading = null;
            signUpView.newsLetterCheckBox = null;
            signUpView.signUpWithGoogleLayout = null;
            signUpView.panelSeparatorLayout = null;
            this.view7f0a047f.setOnClickListener(null);
            this.view7f0a047f = null;
            this.view7f0a0485.setOnClickListener(null);
            this.view7f0a0485 = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
