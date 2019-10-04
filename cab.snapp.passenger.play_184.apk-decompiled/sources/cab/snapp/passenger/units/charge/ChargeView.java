package cab.snapp.passenger.units.charge;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.c.c;
import cab.snapp.c.f;
import cab.snapp.c.j;
import cab.snapp.passenger.data.models.charge.QuickCharge;
import cab.snapp.passenger.data.models.charge.SIMChargeOperator;
import cab.snapp.passenger.data_access_layer.network.responses.ChargeRecentlyMobileNumbersResponse;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.g;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.charge_recently.RecentlyMobileNumbersSheetDialogFragment;
import cab.snapp.passenger.units.charge_recently.e;
import cab.snapp.passenger.units.charge_select_amount.a;
import cab.snapp.snappuikit.LoadingButton;
import cab.snapp.snappuikit.SnappLoading;
import cab.snapp.snappuikit.StartDrawableButton;
import com.squareup.picasso.Picasso;
import java.util.Locale;

public class ChargeView extends LinearLayout implements BaseView<c> {
    public static final int PHONE_NUMBER_INPUT_STATE_ERROR = -1;
    public static final int PHONE_NUMBER_INPUT_STATE_NORMAL = 0;
    public static final int PHONE_NUMBER_INPUT_STATE_SELECTED = 1;

    /* renamed from: a  reason: collision with root package name */
    protected c f615a;
    @BindView(2131362018)
    StartDrawableButton btnSelectMobileNumberFromRecently;
    @BindView(2131362967)
    LinearLayout chargeViewLayout;
    @BindView(2131362005)
    View chevronView;
    @BindView(2131362029)
    AppCompatImageView clearMobileNumberIv;
    @BindView(2131362019)
    ScrollView containerScrollView;
    @BindView(2131362968)
    AppCompatTextView errorMessageTextTv;
    @BindView(2131362969)
    RelativeLayout errorRl;
    @BindView(2131362014)
    SnappLoading mainLoading;
    @BindView(2131362333)
    View mobileInputLayoutError;
    @BindView(2131362163)
    AppCompatTextView mobileInputLayoutHint;
    @BindView(2131362433)
    RelativeLayout mobileNumberContainerRl;
    @BindView(2131362609)
    AppCompatEditText mobileNumberEt;
    @BindView(2131362015)
    LoadingButton nextBtn;
    @BindView(2131362013)
    LinearLayout nextBtnContainer;
    @BindView(2131362007)
    View quickChargeBtn;
    @BindView(2131362375)
    CardView quickChargeContainer;
    @BindView(2131362004)
    AppCompatTextView quickChargeLastPaymentAmount;
    @BindView(2131362008)
    AppCompatTextView quickChargeLastPaymentTitle;
    @BindView(2131362016)
    SnappLoading quickChargeLoading;
    @BindView(2131362376)
    AppCompatImageView quickChargeOperatorLogo;
    @BindView(2131362009)
    LinearLayout quickChargeOperatorLogoBackground;
    @BindView(2131362399)
    RecyclerView recyclerView;
    @BindView(2131362243)
    LinearLayout toolbarBackArrowLayout;

    public int getChargeAmountEtMaxLength() {
        return 10;
    }

    public void setMobileNumberEtTextColor(int i) {
    }

    public ChargeView(Context context) {
        super(context);
    }

    public ChargeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ChargeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @OnClick({2131362243})
    public void onBackArrowLayoutClicked() {
        c cVar = this.f615a;
        if (cVar != null) {
            cVar.onBackClicked();
        }
    }

    @OnClick({2131362375})
    public void onQuickChargeClicked() {
        c cVar = this.f615a;
        if (cVar != null) {
            cVar.a();
            if (cVar.getInteractor() != null) {
                ((a) cVar.getInteractor()).a();
            }
        }
    }

    @OnClick({2131362029})
    public void onClearMobileNumberClicked() {
        c cVar = this.f615a;
        if (!(cVar == null || cVar.getInteractor() == null)) {
            cVar.getInteractor();
            a.d();
        }
        this.mobileNumberEt.setText("");
        c.showKeyboard(getContext(), this.mobileNumberEt);
    }

