package cab.snapp.passenger.units.top_up_payment;

import android.content.Context;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.TextWatcher;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.UnderlineSpan;
import android.util.AttributeSet;
import android.view.View;
import android.widget.HorizontalScrollView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.widget.NestedScrollView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.c.c;
import cab.snapp.c.j;
import cab.snapp.passenger.activities.root.RootActivity;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.g;
import cab.snapp.passenger.f.r;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappButton;
import cab.snapp.snappuikit.SnappClearableEditText;
import cab.snapp.snappuikit.SnappLoading;
import cab.snapp.snappuikit.b;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

public class TopUpPaymentView extends RelativeLayout implements BaseView<d> {
    @BindView(2131363003)
    AppCompatImageView ApLogoImageView;

    /* renamed from: a  reason: collision with root package name */
    protected d f1341a;
    @BindView(2131362992)
    AppCompatEditText amountToChargeEditText;
    @BindView(2131362993)
    TextView apWalletActivationButton;
    @BindView(2131362996)
    AppCompatTextView apWalletActivationDescriptionTextView;
    @BindView(2131362995)
    LinearLayout apWalletActivationLayout;
    @BindView(2131362994)
    SnappLoading apWalletActivationLoading;
    @BindView(2131362998)
    AppCompatImageView apWalletActivationLogo;
    @BindView(2131362999)
    RelativeLayout apWalletActivationRequestCoordinator;
    @BindView(2131362997)
    SnappLoading apWalletActivationViewLoading;
    @BindView(2131363000)
    LinearLayout apWalletErrorLayout;
    @BindView(2131363020)
    ConstraintLayout apWalletTabLayout;
    @BindView(2131363022)
    View apWalletTabUnderlineView;
    @BindView(2131363021)
    AppCompatTextView apWalletTitleTextView;

    /* renamed from: b  reason: collision with root package name */
    protected Unbinder f1342b;
    @BindView(2131363004)
    ConstraintLayout bankCardLayout;
    @BindView(2131363023)
    ConstraintLayout bankCardTabLayout;
    @BindView(2131363025)
    View bankCardTabUnderlineView;
    @BindView(2131363024)
    AppCompatTextView bankCardTitleTextView;
    r c;
    @BindView(2131362728)
    ImageButton closeButton;
    @BindView(2131363005)
    AppCompatTextView creditCurrencyTextView;
    @BindView(2131363006)
    LinearLayout currentCreditLayout;
    @BindView(2131363008)
    AppCompatTextView currentCreditTextView;
    a d;
    @BindView(2131363009)
    AppCompatImageButton decreaseByFixedAmountButton;
    /* access modifiers changed from: package-private */
    public boolean e;
    BottomSheetBehavior.a f = new BottomSheetBehavior.a() {

        /* renamed from: b  reason: collision with root package name */
        private boolean f1344b;
        private int c = -1;
        private int d = -1;

        public final void onStateChanged(View view, int i) {
            this.f1344b = false;
            this.c = this.d;
            this.d = i;
            if (i == 2) {
                this.f1344b = true;
                TopUpPaymentView.this.g.getBottomSheetBehavior().setEnabled(false);
            } else if (i == 3) {
                boolean unused = TopUpPaymentView.this.e = true;
                TopUpPaymentView.this.handleModalBottomSheetOpened();
            } else if (i == 4) {
                TopUpPaymentView.this.handleModalBottomSheetClosed();
            } else if (i == 5) {
                TopUpPaymentView.this.handleModalBottomSheetClosed();
            } else if (i == 6) {
                boolean unused2 = TopUpPaymentView.this.e = true;
                TopUpPaymentView.this.handleModalBottomSheetOpened();
            }
            if (TopUpPaymentView.this.k != null) {
                TopUpPaymentView.this.k.onStateChanged(view, i);
            }
        }

        public final void onSlide(View view, float f) {
            if (TopUpPaymentView.this.k != null) {
                TopUpPaymentView.this.k.onSlide(view, f);
            }
        }
    };
    /* access modifiers changed from: private */
    public TopUpBottomSheetDialogFragment g;
    private long h = -1;
    private Long i;
    @BindView(2131363010)
    AppCompatImageButton increaseByFixedAmountButton;
    private int j = 3;
    /* access modifiers changed from: private */
    public BottomSheetBehavior.a k;
    private int l;
    @BindView(2131362730)
    NestedScrollView nestedScrollView;
    @BindView(2131363011)
    SnappButton payButton;
    @BindView(2131363014)
    AppCompatButton setAmountTo100000RialButton;
    @BindView(2131363015)
    AppCompatButton setAmountTo200000RialButton;
    @BindView(2131363016)
    AppCompatButton setAmountTo500000RialButton;
    @BindView(2131363027)
    ConstraintLayout snappCardTabLayout;
    @BindView(2131363029)
    View snappCardTabUnderlineView;
    @BindView(2131363028)
    AppCompatTextView snappCardTitleTextView;
    @BindView(2131363018)
    SnappClearableEditText snappClearableEditText;
    @BindView(2131363017)
    ConstraintLayout snappLayout;
    @BindView(2131363026)
    HorizontalScrollView tabLayoutScrollView;
    @BindView(2131363030)
    ConstraintLayout ussdTabLayout;
    @BindView(2131363032)
    View ussdTabUnderlineView;
    @BindView(2131363031)
    AppCompatTextView ussdTitleTextView;

