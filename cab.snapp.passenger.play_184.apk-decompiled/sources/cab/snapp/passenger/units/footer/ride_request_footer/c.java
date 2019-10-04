package cab.snapp.passenger.units.footer.ride_request_footer;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Activity;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.a.l;
import cab.snapp.passenger.data.models.ServiceTypeModel;
import cab.snapp.passenger.data.models.ShowCaseItemDao;
import cab.snapp.passenger.data.models.price.PriceModel;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.o;
import cab.snapp.passenger.f.r;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.phone_verification.PhoneVerificationController;
import com.a.a.a;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import me.a.a.a.a.g;

public final class c extends BasePresenter<RideRequestFooterView, a> {

    /* renamed from: a  reason: collision with root package name */
    boolean f796a = true;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    o f797b;
    @Inject
    cab.snapp.passenger.f.b.b.c c;
    private final int d = 1000;
    /* access modifiers changed from: private */
    public boolean e;
    private l f;
    private List<PriceModel> g;
    private ServiceTypeModel h;
    private PriceModel i;
    /* access modifiers changed from: private */
    public int j;
    private String k;
    private boolean l = false;
    private boolean m;
    private ViewTreeObserver.OnGlobalLayoutListener n;

    public final void onUnknownError(String str) {
        if (getView() != null && str != null && !str.isEmpty()) {
            ((RideRequestFooterView) getView()).showToast(str);
        }
    }

