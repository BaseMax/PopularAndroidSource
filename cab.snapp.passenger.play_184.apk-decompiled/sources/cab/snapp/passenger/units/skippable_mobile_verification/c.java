package cab.snapp.passenger.units.skippable_mobile_verification;

import android.app.Activity;
import android.os.CountDownTimer;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.widget.TextView;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.c.i;
import cab.snapp.passenger.activities.root.RootActivity;
import cab.snapp.passenger.f.g;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.c.a;
import com.alimuzaffar.lib.pin.PinEntryEditText;

public final class c extends BasePresenter<SkippablePhoneVerificationView, a> {
    public static final int PIN_ENTRY_LENGTH = 6;

    /* renamed from: a  reason: collision with root package name */
    protected String f1282a;

    /* renamed from: b  reason: collision with root package name */
    protected CountDownTimer f1283b;
    TextWatcher c = new TextWatcher() {
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (i.isPhoneNumberValid(charSequence.toString()) && c.this.getView() != null) {
                ((SkippablePhoneVerificationView) c.this.getView()).hidePhoneError();
            }
        }

        public final void afterTextChanged(Editable editable) {
            c.this.f1282a = editable.toString();
            if (c.this.getView() != null) {
                if (editable.toString().length() == 11) {
                    ((SkippablePhoneVerificationView) c.this.getView()).enableNextButton();
                } else {
                    ((SkippablePhoneVerificationView) c.this.getView()).disableNextButton();
                }
            }
        }
    };
    PinEntryEditText.a d = new PinEntryEditText.a() {
        public final void onPinEntered(CharSequence charSequence) {
            c.this.a(charSequence);
        }
    };
    private TextView.OnEditorActionListener e = new TextView.OnEditorActionListener() {
        public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            return c.this.a(textView, i, keyEvent);
        }
    };

    /* access modifiers changed from: private */
    public /* synthetic */ void a(CharSequence charSequence) {
        if (charSequence != null && charSequence.length() == 6 && getInteractor() != null && this.view != null) {
            ((SkippablePhoneVerificationView) this.view).hideKeyboard();
            ((a) getInteractor()).requestVerify(((SkippablePhoneVerificationView) this.view).getCode());
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ boolean a(TextView textView, int i, KeyEvent keyEvent) {
        onNextClicked();
        return true;
    }

    public final void initialize() {
        if (getView() != null && ((SkippablePhoneVerificationView) getView()).getContext() != null && (((SkippablePhoneVerificationView) getView()).getContext() instanceof RootActivity)) {
            ((SkippablePhoneVerificationView) this.view).disableNextButton();
            ((SkippablePhoneVerificationView) this.view).setPhoneNumberTextWatcher(this.c);
            ((SkippablePhoneVerificationView) this.view).setPinCompleteListener(this.d);
            ((SkippablePhoneVerificationView) this.view).setPhoneNumberImeAction(this.e);
            a();
            setStatusBarColor();
        }
    }

    public final void finish() {
        if (getView() != null && ((SkippablePhoneVerificationView) getView()).getContext() != null && (((SkippablePhoneVerificationView) getView()).getContext() instanceof RootActivity)) {
            ((RootActivity) ((SkippablePhoneVerificationView) getView()).getContext()).showLoadingForSnappCabItemClickedFromSnappServices();
        }
    }

    public final void onBeforeSendMeVerificationCode() {
        if (getView() != null) {
            ((SkippablePhoneVerificationView) getView()).showPhoneLoading();
            ((SkippablePhoneVerificationView) getView()).hideNextButton();
            ((SkippablePhoneVerificationView) getView()).showNextButton();
        }
    }

    public final void onSendMeVerificationCodeSuccessful() {
        if (getView() != null) {
            ((SkippablePhoneVerificationView) getView()).hidePhoneLoading();
            ((SkippablePhoneVerificationView) getView()).showNextButton();
        }
        b();
    }

    public final void onSendMeVerificationCodeError() {
        if (getView() != null) {
            ((SkippablePhoneVerificationView) getView()).hidePhoneLoading();
            ((SkippablePhoneVerificationView) getView()).showNextButton();
            ((SkippablePhoneVerificationView) getView()).showToast((int) R.string.error, (int) R.color.cherry);
        }
    }

    public final void onDailyLimitSucceeded() {
        if (getView() != null) {
            ((SkippablePhoneVerificationView) getView()).hidePhoneLoading();
            ((SkippablePhoneVerificationView) getView()).showNextButton();
            ((SkippablePhoneVerificationView) getView()).showToast((int) R.string.daily_limit_for_verification, (int) R.color.cherry);
        }
    }

    public final void onUserIsBlocked(String str) {
        if (getView() != null) {
            ((SkippablePhoneVerificationView) getView()).showToast(str, (int) R.color.cherry);
            ((SkippablePhoneVerificationView) getView()).hidePhoneLoading();
        }
    }

    public final void onBeforeVerify() {
        if (getView() != null) {
            ((SkippablePhoneVerificationView) this.view).hideCodeErrorMessage();
            ((SkippablePhoneVerificationView) this.view).hideRetryCodeButton();
            ((SkippablePhoneVerificationView) this.view).hideSmsResendButton();
            ((SkippablePhoneVerificationView) this.view).showCodeLoading();
        }
    }

    public final void onVerifySuccessful() {
        this.f1283b.cancel();
        if (getView() != null) {
            ((SkippablePhoneVerificationView) getView()).showToast((int) R.string.profile_updated, (int) R.color.colorPrimary);
        }
    }

    public final void onVerifyError() {
        if (getView() != null) {
            ((SkippablePhoneVerificationView) getView()).hideCodeLoading();
            ((SkippablePhoneVerificationView) getView()).showSmsResendButton();
            ((SkippablePhoneVerificationView) getView()).enableCodeInputView();
            ((SkippablePhoneVerificationView) getView()).setCodeErrorMessage((int) R.string.verification_code_not_sent);
            ((SkippablePhoneVerificationView) getView()).showCodeErrorMessage();
            ((SkippablePhoneVerificationView) getView()).showRetryCodeButton();
        }
    }

    public final void onCodeIsInvalid() {
        if (getView() != null) {
            ((SkippablePhoneVerificationView) getView()).hideCodeLoading();
            ((SkippablePhoneVerificationView) getView()).showSmsResendButton();
            ((SkippablePhoneVerificationView) getView()).enableCodeInputView();
            ((SkippablePhoneVerificationView) getView()).clearCodeInputView();
            ((SkippablePhoneVerificationView) getView()).hideRetryCodeButton();
            ((SkippablePhoneVerificationView) getView()).setCodeErrorMessage((int) R.string.verification_code_error);
            ((SkippablePhoneVerificationView) getView()).showCodeErrorMessage();
        }
    }

    public final void onRetryCodeClicked() {
        if (getInteractor() != null && this.view != null) {
            ((SkippablePhoneVerificationView) this.view).hideKeyboard();
            ((a) getInteractor()).requestVerify(((SkippablePhoneVerificationView) this.view).getCode());
        }
    }

    public final void onSmsResendClicked() {
        if (getInteractor() != null && this.view != null) {
            ((SkippablePhoneVerificationView) this.view).hideKeyboard();
            b();
            ((a) getInteractor()).requestGiveMeVerificationCode(this.f1282a);
        }
    }

    public final void onNextClicked() {
        if (i.isPhoneNumberValid(this.f1282a) || this.view == null) {
            if (getInteractor() != null) {
                ((SkippablePhoneVerificationView) this.view).hideKeyboard();
                ((a) getInteractor()).requestGiveMeVerificationCode(this.f1282a);
            }
            return;
        }
        ((SkippablePhoneVerificationView) this.view).showPhoneError(R.string.snapp_charge_phone_number_must_be_this_format);
    }

    public final void onToolbarBackPressed() {
        a();
    }

    private void a() {
        if (getView() != null) {
            ((SkippablePhoneVerificationView) this.view).setBigIcon(R.drawable.ic_phone_dial_90dp);
            ((SkippablePhoneVerificationView) this.view).hideToolbar();
            ((SkippablePhoneVerificationView) this.view).showPhoneEntryLayout();
            ((SkippablePhoneVerificationView) this.view).hideVerificationLayout();
            CountDownTimer countDownTimer = this.f1283b;
            if (countDownTimer != null) {
                countDownTimer.cancel();
            }
        }
    }

    private void b() {
        if (getView() != null) {
            ((SkippablePhoneVerificationView) this.view).setBigIcon(R.drawable.ic_sms_verification_90dp);
            ((SkippablePhoneVerificationView) this.view).showToolbar();
            ((SkippablePhoneVerificationView) this.view).hidePhoneEntryLayout();
            ((SkippablePhoneVerificationView) this.view).setCodeErrorMessage("");
            ((SkippablePhoneVerificationView) this.view).hideCodeErrorMessage();
            ((SkippablePhoneVerificationView) this.view).hideRetryCodeButton();
            ((SkippablePhoneVerificationView) this.view).clearCodeInputView();
            ((SkippablePhoneVerificationView) this.view).showVerificationLayout();
            ((SkippablePhoneVerificationView) this.view).showKeyboard();
            String changeNumbersBasedOnCurrentLocale = g.changeNumbersBasedOnCurrentLocale(this.f1282a);
            ((SkippablePhoneVerificationView) this.view).setPhoneText(changeNumbersBasedOnCurrentLocale.substring(0, 4) + "‎ " + changeNumbersBasedOnCurrentLocale.substring(4, 7) + "‎ " + changeNumbersBasedOnCurrentLocale.substring(7, 9) + "‎ " + changeNumbersBasedOnCurrentLocale.substring(9, 11));
            ((SkippablePhoneVerificationView) this.view).hideCodeLoading();
            ((SkippablePhoneVerificationView) this.view).disableSmsResendButton();
            ((SkippablePhoneVerificationView) this.view).setSmsResendButtonColor(R.color.pinkish_grey_c);
            this.f1283b = new CountDownTimer() {
                public final void onTick(long j) {
                    if (c.this.getView() != null && ((SkippablePhoneVerificationView) c.this.view).getContext() != null) {
                        ((SkippablePhoneVerificationView) c.this.view).setSmsResendButtonText(g.changeNumbersBasedOnCurrentLocale((j / 1000) + " " + ((SkippablePhoneVerificationView) c.this.getView()).getContext().getResources().getString(R.string.sms_resend_count_down)));
                    }
                }

                public final void onFinish() {
                    if (c.this.getView() != null) {
                        ((SkippablePhoneVerificationView) c.this.view).enableSmsResendButton();
                        ((SkippablePhoneVerificationView) c.this.view).setSmsResendButtonText((int) R.string.sms_resend);
                        ((SkippablePhoneVerificationView) c.this.view).setSmsResendButtonColor(R.color.colorAccent);
                    }
                }
            }.start();
        }
    }

    public final void onSkipClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).skip();
        }
    }

    public final void setStatusBarColor() {
        if (getView() != null && (((SkippablePhoneVerificationView) getView()).getContext() instanceof Activity)) {
            a.setStatusBarColorRes((Activity) ((SkippablePhoneVerificationView) getView()).getContext(), R.color.white);
        }
    }
}
