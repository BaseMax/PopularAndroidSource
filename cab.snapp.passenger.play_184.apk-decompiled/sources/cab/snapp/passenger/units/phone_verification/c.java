package cab.snapp.passenger.units.phone_verification;

import android.app.Activity;
import android.os.CountDownTimer;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import androidx.core.view.GravityCompat;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.c.d;
import cab.snapp.c.i;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.g;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.c.a;
import javax.inject.Inject;

public final class c extends BasePresenter<PhoneVerificationView, a> {
    @Inject

    /* renamed from: a  reason: collision with root package name */
    cab.snapp.passenger.f.b.b.c f1023a;

    /* renamed from: b  reason: collision with root package name */
    private int f1024b = 0;
    /* access modifiers changed from: private */
    public String c = "";
    /* access modifiers changed from: private */
    public String d = "";
    private CountDownTimer e;
    private TextWatcher f;
    private TextWatcher g;

    public final void onSendCodeBySmsSuccess() {
        if (getView() != null) {
            ((PhoneVerificationView) getView()).showMessage((int) R.string.confirmation_code_sent, (int) R.color.colorPrimary);
        }
        a(1);
    }

    public final void onSendCodeBySmsError() {
        if (getView() != null) {
            ((PhoneVerificationView) getView()).showMessage((int) R.string.error, (int) R.color.cherry);
        }
    }

    public final void onDailyLimitForSmsExceeded() {
        if (getView() != null) {
            ((PhoneVerificationView) getView()).showMessage((int) R.string.daily_limit_for_verification, (int) R.color.cherry);
        }
    }

    public final void onDailyLimitForCallExceeded() {
        if (getView() != null) {
            ((PhoneVerificationView) getView()).showMessage((int) R.string.daily_limit_for_call_verification, (int) R.color.cherry);
        }
    }

    public final void onUserIsBlocked(String str) {
        if (getView() != null) {
            ((PhoneVerificationView) getView()).showMessage(str, (int) R.color.cherry);
        }
    }

    public final void onPhoneVerifySuccess() {
        if (getView() != null) {
            ((PhoneVerificationView) getView()).showMessage((int) R.string.profile_updated, (int) R.color.colorPrimary);
        }
    }

    public final void onPhoneVerifyError() {
        if (getView() != null) {
            ((PhoneVerificationView) getView()).showMessage((int) R.string.error, (int) R.color.cherry);
        }
    }

