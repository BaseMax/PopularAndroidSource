package cab.snapp.passenger.units.signup;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.c.c;
import cab.snapp.passenger.play.R;
import cab.snapp.snappdialog.b;
import cab.snapp.snappdialog.dialogViews.a.g;
import cab.snapp.snappuikit.SnappButton;
import cab.snapp.snappuikit.SnappCheckBox;
import cab.snapp.snappuikit.SnappEditText;
import cab.snapp.snappuikit.SnappLoading;

public class SignUpView extends ScrollView implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected b f1248a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public c f1249b;
    private b c;
    @BindView(2131362944)
    SnappEditText emailEditText;
    @BindView(2131362945)
    SnappEditText fullNameEditText;
    @BindView(2131362946)
    SnappLoading loading;
    @BindView(2131362951)
    SnappLoading loadingWithGoogle;
    @BindView(2131362947)
    SnappCheckBox newsLetterCheckBox;
    @BindView(2131362324)
    ViewGroup panelSeparatorLayout;
    @BindView(2131362948)
    SnappEditText passwordEditText;
    @BindView(2131362943)
    SnappButton signUpButton;
    @BindView(2131362949)
    SnappButton signUpWithGoogleButton;
    @BindView(2131362950)
    ViewGroup signUpWithGoogleLayout;

    public SignUpView(Context context) {
        super(context);
    }

    public SignUpView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SignUpView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362943})
    public void onSignUpClick() {
        this.f1249b.onSignUpClick();
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362949})
    public void onSignUpWithGoogleClick() {
        this.f1249b.onSignUpWithGoogleClick();
    }

    public void initListeners() {
        this.passwordEditText.getEditTextView().setOnEditorActionListener(new TextView.OnEditorActionListener() {
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return SignUpView.this.a(textView, i, keyEvent);
            }
        });
        this.newsLetterCheckBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SignUpView.this.a(compoundButton, z);
            }
        });
    }

    /* access modifiers changed from: private */
    public /* synthetic */ boolean a(TextView textView, int i, KeyEvent keyEvent) {
        onSignUpClick();
        return true;
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(CompoundButton compoundButton, boolean z) {
        c cVar = this.f1249b;
        if (cVar != null) {
            cVar.onNewsLetterCheckChanged(z);
        }
    }

    public void showLoading() {
        this.loading.setVisibility(0);
        this.signUpButton.setVisibility(8);
    }

    public void hideLoading() {
        this.loading.setVisibility(8);
        this.signUpButton.setVisibility(0);
    }

    public void showSignUpWithGoogleLoading() {
        this.loadingWithGoogle.setVisibility(0);
        this.signUpWithGoogleButton.setVisibility(8);
    }

    public void hideSignUpWithGoogleLoading() {
        this.loadingWithGoogle.setVisibility(8);
        this.signUpWithGoogleButton.setVisibility(0);
    }

    public void changeNewsLetterCheckBoxState(boolean z) {
        this.newsLetterCheckBox.setChecked(z);
    }

    public void showEmailError(int i) {
        this.emailEditText.showError(getContext().getString(i));
    }

    public void hideEmailError() {
        this.emailEditText.showInActive();
    }

    public void showPasswordError(int i) {
        this.passwordEditText.showError(getContext().getString(i));
    }

    public void hidePasswordError() {
        this.passwordEditText.showInActive();
    }

    public void showFullNameError(int i) {
        this.fullNameEditText.showError(getContext().getString(i));
    }

    public void hideFullNameError() {
        this.fullNameEditText.showInActive();
    }

    public void hideKeyboard() {
        c.tryHideKeyboard(getContext(), this);
    }

    public b showError(String str) {
        b bVar = this.f1248a;
        if (bVar != null && bVar.isShowing()) {
            this.f1248a.dismiss();
        }
        this.f1248a = new b.a(getContext()).setIconFont(R.string.ic_font_server_error).setDialogTitle(getContext().getString(R.string.error)).setTheme(0).isErrorInformation(true).setDialogViewType(new g.a().setMessage(str).build()).setPositiveButton(getContext().getString(R.string.ok), (View.OnClickListener) new View.OnClickListener() {
            public final void onClick(View view) {
                SignUpView.this.c(view);
            }
        }).showOnBuild(true).build();
        return this.f1248a;
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void c(View view) {
        this.f1248a.dismiss();
    }

    public void showSignUpLimitExceedDialog() {
        this.c = new b.a(getContext()).setIconFont(R.string.ic_font_server_error).setDialogTitle((int) R.string.max_secure_sign_up_title).setTheme(0).isErrorInformation(true).setDialogViewType(new g.a().setMessage(getContext().getString(R.string.max_secure_sign_up_content)).build()).setPositiveButton((int) R.string.support, (View.OnClickListener) new View.OnClickListener() {
            public final void onClick(View view) {
                SignUpView.this.b(view);
            }
        }).setNegativeButton((int) R.string.close, (View.OnClickListener) new View.OnClickListener() {
            public final void onClick(View view) {
                SignUpView.this.a(view);
            }
        }).build();
        this.c.show();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        this.f1249b.onEmailSupportClicked();
        dismissSignUpLimitExceedDialogIfNeeded();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        dismissSignUpLimitExceedDialogIfNeeded();
    }

    public void dismissSignUpLimitExceedDialogIfNeeded() {
        b bVar = this.c;
        if (bVar != null) {
            if (bVar.isShowing()) {
                this.c.dismiss();
            }
            this.c.cancel();
        }
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
        initListeners();
        this.fullNameEditText.addTextChangedListener(new TextWatcher() {
            public final void afterTextChanged(Editable editable) {
            }

            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (SignUpView.this.f1249b != null) {
                    SignUpView.this.f1249b.onFullNameTextChanged(charSequence.toString());
                }
            }
        });
        this.emailEditText.addTextChangedListener(new TextWatcher() {
            public final void afterTextChanged(Editable editable) {
            }

            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (SignUpView.this.f1249b != null) {
                    SignUpView.this.f1249b.onEmailTextChanged(charSequence.toString());
                }
            }
        });
        this.passwordEditText.addTextChangedListener(new TextWatcher() {
            public final void afterTextChanged(Editable editable) {
            }

            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (SignUpView.this.f1249b != null) {
                    SignUpView.this.f1249b.onPasswordTextChanged(charSequence.toString());
                }
            }
        });
        this.passwordEditText.getEditTextView().setTypeface(ResourcesCompat.getFont(getContext(), R.font.iran_sans_mobile_medium));
        this.passwordEditText.getEditTextView().setTransformationMethod(new PasswordTransformationMethod());
        if (cab.snapp.passenger.f.g.isCurrentLocalRtl()) {
            this.passwordEditText.getEditTextView().setGravity(5);
        } else {
            this.passwordEditText.getEditTextView().setGravity(3);
        }
        this.passwordEditText.getEditTextView().addTextChangedListener(new TextWatcher() {
            public final void afterTextChanged(Editable editable) {
            }

            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (!charSequence.toString().isEmpty()) {
                    SignUpView.this.passwordEditText.getEditTextView().setGravity(3);
                } else if (cab.snapp.passenger.f.g.isCurrentLocalRtl()) {
                    SignUpView.this.passwordEditText.getEditTextView().setGravity(5);
                }
            }
        });
    }

    public void setPresenter(c cVar) {
        this.f1249b = cVar;
    }
}
