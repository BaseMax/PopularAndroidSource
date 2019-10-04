package cab.snapp.passenger.units.mainheader;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.passenger.f.r;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.footer.ride_request_footer.SnappCountingTextView;
import cab.snapp.snappdialog.b;
import cab.snapp.snappdialog.dialogViews.a.e;
import cab.snapp.snappdialog.dialogViews.a.g;
import cab.snapp.snappuikit.SnappLoading;
import java.util.List;

public class MainHeaderView extends RelativeLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f924a;

    /* renamed from: b  reason: collision with root package name */
    private b f925b;
    @BindView(2131362675)
    ImageButton backImageButton;
    private r c;
    @BindView(2131362676)
    ImageButton cancelImageButton;
    private b d;
    @BindView(2131362677)
    ImageButton drawerImageButton;
    private b e;
    @BindView(2131362678)
    LinearLayout endButtonsLayout;
    @BindView(2131362679)
    RelativeLayout favoritesContainer;
    @BindView(2131362681)
    AppCompatTextView freeRideTv;
    @BindView(2131362700)
    ImageView messageToDriverImageView;
    @BindView(2131362701)
    AppCompatTextView messageToDriverTextView;
    @BindView(2131362683)
    AppCompatButton optionsBtn;
    @BindView(2131362685)
    LinearLayout optionsContainerLayout;
    @BindView(2131362684)
    View optionsContainerView;
    @BindView(2131362686)
    View paymentStatusLayout;
    @BindView(2131362688)
    LinearLayout priceLayout;
    @BindView(2131362689)
    AppCompatTextView priceRialsTv;
    @BindView(2131362687)
    SnappCountingTextView priceTv;
    @BindView(2131362692)
    AppCompatButton promoButton;
    @BindView(2131362693)
    AppCompatEditText promoEditText;
    @BindView(2131362694)
    RelativeLayout promoLayout;
    @BindView(2131362697)
    ImageButton searchImageButton;
    @BindView(2131362698)
    AppCompatTextView shareRideButton;
    @BindView(2131362699)
    RelativeLayout snappArrivedLayout;
    @BindView(2131362696)
    SnappLoading snappLoading;
    @BindView(2131362702)
    LinearLayout snappToLayout;
    @BindView(2131362703)
    View snappToLayoutDummy;
    @BindView(2131362704)
    TextView snappToTextView;
    @BindView(2131362705)
    LinearLayout startButtonsLayout;
    @BindView(2131362695)
    AppCompatButton submitPromoButton;
    @BindView(2131362690)
    ImageView sufficientCreditIv;
    @BindView(2131362691)
    AppCompatTextView sufficientCreditTv;
    @BindView(2131362706)
    TextView titleTextView;

    /* access modifiers changed from: package-private */
    @OnClick({2131362677})
    public void onDrawerIbClicked() {
        c cVar = this.f924a;
        if (cVar != null) {
            cVar.onDrawerIconClicked();
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362697})
    public void onSearchIbClicked() {
        c cVar = this.f924a;
        if (cVar != null) {
            cVar.onSearchClicked();
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362706})
    public void onMainHeaderTitleClicked() {
        c cVar = this.f924a;
        if (cVar != null) {
            cVar.onSearchClicked();
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362675})
    public void onBackIbClicked() {
        c cVar = this.f924a;
        if (cVar != null) {
            cVar.onBackClicked();
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362676})
    public void onCancelIbClicked() {
        c cVar = this.f924a;
        if (cVar != null) {
            cVar.onCancelRideClicked();
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362698})
    public void onShareRideClicked() {
        c cVar = this.f924a;
        if (cVar != null) {
            cVar.onShareRideClicked();
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362692})
    public void onPromoBtnClicked() {
        c cVar = this.f924a;
        if (cVar != null) {
            cVar.onPromoClicked();
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362683})
    public void onOptionsBtnClicked() {
        c cVar = this.f924a;
        if (cVar != null) {
            cVar.onOptionsClicked();
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362695})
    public void onSubmitPromoBtnClicked() {
        c cVar = this.f924a;
        if (cVar != null) {
            cVar.onSubmitPromoClicked();
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362701})
    public void onMessageToDriverTvClicked() {
        c cVar = this.f924a;
        if (cVar != null) {
            cVar.onMessageToDriverClicked();
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362700})
    public void onMessageToDriverIvClicked() {
        c cVar = this.f924a;
        if (cVar != null) {
            cVar.onMessageToDriverClicked();
        }
    }

    public MainHeaderView(Context context) {
        super(context);
    }

    public MainHeaderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MainHeaderView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public String getPromoCodeText() {
        if (this.promoEditText.getText() != null) {
            return this.promoEditText.getText().toString();
        }
        return null;
    }

    public View getMessageToDriverView() {
        return this.messageToDriverTextView;
    }

    public boolean isPromoViewShowing() {
        return this.promoLayout.getVisibility() == 0;
    }

    public void hidePromoView() {
        this.promoLayout.setVisibility(8);
    }

    public void showPromoView() {
        this.promoLayout.setVisibility(0);
    }

    public void showOptionsContainer() {
        this.optionsContainerLayout.setVisibility(0);
    }

    public void hideOptionsContainer() {
        this.optionsContainerLayout.setVisibility(8);
    }

    public View getOptionsContainerView() {
        return this.optionsContainerView;
    }

    public boolean isOptionsContainerShowing() {
        return this.optionsContainerLayout.getVisibility() == 0 && this.optionsContainerLayout.getMinimumHeight() != 0;
    }

    public void scaleUpOptionsContainer(AnimatorListenerAdapter animatorListenerAdapter, int i) {
        double d2;
        if (getContext() != null && getContext().getResources() != null && getContext().getResources().getDisplayMetrics() != null) {
            if (Build.VERSION.SDK_INT >= 23) {
                d2 = Math.ceil((double) (getContext().getResources().getDisplayMetrics().density * 24.0f));
            } else {
                d2 = Math.ceil((double) (getContext().getResources().getDisplayMetrics().density * 25.0f));
            }
            int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.height_toolbar);
            int i2 = getContext().getResources().getDisplayMetrics().heightPixels;
            ValueAnimator ofInt = ValueAnimator.ofInt(new int[]{0, ((i2 - ((int) d2)) - dimensionPixelSize) - getContext().getResources().getDimensionPixelSize(R.dimen.main_header_price_height)});
            ofInt.setDuration(300);
            ofInt.setInterpolator(new AccelerateDecelerateInterpolator());
            ofInt.setStartDelay((long) i);
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    MainHeaderView.this.b(valueAnimator);
                }
            });
            ofInt.addListener(animatorListenerAdapter);
            ofInt.start();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        LinearLayout linearLayout = this.optionsContainerLayout;
        if (linearLayout != null) {
            linearLayout.setMinimumHeight(intValue);
        }
    }

    public void scaleDownOptionsContainer(AnimatorListenerAdapter animatorListenerAdapter) {
        LinearLayout linearLayout = this.optionsContainerLayout;
        if (linearLayout != null) {
            ValueAnimator ofInt = ValueAnimator.ofInt(new int[]{linearLayout.getMinimumHeight(), 0});
            ofInt.setDuration(300);
            ofInt.setInterpolator(new DecelerateInterpolator());
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    MainHeaderView.this.a(valueAnimator);
                }
            });
            ofInt.addListener(animatorListenerAdapter);
            ofInt.start();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        LinearLayout linearLayout = this.optionsContainerLayout;
        if (linearLayout != null) {
            linearLayout.setMinimumHeight(intValue);
        }
    }

    public void setSufficientCreditIcon(int i) {
        this.sufficientCreditIv.setImageResource(i);
    }

    public void setSufficientCreditText(int i) {
        this.sufficientCreditTv.setText(i);
    }

    public void setSufficientCreditText(String str) {
        this.sufficientCreditTv.setText(str);
    }

    public void setSufficientCreditTextColor(int i) {
        if (getContext() != null && getContext().getResources() != null) {
            this.sufficientCreditTv.setTextColor(getContext().getResources().getColor(i));
        }
    }

    public void setPrice(String str) {
        this.priceTv.setText(str);
    }

    public void showSnappArrived() {
        this.snappArrivedLayout.setVisibility(0);
    }

    public void slideDownSnappArrived() {
        if (getContext() != null && getContext().getResources() != null) {
            if (this.snappArrivedLayout.getAnimation() != null) {
                this.snappArrivedLayout.getAnimation().cancel();
            }
            this.snappArrivedLayout.setTranslationY((float) (-getContext().getResources().getDimensionPixelSize(R.dimen.main_header_snapp_arrived_height)));
            this.snappArrivedLayout.setVisibility(0);
            this.snappArrivedLayout.animate().translationY(0.0f).setDuration(300).setInterpolator(new AccelerateDecelerateInterpolator()).setListener(new Animator.AnimatorListener() {
                public final void onAnimationCancel(Animator animator) {
                }

                public final void onAnimationRepeat(Animator animator) {
                }

                public final void onAnimationStart(Animator animator) {
                }

                public final void onAnimationEnd(Animator animator) {
                    MainHeaderView.this.snappArrivedLayout.setVisibility(0);
                    MainHeaderView.this.snappArrivedLayout.setTranslationY(0.0f);
                }
            }).start();
        }
    }

    public void slideUpSnappArrived() {
        if (getContext() != null && getContext().getResources() != null) {
            if (this.snappArrivedLayout.getAnimation() != null) {
                this.snappArrivedLayout.getAnimation().cancel();
            }
            this.snappArrivedLayout.animate().translationY((float) (-getContext().getResources().getDimensionPixelSize(R.dimen.main_header_snapp_arrived_height))).setDuration(300).setInterpolator(new DecelerateInterpolator()).setListener(new Animator.AnimatorListener() {
                public final void onAnimationCancel(Animator animator) {
                }

                public final void onAnimationRepeat(Animator animator) {
                }

                public final void onAnimationStart(Animator animator) {
                }

                public final void onAnimationEnd(Animator animator) {
                    MainHeaderView.this.snappArrivedLayout.setVisibility(8);
                    MainHeaderView.this.snappArrivedLayout.setTranslationY(0.0f);
                }
            }).start();
        }
    }

    public void hideSnappArrived() {
        this.snappArrivedLayout.setVisibility(8);
    }

    public void showMessageToDriverDialog(List<String> list, int i, e.b bVar, int i2, int i3, int i4, int i5, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        if (getContext() != null) {
            this.f925b = new b.a(getContext()).setIconFont(i2).setDialogTitle(i3).setDialogViewType(new e.a().setItems(list).setOnItemSelectedListener(bVar).build()).setNegativeButton(i4, onClickListener2).setPositiveButton(i5, onClickListener).showOnBuild(true).build();
        }
    }

    public void cancelMessageToDriverDialog() {
        b bVar = this.f925b;
        if (bVar != null) {
            bVar.dismiss();
            this.f925b.cancel();
        }
    }

    public void showToast(int i, int i2) {
        if (getContext() != null) {
            cab.snapp.snappuikit.b.makeText(getContext(), getContext().getString(i)).textColor(getContext().getResources().getColor(i2)).show();
        }
    }

    public void showPriceLayout() {
        this.priceLayout.setVisibility(0);
    }

    public void hidePriceLayout() {
        this.priceLayout.setVisibility(8);
    }

    public void showShareRide() {
        this.shareRideButton.setVisibility(0);
    }

    public void hideShareRide() {
        this.shareRideButton.setVisibility(8);
    }

    public void animateAndSetPriceFromZero(int i) {
        this.priceTv.animateFromZero(Integer.valueOf(i));
    }

    public void setPriceStartValue(int i) {
        this.priceTv.setStartValue(i);
    }

    public void setPriceEndValue(int i) {
        this.priceTv.setEndValue(i);
    }

    public void setPriceFormat(String str) {
        this.priceTv.setFormat(str);
    }

    public void animatePriceText(int i, AnimatorListenerAdapter animatorListenerAdapter) {
        if (animatorListenerAdapter != null) {
            this.priceTv.setAnimatorListener(animatorListenerAdapter);
        }
        this.priceTv.animateText(Integer.valueOf(i));
    }

    public void setOptionsEnabled() {
        this.optionsBtn.setEnabled(true);
    }

    public void setPromoEnabled() {
        this.promoButton.setEnabled(true);
    }

    public void setOptionsDisabled() {
        this.optionsBtn.setEnabled(false);
    }

    public void setPromoDisabled() {
        this.promoButton.setEnabled(false);
    }

    public void showPromoLoading() {
        this.snappLoading.setVisibility(0);
    }

    public void hidePromoLoading() {
        this.snappLoading.setVisibility(8);
    }

    public void hidePromoSaveButton() {
        this.submitPromoButton.setVisibility(8);
        this.promoEditText.setEnabled(false);
    }

    public void showPromoSaveButton() {
        this.submitPromoButton.setVisibility(0);
        this.promoEditText.setEnabled(true);
    }

    public void showToast(String str, int i) {
        if (getContext() != null) {
            cab.snapp.snappuikit.b.makeText(getContext(), str).textColor(getContext().getResources().getColor(i)).show();
        }
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

    public void showCancelRideDialog(int i, int i2, int i3, View.OnClickListener onClickListener, int i4, View.OnClickListener onClickListener2) {
        if (getContext() != null) {
            this.d = new b.a(getContext()).setDialogTitle(i).setDialogViewType(new g.a().setMessage(getContext().getString(i2)).build()).setPositiveButton(i3, onClickListener).setNegativeButton(i4, onClickListener2).showOnBuild(true).build();
        }
    }

    public void hideCancelRideDialog() {
        b bVar = this.d;
        if (bVar != null) {
            bVar.dismiss();
            this.d.cancel();
        }
    }

    public void showShareRideDialog(int i, int i2, int i3, int i4, View.OnClickListener onClickListener) {
        if (getContext() != null) {
            this.e = new b.a(getContext()).setIconFont(i).setTheme(0).setDialogTitle(i2).setDialogViewType(new g.a().setMessage(getContext().getString(i3)).build()).setPositiveButton(i4, onClickListener).showOnBuild(true).build();
        }
    }

    public void hideShareRideDialog() {
        b bVar = this.e;
        if (bVar != null) {
            bVar.dismiss();
            this.e.cancel();
        }
    }

    public View getRideShareButton() {
        return this.shareRideButton;
    }

    public void hidePriceTv() {
        this.priceTv.setVisibility(8);
        this.priceRialsTv.setVisibility(8);
    }

    public void showPriceTv() {
        this.priceTv.setVisibility(0);
        this.priceRialsTv.setVisibility(0);
    }

    public void showFreeRideTv() {
        this.freeRideTv.setVisibility(0);
    }

    public void hideFreeRideTv() {
        this.freeRideTv.setVisibility(8);
    }

    public void slideUpSnappToLayout() {
        if (this.snappToLayout.getAnimation() != null) {
            this.snappToLayout.getAnimation().cancel();
        }
        this.snappToLayout.animate().translationY(0.0f).setDuration(300).setInterpolator(new DecelerateInterpolator()).start();
    }

    public void slideDownSnappToLayout() {
        if (this.snappToLayout.getAnimation() != null) {
            this.snappToLayout.getAnimation().cancel();
        }
        this.snappToLayout.animate().translationY((float) this.snappToLayout.getMeasuredHeight()).setDuration(300).setInterpolator(new AccelerateDecelerateInterpolator()).start();
    }

    public void hideBackButton() {
        this.backImageButton.setVisibility(8);
    }

    public void showCancelRideButton() {
        this.cancelImageButton.setVisibility(0);
    }

    public void hideFavoritesContainer() {
        this.favoritesContainer.setVisibility(8);
    }

    public void showSearchButton() {
        this.searchImageButton.setVisibility(0);
    }

    public void hideCancelRideButton() {
        this.cancelImageButton.setVisibility(8);
    }

    public void setPromoText(String str) {
        this.promoEditText.setText(str);
    }

    public void setTitleText(int i) {
        this.titleTextView.setText(i);
    }

    public void showFavoritesContainer() {
        this.favoritesContainer.setVisibility(0);
    }

    public void showBackButton() {
        this.backImageButton.setVisibility(0);
    }

    public void hideSearchButton() {
        this.searchImageButton.setVisibility(8);
    }

    public void setSnappToAddressText(String str) {
        this.snappToTextView.setText(str);
    }

    public void setPromoEditTextDisabled() {
        this.promoEditText.setEnabled(false);
    }

    public void hideDummySnappToLayout() {
        this.snappToLayoutDummy.setVisibility(8);
    }

    public void showDummySnappToLayout() {
        this.snappToLayoutDummy.setVisibility(0);
    }

    public View getPromoCodeEditText() {
        return this.promoEditText;
    }

    public AppCompatButton getOptionsBtn() {
        return this.optionsBtn;
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
        this.c = new r(getContext());
    }

    public void setPresenter(c cVar) {
        this.f924a = cVar;
    }

    public void hidePaymentStatus() {
        this.paymentStatusLayout.setVisibility(8);
    }

    public void showPaymentStatus() {
        this.paymentStatusLayout.setVisibility(0);
    }
}