    public final void onCodeIsWrong() {
        this.f1023a.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.TOAST_CONFIRMATION_CODE_IS_WRONG, "[show]");
        if (getView() != null) {
            ((PhoneVerificationView) getView()).showMessage((int) R.string.invalid_code, (int) R.color.cherry);
        }
    }

    /* access modifiers changed from: private */
    public void a(int i) {
        this.f1024b = i;
        if (i == 0) {
            a();
        } else if (i == 1) {
            b();
        } else {
            if (i == 2) {
                c();
            }
        }
    }

    private void a() {
        if (getView() != null && ((PhoneVerificationView) getView()).getContext() != null) {
            ((PhoneVerificationView) getView()).setTitleText(((PhoneVerificationView) this.view).getContext().getString(R.string.enter_mobile_number));
            ((PhoneVerificationView) getView()).setDescriptionText(((PhoneVerificationView) this.view).getContext().getString(R.string.snapp_need_your_number));
            ((PhoneVerificationView) getView()).setVerificationText(((PhoneVerificationView) this.view).getContext().getString(R.string.nothing));
            ((PhoneVerificationView) getView()).setNegativeBtnText(((PhoneVerificationView) this.view).getContext().getString(R.string.close));
            ((PhoneVerificationView) getView()).setDescriptionGravity(GravityCompat.START);
            ((PhoneVerificationView) getView()).setPhoneNumberEditTextVisibility(0);
            ((PhoneVerificationView) getView()).setVerificationEditTextVisibility(8);
            ((PhoneVerificationView) getView()).setCodeExpireTimeTextVisibility(8);
            ((PhoneVerificationView) getView()).setResendButtonAreaLayoutVisibility(8);
            d();
        }
    }

    private void b() {
        if (getView() != null && ((PhoneVerificationView) getView()).getContext() != null) {
            ((PhoneVerificationView) getView()).setDescriptionText(String.format(((PhoneVerificationView) this.view).getContext().getString(R.string.send_verification_code_send_to), new Object[]{g.changeNumbersBasedOnCurrentLocale(this.c)}));
            ((PhoneVerificationView) getView()).setTitleText(((PhoneVerificationView) this.view).getContext().getString(R.string.confirm_mobile_number));
            ((PhoneVerificationView) getView()).setNegativeBtnText(((PhoneVerificationView) this.view).getContext().getString(R.string.edit_number));
            ((PhoneVerificationView) getView()).setCodeExpireTimeText(((PhoneVerificationView) this.view).getContext().getString(R.string.code_expire_time));
            ((PhoneVerificationView) getView()).setDescriptionGravity(1);
            ((PhoneVerificationView) getView()).setPhoneNumberEditTextVisibility(8);
            ((PhoneVerificationView) getView()).setVerificationEditTextVisibility(0);
            ((PhoneVerificationView) getView()).setResendButtonAreaLayoutVisibility(8);
            ((PhoneVerificationView) getView()).setCodeExpireTimeTextVisibility(0);
            d();
            e();
        }
    }

    private void c() {
        if (getView() != null && ((PhoneVerificationView) getView()).getContext() != null) {
            ((PhoneVerificationView) getView()).setDescriptionText(String.format(((PhoneVerificationView) this.view).getContext().getResources().getString(R.string.send_verification_code_send_to), new Object[]{g.changeNumbersBasedOnCurrentLocale(this.c)}));
            ((PhoneVerificationView) getView()).setTitleText(((PhoneVerificationView) this.view).getContext().getString(R.string.confirm_mobile_number));
            ((PhoneVerificationView) getView()).setDescriptionGravity(1);
            ((PhoneVerificationView) getView()).setPhoneNumberEditTextVisibility(8);
            ((PhoneVerificationView) getView()).setVerificationEditTextVisibility(0);
            ((PhoneVerificationView) getView()).setResendButtonAreaLayoutVisibility(0);
            ((PhoneVerificationView) getView()).setNegativeBtnText(((PhoneVerificationView) this.view).getContext().getString(R.string.edit_number));
            ((PhoneVerificationView) getView()).setCodeExpireTimeTextVisibility(8);
            d();
        }
    }

    private void d() {
        CountDownTimer countDownTimer = this.e;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    private void e() {
        this.e = new CountDownTimer() {
            public final void onTick(long j) {
                StringBuilder sb;
                PhoneVerificationView phoneVerificationView = (PhoneVerificationView) c.this.getView();
                if (phoneVerificationView != null) {
                    String codeExpireTimeText = phoneVerificationView.getCodeExpireTimeText();
                    long j2 = j / 1000;
                    if (j2 >= 10) {
                        sb = new StringBuilder("00:");
                    } else {
                        sb = new StringBuilder("00:0");
                    }
                    sb.append(j2);
                    String changeNumbersBasedOnCurrentLocale = g.changeNumbersBasedOnCurrentLocale(sb.toString());
                    phoneVerificationView.setCodeExpireTimeText(codeExpireTimeText.substring(0, codeExpireTimeText.lastIndexOf(" ") + 1) + changeNumbersBasedOnCurrentLocale);
                }
            }

            public final void onFinish() {
                c.this.a(2);
            }
        };
        this.e.start();
    }

    public final void onInitialize() {
        if (getView() != null && ((PhoneVerificationView) getView()).getContext() != null) {
            BaseApplication.get(((PhoneVerificationView) getView()).getContext()).getAppComponent().inject(this);
            a(0);
            this.f = new TextWatcher() {
                public final void afterTextChanged(Editable editable) {
                }

                public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    if (charSequence != null) {
                        String unused = c.this.c = d.convertPersianToEnglishNumbers(charSequence.toString());
                    }
                }
            };
            this.g = new TextWatcher() {
                public final void afterTextChanged(Editable editable) {
                }

                public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    if (charSequence != null) {
                        String unused = c.this.d = d.convertPersianToEnglishNumbers(charSequence.toString());
                    }
                }
            };
            if (getView() != null) {
                ((PhoneVerificationView) getView()).setListeners(this.f, this.g);
                setStatusBarColor();
            }
        }
    }

    public final void setStatusBarColor() {
        if (getView() != null && (((PhoneVerificationView) getView()).getContext() instanceof Activity)) {
            a.setStatusBarColorRes((Activity) ((PhoneVerificationView) getView()).getContext(), R.color.colorPrimary);
        }
    }

    public final void onResendCodeBySmsClicked() {
        this.f1023a.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_CONFIRMATION_PHONE_NUMBER, "[resendSms]");
        if (getInteractor() != null) {
            ((a) getInteractor()).requestSendCodeBySms(this.c);
        }
    }

    public final void onSendCodeBySmsClicked() {
        this.f1023a.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_REGISTER_PHONE_NUMBER, "[send]");
        this.f1023a.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_CONFIRMATION_PHONE_NUMBER, "[send]");
        if (getInteractor() != null) {
            ((a) getInteractor()).requestSendCodeBySms(this.c);
        }
    }

    public final void onPositiveButtonClicked() {
        cab.snapp.c.c.tryHideKeyboard(((PhoneVerificationView) this.view).getContext(), (View) this.view);
        if (this.f1024b == 0) {
            PhoneVerificationView phoneVerificationView = (PhoneVerificationView) getView();
            boolean z = false;
            if (phoneVerificationView != null) {
                String str = this.c;
                if (str == null || str.isEmpty()) {
                    phoneVerificationView.showMessage((int) R.string.error_enter_phone_number, (int) R.color.cherry);
                } else if (this.c.length() < 11) {
                    phoneVerificationView.showMessage((int) R.string.error_mobile_required_eleven_number, (int) R.color.cherry);
                } else if (!i.isPhoneNumberValid(this.c)) {
                    phoneVerificationView.showMessage((int) R.string.enter_valid_phone_number, (int) R.color.cherry);
                } else {
                    z = true;
                }
            }
            if (z) {
                onSendCodeBySmsClicked();
                return;
            }
        }
        int i = this.f1024b;
        if (i == 1 || i == 2) {
            this.f1023a.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_CONFIRMATION_PHONE_NUMBER, "[send]");
            if (getInteractor() != null) {
                ((a) getInteractor()).requestVerifyPhoneNumberForEdit(this.d);
            }
        }
    }

    public final void onNegativeButtonClicked() {
        cab.snapp.c.c.tryHideKeyboard(((PhoneVerificationView) this.view).getContext(), (View) this.view);
        if (this.f1024b == 0) {
            this.f1023a.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_REGISTER_PHONE_NUMBER, "[close]");
            if (getInteractor() != null) {
                ((a) getInteractor()).finish();
            }
        } else {
            this.f1023a.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_REGISTER_PHONE_NUMBER, "[CorrectionPhoneNumber]");
            a(0);
        }
    }
}
