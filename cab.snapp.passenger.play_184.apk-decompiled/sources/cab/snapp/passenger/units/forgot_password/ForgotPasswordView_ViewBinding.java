package cab.snapp.passenger.units.forgot_password;

import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappButton;
import cab.snapp.snappuikit.SnappEditText;
import cab.snapp.snappuikit.SnappLoading;

public class ForgotPasswordView_ViewBinding implements Unbinder {
    private ForgotPasswordView target;
    private View view7f0a034b;

    public ForgotPasswordView_ViewBinding(ForgotPasswordView forgotPasswordView) {
        this(forgotPasswordView, forgotPasswordView);
    }

    public ForgotPasswordView_ViewBinding(final ForgotPasswordView forgotPasswordView, View view) {
        this.target = forgotPasswordView;
        View findRequiredView = Utils.findRequiredView(view, R.id.view_forgot_password_send_button, "field 'sendButton' and method 'onSendButtonClicked'");
        forgotPasswordView.sendButton = (SnappButton) Utils.castView(findRequiredView, R.id.view_forgot_password_send_button, "field 'sendButton'", SnappButton.class);
        this.view7f0a034b = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                forgotPasswordView.onSendButtonClicked();
            }
        });
        forgotPasswordView.loading = (SnappLoading) Utils.findRequiredViewAsType(view, R.id.view_forgot_password_loading, "field 'loading'", SnappLoading.class);
        forgotPasswordView.emailEditText = (SnappEditText) Utils.findRequiredViewAsType(view, R.id.view_forgot_password_email_edit_text, "field 'emailEditText'", SnappEditText.class);
    }

    public void unbind() {
        ForgotPasswordView forgotPasswordView = this.target;
        if (forgotPasswordView != null) {
            this.target = null;
            forgotPasswordView.sendButton = null;
            forgotPasswordView.loading = null;
            forgotPasswordView.emailEditText = null;
            this.view7f0a034b.setOnClickListener(null);
            this.view7f0a034b = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