    @OnClick({2131362017})
    public void onSelectMobileNumberFromContactsClicked() {
        c cVar = this.f615a;
        if (!(cVar == null || cVar.getInteractor() == null)) {
            a aVar = (a) cVar.getInteractor();
            cab.snapp.passenger.f.b.b.c.getInstance().sendNestedEventViaAppmetrica("Charge", new b.a().addKeyValue("EnterPhoneNumber", "TapOnContactList").build());
            if (!(aVar.getActivity() == null || aVar.getController() == null)) {
                try {
                    aVar.getController().startActivityForResult(new Intent("android.intent.action.PICK", ContactsContract.CommonDataKinds.Phone.CONTENT_URI), 1000);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    @OnClick({2131362018})
    public void onSelectMobileNumberFromRecentlyClicked() {
        this.btnSelectMobileNumberFromRecently.setLoading(true);
        c cVar = this.f615a;
        if (cVar != null && cVar.getInteractor() != null) {
            ((a) cVar.getInteractor()).loadRecentlyMobileNumbers();
        }
    }

    @OnClick({2131362015})
    public void onNextBtnClicked() {
        c cVar = this.f615a;
        if (cVar != null) {
            cVar.a();
            if (cVar.getInteractor() != null && cVar.getView() != null) {
                a aVar = (a) cVar.getInteractor();
                String mobileNumberEtText = ((ChargeView) cVar.getView()).getMobileNumberEtText();
                SIMChargeOperator selectedItem = cVar.f635a.getSelectedItem();
                if (f.isUserConnectedToNetwork(aVar.getActivity()) || aVar.getPresenter() == null) {
                    aVar.d = selectedItem;
                    if (aVar.getRouter() != null) {
                        Bundle bundle = new Bundle();
                        bundle.putString(a.EXTRA_MOBILE_NUMBER, mobileNumberEtText);
                        bundle.putParcelable(a.EXTRA_SIM_CHARGE_OPERATOR, selectedItem);
                        ((d) aVar.getRouter()).routeToChargeSelectAmount(bundle);
                    }
                } else {
                    ((c) aVar.getPresenter()).c();
                }
                cVar.getInteractor();
                a.b();
            }
        }
    }

    @OnClick({2131362266})
    public void onTransactionsClicked() {
        c cVar = this.f615a;
        if (cVar != null) {
            cVar.a();
            if (cVar.getInteractor() != null) {
                a aVar = (a) cVar.getInteractor();
                if (!f.isUserConnectedToNetwork(aVar.getActivity()) && aVar.getPresenter() != null) {
                    ((c) aVar.getPresenter()).c();
                } else if (aVar.getRouter() != null) {
                    ((d) aVar.getRouter()).routeToChargeHistoryController();
                }
                cVar.getInteractor();
                a.c();
            }
        }
    }

    public void setAddAnotherPhoneNumberEtFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.mobileNumberEt.setOnFocusChangeListener(onFocusChangeListener);
    }

    public void setStatusBarColor(int i) {
        if (getContext() != null && (getContext() instanceof Activity) && ((Activity) getContext()).getWindow() != null) {
            cab.snapp.snappuikit.c.a.setStatusBarColorRes((Activity) getContext(), i);
        }
    }

    public String getMobileNumberEtText() {
        if (this.mobileNumberEt.getText() != null) {
            return this.mobileNumberEt.getText().toString();
        }
        return null;
    }

    public void setMobileNumberEtText(String str) {
        AppCompatEditText appCompatEditText = this.mobileNumberEt;
        appCompatEditText.setText("0" + str.replaceAll("^(0098|\\+98|98|0){1}", ""));
    }

    public void setMobileNumberEtSelection(int i) {
        this.mobileNumberEt.setSelection(i);
    }

    public void setMobileNumberEtTextWatcher(TextWatcher textWatcher) {
        this.mobileNumberEt.addTextChangedListener(textWatcher);
    }

    public void requestFocusForOnMobileNumberEt() {
        this.mobileNumberEt.requestFocus();
    }

    public void removeFocusFromOnMobileNumberEt() {
        this.mobileNumberEt.clearFocus();
    }

    public AppCompatEditText getMobileNumberEt() {
        return this.mobileNumberEt;
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
    }

    public void setPresenter(c cVar) {
        this.f615a = cVar;
    }

    public void showLoading() {
        this.mainLoading.setVisibility(0);
        this.containerScrollView.setVisibility(8);
        this.nextBtnContainer.setVisibility(8);
    }

    public void hideLoading() {
        this.mainLoading.setVisibility(8);
        this.containerScrollView.setVisibility(0);
        this.nextBtnContainer.setVisibility(0);
    }

    public void showErrorMessage(String str) {
        if (str == null || TextUtils.isEmpty(str)) {
            this.errorMessageTextTv.setText(R.string.service_not_available);
        } else {
            this.errorMessageTextTv.setText(str);
        }
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.height_toolbar);
        float f = (float) (-dimensionPixelSize);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.errorRl, "translationY", new float[]{f, 0.0f});
        ofFloat.addListener(new Animator.AnimatorListener() {
            public final void onAnimationCancel(Animator animator) {
            }

            public final void onAnimationEnd(Animator animator) {
            }

            public final void onAnimationRepeat(Animator animator) {
            }

            public final void onAnimationStart(Animator animator) {
                ChargeView.this.errorRl.setVisibility(0);
            }
        });
        ofFloat.setDuration(300);
        ofFloat.setStartDelay(800);
        ofFloat.start();
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.errorRl, "translationY", new float[]{0.0f, f});
        ofFloat2.setDuration(200);
        ofFloat2.setStartDelay(5000);
        ofFloat2.start();
    }

