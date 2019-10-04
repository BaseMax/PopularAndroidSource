package cab.snapp.passenger.units.skippable_mobile_verification;

import android.content.Context;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatTextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.c.c;
import cab.snapp.passenger.f.g;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappEditText;
import cab.snapp.snappuikit.b;
import com.alimuzaffar.lib.pin.PinEntryEditText;

public class SkippablePhoneVerificationView extends LinearLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f1264a;

    /* renamed from: b  reason: collision with root package name */
    protected Unbinder f1265b;
    @BindView(2131362952)
    ImageView bigIcon;
    @BindView(2131362953)
    TextView codeErrorTextView;
    @BindView(2131362955)
    View codeLoading;
    @BindView(2131362957)
    Button nextButton;
    @BindView(2131362959)
    SnappEditText phoneEditText;
    @BindView(2131362958)
    View phoneEntryLayout;
    @BindView(2131362954)
    View phoneLoading;
    @BindView(2131362962)
    TextView phoneNumberTextView;
    @BindView(2131362960)
    PinEntryEditText pinInputView;
    @BindView(2131362964)
    View retryCodeView;
    @BindView(2131362956)
    AppCompatButton smsResendButton;
    @BindView(2131362965)
    ImageButton toolbarBackButton;
    @BindView(2131362966)
    AppCompatTextView toolbarTextView;
    @BindView(2131362963)
    View verificationLayout;

    public SkippablePhoneVerificationView(Context context) {
        super(context);
    }

    public SkippablePhoneVerificationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SkippablePhoneVerificationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362965})
    public void onToolbarBackPressed() {
        this.f1264a.onToolbarBackPressed();
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362966})
    public void onToolbarTextBackPressed() {
        this.f1264a.onToolbarBackPressed();
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362957})
    public void onNextClicked() {
        this.f1264a.onNextClicked();
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362964})
    public void onRetryCodeClicked() {
        this.f1264a.onRetryCodeClicked();
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362956})
    public void onSmsResendClicked() {
        this.f1264a.onSmsResendClicked();
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362961})
    public void onSkipClicked() {
        this.f1264a.onSkipClicked();
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f1265b = ButterKnife.bind((Object) this, (View) this);
        g.setLayoutDirectionBasedOnLocale(this);
        this.phoneEditText.getEditTextView().setFilters(new InputFilter[]{new InputFilter.LengthFilter(11)});
        this.pinInputView.setMaxLength(6);
    }

    public void showKeyboard() {
        if (getContext() != null) {
            c.showKeyboard(getContext(), this.pinInputView);
        }
    }

    public void hideKeyboard() {
        c.tryHideKeyboard(getContext(), this);
    }

    public void setPhoneNumberTextWatcher(TextWatcher textWatcher) {
        this.phoneEditText.addTextChangedListener(textWatcher);
    }

    public void setPhoneNumberImeAction(TextView.OnEditorActionListener onEditorActionListener) {
        this.phoneEditText.getEditTextView().setOnEditorActionListener(onEditorActionListener);
    }

    public void enableNextButton() {
        this.nextButton.setEnabled(true);
        this.nextButton.setBackgroundResource(R.drawable.shape_button_rounded_green_blue);
        this.nextButton.setTextColor(getResources().getColor(R.color.pure_white));
    }

    public void disableNextButton() {
        this.nextButton.setEnabled(false);
        this.nextButton.setBackgroundResource(R.drawable.shape_rounded_gray);
        this.nextButton.setTextColor(getResources().getColor(R.color.pure_white));
    }

    public void enableEditTextCallIcon() {
        this.phoneEditText.setEditTextIconActivated(true);
    }

    public void disableEditTextCallIcon() {
        this.phoneEditText.setEditTextIconActivated(false);
    }

    public void hideNextButton() {
        this.nextButton.setVisibility(8);
    }

    public void showNextButton() {
        this.nextButton.setVisibility(0);
    }

    public void setPinCompleteListener(PinEntryEditText.a aVar) {
        this.pinInputView.setOnPinEnteredListener(aVar);
    }

    public void setBigIcon(int i) {
        this.bigIcon.setImageResource(i);
    }

    public void showToolbar() {
        this.toolbarBackButton.setVisibility(0);
        this.toolbarTextView.setVisibility(0);
    }

    public void hideToolbar() {
        this.toolbarBackButton.setVisibility(8);
        this.toolbarTextView.setVisibility(8);
    }

    public void showRetryCodeButton() {
        this.retryCodeView.setVisibility(0);
    }

    public void hideRetryCodeButton() {
        this.retryCodeView.setVisibility(8);
    }

    public void showCodeErrorMessage() {
        this.codeErrorTextView.setVisibility(0);
    }

    public void hideCodeErrorMessage() {
        this.codeErrorTextView.setVisibility(8);
    }

    public void setCodeErrorMessage(int i) {
        this.codeErrorTextView.setText(i);
    }

    public void setCodeErrorMessage(String str) {
        this.codeErrorTextView.setText(str);
    }

    public void clearCodeInputView() {
        this.pinInputView.setText("");
        this.pinInputView.setError(false);
    }

    public void enableCodeInputView() {
        this.pinInputView.setEnabled(true);
    }

    public void showPhoneEntryLayout() {
        this.phoneEntryLayout.setVisibility(0);
    }

    public void hidePhoneEntryLayout() {
        this.phoneEntryLayout.setVisibility(8);
    }

    public void showVerificationLayout() {
        this.verificationLayout.setVisibility(0);
    }

    public void hideVerificationLayout() {
        this.verificationLayout.setVisibility(8);
    }

    public void setPhoneText(String str) {
        this.phoneNumberTextView.setText(str);
    }

    public void hideCodeLoading() {
        this.codeLoading.setVisibility(8);
    }

    public void showCodeLoading() {
        this.codeLoading.setVisibility(0);
    }

    public void hidePhoneLoading() {
        this.phoneLoading.setVisibility(8);
    }

    public void showPhoneLoading() {
        this.phoneLoading.setVisibility(0);
    }

    public void enableSmsResendButton() {
        this.smsResendButton.setEnabled(true);
    }

    public void disableSmsResendButton() {
        this.smsResendButton.setEnabled(false);
    }

    public void setSmsResendButtonColor(int i) {
        this.smsResendButton.setTextColor(getContext().getResources().getColor(i));
    }

    public void setSmsResendButtonText(String str) {
        this.smsResendButton.setText(str);
    }

    public void setSmsResendButtonText(int i) {
        if (getContext() != null) {
            this.smsResendButton.setText(getContext().getResources().getString(i));
        }
    }

    public void showSmsResendButton() {
        this.smsResendButton.setVisibility(0);
    }

    public void hideSmsResendButton() {
        this.smsResendButton.setVisibility(8);
    }

    public String getCode() {
        return this.pinInputView.getText().toString();
    }

    public void showToast(int i, int i2) {
        if (getContext() != null) {
            showToast(getContext().getResources().getString(i), i2);
        }
    }

    public void showToast(String str, int i) {
        if (getContext() != null) {
            b.makeText(getContext(), str).textColor(getContext().getResources().getColor(i)).show();
        }
    }

    public void showPhoneError(int i) {
        this.phoneEditText.showError(getContext().getString(i));
    }

    public void hidePhoneError() {
        this.phoneEditText.showInActive();
    }

    public void setPresenter(c cVar) {
        this.f1264a = cVar;
    }
}