    /* access modifiers changed from: package-private */
    @OnClick({2131363020})
    public void onApWalletTabClicked() {
        a((View) this.apWalletTabLayout);
        changeTab(0);
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131363023})
    public void onBankCardTabClicked() {
        a((View) this.bankCardTabLayout);
        changeTab(1);
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131363030})
    public void onUssdTabClicked() {
        a((View) this.ussdTabLayout);
        changeTab(2);
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131363027})
    public void onSnappCardTabClicked() {
        a((View) this.snappCardTabLayout);
        changeTab(3);
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131363001})
    public void onApWalletRetryClicked() {
        this.f1341a.onApWalletRetryClicked();
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131363016})
    public void onSetAmountTo500000RialButtonClicked() {
        d dVar = this.f1341a;
        if (!(dVar == null || dVar.getInteractor() == null)) {
            ((b) dVar.getInteractor()).chargeAmountSelected(500000);
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131363015})
    public void onSetAmountTo200000RialButtonClicked() {
        d dVar = this.f1341a;
        if (dVar != null) {
            dVar.setAmountTo200000RialRequested();
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131363014})
    public void onSetAmountTo100000RialButtonClicked() {
        d dVar = this.f1341a;
        if (dVar != null) {
            dVar.setAmountTo100000RialRequested();
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131363010})
    public void onIncrementByFixedAmountButtonClicked() {
        d dVar = this.f1341a;
        if (dVar != null) {
            dVar.incrementByFixedAmountRequested();
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131363009})
    public void onDecreaseByFixedAmountButtonClicked() {
        d dVar = this.f1341a;
        if (dVar != null) {
            dVar.decrementByFixedAmountRequested();
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131363011})
    public void onPayButtonClicked() {
        d dVar = this.f1341a;
        if (dVar != null) {
            dVar.payRequested();
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362993})
    public void onApWalletActivationButtonClicked() {
        if (this.f1341a != null) {
            this.apWalletActivationLoading.setVisibility(0);
            this.apWalletActivationButton.setText("");
            this.f1341a.apWalletActivationRequested();
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131363012})
    public void onQrCodeScannerClicked() {
        d dVar = this.f1341a;
        if (!(dVar == null || dVar.getInteractor() == null)) {
            ((b) dVar.getInteractor()).startScan();
        }
    }

    /* access modifiers changed from: package-private */
    public void onTextChanged(CharSequence charSequence) {
        if (this.d.getPaymentAmount() == null || this.d.getPaymentAmount().longValue() == 0) {
            this.decreaseByFixedAmountButton.setBackgroundResource(R.drawable.shape_button_ash_gray_round);
            DrawableCompat.setTint(this.decreaseByFixedAmountButton.getDrawable(), ContextCompat.getColor(getContext(), R.color.ash_gray));
            this.decreaseByFixedAmountButton.setClickable(false);
            return;
        }
        this.decreaseByFixedAmountButton.setBackgroundResource(R.drawable.selector_button_top_up_payment);
        DrawableCompat.setTint(this.decreaseByFixedAmountButton.getDrawable(), ContextCompat.getColor(getContext(), R.color.carbon_gray));
        this.decreaseByFixedAmountButton.setClickable(true);
    }

    public TopUpPaymentView(Context context) {
        super(context);
    }

    public TopUpPaymentView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TopUpPaymentView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f1342b = ButterKnife.bind((Object) this, (View) this);
        if (getContext() != null) {
            this.c = new r(getContext());
            this.d = new a(this.amountToChargeEditText, getContext().getString(R.string.rial));
            this.amountToChargeEditText.addTextChangedListener(this.d);
            this.amountToChargeEditText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(getContext().getString(R.string.rial).length() + 14)});
            this.nestedScrollView.setOnScrollChangeListener(new NestedScrollView.OnScrollChangeListener() {
                public final void onScrollChange(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
                    TopUpPaymentView.this.a(nestedScrollView, i, i2, i3, i4);
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(NestedScrollView nestedScrollView2, int i2, int i3, int i4, int i5) {
        if (i3 < 10) {
            this.g.getBottomSheetBehavior().setEnabled(true);
        } else {
            this.g.getBottomSheetBehavior().setEnabled(false);
        }
    }

    public void changeTab(int i2) {
        this.apWalletTitleTextView.setTextColor(getContext().getResources().getColor(R.color.brown_grey));
        this.bankCardTitleTextView.setTextColor(getContext().getResources().getColor(R.color.brown_grey));
        this.ussdTitleTextView.setTextColor(getContext().getResources().getColor(R.color.brown_grey));
        this.snappCardTitleTextView.setTextColor(getContext().getResources().getColor(R.color.brown_grey));
        this.apWalletTabUnderlineView.setVisibility(8);
        this.bankCardTabUnderlineView.setVisibility(8);
        this.ussdTabUnderlineView.setVisibility(8);
        this.snappCardTabUnderlineView.setVisibility(8);
        this.bankCardLayout.setVisibility(8);
        this.snappLayout.setVisibility(8);
        this.apWalletActivationLayout.setVisibility(8);
        this.currentCreditLayout.setVisibility(0);
        this.apWalletActivationButton.setVisibility(4);
        this.payButton.setVisibility(0);
        this.apWalletErrorLayout.setVisibility(8);
        this.apWalletActivationRequestCoordinator.setVisibility(8);
        this.ApLogoImageView.setColorFilter(ContextCompat.getColor(getContext(), R.color.brown_grey));
        setCurrentCreditAmount(Long.valueOf(this.h));
        this.l = i2;
        if (i2 == 0) {
            a();
            this.apWalletTitleTextView.setTextColor(getContext().getResources().getColor(R.color.tomato));
            this.apWalletTabUnderlineView.setVisibility(0);
            this.ApLogoImageView.setColorFilter(null);
            setCurrentCreditAmount(this.i);
            d dVar = this.f1341a;
            if (dVar != null) {
                dVar.a();
            }
        } else if (i2 == 1) {
            this.bankCardTitleTextView.setTextColor(getContext().getResources().getColor(R.color.green_blue_two));
            this.bankCardTabUnderlineView.setVisibility(0);
            this.bankCardLayout.setVisibility(0);
            d dVar2 = this.f1341a;
            if (dVar2 != null) {
                dVar2.setActiveMethodToBankCard();
            }
        } else if (i2 == 2) {
            this.ussdTitleTextView.setTextColor(getContext().getResources().getColor(R.color.green_blue_two));
            this.ussdTabUnderlineView.setVisibility(0);
            this.bankCardLayout.setVisibility(0);
            d dVar3 = this.f1341a;
            if (dVar3 != null) {
                dVar3.setActiveMethodToUssd();
            }
            d dVar4 = this.f1341a;
            if (!(dVar4 == null || dVar4.getInteractor() == null)) {
                ((b) dVar4.getInteractor()).reportTabUSSSDToAppMetrica();
            }
        } else if (i2 == 3) {
            this.snappCardTitleTextView.setTextColor(getContext().getResources().getColor(R.color.green_blue_two));
            this.snappCardTabUnderlineView.setVisibility(0);
            this.snappLayout.setVisibility(0);
            d dVar5 = this.f1341a;
            if (dVar5 != null) {
                dVar5.setActiveMethodToSnappCard();
            }
        }
    }

    public Number getViewCurrentAmount() {
        a aVar = this.d;
        if (aVar == null || aVar.getPaymentAmount() == null) {
            return -1;
        }
        return this.d.getPaymentAmount();
    }

    public String getCurrentStringValue() {
        return (this.snappClearableEditText.getEditText() == null || this.snappClearableEditText.getEditText().getText() == null) ? "" : this.snappClearableEditText.getEditText().getText().toString();
    }

    public void showUssdMethodTab() {
        ConstraintLayout constraintLayout = this.ussdTabLayout;
        if (constraintLayout != null) {
            constraintLayout.setVisibility(0);
        }
    }

    public void hideUssdMethodTab() {
        ConstraintLayout constraintLayout = this.ussdTabLayout;
        if (constraintLayout != null) {
            constraintLayout.setVisibility(8);
        }
    }

    public void setPresenter(d dVar) {
        this.f1341a = dVar;
    }

    public void updateAmount(String str) {
        this.amountToChargeEditText.setText(str);
    }

    public void showNoInternetDialog() {
        this.c.showNoInternetDialog();
    }

    public void showLoading() {
        r rVar = this.c;
        if (rVar != null) {
            rVar.showLoadingDialog();
        }
    }

    public void hideLoading() {
        r rVar = this.c;
        if (rVar != null) {
            rVar.hideLoadingDialog();
        }
    }

    public void showToast(String str) {
        if (getContext() != null && getContext().getResources() != null) {
            b.makeText(getContext(), str).textColor(getContext().getResources().getColor(R.color.cherry)).show();
        }
    }

    public void showErrorDialog(String str) {
        r rVar = this.c;
        if (rVar != null) {
            rVar.showErrorDialog(str);
        }
    }

    public void setSnappCardCode(String str) {
        this.snappClearableEditText.setText(str);
    }

    public void setCredit(long j2, Long l2) {
        this.h = j2;
        this.i = l2;
    }

    public void setCurrentCreditAmount(Long l2) {
        this.currentCreditTextView.setText(g.changeNumbersBasedOnCurrentLocale((l2 == null || l2.longValue() == -1) ? "..." : String.valueOf(j.formatLong(l2.longValue()))));
        this.currentCreditTextView.setVisibility(0);
        this.creditCurrencyTextView.setVisibility(0);
    }

    public void hideCredit() {
        this.currentCreditTextView.setVisibility(8);
        this.creditCurrencyTextView.setVisibility(8);
    }

    public void showToast(int i2) {
        if (getContext() != null) {
            b.makeText(getContext(), getContext().getString(i2)).textColor(getContext().getResources().getColor(R.color.cherry)).show();
        }
    }

    public void initMainKeyboardStateListener(View.OnFocusChangeListener onFocusChangeListener) {
        AppCompatEditText appCompatEditText = this.amountToChargeEditText;
        if (appCompatEditText != null) {
            appCompatEditText.setOnFocusChangeListener(onFocusChangeListener);
        }
    }

    public void initSnappCardKeyboardStateListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.snappClearableEditText.getEditText().setOnFocusChangeListener(onFocusChangeListener);
    }

    public void handleModalBottomSheetOpened() {
        if (getContext() instanceof RootActivity) {
            ((RootActivity) getContext()).setBottomSheetOpened(true);
        }
    }

    public void handleModalBottomSheetClosed() {
        this.f1341a.clearAmount();
        this.e = false;
        c.tryHideKeyboard(getContext(), this);
        if (getContext() instanceof RootActivity) {
            ((RootActivity) getContext()).setBottomSheetOpened(false);
            reportTopUpModalDefaultCloseToAppMetrica();
        }
        TopUpBottomSheetDialogFragment topUpBottomSheetDialogFragment = this.g;
        if (topUpBottomSheetDialogFragment != null) {
            topUpBottomSheetDialogFragment.dismiss();
        }
    }

    public void reportTopUpModalDefaultCloseToAppMetrica() {
        cab.snapp.passenger.f.b.b.c.getInstance().sendNestedEventViaAppmetrica("JekHome", new b.a().addKeyValue("TopUpModalDefault", "Close").build());
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362728})
    public void onBottomSheetCloseButtonClicked() {
        handleModalBottomSheetClosed();
    }

    public void setController(TopUpBottomSheetDialogFragment topUpBottomSheetDialogFragment) {
        this.g = topUpBottomSheetDialogFragment;
    }

    public void setBottomSheetCallback(BottomSheetBehavior.a aVar) {
        this.k = aVar;
    }

    public int getAmountToChargeEtMaxLength() {
        return getContext().getString(R.string.rial).length() + 14;
    }

    public void setAmountToChargeEtSelection(int i2) {
        this.amountToChargeEditText.setSelection(i2);
    }

    public void initTextWatcher(TextWatcher textWatcher) {
        this.amountToChargeEditText.addTextChangedListener(textWatcher);
    }

    public void setSnappCardTitle(String str) {
        if (str != null) {
            this.snappCardTitleTextView.setText(str);
        }
    }

    public void showApWalletTab() {
        ConstraintLayout constraintLayout = this.apWalletTabLayout;
        if (constraintLayout != null) {
            constraintLayout.setVisibility(0);
        }
    }

    public void setApWalletTitle(String str) {
        if (this.apWalletTabLayout != null) {
            this.apWalletTitleTextView.setText(str);
        }
    }

    public void hideApWalletTab() {
        ConstraintLayout constraintLayout = this.apWalletTabLayout;
        if (constraintLayout != null) {
            constraintLayout.setVisibility(8);
        }
    }

    public void showOnlinePayTab() {
        this.bankCardTabLayout.setVisibility(0);
    }

    public void setOnlinePaymentTitle(String str) {
        if (str != null) {
            this.bankCardTitleTextView.setText(str);
        }
    }

    public void hideOnlinePayTab() {
        this.bankCardTabLayout.setVisibility(8);
    }

    public void setApWalletRegistered(int i2) {
        this.j = i2;
        a();
    }

    private void a() {
        if (this.l == 0) {
            int i2 = this.j;
            if (i2 == 0) {
                this.currentCreditLayout.setVisibility(4);
                this.bankCardLayout.setVisibility(4);
                this.apWalletActivationLayout.setVisibility(0);
                this.apWalletActivationButton.setVisibility(0);
                this.apWalletActivationDescriptionTextView.setVisibility(0);
                this.payButton.setVisibility(4);
                this.apWalletActivationLogo.setVisibility(0);
                this.apWalletActivationRequestCoordinator.setVisibility(8);
            } else if (i2 != 1) {
                if (i2 == 2) {
                    this.currentCreditLayout.setVisibility(8);
                    this.bankCardLayout.setVisibility(8);
                    this.apWalletActivationLayout.setVisibility(8);
                    this.apWalletActivationButton.setVisibility(8);
                    this.payButton.setVisibility(8);
                    this.apWalletErrorLayout.setVisibility(0);
                    this.apWalletActivationRequestCoordinator.setVisibility(0);
                } else if (i2 == 3) {
                    this.apWalletActivationViewLoading.setVisibility(0);
                    this.currentCreditLayout.setVisibility(8);
                    this.bankCardLayout.setVisibility(8);
                    this.apWalletActivationLayout.setVisibility(0);
                    this.apWalletActivationButton.setVisibility(8);
                    this.apWalletActivationDescriptionTextView.setVisibility(8);
                    this.payButton.setVisibility(8);
                    this.apWalletActivationLogo.setVisibility(8);
                    this.apWalletErrorLayout.setVisibility(8);
                    this.apWalletActivationRequestCoordinator.setVisibility(0);
                }
            } else {
                this.currentCreditLayout.setVisibility(0);
                this.bankCardLayout.setVisibility(0);
                this.apWalletActivationLayout.setVisibility(4);
                this.apWalletActivationButton.setVisibility(4);
                this.apWalletActivationDescriptionTextView.setVisibility(8);
                this.payButton.setVisibility(0);
                this.apWalletActivationLogo.setVisibility(8);
                this.apWalletActivationRequestCoordinator.setVisibility(8);
            }
        }
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
                if (TopUpPaymentView.this.f1341a != null) {
                    TopUpPaymentView.this.f1341a.onApWalletDescriptionMoreInfoClicked(str2);
                }
            }
        }, length, length2, 0);
        this.apWalletActivationDescriptionTextView.setText(spannableString);
        this.apWalletActivationDescriptionTextView.setMovementMethod(LinkMovementMethod.getInstance());
    }

    private void a(View view) {
        int x = (int) view.getX();
        if (!(view.getWidth() == 0 || this.tabLayoutScrollView.getWidth() == 0)) {
            x = (x - (this.tabLayoutScrollView.getWidth() / 2)) + (view.getWidth() / 2);
        }
        this.tabLayoutScrollView.scrollTo(x, 0);
    }
}
