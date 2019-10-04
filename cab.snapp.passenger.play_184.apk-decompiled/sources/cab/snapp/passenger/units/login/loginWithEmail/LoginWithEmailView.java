package cab.snapp.passenger.units.login.loginWithEmail;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ScrollView;
import androidx.core.content.res.ResourcesCompat;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.c.c;
import cab.snapp.passenger.play.R;
import cab.snapp.snappdialog.b;
import cab.snapp.snappdialog.dialogViews.a.d;
import cab.snapp.snappdialog.dialogViews.a.f;
import cab.snapp.snappdialog.dialogViews.a.g;
import cab.snapp.snappuikit.SnappEditText;

public class LoginWithEmailView extends ScrollView implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected b f826a;

    /* renamed from: b  reason: collision with root package name */
    private c f827b;
    private b c;
    private b d;
    private b e;
    private b f;
    @BindView(2131362643)
    public SnappEditText viewLogInEmailEditText;
    @BindView(2131362645)
    public SnappEditText viewLogInPasswordEditText;

    public LoginWithEmailView(Context context) {
        super(context);
    }

    public LoginWithEmailView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public LoginWithEmailView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @OnClick({2131362649})
    public void loginWithGoogle() {
        c cVar = this.f827b;
        if (cVar != null) {
            cVar.loginWithGoogleClicked();
        }
    }

    @OnClick({2131362656})
    public void loginWithPhone() {
        c cVar = this.f827b;
        if (cVar != null) {
            cVar.loginWithPhoneNumberClicked();
        }
    }

    @OnClick({2131362642})
    public void login() {
        c cVar = this.f827b;
        if (cVar != null) {
            cVar.loginClicked();
        }
    }

    @OnClick({2131362648})
    public void signUp() {
        c cVar = this.f827b;
        if (cVar != null) {
            cVar.signUpClicked();
        }
    }

    @OnClick({2131362644})
    public void forgetPassword() {
        c cVar = this.f827b;
        if (cVar != null) {
            cVar.forgetPasswordClicked();
        }
    }

    public void setEmailAndPasswordTextWatchers(TextWatcher textWatcher, TextWatcher textWatcher2) {
        this.viewLogInEmailEditText.addTextChangedListener(textWatcher);
        this.viewLogInPasswordEditText.addTextChangedListener(textWatcher2);
    }

    public void showErrorOnEmail(int i) {
        this.viewLogInEmailEditText.showError(getContext().getString(i));
    }

    public void hideErrorOnEmail() {
        this.viewLogInEmailEditText.showError("");
        this.viewLogInEmailEditText.showInActive();
    }

    public void showErrorOnPassword(int i) {
        this.viewLogInPasswordEditText.showError(getContext().getString(i));
    }

    public void hideErrorOnPassword() {
        this.viewLogInPasswordEditText.showError("");
        this.viewLogInPasswordEditText.showInActive();
    }

    public void resetInputs() {
        this.viewLogInEmailEditText.showInActive();
        this.viewLogInPasswordEditText.showInActive();
    }

    public void showErrorToUser(String str) {
        this.f826a = new b.a(getContext()).setIconFont(R.string.ic_font_server_error).setDialogTitle(getContext().getString(R.string.error)).setTheme(0).isErrorInformation(true).setDialogViewType(new g.a().setMessage(str).build()).setPositiveButton(getContext().getString(R.string.ok), (View.OnClickListener) new View.OnClickListener() {
            public final void onClick(View view) {
                LoginWithEmailView.this.d(view);
            }
        }).showOnBuild(true).build();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void d(View view) {
        this.f826a.dismiss();
    }

    public void showErrorToUser(int i) {
        showErrorToUser(getContext().getString(i));
    }

    public void hideLoadingDialog() {
        b bVar = this.c;
        if (bVar != null) {
            if (bVar.isShowing()) {
                this.c.dismiss();
            }
            this.c.cancel();
        }
    }

    public void showLoadingDialog() {
        if (getContext() != null) {
            if (this.c == null) {
                this.c = new b.a(getContext()).setTheme(0).setDialogViewType(new f.a().setTitle(getContext().getString(R.string.please_wait)).build()).setCancelable(false).showOnBuild(false).build();
            }
            this.c.show();
        }
    }

    public void hideKeyboard() {
        c.tryHideKeyboard(getContext(), this);
    }

    public String getEmailText() {
        return this.viewLogInEmailEditText.getText();
    }

    public String getPasswordText() {
        return this.viewLogInPasswordEditText.getText();
    }

    public void showEmailNotVerifiedDialog() {
        dismissEmailNotVerifiedDialogIfPossible();
        this.d = new b.a(getContext()).setIconFont(R.string.ic_font_server_error).setDialogTitle((int) R.string.error).setDialogViewType(new g.a().setMessage(getContext().getString(R.string.email_not_verified)).build()).setPositiveButton((int) R.string.ok, (View.OnClickListener) new View.OnClickListener() {
            public final void onClick(View view) {
                LoginWithEmailView.this.c(view);
            }
        }).setNegativeButton((int) R.string.send_verification_email_again, (View.OnClickListener) new View.OnClickListener() {
            public final void onClick(View view) {
                LoginWithEmailView.this.b(view);
            }
        }).build();
        this.d.show();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void c(View view) {
        dismissEmailNotVerifiedDialogIfPossible();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        this.f827b.onResendVerificationEmailClicked();
    }

    public void dismissEmailNotVerifiedDialogIfPossible() {
        b bVar = this.d;
        if (bVar != null) {
            if (bVar.isShowing()) {
                this.d.dismiss();
            }
            this.d.cancel();
        }
    }

    public void showEmailVerificationDialog(TextWatcher textWatcher, View.OnClickListener onClickListener) {
        if (getContext() != null) {
            dismissEmailVerificationDialogIfPossible();
            this.e = new b.a(getContext()).setIconFont(R.string.ic_font_email_verify).setDialogTitle((int) R.string.send_verification_email_again).dismissOnButtonClick(402).setDialogViewType(new d.a().setFirstEtTextWatcher(textWatcher).setFirstEditTextHint(getContext().getString(R.string.view_sign_up_email_hint)).build()).setNegativeButtonText((int) R.string.close).setPositiveButton((int) R.string.next, (View.OnClickListener) new View.OnClickListener(onClickListener) {
                private final /* synthetic */ View.OnClickListener f$1;

                {
                    this.f$1 = r2;
                }

                public final void onClick(View view) {
                    LoginWithEmailView.this.a(this.f$1, view);
                }
            }).build();
            this.e.show();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View.OnClickListener onClickListener, View view) {
        c.tryHideKeyboard(getContext(), this);
        onClickListener.onClick(view);
    }

    public void dismissEmailVerificationDialogIfPossible() {
        b bVar = this.e;
        if (bVar != null) {
            if (bVar.isShowing()) {
                this.e.dismiss();
            }
            this.e.cancel();
        }
    }

    public void showMessage(String str) {
        if (getContext() != null) {
            cab.snapp.snappuikit.b.makeText(getContext(), str).textColor(getContext().getResources().getColor(R.color.cherry)).show();
        }
    }

    public void showMessageDialog(String str) {
        b bVar = this.f;
        if (bVar != null) {
            if (bVar.isShowing()) {
                this.f.dismiss();
            }
            this.f.cancel();
        }
        this.f = new b.a(getContext()).setIconFont(R.string.ic_font_email_verify).setDialogTitle(getContext().getString(R.string.email_verifcation)).setTheme(0).setDialogViewType(new g.a().setMessage(str).build()).setPositiveButton(getContext().getString(R.string.ok), (View.OnClickListener) new View.OnClickListener() {
            public final void onClick(View view) {
                LoginWithEmailView.this.a(view);
            }
        }).showOnBuild(true).build();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        this.f.dismiss();
    }

    public void initField(String str, String str2) {
        this.viewLogInEmailEditText.setText(str);
        this.viewLogInPasswordEditText.setText(str2);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
        this.viewLogInPasswordEditText.getEditTextView().setTypeface(ResourcesCompat.getFont(getContext(), R.font.iran_sans_mobile_medium));
        this.viewLogInPasswordEditText.getEditTextView().setTransformationMethod(new PasswordTransformationMethod());
        this.viewLogInPasswordEditText.getEditTextView().addTextChangedListener(new TextWatcher() {
            public final void afterTextChanged(Editable editable) {
            }

            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (!charSequence.toString().isEmpty()) {
                    LoginWithEmailView.this.viewLogInPasswordEditText.getEditTextView().setGravity(3);
                } else if (cab.snapp.passenger.f.g.isCurrentLocalRtl()) {
                    LoginWithEmailView.this.viewLogInPasswordEditText.getEditTextView().setGravity(5);
                }
            }
        });
    }

    public void setPresenter(c cVar) {
        this.f827b = cVar;
    }
}
