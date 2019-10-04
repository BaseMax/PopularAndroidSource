package cab.snapp.passenger.units.forgot_password;

import android.app.Activity;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.widget.TextView;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.c.i;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.c.a;

public final class c extends BasePresenter<ForgotPasswordView, a> {

    /* renamed from: a  reason: collision with root package name */
    protected String f815a = "";

    /* renamed from: b  reason: collision with root package name */
    private TextView.OnEditorActionListener f816b;
    private TextWatcher c;

    public final void onSendButtonClicked() {
        if (i.isEmailValid(this.f815a)) {
            if (getInteractor() != null) {
                ((a) getInteractor()).requestForgotPassword(this.f815a);
            }
        } else if (getView() != null) {
            ((ForgotPasswordView) getView()).showEmailError(R.string.email_is_wrong);
        }
    }

    public final void onBackPressed() {
        if (getInteractor() != null) {
            ((a) getInteractor()).finish();
        }
    }

    public final void onBeforeRequest() {
        if (getView() != null) {
            ((ForgotPasswordView) getView()).showLoading();
            ((ForgotPasswordView) getView()).hideKeyboard();
        }
    }

    public final void onRequestError() {
        if (getView() != null) {
            ((ForgotPasswordView) getView()).showError(R.string.error);
            ((ForgotPasswordView) getView()).hideLoading();
        }
    }

    public final void onResponse() {
        if (getView() != null) {
            ((ForgotPasswordView) getView()).showSuccessMessage(String.format(((ForgotPasswordView) getView()).getContext().getString(R.string.forgot_password_success_message), new Object[]{this.f815a}));
            ((ForgotPasswordView) getView()).hideLoading();
        }
    }

    public final void onInitialize() {
        this.f816b = new TextView.OnEditorActionListener() {
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return c.this.a(textView, i, keyEvent);
            }
        };
        this.c = new TextWatcher() {
            public final void afterTextChanged(Editable editable) {
            }

            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (charSequence != null) {
                    c.this.f815a = charSequence.toString();
                    if (c.this.getView() != null) {
                        ((ForgotPasswordView) c.this.getView()).hideEmailError();
                    }
                }
            }
        };
        if (getView() != null) {
            ((ForgotPasswordView) getView()).setEditTextListeners(this.f816b, this.c);
            setStatusBarColor();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ boolean a(TextView textView, int i, KeyEvent keyEvent) {
        onSendButtonClicked();
        return true;
    }

    public final void setStatusBarColor() {
        if (getView() != null && (((ForgotPasswordView) getView()).getContext() instanceof Activity)) {
            a.setStatusBarColorRes((Activity) ((ForgotPasswordView) getView()).getContext(), R.color.colorPrimary);
        }
    }
}
