package cab.snapp.passenger.units.login.loginWithPhoneNumber;

import android.app.Activity;
import android.text.Editable;
import android.text.TextWatcher;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.c.i;
import cab.snapp.passenger.f.g;
import cab.snapp.passenger.f.r;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.c.a;

public final class c extends BasePresenter<LoginWithPhoneNumberView, a> {
    public final void onSendPhoneNumberClicked() {
        LoginWithPhoneNumberView loginWithPhoneNumberView = (LoginWithPhoneNumberView) getView();
        if (loginWithPhoneNumberView != null) {
            cab.snapp.c.c.tryHideKeyboard(loginWithPhoneNumberView.getContext(), loginWithPhoneNumberView);
            String phoneNumber = loginWithPhoneNumberView.getPhoneNumber();
            if (!i.isPhoneNumberValid(phoneNumber)) {
                loginWithPhoneNumberView.showErrorDialog((int) R.string.wrongPhoneNumber);
            } else if (!phoneNumber.matches("(\\+98|0)9[0-9]{9}")) {
                LoginWithPhoneNumberView loginWithPhoneNumberView2 = (LoginWithPhoneNumberView) getView();
                if (loginWithPhoneNumberView2 != null) {
                    loginWithPhoneNumberView2.showErrorDialog((int) R.string.wrongPhoneNumber);
                    loginWithPhoneNumberView2.enableSendButton();
                }
            } else {
                if (!phoneNumber.matches("\\+989[0-9]{9}")) {
                    phoneNumber = phoneNumber.replaceFirst("0", "+98");
                }
                String changeNumbersBasedOnCurrentLocale = g.changeNumbersBasedOnCurrentLocale(phoneNumber);
                if (getInteractor() != null) {
                    ((a) getInteractor()).a(changeNumbersBasedOnCurrentLocale);
                }
            }
        }
    }

    public final void onBackClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).pressBack();
        }
    }

    public final void onInitialize() {
        if (getView() != null) {
            ((LoginWithPhoneNumberView) getView()).setPhoneTextChangeListener(new TextWatcher() {
                public final void afterTextChanged(Editable editable) {
                }

                public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    if (i.isPhoneNumberValid(charSequence.toString())) {
                        ((LoginWithPhoneNumberView) c.this.getView()).enableSendButton();
                    } else {
                        ((LoginWithPhoneNumberView) c.this.getView()).disableSendButton();
                    }
                }
            });
            setStatusBarColor();
        }
    }

    public final void setStatusBarColor() {
        if (getView() != null && (((LoginWithPhoneNumberView) getView()).getContext() instanceof Activity)) {
            a.setStatusBarColorRes((Activity) ((LoginWithPhoneNumberView) getView()).getContext(), R.color.white);
        }
    }

    public final void onNoInternetConnection() {
        if (getView() != null && ((LoginWithPhoneNumberView) getView()).getContext() != null) {
            new r(((LoginWithPhoneNumberView) getView()).getContext()).showNoInternetDialog();
        }
    }
}
