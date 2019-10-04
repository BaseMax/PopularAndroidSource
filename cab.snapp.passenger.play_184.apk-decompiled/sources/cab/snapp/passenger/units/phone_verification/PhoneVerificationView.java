package cab.snapp.passenger.units.phone_verification;

import android.content.Context;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.snappuikit.SnappEditText;
import cab.snapp.snappuikit.b;

public class PhoneVerificationView extends RelativeLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f1012a;
    @BindView(2131362773)
    AppCompatTextView codeExpireTimeTv;
    @BindView(2131362776)
    SnappEditText enterPhoneNumberEt;
    @BindView(2131362775)
    SnappEditText enterVerificationCodeEt;
    @BindView(2131362774)
    AppCompatTextView mainDescTv;
    @BindView(2131362778)
    AppCompatTextView negativeBtnTextView;
    @BindView(2131362779)
    TextView positiveBtnTextView;
    @BindView(2131362780)
    LinearLayout resendBtnAreaLayout;
    @BindView(2131362781)
    AppCompatTextView resendCodeBySmsBtn;
    @BindView(2131362782)
    AppCompatTextView titleTv;

    public PhoneVerificationView(Context context) {
        super(context);
    }

    public PhoneVerificationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PhoneVerificationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @OnClick({2131362781})
    public void onResendBySmsClicked() {
        c cVar = this.f1012a;
        if (cVar != null) {
            cVar.onResendCodeBySmsClicked();
        }
    }

    @OnClick({2131362779})
    public void onPositiveBtnClicked() {
        c cVar = this.f1012a;
        if (cVar != null) {
            cVar.onPositiveButtonClicked();
        }
    }

    @OnClick({2131362778})
    public void onNegativeBtnClicked() {
        c cVar = this.f1012a;
        if (cVar != null) {
            cVar.onNegativeButtonClicked();
        }
    }

    public void showMessage(int i, int i2) {
        if (getContext() != null) {
            showMessage(getContext().getString(i), i2);
        }
    }

    public void showMessage(String str, int i) {
        if (getContext() != null) {
            b.makeText(getContext(), str).textColor(getContext().getResources().getColor(i)).show();
        }
    }

    public void setListeners(TextWatcher textWatcher, TextWatcher textWatcher2) {
        this.enterPhoneNumberEt.addTextChangedListener(textWatcher);
        this.enterVerificationCodeEt.addTextChangedListener(textWatcher2);
    }

    public void setPositiveBtnText(String str) {
        this.positiveBtnTextView.setText(str);
    }

    public void setNegativeBtnText(String str) {
        this.negativeBtnTextView.setText(str);
    }

    public void setTitleText(String str) {
        this.titleTv.setText(str);
    }

    public void setDescriptionText(String str) {
        this.mainDescTv.setText(str);
    }

    public void setDescriptionGravity(int i) {
        if (getContext() != null) {
            this.mainDescTv.setGravity(i);
        }
    }

    public void setPhoneNumberEditTextVisibility(int i) {
        this.enterPhoneNumberEt.setVisibility(i);
    }

    public void setVerificationEditTextVisibility(int i) {
        this.enterVerificationCodeEt.setVisibility(i);
    }

    public void setCodeExpireTimeTextVisibility(int i) {
        this.codeExpireTimeTv.setVisibility(i);
    }

    public void setResendButtonAreaLayoutVisibility(int i) {
        this.resendBtnAreaLayout.setVisibility(i);
    }

    public void setVerificationText(String str) {
        this.enterVerificationCodeEt.setText(str);
    }

    public String getCodeExpireTimeText() {
        return this.codeExpireTimeTv.getText().toString();
    }

    public void setCodeExpireTimeText(String str) {
        this.codeExpireTimeTv.setText(str, TextView.BufferType.SPANNABLE);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
    }

    public void setPresenter(c cVar) {
        this.f1012a = cVar;
    }
}
