package cab.snapp.passenger.units.login.loginWithEmail;

import android.app.Activity;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.c.f;
import cab.snapp.c.i;
import cab.snapp.passenger.f.r;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.c.a;

final class c extends BasePresenter<LoginWithEmailView, a> {

    /* renamed from: a  reason: collision with root package name */
    String f843a = "";

    /* renamed from: b  reason: collision with root package name */
    protected TextWatcher f844b = new TextWatcher() {
        public final void afterTextChanged(Editable editable) {
        }

        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            c.this.f843a = charSequence.toString();
        }
    };
    String c = "";
    protected TextWatcher d = new TextWatcher() {
        public final void afterTextChanged(Editable editable) {
        }

        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            c.this.c = charSequence.toString();
            if (i.isEmailValid(charSequence.toString()) && c.this.getView() != null) {
                ((LoginWithEmailView) c.this.getView()).hideErrorOnEmail();
            }
        }
    };
    String e = "";
    protected TextWatcher f = new TextWatcher() {
        public final void afterTextChanged(Editable editable) {
        }

        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            String charSequence2 = charSequence.toString();
            c cVar = c.this;
            cVar.e = charSequence2;
            if (cVar.getView() != null && !charSequence2.isEmpty() && i.isPasswordValid(charSequence2)) {
                ((LoginWithEmailView) c.this.getView()).hideErrorOnPassword();
            }
        }
    };

    c() {
    }

    public final void loginClicked() {
        LoginWithEmailView loginWithEmailView = (LoginWithEmailView) getView();
        if (loginWithEmailView != null) {
            loginWithEmailView.hideKeyboard();
            String emailText = loginWithEmailView.getEmailText();
            String passwordText = loginWithEmailView.getPasswordText();
            boolean z = false;
            boolean z2 = true;
            if (emailText == null || emailText.isEmpty() || TextUtils.isEmpty(emailText)) {
                loginWithEmailView.showErrorOnEmail(R.string.email_cant_be_empty);
            } else {
                if (!i.isEmailValid(emailText)) {
                    loginWithEmailView.showErrorOnEmail(R.string.view_sign_up_email_not_valid);
                }
                if (passwordText != null || passwordText.isEmpty()) {
                    loginWithEmailView.showErrorOnPassword(R.string.password_cant_be_empty);
                } else if (passwordText.length() < 8) {
                    loginWithEmailView.showErrorOnPassword(R.string.view_sign_up_password_not_valid);
                } else if (!i.isPasswordValid(passwordText)) {
                    loginWithEmailView.showErrorOnPassword(R.string.password_is_not_ok);
                } else {
                    z2 = z;
                }
                if (!z2 && getInteractor() != null) {
                    loginWithEmailView.resetInputs();
                    ((a) getInteractor()).a(emailText, passwordText);
                }
            }
            z = true;
            if (passwordText != null) {
            }
            loginWithEmailView.showErrorOnPassword(R.string.password_cant_be_empty);
            loginWithEmailView.resetInputs();
            ((a) getInteractor()).a(emailText, passwordText);
        }
    }

    public final void loginWithGoogleClicked() {
        if (getInteractor() != null) {
            a aVar = (a) getInteractor();
            if (aVar.getPresenter() != null) {
                if (!f.isUserConnectedToNetwork(aVar.getActivity())) {
                    ((c) aVar.getPresenter()).onNoInternetConnection();
                    return;
                }
                ((c) aVar.getPresenter()).onLoginWithGoogleStarted();
                if (aVar.f839a != null) {
                    aVar.f839a.loginOrSignUpWithGoogle();
                }
            }
        }
    }

    public final void loginWithPhoneNumberClicked() {
        if (getInteractor() != null) {
            a aVar = (a) getInteractor();
            if (aVar.getRouter() != null) {
                ((d) aVar.getRouter()).routeToLoginWithPhone();
            }
        }
    }

    public final void signUpClicked() {
        if (getInteractor() != null) {
            a aVar = (a) getInteractor();
            if (aVar.getRouter() != null) {
                ((d) aVar.getRouter()).routeToSignUp();
            }
        }
    }

    public final void forgetPasswordClicked() {
        a aVar = (a) getInteractor();
        if (!(aVar == null || aVar.getRouter() == null)) {
            ((d) aVar.getRouter()).routeToForgotPassword();
        }
    }

    public final void onResendVerificationEmailClicked() {
        if (getView() != null) {
            ((LoginWithEmailView) getView()).dismissEmailNotVerifiedDialogIfPossible();
            ((LoginWithEmailView) getView()).showEmailVerificationDialog(this.f844b, new View.OnClickListener() {
                public final void onClick(View view) {
                    c.this.a(view);
                }
            });
        }
    }

    public final void onEmailNotVerified() {
        if (getView() != null) {
            ((LoginWithEmailView) getView()).showEmailNotVerifiedDialog();
        }
    }

    public final void onRegisterEmailSuccess() {
        if (((LoginWithEmailView) this.view).getContext() != null) {
            ((LoginWithEmailView) this.view).showMessageDialog(String.format(((LoginWithEmailView) this.view).getContext().getString(R.string.send_verification_link), new Object[]{((LoginWithEmailView) this.view).getContext().getString(R.string.your_self)}));
        }
    }

    public final void onRegisterEmailError(String str) {
        if (((LoginWithEmailView) this.view).getContext() != null) {
            if (str == null) {
                ((LoginWithEmailView) this.view).showMessage(((LoginWithEmailView) this.view).getContext().getString(R.string.error));
            } else {
                ((LoginWithEmailView) this.view).showMessage(str);
            }
        }
    }

    public final void onNoInternetConnection() {
        if (getView() != null && ((LoginWithEmailView) getView()).getContext() != null) {
            new r(((LoginWithEmailView) getView()).getContext()).showNoInternetDialog();
        }
    }

    public final void onLoading() {
        if (getView() != null) {
            ((LoginWithEmailView) getView()).showLoadingDialog();
        }
    }

    public final void onFinishLoading() {
        if (getView() != null) {
            ((LoginWithEmailView) getView()).hideLoadingDialog();
        }
    }

    public final void showLoginErrorToUser(int i) {
        if (getView() != null) {
            ((LoginWithEmailView) getView()).showErrorToUser(i);
        }
    }

    public final void showLoginErrorToUser(String str) {
        LoginWithEmailView loginWithEmailView = (LoginWithEmailView) getView();
        if (loginWithEmailView != null) {
            loginWithEmailView.showErrorToUser(str);
        }
    }

    /* access modifiers changed from: protected */
    public final void a(View view) {
        if (this.view != null && ((LoginWithEmailView) this.view).getContext() != null && getInteractor() != null) {
            String str = this.f843a;
            if (str == null || str.isEmpty()) {
                ((LoginWithEmailView) this.view).showMessage(((LoginWithEmailView) this.view).getContext().getString(R.string.email_cant_be_empty));
            } else if (!i.isEmailValid(this.f843a)) {
                ((LoginWithEmailView) this.view).showMessage(((LoginWithEmailView) this.view).getContext().getString(R.string.email_is_wrong));
            } else {
                ((a) getInteractor()).sendRegisterEmail(this.f843a);
            }
            if (view != null) {
                cab.snapp.c.c.tryHideKeyboard(((LoginWithEmailView) this.view).getContext(), view);
            }
            ((LoginWithEmailView) this.view).dismissEmailVerificationDialogIfPossible();
        }
    }

    public final void onInitialize() {
        if (getView() != null) {
            ((LoginWithEmailView) getView()).setEmailAndPasswordTextWatchers(this.d, this.f);
            ((LoginWithEmailView) getView()).initField(this.c, this.e);
            setStatusBarColor();
        }
    }

    public final void onLoginWithGoogleStarted() {
        if (getView() != null) {
            ((LoginWithEmailView) getView()).showLoadingDialog();
        }
    }

    public final void setStatusBarColor() {
        if (getView() != null && (((LoginWithEmailView) getView()).getContext() instanceof Activity)) {
            a.setStatusBarColorRes((Activity) ((LoginWithEmailView) getView()).getContext(), R.color.white);
        }
    }
}
