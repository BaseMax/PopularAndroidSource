package cab.snapp.passenger.units.footer.ride_request_footer;

import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.phone_verification.PhoneVerificationController;
import cab.snapp.snappdialog.SnappControllerDialog;
import cab.snapp.snappdialog.b;
import cab.snapp.snappdialog.dialogViews.a.g;
import cab.snapp.snappuikit.SnappLoading;

public class RideRequestFooterView extends LinearLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    protected c f773a;
    @BindView(2131362867)
    AppCompatButton actionButton;
    @BindView(2131362868)
    View actionLayout;

    /* renamed from: b  reason: collision with root package name */
    private SnappControllerDialog f774b;
    private b c;
    private b d;
    @BindView(2131362869)
    AppCompatTextView disabledTextView;
    private b e;
    private b f;
    @BindView(2131362870)
    AppCompatTextView freeRideTextView;
    @BindView(2131362871)
    View moreControllersContainer;
    @BindView(2131362885)
    AppCompatButton moreDescButton;
    @BindView(2131362872)
    AppCompatButton optionsButton;
    @BindView(2131362873)
    LinearLayout optionsLayout;
    @BindView(2131362874)
    View phoneNotVerifiedLayout;
    @BindView(2131362875)
    SnappCountingTextView priceCountingTextView;
    @BindView(2131362876)
    LinearLayout priceLayout;
    @BindView(2131362877)
    AppCompatButton promoButton;
    @BindView(2131362878)
    AppCompatEditText promoEditText;
    @BindView(2131362879)
    RelativeLayout promoLayout;
    @BindView(2131362880)
    AppCompatButton promoSaveButton;
    @BindView(2131362882)
    LinearLayout recyclerLayout;
    @BindView(2131362883)
    RecyclerView recyclerView;
    @BindView(2131362886)
    AppCompatTextView shortDescriptionTextView;
    @BindView(2131362881)
    SnappLoading snapp;
    @BindView(2131362884)
    RelativeLayout tooltipsLayout;

    public RideRequestFooterView(Context context) {
        super(context);
    }

    public RideRequestFooterView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RideRequestFooterView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362872})
    public void onOptionsClicked() {
        this.f773a.onOptionsClicked();
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362877})
    public void onPromoClicked() {
        this.f773a.onPromoClicked();
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362867})
    public void onActionClicked() {
        this.f773a.onActionClicked();
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362880})
    public void onPromoSaveClicked() {
        this.f773a.onPromoSaveClicked();
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362874})
    public void onPhoneNotVerifiedClicked() {
        this.f773a.onPhoneNotVerifiedClicked();
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131362885})
    public void onTooltipDetailsClicked() {
        this.f773a.onTooltipDetailsClicked();
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        c cVar = this.f773a;
        if (cVar != null) {
            cVar.onViewDetached();
        }
        super.onDetachedFromWindow();
    }

    public void setPresenter(c cVar) {
        this.f773a = cVar;
    }

    public void scaleUpOptionsContainer(AnimatorListenerAdapter animatorListenerAdapter) {
        if (getContext() != null && getContext().getResources() != null && getContext().getResources().getDisplayMetrics() != null) {
            if (Build.VERSION.SDK_INT >= 23) {
                Math.ceil((double) (getContext().getResources().getDisplayMetrics().density * 24.0f));
            } else {
                Math.ceil((double) (getContext().getResources().getDisplayMetrics().density * 25.0f));
            }
            int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.height_toolbar);
            int dimensionPixelSize2 = getContext().getResources().getDimensionPixelSize(R.dimen.ride_request_footer_options_height);
            int dimensionPixelSize3 = getContext().getResources().getDimensionPixelSize(R.dimen.ride_request_footer_action_height);
            int dimensionPixelOffset = getContext().getResources().getDimensionPixelOffset(R.dimen.divider_height_tiny);
            c cVar = this.f773a;
            ValueAnimator ofInt = ValueAnimator.ofInt(new int[]{this.moreControllersContainer.getHeight(), ((((cVar != null ? cVar.getMainViewHeight() : 0) - dimensionPixelSize) - dimensionPixelOffset) - dimensionPixelSize2) - dimensionPixelSize3});
            ofInt.setDuration(300);
            ofInt.setInterpolator(new DecelerateInterpolator());
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    RideRequestFooterView.this.b(valueAnimator);
                }
            });
            ofInt.addListener(animatorListenerAdapter);
            ofInt.start();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        View view = this.moreControllersContainer;
        if (view != null) {
            view.setMinimumHeight(intValue);
        }
    }

    public void scaleDownOptionsContainer(AnimatorListenerAdapter animatorListenerAdapter) {
        if (this.moreControllersContainer != null && getContext() != null && getContext().getResources() != null) {
            ValueAnimator ofInt = ValueAnimator.ofInt(new int[]{(this.moreControllersContainer.getMinimumHeight() - getContext().getResources().getDimensionPixelSize(R.dimen.ride_request_footer_action_height)) - getContext().getResources().getDimensionPixelSize(R.dimen.height_toolbar), 0});
            ofInt.setDuration(300);
            ofInt.setInterpolator(new AccelerateDecelerateInterpolator());
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    RideRequestFooterView.this.a(valueAnimator);
                }
            });
            ofInt.addListener(animatorListenerAdapter);
            ofInt.start();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        View view = this.moreControllersContainer;
        if (view != null) {
            view.setMinimumHeight(intValue);
        }
    }

    public void showOptionsLayout() {
        this.optionsLayout.setVisibility(0);
    }

    public void hideOptionsLayout() {
        this.optionsLayout.setVisibility(8);
    }

    public void showActionLayout() {
        this.actionLayout.setVisibility(0);
    }

    public void hideActionLayout() {
        this.actionLayout.setVisibility(8);
    }

    public void showPhoneNotVerified() {
        this.phoneNotVerifiedLayout.setVisibility(0);
    }

    public void hidePhoneNotVerified() {
        this.phoneNotVerifiedLayout.setVisibility(8);
    }

    public void showPromoLoading() {
        this.snapp.setVisibility(0);
    }

    public void hidePromoLoading() {
        this.snapp.setVisibility(8);
    }

    public void hidePromoSaveButton() {
        this.promoSaveButton.setVisibility(8);
    }

    public void showPromoSaveButton() {
        this.promoSaveButton.setVisibility(0);
    }

    public void showTooltipDetailDialog(String str, String str2, int i) {
        g gVar;
        if (cab.snapp.passenger.f.g.isCurrentLocalRtl()) {
            gVar = new g.a().setMessage("‫".concat(String.valueOf(str2))).setDirection(1002).build();
        } else {
            gVar = new g.a().setMessage("‪".concat(String.valueOf(str2))).build();
        }
        b build = new b.a(getContext()).setDialogTitle(str).setIcon(i).setTheme(0).setDialogViewType(gVar).dismissOnButtonClick(401).setPositiveButtonText((int) R.string.got_it).showOnBuild(false).build();
        build.findViewById(R.id.default_content_type_message).setTextDirection(5);
        build.show();
    }

    public SnappControllerDialog showPhoneVerificationUnitAsDialog(PhoneVerificationController phoneVerificationController, FragmentManager fragmentManager) {
        dismissPhoneVerificationUnitDialog();
        this.f774b = new SnappControllerDialog.a().setController(phoneVerificationController).setFragmentManager(fragmentManager).showOnBuild(true).build();
        return this.f774b;
    }

    public void dismissPhoneVerificationUnitDialog() {
        SnappControllerDialog snappControllerDialog = this.f774b;
        if (snappControllerDialog != null) {
            snappControllerDialog.cancel();
        }
    }

    public void showToast(String str) {
        if (getContext() != null) {
            cab.snapp.snappuikit.b.makeText(getContext(), str).textColor(getContext().getResources().getColor(R.color.cherry)).show();
        }
    }

    public void showToast(int i) {
        if (getContext() != null) {
            showToast(getContext().getResources().getString(i));
        }
    }

    public void showInfoDialog(String str, String str2) {
        dismissInfoDialogIfAble();
        this.c = new b.a(getContext()).setTheme(0).isErrorInformation(true).setIconFont(R.string.ic_font_server_error).setDialogViewType(new g.a().setMessage(str2).build()).setDialogTitle(str).setCancelable(true).setPositiveButton((int) R.string.ok, (View.OnClickListener) new View.OnClickListener() {
            public final void onClick(View view) {
                RideRequestFooterView.this.b(view);
            }
        }).build();
        this.c.show();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        dismissInfoDialogIfAble();
    }

    public void dismissInfoDialogIfAble() {
        b bVar = this.c;
        if (bVar != null) {
            bVar.cancel();
        }
    }

    public void showSnappRoseConfirmationDialog(int i, int i2, int i3, int i4, int i5, View.OnClickListener onClickListener) {
        if (getContext() != null) {
            this.d = new b.a(getContext()).setTheme(1).setIconFont(i).setDialogTitle(i2).setDialogViewType(new g.a().setMessage(getContext().getString(i3)).build()).setPositiveButton(i4, onClickListener).setNegativeButton(i5, (View.OnClickListener) new View.OnClickListener() {
                public final void onClick(View view) {
                    RideRequestFooterView.this.a(view);
                }
            }).showOnBuild(true).build();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        this.d.dismiss();
    }

    public void cancelSnappRoseConfirmationDialog() {
        b bVar = this.d;
        if (bVar != null) {
            bVar.dismiss();
            this.d.cancel();
        }
    }

    public void showSnappConfirmationDialog(int i, int i2, String str, int i3, int i4, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        this.e = new b.a(getContext()).setTheme(1).setIconFont(i).setDialogTitle(i2).setDialogViewType(new g.a().setMessage(str).build()).setPositiveButton(i3, onClickListener).setNegativeButton(i4, onClickListener2).showOnBuild(true).build();
    }

    public void cancelSnappConfirmationDialog() {
        b bVar = this.e;
        if (bVar != null) {
            bVar.dismiss();
            this.e.cancel();
        }
    }

    public void showFreeRideDialog(String str, String str2, View.OnClickListener onClickListener, int i) {
        b bVar = this.f;
        if (bVar == null || (bVar != null && !bVar.isShowing())) {
            this.f = new b.a(getContext()).setTheme(0).setIconFont(R.string.ic_font_free_ride).setDialogTitle(str).setDialogViewType(new g.a().setMessage(str2).setDirection(i).build()).setPositiveButton((int) R.string.ok, onClickListener).showOnBuild(true).build();
        }
    }

    public void dismissFreeRideDialog() {
        b bVar = this.f;
        if (bVar != null) {
            bVar.dismiss();
            this.f.cancel();
        }
    }

    public void setTopMargin(int i) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        layoutParams.topMargin = i;
        setLayoutParams(layoutParams);
    }

    public void smoothScrollToServiceTypeAtItem(int i) {
        this.recyclerView.smoothScrollToPosition(i);
    }
}
