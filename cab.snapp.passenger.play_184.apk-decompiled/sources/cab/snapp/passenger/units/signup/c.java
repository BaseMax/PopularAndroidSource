package cab.snapp.passenger.units.signup;

import android.app.Activity;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.c.i;
import cab.snapp.passenger.f.r;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.c.a;

public final class c extends BasePresenter<SignUpView, a> {

    /* renamed from: a  reason: collision with root package name */
    protected boolean f1262a = true;

    /* renamed from: b  reason: collision with root package name */
    protected String f1263b = "";
    protected String c = "";
    protected String d = "";

    public final void onSignUpClick() {
        SignUpView signUpView = (SignUpView) getView();
        if (signUpView != null) {
            if (!c()) {
                signUpView.showFullNameError(R.string.view_sign_up_full_name_not_valid);
            } else if (isEmailEmpty()) {
                signUpView.showEmailError(R.string.email_cant_be_empty);
            } else if (!d()) {
                signUpView.showEmailError(R.string.view_sign_up_email_not_valid);
            } else if (isPasswordEmpty()) {
                signUpView.showPasswordError(R.string.password_cant_be_empty);
            } else if (!e()) {
                signUpView.showPasswordError(R.string.view_sign_up_password_not_valid);
            } else {
                if (getView() != null) {
                    ((SignUpView) getView()).hideKeyboard();
                }
                if (getInteractor() != null) {
                    ((a) getInteractor()).requestSignUp(this.d, this.c, this.f1263b, this.f1262a);
                }
            }
        }
    }

    public final void onSignUpWithGoogleClick() {
        if (getInteractor() != null) {
            ((a) getInteractor()).requestSignUpWithGoogle();
        }
    }

    public final void onNewsLetterCheckChanged(boolean z) {
        this.f1262a = z;
    }

    public final void onFullNameTextChanged(String str) {
        if (str != null) {
            this.d = str;
            if (c() && getView() != null) {
                ((SignUpView) getView()).hideFullNameError();
            }
        }
    }

    public final void onEmailTextChanged(String str) {
        if (str != null) {
            this.c = str;
            if (d() && getView() != null) {
                ((SignUpView) getView()).hideEmailError();
            }
        }
    }

    public final void onPasswordTextChanged(String str) {
        if (str != null) {
            this.f1263b = str;
            if (e() && getView() != null) {
                ((SignUpView) getView()).hidePasswordError();
            }
        }
    }

    public final void onEmailSupportClicked() {
        if (getInteractor() != null && getView() != null && ((SignUpView) getView()).getContext() != null) {
            ((a) getInteractor()).sendEmailToSnappSupportCenter(((SignUpView) getView()).getContext().getString(R.string.max_secure_sign_up_email_subject));
        }
    }

    private void a() {
        if (getView() != null) {
            ((SignUpView) getView()).hideLoading();
        }
    }

    public final void onBeforeLoginWithGoogleRequest() {
        if (getView() != null) {
            ((SignUpView) getView()).showSignUpWithGoogleLoading();
        }
    }

    private void b() {
        if (getView() != null) {
            ((SignUpView) getView()).hideSignUpWithGoogleLoading();
        }
    }

    private boolean c() {
        String str = this.d;
        return str != null && !str.isEmpty();
    }

    public final boolean isEmailEmpty() {
        String str = this.c;
        return str != null && str.length() == 0;
    }

    private boolean d() {
        String str = this.c;
        return str != null && !str.isEmpty() && i.isEmailValid(this.c);
    }

    private boolean e() {
        String str = this.f1263b;
        return str != null && str.length() >= 8;
    }

    public final boolean isPasswordEmpty() {
        String str = this.f1263b;
        return str != null && str.isEmpty();
    }

    public final void onRequestError(int i) {
        if (getView() != null) {
            onRequestError(((SignUpView) getView()).getContext().getString(i));
        }
    }

    public final void onRequestError(String str) {
        a();
        b();
        if (getView() != null) {
            ((SignUpView) getView()).showError(str);
        }
    }

    public final void onRequestSuccess() {
        a();
        b();
    }

    public final void onOnSignUpLimitExceeded() {
        if (getView() != null) {
            ((SignUpView) getView()).showSignUpLimitExceedDialog();
            ((SignUpView) getView()).hideLoading();
        }
    }

    public final void onNoInternetConnection() {
        if (getView() != null && ((SignUpView) getView()).getContext() != null) {
            new r(((SignUpView) getView()).getContext()).showNoInternetDialog();
        }
    }

    public final void onRequestError() {
        a();
        b();
    }

    public final void setStatusBarColor() {
        if (getView() != null && (((SignUpView) getView()).getContext() instanceof Activity)) {
            a.setStatusBarColorRes((Activity) ((SignUpView) getView()).getContext(), R.color.colorPrimary);
        }
    }

    public final void onBeforeRequest() {
        if (getView() != null) {
            ((SignUpView) getView()).showLoading();
        }
    }
}