    public final void onOptionsClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).onRideOptionsClicked();
        }
    }

    public final void onPromoClicked() {
        if (getView() != null) {
            if (((RideRequestFooterView) getView()).promoLayout.getVisibility() == 0) {
                a();
                b();
                return;
            }
            cab.snapp.c.c.showKeyboard(((RideRequestFooterView) getView()).getContext(), ((RideRequestFooterView) getView()).promoEditText);
            ((RideRequestFooterView) getView()).promoLayout.setVisibility(0);
            if (getInteractor() != null) {
                ((a) getInteractor()).onPromoIsAccessible();
            }
        }
    }

    public final void onActionClicked() {
        if (getView() != null) {
            b();
        }
        if (getInteractor() != null) {
            ((a) getInteractor()).onActionButtonClicked();
        }
    }

    public final void onTooltipDetailsClicked() {
        if (getView() != null) {
            PriceModel priceModel = this.i;
            if (!(priceModel == null || priceModel.getPriceTexts() == null)) {
                if (this.i.isSurged()) {
                    ((RideRequestFooterView) getView()).showTooltipDetailDialog(this.i.getPriceTexts().getSurgeText(), this.i.getPriceTexts().getSurgeFooterText(), R.drawable.ic_dialog_surge);
                    this.c.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "SURGE BUTTON");
                    this.c.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.ALERT_PRE_RIDE_SURGE, "[show]");
                } else if (this.i.isDiscountedPrice()) {
                    ((RideRequestFooterView) getView()).showTooltipDetailDialog(this.i.getPriceTexts().getDiscountedText(), this.i.getPriceTexts().getDiscountedFooterText(), R.drawable.ic_dialog_percentage);
                } else if (this.i.isFreeRide()) {
                    ((RideRequestFooterView) getView()).showTooltipDetailDialog(this.i.getPriceTexts().getFreeRideText(), this.i.getPriceTexts().getFreeRideFooterText(), R.drawable.ic_dialog_free_ride);
                    this.c.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Free Ride Button");
                }
            }
        }
    }

    public final void onPromoSaveClicked() {
        if (!(getView() == null || getInteractor() == null)) {
            if (((RideRequestFooterView) getView()).promoEditText.getText().toString().isEmpty()) {
                ((RideRequestFooterView) getView()).showToast((int) R.string.please_enter_voucher_code);
                return;
            }
            ((RideRequestFooterView) getView()).hidePromoSaveButton();
            ((RideRequestFooterView) getView()).showPromoLoading();
            ((a) getInteractor()).applyVoucher(((RideRequestFooterView) getView()).promoEditText.getText().toString());
            b();
        }
    }

    public final void onPhoneNotVerifiedClicked() {
        if (getInteractor() != null) {
            ((a) getInteractor()).startPhoneVerificationProcedure();
        }
    }

    public final void showPromoSaveButton() {
        if (getView() != null) {
            ((RideRequestFooterView) getView()).showPromoSaveButton();
        }
    }

    public final void hidePromoSaveButton() {
        if (getView() != null) {
            ((RideRequestFooterView) getView()).hidePromoSaveButton();
        }
    }

    public final void onInitialize() {
        if (getView() != null && ((RideRequestFooterView) getView()).getViewTreeObserver() != null && ((RideRequestFooterView) getView()).getContext() != null) {
            BaseApplication.get(((RideRequestFooterView) getView()).getContext()).getAppComponent().inject(this);
            if (this.n == null) {
                this.n = new ViewTreeObserver.OnGlobalLayoutListener() {
                    public final void onGlobalLayout() {
                        c.this.e();
                    }
                };
            }
            ((RideRequestFooterView) getView()).getViewTreeObserver().addOnGlobalLayoutListener(this.n);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void e() {
        if (!(getView() == null || ((RideRequestFooterView) getView()).getRootView() == null)) {
            Rect rect = new Rect();
            ((RideRequestFooterView) getView()).getWindowVisibleDisplayFrame(rect);
            int height = ((RideRequestFooterView) getView()).getRootView().getHeight();
            double d2 = (double) (height - rect.bottom);
            double d3 = (double) height;
            Double.isNaN(d3);
            if (d2 > d3 * 0.15d) {
                this.m = true;
                return;
            }
            this.m = false;
        }
    }

    public final void setPromoCode(String str) {
        if (getView() != null) {
            ((RideRequestFooterView) getView()).promoEditText.setText(str);
        }
    }

    public final ServiceTypeModel getCurrentServiceTypeModel() {
        return this.h;
    }

    public final View getMoreControllersContainer() {
        if (getView() != null) {
            return ((RideRequestFooterView) getView()).moreControllersContainer;
        }
        return null;
    }

    public final void setRequestText(String str) {
        this.k = str;
    }

    public final void setAdapter(int i2) {
        if (getView() != null) {
            this.j = i2;
            LinearLayoutManager linearLayoutManager = new LinearLayoutManager(((RideRequestFooterView) getView()).getContext());
            linearLayoutManager.setOrientation(0);
            linearLayoutManager.setReverseLayout(true);
            this.g = new ArrayList();
            this.f = new l(this.g, i2, new l.a() {
                public final void onServiceTypeSelected(int i) {
                    c.this.a(i);
                }
            });
            ((RideRequestFooterView) getView()).recyclerView.setLayoutManager(linearLayoutManager);
            ((RideRequestFooterView) getView()).recyclerView.setAdapter(this.f);
            g.setUpOverScroll(((RideRequestFooterView) getView()).recyclerView, 1);
            ((RideRequestFooterView) getView()).postDelayed(new Runnable() {
                public final void run() {
                    c.this.d();
                }
            }, 400);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(int i2) {
        String str;
        if (getInteractor() != null) {
            ((a) getInteractor()).selectServiceType(i2);
            try {
                this.c.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Service Type Scroll", (long) i2);
            } catch (Exception e2) {
                e2.printStackTrace();
                a.logException(e2);
            }
            if (i2 == 1) {
                str = "tapEcho";
            } else if (i2 == 3) {
                str = "tapRose";
            } else if (i2 == 5) {
                str = "tapBox";
            } else if (i2 == 7) {
                str = "tapBike";
            } else {
                return;
            }
            cab.snapp.passenger.f.b.b.c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("selectServiceType", str).build());
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void d() {
        if (getView() != null && ((RideRequestFooterView) getView()).getContext() != null && ((RideRequestFooterView) getView()).getContext().getResources() != null) {
            ((RideRequestFooterView) getView()).recyclerLayout.setBackgroundColor(((RideRequestFooterView) getView()).getContext().getResources().getColor(R.color.pure_white));
        }
    }

    public final void updateList(List<PriceModel> list) {
        if (this.f != null) {
            this.g.clear();
            this.g.addAll(list);
            this.f.notifyDataSetChanged();
        }
    }

    public final void showServiceTypes() {
        if (getView() != null) {
            ((RideRequestFooterView) getView()).recyclerLayout.setVisibility(0);
            int i2 = this.j;
            if (getView() != null && i2 > 2) {
                ((RideRequestFooterView) getView()).smoothScrollToServiceTypeAtItem(i2);
            }
            if (this.l && getView() != null) {
                ((RideRequestFooterView) getView()).tooltipsLayout.setVisibility(0);
            }
        }
    }

    public final void hideServiceTypes() {
        if (getView() != null) {
            ((RideRequestFooterView) getView()).recyclerLayout.setVisibility(8);
            if (this.l) {
                c();
            }
        }
    }

    public final void updateServiceType(int i2, boolean z) {
        if (this.g != null && getView() != null) {
            ((RideRequestFooterView) getView()).freeRideTextView.setVisibility(8);
            ((RideRequestFooterView) getView()).disabledTextView.setVisibility(8);
            ((RideRequestFooterView) getView()).priceLayout.setVisibility(0);
            this.j = i2;
            for (PriceModel next : this.g) {
                if (next.getService().getServiceType() == this.j) {
                    this.h = next.getService();
                    this.i = next;
                    if (this.j == 5) {
                        setActionButtonText((int) R.string.enter_snappbox_detail);
                    } else {
                        setActionButtonText(this.k.replace("%s", next.getService().getStName()));
                    }
                    startCountingPrice();
                    String str = null;
                    if (next.getPriceTexts() != null) {
                        if (next.isSurged()) {
                            str = next.getPriceTexts().getSurgeText();
                        } else if (next.isDiscountedPrice()) {
                            str = next.getPriceTexts().getDiscountedText();
                        }
                    }
                    if (str == null) {
                        this.l = false;
                        c();
                    } else if (z) {
                        this.l = true;
                        if (getView() != null) {
                            ((RideRequestFooterView) getView()).tooltipsLayout.setVisibility(0);
                            ((RideRequestFooterView) getView()).shortDescriptionTextView.setText(str);
                        }
                    }
                    this.c.reportEvent(c.e.PRICE_SHOWN);
                    setPrice(next.getTotalPrice());
                    return;
                }
            }
        }
    }

    private void c() {
        if (getView() != null) {
            ((RideRequestFooterView) getView()).tooltipsLayout.setVisibility(8);
        }
    }

    public final void enableUI() {
        if (!(getView() == null || this.h == null)) {
            PriceModel priceModel = this.i;
            if (priceModel != null) {
                if (priceModel.getTotalPrice() <= 0) {
                    ((RideRequestFooterView) getView()).priceLayout.setVisibility(8);
                    ((RideRequestFooterView) getView()).freeRideTextView.setVisibility(0);
                } else {
                    ((RideRequestFooterView) getView()).freeRideTextView.setVisibility(8);
                    ((RideRequestFooterView) getView()).priceLayout.setVisibility(0);
                }
                if (this.h.isEnabled()) {
                    ((RideRequestFooterView) getView()).disabledTextView.setVisibility(8);
                } else {
                    ((RideRequestFooterView) getView()).freeRideTextView.setVisibility(8);
                    ((RideRequestFooterView) getView()).priceLayout.setVisibility(8);
                    ((RideRequestFooterView) getView()).disabledTextView.setVisibility(0);
                }
                if (getInteractor() != null) {
                    ((a) getInteractor()).updateFreeRideStatus(this.i.isFreeRide());
                }
                if (this.i.isFreeRide()) {
                    ((RideRequestFooterView) getView()).promoButton.setEnabled(false);
                    if (!(this.i.getPriceTexts() == null || this.i.getPriceTexts().getFreeRideText() == null || this.i.getPriceTexts().getFreeRideFooterText() == null)) {
                        int i2 = 1001;
                        if (cab.snapp.passenger.f.g.isCurrentLocalRtl()) {
                            i2 = 1002;
                        }
                        if (this.f796a) {
                            ((RideRequestFooterView) getView()).showFreeRideDialog(this.i.getPriceTexts().getFreeRideText(), this.i.getPriceTexts().getFreeRideFooterText(), new View.OnClickListener() {
                                public final void onClick(View view) {
                                    c.this.d(view);
                                }
                            }, i2);
                            this.f796a = false;
                        }
                    }
                } else {
                    this.f796a = true;
                    if (getView() != null) {
                        ((RideRequestFooterView) getView()).dismissFreeRideDialog();
                    } else {
                        return;
                    }
                }
            }
            if (this.h.isCanUseVoucher()) {
                ((RideRequestFooterView) getView()).promoButton.setEnabled(true);
            } else {
                ((RideRequestFooterView) getView()).promoButton.setEnabled(false);
            }
            if (this.h.isRideOptionsEnabled()) {
                ((RideRequestFooterView) getView()).optionsButton.setEnabled(true);
            } else {
                ((RideRequestFooterView) getView()).optionsButton.setEnabled(false);
            }
            if (this.h.isEnabled()) {
                ((RideRequestFooterView) getView()).actionButton.setEnabled(true);
                return;
            }
            ((RideRequestFooterView) getView()).actionButton.setEnabled(false);
            ((RideRequestFooterView) getView()).optionsButton.setEnabled(false);
            ((RideRequestFooterView) getView()).promoButton.setEnabled(false);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void d(View view) {
        if (getView() != null) {
            ((RideRequestFooterView) getView()).dismissFreeRideDialog();
        }
    }

    public final void disableUI() {
        if (getView() != null) {
            ((RideRequestFooterView) getView()).actionButton.setEnabled(false);
            ((RideRequestFooterView) getView()).optionsButton.setEnabled(false);
            ((RideRequestFooterView) getView()).promoButton.setEnabled(false);
        }
    }

    public final void setActionButtonText(int i2) {
        if (getView() != null) {
            ((RideRequestFooterView) getView()).actionButton.setText(i2);
        }
    }

    public final void setActionButtonText(String str) {
        if (getView() != null) {
            ((RideRequestFooterView) getView()).actionButton.setText(str);
        }
    }

    public final void setPrice(int i2) {
        this.e = true;
        if (getView() != null) {
            ((RideRequestFooterView) getView()).priceCountingTextView.animateFromZero(Integer.valueOf(i2));
        }
    }

    public final void startCountingPrice() {
        this.e = false;
        a(false);
    }

    /* access modifiers changed from: private */
    public void a(boolean z) {
        if (getView() != null) {
            if (z) {
                ((RideRequestFooterView) getView()).priceCountingTextView.setStartValue(15000);
                ((RideRequestFooterView) getView()).priceCountingTextView.setEndValue(org.eclipse.paho.a.a.b.DISCONNECTED_BUFFER_SIZE_DEFAULT);
            } else {
                ((RideRequestFooterView) getView()).priceCountingTextView.setStartValue(org.eclipse.paho.a.a.b.DISCONNECTED_BUFFER_SIZE_DEFAULT);
                ((RideRequestFooterView) getView()).priceCountingTextView.setEndValue(15000);
            }
            ((RideRequestFooterView) getView()).priceCountingTextView.setFormat("%s");
        }
        b(z);
    }

    private void b(final boolean z) {
        if (getView() != null) {
            ((RideRequestFooterView) getView()).priceCountingTextView.setAnimatorListener(new Animator.AnimatorListener() {
                public final void onAnimationRepeat(Animator animator) {
                }

                public final void onAnimationStart(Animator animator) {
                }

                public final void onAnimationEnd(Animator animator) {
                    if (!c.this.e) {
                        c.this.a(!z);
                    } else {
                        c.this.enableUI();
                    }
                }

                public final void onAnimationCancel(Animator animator) {
                    c.this.enableUI();
                }
            });
            ((RideRequestFooterView) getView()).priceCountingTextView.animateText(1000);
        }
    }

    public final int getMainViewHeight() {
        if (getInteractor() == null || ((a) getInteractor()).getMainView() == null) {
            return 0;
        }
        return ((a) getInteractor()).getMainView().getMeasuredHeight();
    }

    public final void onShowRideOptions() {
        ServiceTypeModel serviceTypeModel = this.h;
        if (serviceTypeModel != null && serviceTypeModel.getServiceType() == 5) {
            setActionButtonText((int) R.string.enter_snappbox_detail);
        }
        if (getView() != null) {
            if (((RideRequestFooterView) getView()).promoLayout.getVisibility() == 0) {
                a();
            }
            int i2 = 0;
            if (this.m) {
                b();
                i2 = 200;
            }
            ((RideRequestFooterView) getView()).postDelayed(new Runnable() {
                public final void run() {
                    if (c.this.getView() != null) {
                        ((RideRequestFooterView) c.this.getView()).scaleUpOptionsContainer(new AnimatorListenerAdapter() {
                            public final void onAnimationStart(Animator animator) {
                                super.onAnimationStart(animator);
                                c.this.hideServiceTypes();
                                if (c.this.getInteractor() != null) {
                                    ((a) c.this.getInteractor()).scalingOptionsStarted();
                                }
                                if (c.this.getView() != null && ((RideRequestFooterView) c.this.getView()).promoLayout.getVisibility() == 0) {
                                    c.this.a();
                                }
                            }

                            public final void onAnimationEnd(Animator animator) {
                                super.onAnimationEnd(animator);
                                if (c.this.getInteractor() != null) {
                                    ((a) c.this.getInteractor()).navigateToOptions();
                                }
                            }
                        });
                    }
                }
            }, (long) i2);
        }
    }

    public final void onHideOptions() {
        if (getView() != null) {
            ((RideRequestFooterView) getView()).scaleDownOptionsContainer(new AnimatorListenerAdapter() {
                public final void onAnimationStart(Animator animator) {
                    super.onAnimationStart(animator);
                    c.this.showServiceTypes();
                    if (c.this.getInteractor() != null) {
                        ((a) c.this.getInteractor()).navigateUpOptions();
                    }
                    if (c.this.getView() != null) {
                        ((RideRequestFooterView) c.this.getView()).setTopMargin(0);
                    }
                }
            });
        }
    }

    public final void onShowBoxOptions() {
        if (getView() != null) {
            ServiceTypeModel serviceTypeModel = this.h;
            if (serviceTypeModel != null) {
                setActionButtonText(this.k.replace("%s", serviceTypeModel.getStName()));
            }
            if (((RideRequestFooterView) getView()).promoLayout.getVisibility() == 0) {
                a();
            }
            int i2 = 0;
            if (this.m) {
                i2 = 100;
            }
            ((RideRequestFooterView) getView()).postDelayed(new Runnable() {
                public final void run() {
                    if (c.this.getView() != null) {
                        ((RideRequestFooterView) c.this.getView()).scaleUpOptionsContainer(new AnimatorListenerAdapter() {
                            public final void onAnimationStart(Animator animator) {
                                super.onAnimationStart(animator);
                                c.this.hideServiceTypes();
                                if (c.this.getInteractor() != null) {
                                    ((a) c.this.getInteractor()).scalingOptionsStarted();
                                }
                                if (c.this.getView() != null && ((RideRequestFooterView) c.this.getView()).getContext() != null && ((RideRequestFooterView) c.this.getView()).getContext().getResources() != null) {
                                    ((RideRequestFooterView) c.this.getView()).setTopMargin(((RideRequestFooterView) c.this.getView()).getContext().getResources().getDimensionPixelSize(R.dimen.height_toolbar));
                                }
                            }

                            public final void onAnimationEnd(Animator animator) {
                                super.onAnimationEnd(animator);
                                if (c.this.getInteractor() != null) {
                                    ((a) c.this.getInteractor()).navigateToBoxOptions();
                                }
                            }
                        });
                    }
                }
            }, (long) i2);
        }
    }

    public final void onHideBoxOptions() {
        if (getView() != null) {
            ((RideRequestFooterView) getView()).scaleDownOptionsContainer(new AnimatorListenerAdapter() {
                public final void onAnimationStart(Animator animator) {
                    super.onAnimationStart(animator);
                    c.this.showServiceTypes();
                    if (c.this.getInteractor() != null) {
                        ((a) c.this.getInteractor()).navigateUpBoxOptions();
                    }
                    if (c.this.getView() != null) {
                        ((RideRequestFooterView) c.this.getView()).setTopMargin(0);
                    }
                }

                public final void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    if (c.this.j == 5) {
                        c.this.setActionButtonText((int) R.string.enter_snappbox_detail);
                    }
                }
            });
        }
    }

    public final void onNeedPhoneVerification() {
        if (getView() != null) {
            ((RideRequestFooterView) getView()).hideActionLayout();
            ((RideRequestFooterView) getView()).hideOptionsLayout();
            ((RideRequestFooterView) getView()).showPhoneNotVerified();
        }
    }

    public final void onCanNotCalculatePrice(String str) {
        if (getView() != null) {
            ((RideRequestFooterView) getView()).showToast(str);
        }
    }

    public final void onUserIsBlocked(String str) {
        if (getView() != null && str != null && !str.isEmpty()) {
            ((RideRequestFooterView) getView()).showToast(str);
        }
    }

    public final void onVoucherAlreadyActivated(String str) {
        if (getView() != null) {
            ((RideRequestFooterView) getView()).showInfoDialog(((RideRequestFooterView) getView()).getContext().getString(R.string.invalid_code), str);
        }
    }

    public final void onVoucherIsNotValid(String str) {
        if (getView() != null && str != null && !str.isEmpty()) {
            ((RideRequestFooterView) getView()).showToast(str);
        }
    }

    public final void presentPhoneVerificationUnit(PhoneVerificationController phoneVerificationController, FragmentManager fragmentManager) {
        ((RideRequestFooterView) this.view).showPhoneVerificationUnitAsDialog(phoneVerificationController, fragmentManager);
    }

    public final void finishPresentingPhoneVerificationUnit() {
        ((RideRequestFooterView) this.view).dismissPhoneVerificationUnitDialog();
    }

    public final void onPhoneVerificationSuccessful() {
        if (getView() != null) {
            ((RideRequestFooterView) getView()).showActionLayout();
            ((RideRequestFooterView) getView()).showOptionsLayout();
            ((RideRequestFooterView) getView()).hidePhoneNotVerified();
        }
    }

    public final void showPromoLoading() {
        if (getView() != null) {
            ((RideRequestFooterView) getView()).showPromoLoading();
        }
    }

    public final void hidePromoLoading() {
        if (getView() != null) {
            ((RideRequestFooterView) getView()).hidePromoLoading();
        }
    }

    public final View getOptionButton() {
        if (getView() == null) {
            return null;
        }
        return ((RideRequestFooterView) getView()).optionsButton;
    }

    public final void onNoInternetConnection() {
        if (getView() != null && ((RideRequestFooterView) getView()).getContext() != null) {
            new r(((RideRequestFooterView) getView()).getContext()).showNoInternetDialog();
        }
    }

    public final void onUserServiceTypeHasNoErrorForDisplayingShowCase() {
        if (getView() != null && ((RideRequestFooterView) getView()).getContext() != null) {
            ShowCaseItemDao showCaseItemDao = new ShowCaseItemDao();
            showCaseItemDao.setActivity((Activity) ((RideRequestFooterView) getView()).getContext());
            showCaseItemDao.setView(getOptionButton());
            showCaseItemDao.setTitle(((RideRequestFooterView) getView()).getContext().getString(R.string.text_app_guide_option_tv_title));
            showCaseItemDao.setDescription(((RideRequestFooterView) getView()).getContext().getString(R.string.text_app_guide_option_tv_desc));
            this.f797b.showTapTargetForRideOptions(showCaseItemDao);
        }
    }

    public final void onSnappRoseConfirmationNeeded() {
        if (getView() != null) {
            ((RideRequestFooterView) getView()).showSnappRoseConfirmationDialog(R.string.ic_font_gender, R.string.women_service_type, R.string.women_service_type_desc, R.string.request_snapp, R.string.change_service_type, new View.OnClickListener() {
                public final void onClick(View view) {
                    c.this.c(view);
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void c(View view) {
        this.c.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "confirm before ride yes");
        if (getInteractor() != null) {
            ((a) getInteractor()).roseRequestConfirmed();
        }
        if (getView() != null) {
            ((RideRequestFooterView) getView()).cancelSnappRoseConfirmationDialog();
        }
    }

    public final void onSnappConfirmationNeeded(String str) {
        if (getView() != null) {
            ((RideRequestFooterView) getView()).showSnappConfirmationDialog(R.string.ic_font_confirm_ride_req, R.string.request_snapp, str, R.string.request_snapp, R.string.dismiss, new View.OnClickListener() {
                public final void onClick(View view) {
                    c.this.b(view);
                }
            }, new View.OnClickListener() {
                public final void onClick(View view) {
                    c.this.a(view);
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        this.c.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "confirm before ride yes");
        this.c.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.ALERT_CONFIRM_BEFORE_RIDE, "[yes]");
        if (getInteractor() != null) {
            ((a) getInteractor()).rideRequestConfirmed();
        }
        if (getView() != null) {
            ((RideRequestFooterView) getView()).cancelSnappConfirmationDialog();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        this.c.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.ALERT_CONFIRM_BEFORE_RIDE, "[no]");
        if (getView() != null) {
            ((RideRequestFooterView) getView()).cancelSnappConfirmationDialog();
        }
    }

    public final void onViewDetached() {
        if (getView() != null && ((RideRequestFooterView) getView()).getViewTreeObserver() != null && this.n != null) {
            ((RideRequestFooterView) getView()).getViewTreeObserver().removeOnGlobalLayoutListener(this.n);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        if (getView() != null) {
            ((RideRequestFooterView) getView()).promoLayout.setVisibility(8);
        }
    }

    /* access modifiers changed from: package-private */
    public final void b() {
        if (getView() != null && ((RideRequestFooterView) getView()).getContext() != null) {
            cab.snapp.c.c.tryHideKeyboard(((RideRequestFooterView) getView()).getContext(), ((RideRequestFooterView) getView()).promoEditText);
        }
    }
}
