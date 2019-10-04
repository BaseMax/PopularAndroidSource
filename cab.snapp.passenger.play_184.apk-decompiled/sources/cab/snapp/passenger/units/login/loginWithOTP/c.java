package cab.snapp.passenger.units.login.loginWithOTP;

import android.app.Activity;
import android.os.CountDownTimer;
import android.text.TextWatcher;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.data_access_layer.a.e;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.c.a;

final class c extends BasePresenter<LoginWithOTPView, a> {

    /* renamed from: a  reason: collision with root package name */
    protected CountDownTimer f862a;

    /* renamed from: b  reason: collision with root package name */
    TextWatcher f863b;

    c() {
    }

    public final void onInitialize(String str, boolean z) {
        if (getView() != null && z) {
            ((LoginWithOTPView) getView()).setupTextWatcher();
            setStatusBarColor();
        }
        if (getView() != null) {
            ((LoginWithOTPView) getView()).showTimerText();
        }
        CountDownTimer countDownTimer = this.f862a;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.f862a = new CountDownTimer() {
            public final void onTick(long j) {
                if (c.this.getView() != null) {
                    ((LoginWithOTPView) c.this.getView()).setTimerTime(j);
                }
            }

            public final void onFinish() {
                if (c.this.getView() != null) {
                    ((LoginWithOTPView) c.this.getView()).showCodeExpiredText();
                    ((LoginWithOTPView) c.this.getView()).clearUserInput();
                    ((LoginWithOTPView) c.this.getView()).showResendSmsButton();
                }
            }
        };
        this.f862a.start();
        LoginWithOTPView loginWithOTPView = (LoginWithOTPView) getView();
        if (loginWithOTPView != null) {
            loginWithOTPView.hideResendButton();
        }
        LoginWithOTPView loginWithOTPView2 = (LoginWithOTPView) getView();
        if (loginWithOTPView2 != null) {
            loginWithOTPView2.disableSendButton();
        }
        LoginWithOTPView loginWithOTPView3 = (LoginWithOTPView) getView();
        if (loginWithOTPView3 != null) {
            loginWithOTPView3.setPhoneNumberInTitle(str);
        }
    }

    public final void setStatusBarColor() {
        if (getView() != null && (((LoginWithOTPView) getView()).getContext() instanceof Activity)) {
            a.setStatusBarColorRes((Activity) ((LoginWithOTPView) getView()).getContext(), R.color.white);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(Throwable th) {
        if (getView() != null) {
            ((LoginWithOTPView) getView()).hideLoadingDialog();
            if ((th instanceof e) && ((e) th).getErrorCode() == 401) {
                ((LoginWithOTPView) getView()).showError((int) R.string.invalid_code);
            } else if (th != null) {
                ((LoginWithOTPView) getView()).showError(th.getMessage());
            } else {
                ((LoginWithOTPView) getView()).showError((int) R.string.error);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        LoginWithOTPView loginWithOTPView = (LoginWithOTPView) getView();
        if (loginWithOTPView != null) {
            String otpText = loginWithOTPView.getOtpText();
            if (otpText != null && !otpText.isEmpty() && otpText.length() == 6) {
                loginWithOTPView.hideKeyboard();
                loginWithOTPView.enableLoginButton();
                if (getInteractor() != null) {
                    try {
                        ((a) getInteractor()).sendValidationCode(loginWithOTPView.getOtpText());
                    } catch (Exception e) {
                        e.printStackTrace();
                        com.a.a.a.logException(e);
                        loginWithOTPView.showError((int) R.string.invalid_code);
                    }
                }
            } else {
                loginWithOTPView.showNormalState();
            }
        }
    }

    public final void onBackClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).pressBack();
        }
    }

    public final void onNoInternetConnection() {
        if (getView() != null) {
            ((LoginWithOTPView) getView()).showNoInternetDialog();
        }
    }
}
