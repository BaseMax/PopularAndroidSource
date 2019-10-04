package cab.snapp.passenger.units.login.loginWithOTP;

import android.content.Context;
import android.graphics.Color;
import android.text.Editable;
import android.text.Spannable;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.c.c;
import cab.snapp.passenger.f.g;
import cab.snapp.passenger.f.r;
import cab.snapp.passenger.play.R;
import cab.snapp.snappdialog.b;
import cab.snapp.snappdialog.dialogViews.a.f;
import cab.snapp.snappdialog.dialogViews.a.g;
import cab.snapp.snappuikit.SnappButton;
import cab.snapp.snappuikit.SnappEditText;

public class LoginWithOTPView extends ScrollView implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f848a;

    /* renamed from: b  reason: collision with root package name */
    r f849b;
    @BindView(2131362657)
    LinearLayout backLayout;
    private b c;
    private b d;
    @BindView(2131362650)
    AppCompatTextView viewLogInWithOtpDescTextview;
    @BindView(2131362651)
    SnappEditText viewLogInWithOtpEditText;
    @BindView(2131362652)
    AppCompatTextView viewLogInWithOtpEnterPhoneButton;
    @BindView(2131362653)
    SnappButton viewLogInWithOtpLoginButton;
    @BindView(2131362654)
    AppCompatTextView viewLogInWithOtpResendCodeButton;
    @BindView(2131362655)
    AppCompatTextView viewLogInWithOtpTimerTextview;

    public LoginWithOTPView(Context context) {
        super(context);
    }

    public LoginWithOTPView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public LoginWithOTPView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @OnClick({2131362657})
    public void onBackClicked() {
        c cVar = this.f848a;
        if (cVar != null) {
            cVar.onBackClicked();
        }
    }

    @OnClick({2131362653})
    public void loginWithOtpClick() {
        c cVar = this.f848a;
        if (cVar != null) {
            cVar.a();
        }
    }

    @OnClick({2131362654})
    public void resendSmsButtonClicked() {
        c cVar = this.f848a;
        if (cVar != null) {
            a aVar = (a) cVar.getInteractor();
            if (aVar != null) {
                aVar.resendSms();
            }
        }
    }

    @OnClick({2131362652})
    public void fixPhoneNumberClicked() {
        c cVar = this.f848a;
        if (cVar != null) {
            a aVar = (a) cVar.getInteractor();
            if (aVar != null) {
                aVar.editPhoneNumber();
            }
        }
    }

    public void setTimerTime(long j) {
        StringBuilder sb;
        String charSequence = this.viewLogInWithOtpTimerTextview.getText().toString();
        long j2 = j / 1000;
        if (j2 >= 10) {
            sb = new StringBuilder("00:");
        } else {
            sb = new StringBuilder("00:0");
        }
        sb.append(j2);
        String sb2 = sb.toString();
        String str = charSequence.substring(0, charSequence.lastIndexOf(" ") + 1) + sb2;
        this.viewLogInWithOtpTimerTextview.setText(g.changeNumbersBasedOnCurrentLocale(str), TextView.BufferType.SPANNABLE);
        int indexOf = str.indexOf(sb2);
        ((Spannable) this.viewLogInWithOtpTimerTextview.getText()).setSpan(new ForegroundColorSpan(getContext().getResources().getColor(R.color.colorPrimary)), indexOf, sb2.length() + indexOf, 33);
        this.viewLogInWithOtpTimerTextview.setTextSize(14.0f);
        this.viewLogInWithOtpTimerTextview.setTextColor(getContext().getResources().getColor(R.color.colorPrimary));
    }

    public void showTimerText() {
        this.viewLogInWithOtpTimerTextview.setText(R.string.code_expire_time);
        this.viewLogInWithOtpTimerTextview.setTextSize(14.0f);
        this.viewLogInWithOtpTimerTextview.setTextColor(getContext().getResources().getColor(R.color.colorPrimary));
    }

    public void showCodeExpiredText() {
        this.viewLogInWithOtpTimerTextview.setText(R.string.verification_code_has_expired);
        this.viewLogInWithOtpTimerTextview.setTextSize(16.0f);
        this.viewLogInWithOtpTimerTextview.setTextColor(getContext().getResources().getColor(R.color.colorPrimary));
    }

    public void setupTextWatcher() {
        EditText editTextView = this.viewLogInWithOtpEditText.getEditTextView();
        c cVar = this.f848a;
        if (cVar.f863b == null) {
            cVar.f863b = new TextWatcher() {
                public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public final void afterTextChanged(Editable editable) {
                    if (c.this.view != null) {
                        if (((LoginWithOTPView) c.this.view).viewLogInWithOtpEditText.getText() == null || ((LoginWithOTPView) c.this.view).viewLogInWithOtpEditText.getText().length() != 6) {
                            if (c.this.view != null) {
                                ((LoginWithOTPView) c.this.view).showNormalState();
                            }
                            return;
                        }
                        c.this.a();
                    }
                }
            };
        }
        editTextView.addTextChangedListener(cVar.f863b);
    }

    public void disableSendButton() {
        this.viewLogInWithOtpLoginButton.setEnabled(false);
    }

    public void enableSendButton() {
        this.viewLogInWithOtpLoginButton.setEnabled(true);
    }

    public void showResendSmsButton() {
        this.viewLogInWithOtpResendCodeButton.setVisibility(0);
        this.viewLogInWithOtpLoginButton.setVisibility(8);
    }

    public void hideResendButton() {
        this.viewLogInWithOtpResendCodeButton.setVisibility(8);
        this.viewLogInWithOtpLoginButton.setVisibility(0);
    }

    public void showError(int i) {
        showError(getContext().getString(i));
    }

    public void showError(String str) {
        b bVar = this.c;
        if (bVar != null && bVar.isShowing()) {
            this.c.dismiss();
        }
        this.c = new b.a(getContext()).setIconFont(R.string.ic_font_server_error).setDialogTitle(getContext().getString(R.string.error)).setTheme(0).isErrorInformation(true).setDialogViewType(new g.a().setMessage(str).build()).setPositiveButton(getContext().getString(R.string.ok), (View.OnClickListener) new View.OnClickListener() {
            public final void onClick(View view) {
                LoginWithOTPView.this.a(view);
            }
        }).showOnBuild(true).build();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        this.c.dismiss();
    }

    public void showLoadingDialog() {
        if (getContext() != null) {
            if (this.d == null) {
                this.d = new b.a(getContext()).setTheme(0).setDialogViewType(new f.a().setTitle(getContext().getString(R.string.please_wait)).build()).setCancelable(false).build();
            }
            this.d.show();
        }
    }

    public String getOtpText() {
        return this.viewLogInWithOtpEditText.getText();
    }

    public void hideLoadingDialog() {
        b bVar = this.d;
        if (bVar != null) {
            if (bVar.isShowing()) {
                this.d.dismiss();
            }
            this.d.cancel();
        }
    }

    public void showNormalState() {
        this.viewLogInWithOtpLoginButton.setEnabled(false);
        this.viewLogInWithOtpEditText.showInActive();
    }

    public void enableLoginButton() {
        this.viewLogInWithOtpLoginButton.setEnabled(true);
    }

    public void hideKeyboard() {
        c.tryHideKeyboard(getContext(), this);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
        this.f849b = new r(getContext());
    }

    public void setPresenter(c cVar) {
        this.f848a = cVar;
    }

    public void showNoInternetDialog() {
        r rVar = this.f849b;
        if (rVar != null) {
            rVar.showNoInternetDialog();
        }
    }

    public void clearUserInput() {
        this.viewLogInWithOtpEditText.setText("");
    }

    public void setPhoneNumberInTitle(String str) {
        if (str == null || str.length() == 0) {
            str = null;
        } else {
            if (str.length() > 4 && str.contains("+98") && str.substring(0, 3).equalsIgnoreCase("+98")) {
                str = str.replace("+98", "0");
            }
            if (str.length() > 4 && str.contains("+۹۸") && str.substring(0, 3).equalsIgnoreCase("+۹۸")) {
                str = str.replace("+۹۸", "۰");
            }
        }
        String format = String.format(getContext().getResources().getString(R.string.please_enter_sent_verification_code), new Object[]{str});
        this.viewLogInWithOtpDescTextview.setTextColor(Color.parseColor("#85909b"));
        this.viewLogInWithOtpDescTextview.setText(format, TextView.BufferType.SPANNABLE);
        int indexOf = format.indexOf(str);
        ((Spannable) this.viewLogInWithOtpDescTextview.getText()).setSpan(new ForegroundColorSpan(Color.parseColor(SnappEditText.DEFAULT_TEXT_COLOR)), indexOf, str.length() + indexOf, 33);
    }
}
