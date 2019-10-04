package cab.snapp.passenger.units.charge_select_amount;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.PorterDuff;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.passenger.a.a;
import cab.snapp.passenger.data.models.charge.ChargePackage;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.LoadingButton;
import cab.snapp.snappuikit.MoneyAmountEditText;
import cab.snapp.snappuikit.SnappLoading;

public class ChargeSelectAmountView extends LinearLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f658a;

    /* renamed from: b  reason: collision with root package name */
    protected Unbinder f659b;
    @BindView(2131362607)
    AppCompatImageButton btnDecrease;
    @BindView(2131362608)
    AppCompatImageButton btnIncrease;
    @BindView(2131362012)
    LoadingButton btnSubmit;
    @BindView(2131362605)
    View customAmountLayout;
    @BindView(2131362968)
    AppCompatTextView errorMessageTextTv;
    @BindView(2131362969)
    RelativeLayout errorRl;
    @BindView(2131362606)
    MoneyAmountEditText etAmount;
    @BindView(2131362232)
    AppCompatImageView ivCalendar;
    @BindView(2131362233)
    AppCompatImageView ivCircle;
    @BindView(2131362014)
    SnappLoading mainLoading;
    @BindView(2131362400)
    RecyclerView recyclerView;
    @BindView(2131362277)
    LinearLayout selectChargeViewContainer;
    @BindView(2131362432)
    View selectPackageTypeContainer;
    @BindView(2131362576)
    AppCompatTextView tvChargePackageType;

    @OnClick({2131362243})
    public void onBackArrowLayoutClicked() {
        c cVar = this.f658a;
        if (cVar != null) {
            cVar.onBackClicked();
        }
    }

    @OnClick({2131362607})
    public void onDecreaseClicked() {
        c cVar = this.f658a;
        if (cVar != null) {
            cVar.b();
            if (cVar.getInteractor() != null) {
                a aVar = (a) cVar.getInteractor();
                c.getInstance().sendNestedEventViaAppmetrica("Charge", new b.a().addKeyValue("EnterAmount", "TapOnMinus").build());
                if (aVar.getPresenter() != null) {
                    ((c) aVar.getPresenter()).a(-a.f671a);
                }
            }
        }
    }

    @OnClick({2131362608})
    public void onIncreaseClicked() {
        c cVar = this.f658a;
        if (cVar != null) {
            cVar.b();
            if (cVar.getInteractor() != null) {
                a aVar = (a) cVar.getInteractor();
                c.getInstance().sendNestedEventViaAppmetrica("Charge", new b.a().addKeyValue("EnterAmount", "TapOnPlus").build());
                if (aVar.getPresenter() != null) {
                    ((c) aVar.getPresenter()).a(a.f671a);
                }
            }
        }
    }

    @OnClick({2131362432})
    public void onChargeTypeClicked() {
        c cVar = this.f658a;
        if (cVar != null) {
            cVar.a();
        }
    }

    @OnClick({2131362012})
    public void onSubmitClicked() {
        c cVar = this.f658a;
        if (cVar != null) {
            cVar.b();
            if (cVar.getInteractor() != null) {
                ((a) cVar.getInteractor()).a();
            }
        }
    }

    public ChargeSelectAmountView(Context context) {
        super(context);
    }

    public ChargeSelectAmountView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ChargeSelectAmountView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f659b = ButterKnife.bind((Object) this, (View) this);
    }

    public void setPresenter(c cVar) {
        this.f658a = cVar;
    }

    public void showLoading() {
        this.mainLoading.setVisibility(0);
        this.selectChargeViewContainer.setVisibility(8);
    }

    public void hideLoading() {
        this.mainLoading.setVisibility(8);
        this.selectChargeViewContainer.setVisibility(0);
    }

    public void setAdapter(a aVar) {
        this.recyclerView.setAdapter(aVar);
    }

    public void setChargePackageTypeText(String str) {
        if (str != null && !TextUtils.isEmpty(str)) {
            this.tvChargePackageType.setText(str);
        }
    }

    public void setAmountOnEditText(long j) {
        this.etAmount.setAmount(j);
    }

    public void changeChargeAmountBy(long j) {
        this.etAmount.changeAmountBy(j);
    }

    public void setSimChargePackage(ChargePackage chargePackage) {
        setChargePackageTypeText(chargePackage.getPersianType());
    }

    public void showSubmitLoading() {
        this.btnSubmit.setLoading(true);
    }

    public void hideSubmitLoading() {
        this.btnSubmit.setLoading(false);
    }

    public void setSubmitButtonEnable(boolean z) {
        this.btnSubmit.setEnabled(z);
        this.btnDecrease.setSupportImageTintList(ContextCompat.getColorStateList(getContext(), z ? R.color.grayish_brown : R.color.brown_grey));
    }

    public void hideCustomAmount() {
        this.customAmountLayout.setVisibility(8);
    }

    public void showErrorMessage(String str) {
        if (str == null || TextUtils.isEmpty(str)) {
            this.errorMessageTextTv.setText(R.string.error);
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
                ChargeSelectAmountView.this.errorRl.setVisibility(0);
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

    public void setSelectPackageStatus(boolean z) {
        if (z) {
            this.selectPackageTypeContainer.setBackgroundResource(R.drawable.shape_rounded_gray_boarder_white_bg);
            this.ivCircle.setImageResource(R.drawable.shape_circle_blue);
            this.tvChargePackageType.setTextColor(ContextCompat.getColor(getContext(), R.color.grayish_brown));
            this.ivCalendar.setColorFilter(ContextCompat.getColor(getContext(), R.color.grayish_brown), PorterDuff.Mode.SRC_IN);
            return;
        }
        this.selectPackageTypeContainer.setBackgroundResource(R.drawable.shape_rounded_gray_boarder_gray_bg);
        this.ivCircle.setImageResource(R.drawable.shape_circle_gray);
        this.tvChargePackageType.setTextColor(ContextCompat.getColor(getContext(), R.color.brown_grey));
        this.ivCalendar.setColorFilter(ContextCompat.getColor(getContext(), R.color.brown_grey), PorterDuff.Mode.SRC_IN);
    }

    public void setMobileNumberEtFocusListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.etAmount.setOnFocusChangeListener(onFocusChangeListener);
    }
}
