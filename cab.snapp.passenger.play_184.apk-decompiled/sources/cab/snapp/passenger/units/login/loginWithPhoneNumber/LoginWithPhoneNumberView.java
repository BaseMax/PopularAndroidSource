package cab.snapp.passenger.units.login.loginWithPhoneNumber;

import android.content.Context;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.appcompat.widget.AppCompatTextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.passenger.play.R;
import cab.snapp.snappdialog.b;
import cab.snapp.snappdialog.dialogViews.a.f;
import cab.snapp.snappdialog.dialogViews.a.g;
import cab.snapp.snappuikit.SnappButton;
import cab.snapp.snappuikit.SnappEditText;

public class LoginWithPhoneNumberView extends ScrollView implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f866a;

    /* renamed from: b  reason: collision with root package name */
    private b f867b;
    @BindView(2131362658)
    LinearLayout backLayout;
    private b c;
    @BindView(2131362402)
    AppCompatTextView relativeAuthEnterPhoneTv;
    @BindView(2131362646)
    SnappEditText viewLogInPhoneEditText;
    @BindView(2131362647)
    SnappButton viewLogInSendCodeButton;

    public LoginWithPhoneNumberView(Context context) {
        super(context);
    }

    public LoginWithPhoneNumberView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public LoginWithPhoneNumberView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @OnClick({2131362647})
    public void sendPhoneNumber() {
        c cVar = this.f866a;
        if (cVar != null) {
            cVar.onSendPhoneNumberClicked();
        }
    }

    @OnClick({2131362658})
    public void onBackClicked() {
        c cVar = this.f866a;
        if (cVar != null) {
            cVar.onBackClicked();
        }
    }

    public void enableSendButton() {
        this.viewLogInSendCodeButton.setEnabled(true);
    }

    public void disableSendButton() {
        this.viewLogInSendCodeButton.setEnabled(false);
    }

    public void showErrorDialog(String str) {
        this.c = new b.a(getContext()).setIconFont(R.string.ic_font_server_error).setDialogTitle(getContext().getString(R.string.error)).setTheme(0).isErrorInformation(true).setDialogViewType(new g.a().setMessage(str).build()).setPositiveButton(getContext().getString(R.string.ok), (View.OnClickListener) new View.OnClickListener() {
            public final void onClick(View view) {
                LoginWithPhoneNumberView.this.a(view);
            }
        }).showOnBuild(true).build();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        this.c.dismiss();
    }

    public void showErrorDialog(int i) {
        showErrorDialog(getContext().getString(i));
    }

    public String getPhoneNumber() {
        return this.viewLogInPhoneEditText.getText();
    }

    public void showLoading() {
        if (getContext() != null) {
            if (this.f867b == null) {
                this.f867b = new b.a(getContext()).setTheme(0).setDialogViewType(new f.a().setTitle(getContext().getString(R.string.please_wait)).build()).setCancelable(false).build();
            }
            this.f867b.show();
        }
    }

    public void hideLoading() {
        b bVar = this.f867b;
        if (bVar != null) {
            if (bVar.isShowing()) {
                this.f867b.dismiss();
            }
            this.f867b.cancel();
        }
    }

    public void setPhoneTextChangeListener(TextWatcher textWatcher) {
        this.viewLogInPhoneEditText.addTextChangedListener(textWatcher);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
        disableSendButton();
    }

    public void setPresenter(c cVar) {
        this.f866a = cVar;
    }
}