    public void showErrorMessage(int i) {
        showErrorMessage(getContext().getString(i));
    }

    public void setAdapter(cab.snapp.passenger.a.c cVar) {
        this.recyclerView.setAdapter(cVar);
    }

    public void fillQuickCharge(QuickCharge quickCharge) {
        if (quickCharge == null) {
            this.quickChargeContainer.setVisibility(8);
            return;
        }
        this.quickChargeContainer.setVisibility(0);
        if (quickCharge.getOperator() != null) {
            String activeUrl = quickCharge.getOperator().getActiveUrl();
            if (activeUrl != null && !TextUtils.isEmpty(activeUrl)) {
                Picasso.get().load(activeUrl).into((ImageView) this.quickChargeOperatorLogo);
            }
            this.quickChargeOperatorLogoBackground.setBackgroundColor(quickCharge.getOperator().getBackgroundColor());
        }
        Locale locale = new Locale(g.getRealCurrentActiveLocaleString());
        this.quickChargeLastPaymentTitle.setText(String.format(locale, "%s، %s", new Object[]{quickCharge.getPersianType(), quickCharge.getMobileNumber()}));
        this.quickChargeLastPaymentAmount.setText(j.formatLong(quickCharge.getChargeAmount(), locale));
    }

    public void enableBtn() {
        this.nextBtn.setEnabled(true);
        this.nextBtn.setClickable(true);
    }

    public void disableBtn() {
        this.nextBtn.setEnabled(false);
        this.nextBtn.setClickable(false);
    }

    private void a() {
        this.mobileInputLayoutError.setVisibility(8);
    }

    public void mobileNumberStatus(int i) {
        int i2 = R.color.brown_grey;
        int i3 = R.drawable.shape_rounded_gray_bg;
        if (i == -1) {
            i3 = R.drawable.shape_rounded_red_bg;
            i2 = R.color.error_red;
            this.mobileInputLayoutError.setVisibility(0);
        } else if (i == 0) {
            a();
        } else if (i == 1) {
            i3 = R.drawable.shape_rounded_blue_bg;
            i2 = R.color.charge_primary_color;
            a();
        }
        this.mobileNumberContainerRl.setBackgroundResource(i3);
        this.mobileInputLayoutHint.setTextColor(ContextCompat.getColor(getContext(), i2));
    }

    public void setMobileNumberEtFocusListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.mobileNumberEt.setOnFocusChangeListener(onFocusChangeListener);
    }

    public void showRecentlyMobileNumberBottomSheet(ChargeRecentlyMobileNumbersResponse chargeRecentlyMobileNumbersResponse) {
        this.btnSelectMobileNumberFromRecently.setLoading(false);
        RecentlyMobileNumbersSheetDialogFragment newInstance = RecentlyMobileNumbersSheetDialogFragment.newInstance();
        newInstance.setChargeRecentlyMobileNumbersResponse(chargeRecentlyMobileNumbersResponse);
        if (!newInstance.isAdded()) {
            newInstance.show(this.f615a.getFragmentManager(), "recently_bottom_sheet");
        }
        newInstance.setOnRecentMobileNumberSelectedListener(new e() {
            public final void onRecentMobileNumberSelected(String str) {
                ChargeView.this.setMobileNumberEtText(str);
            }
        });
    }
}
