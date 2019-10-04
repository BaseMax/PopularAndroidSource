package cab.snapp.passenger.units.payment;

import android.content.Context;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.UnderlineSpan;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.content.ContextCompat;
import butterknife.BindView;
import butterknife.BindViews;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.passenger.data_access_layer.network.responses.PaymentType;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.r;
import cab.snapp.passenger.play.R;
import cab.snapp.snappdialog.b;
import cab.snapp.snappdialog.dialogViews.a.f;
import cab.snapp.snappdialog.dialogViews.a.g;
import cab.snapp.snappuikit.SnappLoading;
import java.util.List;

public class PaymentView extends RelativeLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f981a;
    @BindView(2131362732)
    ViewGroup amountNeededForChargeLayout;
    @BindView(2131362733)
    AppCompatTextView amountNeededForChargeTextView;
    @BindView(2131362996)
    AppCompatTextView apWalletActivationDescriptionTextView;
    @BindView(2131362734)
    LinearLayout apWalletActivationLayout;

    /* renamed from: b  reason: collision with root package name */
    protected Unbinder f982b;
    @BindView(2131362735)
    View bottomMessageLayout;
    @BindView(2131362736)
    TextView bottomMessageTextView;
    private r c;
    @BindView(2131362738)
    ViewGroup currentCreditLayout;
    @BindView(2131362739)
    TextView currentCreditTextView;
    private b d;
    @BindView(2131362740)
    LinearLayout decreaseRequestingChargeValueLayout;
    @BindView(2131362090)
    View dividerHeader;
    @BindView(2131362742)
    TextView donateDescTextView;
    @BindView(2131362743)
    TextView donateDoneAmountTextView;
    @BindView(2131362744)
    ViewGroup donateDoneLayout;
    @BindView(2131362745)
    TextView donateDoneTitleTextView;
    @BindView(2131362746)
    ViewGroup donateLayout;
    @BindView(2131362748)
    SwitchCompat donateSwitch;
    @BindView(2131362749)
    TextView donateTitleTextView;
    private b e;
    @BindView(2131362755)
    LinearLayout increaseRequestingChargeValueLayout;
    @BindView(2131362757)
    Button payButton;
    @BindView(2131362765)
    View payableCostInCashOrUssdLayout;
    @BindView(2131362766)
    TextView payableCostInCashOrUssdTitleTextView;
    @BindView(2131362767)
    TextView payableCostInCashOrUssdValueTextView;
    @BindView(2131362758)
    SnappLoading paymentActionLoading;
    @BindView(2131362759)
    FrameLayout paymentDoneLayout;
    @BindView(2131362760)
    AppCompatTextView paymentDoneTypeTextView;
    @BindView(2131362761)
    AppCompatTextView paymentMethodTitleTextView;
    @BindView(2131362762)
    View paymentTypeButtonLayout;
    @BindViews({2131362752, 2131362768, 2131362769, 2131362753})
    List<Button> paymentTypeButtons;
    @BindView(2131362323)
    LinearLayout retryButton;
    @BindView(2131362750)
    LinearLayout retryPanel;
    @BindView(2131362751)
    TextView retryTextView;
    @BindView(2131362763)
    View rideCostLayout;
    @BindView(2131362764)
    TextView rideCostTextView;
    @BindView(2131362756)
    View transferCreditLayout;

    @OnClick({2131362323})
    public void retryAp() {
    }

    public PaymentView(Context context) {
        super(context);
    }

    public PaymentView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PaymentView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @OnClick({2131362752, 2131362768, 2131362769, 2131362753})
    public void onlinePaymentMethodClick(View view) {
        if (view.getTag() != null && (view.getTag() instanceof PaymentType)) {
            int x = (int) view.getX();
            if (!(view.getWidth() == 0 || this.paymentTypeButtonLayout.getWidth() == 0)) {
                x = (x - (this.paymentTypeButtonLayout.getWidth() / 2)) + (view.getWidth() / 2);
            }
            this.paymentTypeButtonLayout.scrollTo(x, 0);
            this.f981a.paymentTypeSelected(((PaymentType) view.getTag()).getType());
        }
    }

    @OnClick({2131362747})
    public void donateDescriptionClick() {
        c cVar = this.f981a;
        if (cVar.getInteractor() != null) {
            cVar.f1010b.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Donate link clicked");
            ((a) cVar.getInteractor()).donateDescription();
        }
    }

    @OnClick({2131362755})
    public void increaseOfAmountRequestingChargeClick(View view) {
        this.f981a.increaseAmountOfRequestingChargeClicked();
    }

    @OnClick({2131362740})
    public void decreaseOfAmountRequestingChargeClick(View view) {
        this.f981a.decreaseAmountOfRequestingChargeClicked();
    }

    @OnClick({2131362757})
    public void onPayClick() {
        this.f981a.payClicked();
    }

    @OnClick({2131362770})
    public void onTransferCreditClick() {
        if (this.d == null) {
            this.d = new b.a(getContext()).setTheme(1).dismissOnButtonClick(402).setDialogViewType(new g.a().setMessage(getContext().getString(R.string.transfer_credit_dialog_description)).build()).setCancelable(true).showOnBuild(false).setDialogTitle((int) R.string.transfer_snapp_credit).setNegativeButtonText((int) R.string.dismiss).setPositiveButton((int) R.string.transfer_credit, (View.OnClickListener) new View.OnClickListener() {
                public final void onClick(View view) {
                    PaymentView.this.b(view);
                }
            }).build();
        }
        this.d.show();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        if (this.e == null) {
            this.e = new b.a(getContext()).setTheme(0).setDialogViewType(new f.a().setTitle(getContext().getString(R.string.please_wait)).build()).setCancelable(false).showOnBuild(false).build();
        }
        this.d.dismiss();
        this.e.show();
        this.f981a.transferSnappCreditToAp();
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f982b = ButterKnife.bind((Object) this, (View) this);
        this.c = new r(getContext());
        this.donateSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                PaymentView.this.a(compoundButton, z);
            }
        });
        cab.snapp.snappuikit.c cVar = new cab.snapp.snappuikit.c(this);
        cVar.setBackButton(R.drawable.ic_chevron_right_24_dp, new View.OnClickListener() {
            public final void onClick(View view) {
                PaymentView.this.a(view);
            }
        });
        cVar.setTitle((int) R.string.pay_cost);
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(CompoundButton compoundButton, boolean z) {
        this.f981a.donateSwitched(z);
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        this.f981a.onBackPressed();
    }

    public void setPresenter(c cVar) {
        this.f981a = cVar;
    }

    public void showLoadingDialog() {
        r rVar = this.c;
        if (rVar != null) {
            rVar.showLoadingDialog();
        }
    }

    public void hideLoadingDialog() {
        r rVar = this.c;
        if (rVar != null) {
            rVar.hideLoadingDialog();
        }
    }

    public void showErrorDialog(String str) {
        r rVar = this.c;
        if (rVar != null) {
            rVar.showErrorDialog(str);
        }
    }

    public void showErrorToast(int i) {
        if (getContext() != null) {
            cab.snapp.snappuikit.b.makeText(getContext(), getContext().getResources().getString(i)).textColor(getContext().getResources().getColor(R.color.cherry)).show();
        }
    }

    public void showErrorToast(String str) {
        if (getContext() != null) {
            cab.snapp.snappuikit.b.makeText(getContext(), str).textColor(getContext().getResources().getColor(R.color.cherry)).show();
        }
    }

    public void showToast(int i) {
        if (getContext() != null) {
            cab.snapp.snappuikit.b.makeText(getContext(), getContext().getResources().getString(i)).show();
        }
    }

    public void showToast(String str) {
        if (getContext() != null) {
            cab.snapp.snappuikit.b.makeText(getContext(), str).show();
        }
    }

    public void hidePaymentMethodTitle() {
        this.paymentMethodTitleTextView.setVisibility(8);
    }

    public void setTypeOfDonePaymentText(int i) {
        this.paymentDoneTypeTextView.setText(i);
    }

    public void setTypeOfDonePaymentText(String str) {
        this.paymentDoneTypeTextView.setText(str);
    }

    public void setVisibilityOfIncreaseDecreaseAmountAndPayButton(int i) {
        this.increaseRequestingChargeValueLayout.setVisibility(i);
        this.payButton.setVisibility(i);
        this.decreaseRequestingChargeValueLayout.setVisibility(i);
    }

    public void showIncreaseDecreaseAmountAndPayButton() {
        this.increaseRequestingChargeValueLayout.setVisibility(0);
        this.payButton.setVisibility(0);
        this.decreaseRequestingChargeValueLayout.setVisibility(0);
    }

    public void hidePaymentButton() {
        this.paymentTypeButtonLayout.setVisibility(8);
    }

    public void showPaymentDoneLayout() {
        this.paymentDoneLayout.setVisibility(0);
    }

    public void setAmountNeededForChargeTextView(String str) {
        this.amountNeededForChargeTextView.setText(str);
    }

    public void showBottomMessageLayout() {
        this.bottomMessageLayout.setVisibility(0);
    }

    public void hideBottomMessageLayout() {
        this.bottomMessageLayout.setVisibility(4);
    }

    public void setBottomMessageText(int i) {
        setBottomMessageText(getContext().getString(i));
    }

    public void setBottomMessageText(String str) {
        this.bottomMessageTextView.setText(str);
    }

    public void setBottomMessageTextColor(int i) {
        this.bottomMessageTextView.setTextColor(getContext().getResources().getColor(i));
    }

    public void showPayLoading() {
        this.paymentActionLoading.setVisibility(0);
        this.payButton.setVisibility(8);
    }

    public void hidePayLoading() {
        this.paymentActionLoading.setVisibility(8);
        this.payButton.setVisibility(0);
    }

    public void setRideCostText(String str) {
        this.rideCostTextView.setText(str);
    }

    public void showPayableCostInCashOrUssdLayout() {
        this.payableCostInCashOrUssdLayout.setVisibility(0);
    }

    public void hidePayableCostInCashOrUssdLayout() {
        this.payableCostInCashOrUssdLayout.setVisibility(8);
    }

    public void setPayableCostInCashOrUssdTitleText(String str) {
        this.payableCostInCashOrUssdTitleTextView.setText(str);
    }

    public void setPayableCostInCashOrUssdValueText(String str) {
        this.payableCostInCashOrUssdValueTextView.setText(str);
    }

    public void setCurrentCreditText(String str) {
        this.currentCreditTextView.setText(str);
    }

    public void setPayButtonText(String str) {
        this.payButton.setText(str);
    }

    public void showOnlyPayButton() {
        this.payButton.setVisibility(0);
    }

    public void hidePayButton() {
        this.payButton.setVisibility(4);
    }

    public void showCurrentCreditLayout() {
        this.currentCreditLayout.setVisibility(0);
    }

    public void hideCurrentCreditLayout() {
        this.currentCreditLayout.setVisibility(8);
    }

    public void showAmountNeededForChargeLayout() {
        this.amountNeededForChargeLayout.setVisibility(0);
    }

    public void hideAmountNeededForChargeLayout() {
        this.amountNeededForChargeLayout.setVisibility(8);
    }

    public void showDonateLayout() {
        this.donateLayout.setVisibility(0);
    }

    public void hideDonateLayout() {
        this.donateLayout.setVisibility(8);
    }

    public void showIncreaseAndDecreaseLayout() {
        this.increaseRequestingChargeValueLayout.setVisibility(0);
        showDecreaseButton();
    }

    public void hideIncreaseAndDecreaseLayout() {
        this.increaseRequestingChargeValueLayout.setVisibility(4);
        hideDecreaseButton();
    }

    public void showDonateDoneLayout() {
        this.donateDoneLayout.setVisibility(0);
    }

    public void hideDonateDoneLayout() {
        this.donateDoneLayout.setVisibility(8);
    }

    public void setDonateDoneTitleText(String str) {
        this.donateDoneTitleTextView.setText(str);
    }

    public void setDonateDoneAmountText(String str) {
        this.donateDoneAmountTextView.setText(str);
    }

    public void setDonateTitleText(String str) {
        this.donateTitleTextView.setText(str);
    }

    public void setDonateDescText(String str) {
        this.donateDescTextView.setText(str);
    }

    public void showNoInternetError() {
        r rVar = this.c;
        if (rVar != null) {
            rVar.showNoInternetDialog();
        }
    }

    public void hideDecreaseButton() {
        this.decreaseRequestingChargeValueLayout.setVisibility(4);
    }

    public void showDecreaseButton() {
        this.decreaseRequestingChargeValueLayout.setVisibility(0);
    }

    public void setPaymentTypes(List<PaymentType> list) {
        Button button = null;
        for (int i = 0; i < this.paymentTypeButtons.size(); i++) {
            if (i < list.size()) {
                this.paymentTypeButtons.get(i).setTag(list.get(i));
                this.paymentTypeButtons.get(i).setText(list.get(i).getTitle());
                this.paymentTypeButtons.get(i).setVisibility(0);
                if (i == list.size() - 1) {
                    button = this.paymentTypeButtons.get(i);
                }
            } else {
                this.paymentTypeButtons.get(i).setVisibility(8);
            }
        }
        int i2 = list.size() == 1 ? R.drawable.selector_button_payment_method_both_sides : R.drawable.selector_button_payment_method_end_side;
        if (button != null) {
            button.setBackgroundResource(i2);
        }
    }

    public void selectPaymentTypeButton(int i) {
        for (int i2 = 0; i2 < this.paymentTypeButtons.size(); i2++) {
            if (this.paymentTypeButtons.get(i2).getTag() != null && (this.paymentTypeButtons.get(i2).getTag() instanceof PaymentType)) {
                this.paymentTypeButtons.get(i2).setSelected(((PaymentType) this.paymentTypeButtons.get(i2).getTag()).getType() == i);
            }
        }
    }

    public Button getPaymentTypeButton(int i) {
        for (int i2 = 0; i2 < this.paymentTypeButtons.size(); i2++) {
            if (this.paymentTypeButtons.get(i2).getTag() != null && (this.paymentTypeButtons.get(i2).getTag() instanceof PaymentType) && ((PaymentType) this.paymentTypeButtons.get(i2).getTag()).getType() == i) {
                return this.paymentTypeButtons.get(i2);
            }
        }
        return null;
    }

    public void showRetryPanel(String str, boolean z) {
        this.retryPanel.setVisibility(0);
        if (str != null) {
            this.retryTextView.setText(str);
        }
    }

    public void hideRetryPanel() {
        this.retryPanel.setVisibility(8);
    }

    public void showApWalletActivationLayout() {
        this.apWalletActivationLayout.setVisibility(0);
        setPayButtonText(getContext().getString(R.string.ap_wallet_activation));
        showOnlyPayButton();
        hideRideCostLayout();
        hideDonateLayout();
    }

    public void hideApWalletActivationLayout() {
        this.apWalletActivationLayout.setVisibility(4);
    }

    public void hideRideCostLayout() {
        this.rideCostLayout.setVisibility(8);
    }

    public void showRideCostLayout() {
        this.rideCostLayout.setVisibility(0);
    }

    public void setApWalletRegistrationContents(String str, final String str2) {
        if (str2 == null) {
            this.apWalletActivationDescriptionTextView.setText(str);
            return;
        }
        String string = getResources().getString(R.string.ap_wallet_activation_description_more_info);
        StringBuilder sb = new StringBuilder(str);
        sb.append(" ");
        sb.append(string);
        int length = str.length();
        int length2 = sb.length();
        SpannableString spannableString = new SpannableString(sb);
        spannableString.setSpan(new ForegroundColorSpan(ContextCompat.getColor(getContext(), R.color.color_accent)), length, length2, 33);
        spannableString.setSpan(new UnderlineSpan(), length, length2, 33);
        spannableString.setSpan(new ClickableSpan() {
            public final void onClick(View view) {
                if (PaymentView.this.f981a != null) {
                    PaymentView.this.f981a.onApWalletDescriptionMoreInfoClicked(str2);
                }
            }
        }, length, length2, 0);
        this.apWalletActivationDescriptionTextView.setText(spannableString);
        this.apWalletActivationDescriptionTextView.setMovementMethod(LinkMovementMethod.getInstance());
    }

    public void dismissLoadingDialog() {
        b bVar = this.e;
        if (bVar != null) {
            bVar.dismiss();
        }
    }

    public void hideTransferSnappCreditLayout() {
        this.transferCreditLayout.setVisibility(4);
        this.dividerHeader.setVisibility(4);
    }

    public void showTransferSnappCreditLayout() {
        this.transferCreditLayout.setVisibility(0);
        this.dividerHeader.setVisibility(0);
    }
}
