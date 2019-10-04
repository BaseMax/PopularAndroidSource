package cab.snapp.passenger.units.forgot_password;

import android.content.Context;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.c.c;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappButton;
import cab.snapp.snappuikit.SnappEditText;
import cab.snapp.snappuikit.SnappLoading;
import cab.snapp.snappuikit.b;

public class ForgotPasswordView extends RelativeLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    private c f808a;
    @BindView(2131362633)
    SnappEditText emailEditText;
    @BindView(2131362634)
    SnappLoading loading;
    @BindView(2131362635)
    SnappButton sendButton;

    public ForgotPasswordView(Context context) {
        super(context);
    }

    public ForgotPasswordView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ForgotPasswordView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362635})
    public void onSendButtonClicked() {
        c cVar = this.f808a;
        if (cVar != null) {
            cVar.onSendButtonClicked();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        this.f808a.onBackPressed();
    }

    public void showLoading() {
        this.loading.setVisibility(0);
        this.sendButton.setVisibility(8);
    }

    public void hideLoading() {
        this.loading.setVisibility(8);
        this.sendButton.setVisibility(0);
    }

    public void setEditTextListeners(TextView.OnEditorActionListener onEditorActionListener, TextWatcher textWatcher) {
        SnappEditText snappEditText = this.emailEditText;
        if (snappEditText != null && snappEditText.getEditTextView() != null) {
            this.emailEditText.getEditTextView().setOnEditorActionListener(onEditorActionListener);
            this.emailEditText.getEditTextView().addTextChangedListener(textWatcher);
        }
    }

    public void hideKeyboard() {
        Context context = getContext();
        if (context != null) {
            c.tryHideKeyboard(context, this);
        }
    }

    public void showError(int i) {
        if (getContext() != null) {
            b.makeText(getContext(), getContext().getString(i)).textColor(getContext().getResources().getColor(R.color.cherry)).show();
        }
    }

    public void showSuccessMessage(String str) {
        b.makeText(getContext(), str).show();
    }

    public void showEmailError(int i) {
        this.emailEditText.showError(getContext().getString(i));
    }

    public void hideEmailError() {
        this.emailEditText.showInActive();
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
        cab.snapp.snappuikit.c cVar = new cab.snapp.snappuikit.c(this);
        cVar.setTitle((int) R.string.forgot_password_dialog);
        cVar.setBackButton(R.drawable.arrow_back_white, new View.OnClickListener() {
            public final void onClick(View view) {
                ForgotPasswordView.this.a(view);
            }
        });
    }

    public void setPresenter(c cVar) {
        this.f808a = cVar;
    }
}
