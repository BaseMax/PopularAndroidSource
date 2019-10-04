package cab.snapp.passenger.units.mainheader;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Activity;
import android.view.View;
import cab.snapp.arch.protocol.BasePresenter;
import cab.snapp.c.j;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.data.models.ShowCaseItemDao;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.g;
import cab.snapp.passenger.f.o;
import cab.snapp.passenger.f.r;
import cab.snapp.passenger.play.R;
import cab.snapp.snappdialog.dialogViews.a.e;
import java.util.List;
import java.util.Locale;
import javax.inject.Inject;
import org.eclipse.paho.a.a.b;

public final class c extends BasePresenter<MainHeaderView, a> implements e.b {

    /* renamed from: a  reason: collision with root package name */
    List<String> f956a;

    /* renamed from: b  reason: collision with root package name */
    String f957b;
    int c;
    @Inject
    o d;
    @Inject
    cab.snapp.passenger.f.b.b.c e;
    private final int f = 1000;
    /* access modifiers changed from: private */
    public boolean g;
    /* access modifiers changed from: private */
    public boolean h;
    /* access modifiers changed from: private */
    public boolean i;
    /* access modifiers changed from: private */
    public boolean j;
    private boolean k;
    /* access modifiers changed from: private */
    public int l;

    public final void onRideRequested() {
    }

    public final void onInitialize(List<String> list) {
        this.f956a = list;
        if (getView() != null && ((MainHeaderView) getView()).getContext() != null) {
            BaseApplication.get(((MainHeaderView) getView()).getContext()).getAppComponent().inject(this);
        }
    }

    public final void onPopOptions() {
        if (getView() != null) {
            ((MainHeaderView) getView()).scaleDownOptionsContainer(new AnimatorListenerAdapter() {
                public final void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    if (c.this.getView() != null) {
                        ((MainHeaderView) c.this.getView()).hideOptionsContainer();
                    }
                }

                public final void onAnimationStart(Animator animator) {
                    super.onAnimationStart(animator);
                    if (c.this.getView() != null) {
                        ((MainHeaderView) c.this.getView()).hideBackButton();
                        if (c.this.l == 6) {
                            ((MainHeaderView) c.this.getView()).showShareRide();
                        } else {
                            ((MainHeaderView) c.this.getView()).showCancelRideButton();
                        }
                    }
                    if (c.this.getInteractor() != null) {
                        ((a) c.this.getInteractor()).navigateUpOptions();
                    }
                }
            });
        }
    }

    private void a() {
        if (getView() != null) {
            ((MainHeaderView) getView()).hidePromoView();
            cab.snapp.c.c.tryHideKeyboard(((MainHeaderView) getView()).getContext(), ((MainHeaderView) getView()).promoEditText);
            ((MainHeaderView) getView()).postDelayed(new Runnable() {
                public final void run() {
                    c.this.i();
                }
            }, 100);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void i() {
        if (getView() != null && (((MainHeaderView) getView()).getContext() instanceof Activity) && ((Activity) ((MainHeaderView) getView()).getContext()).getWindow() != null) {
            ((Activity) ((MainHeaderView) getView()).getContext()).getWindow().setSoftInputMode(16);
        }
    }

    private void b() {
        if (getView() != null) {
            ((MainHeaderView) getView()).scaleDownOptionsContainer(new AnimatorListenerAdapter() {
                public final void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    if (c.this.getView() != null) {
                        ((MainHeaderView) c.this.getView()).hideOptionsContainer();
                    }
                }

                public final void onAnimationStart(Animator animator) {
                    super.onAnimationStart(animator);
                    if (c.this.getView() != null) {
                        ((MainHeaderView) c.this.getView()).hideBackButton();
                        if (c.this.l == 6) {
                            ((MainHeaderView) c.this.getView()).showShareRide();
                        } else {
                            ((MainHeaderView) c.this.getView()).showCancelRideButton();
                        }
                    }
                    if (c.this.getInteractor() != null) {
                        ((a) c.this.getInteractor()).navigateUpOptions();
                    }
                }
            });
        }
    }

    public final void onHideOptions() {
        MainHeaderView mainHeaderView = (MainHeaderView) getView();
        if (mainHeaderView != null) {
            mainHeaderView.scaleDownOptionsContainer(new AnimatorListenerAdapter() {
                public final void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    if (c.this.getView() != null) {
                        ((MainHeaderView) c.this.getView()).hideOptionsContainer();
                    }
                }

                public final void onAnimationStart(Animator animator) {
                    super.onAnimationStart(animator);
                    if (c.this.getView() != null) {
                        ((MainHeaderView) c.this.getView()).hideBackButton();
                        if (c.this.l == 6) {
                            ((MainHeaderView) c.this.getView()).showShareRide();
                        } else {
                            ((MainHeaderView) c.this.getView()).showCancelRideButton();
                        }
                    }
                    if (c.this.getInteractor() != null) {
                        ((a) c.this.getInteractor()).navigateUpOptions();
                    }
                }
            });
        }
    }

    public final void onIdle(int i2, boolean z) {
        this.j = false;
        if (getView() != null) {
            ((MainHeaderView) getView()).hideSnappArrived();
            ((MainHeaderView) getView()).hideFavoritesContainer();
            if (z) {
                ((MainHeaderView) getView()).showBackButton();
            } else {
                ((MainHeaderView) getView()).hideBackButton();
            }
            ((MainHeaderView) getView()).showSearchButton();
            ((MainHeaderView) getView()).hideCancelRideButton();
            ((MainHeaderView) getView()).hideFavoritesContainer();
            ((MainHeaderView) getView()).hidePromoView();
            if ((((MainHeaderView) getView()).getContext() instanceof Activity) && ((Activity) ((MainHeaderView) getView()).getContext()).getWindow() != null) {
                cab.snapp.c.c.tryHideKeyboard(((MainHeaderView) getView()).getContext(), ((MainHeaderView) getView()).promoEditText);
                ((Activity) ((MainHeaderView) getView()).getContext()).getWindow().setSoftInputMode(16);
            }
            ((MainHeaderView) getView()).setPromoText(null);
            ((MainHeaderView) getView()).showPromoSaveButton();
            ((MainHeaderView) getView()).slideUpSnappToLayout();
            ((MainHeaderView) getView()).setTitleText(i2);
            ((MainHeaderView) getView()).hidePriceLayout();
            ((MainHeaderView) getView()).hideOptionsContainer();
            ((MainHeaderView) getView()).hideShareRide();
        }
    }

    public final void onRideOptionsOpened() {
        this.k = true;
        if (getView() != null) {
            ((MainHeaderView) getView()).slideUpSnappToLayout();
        }
    }

    public final void onRideOptionsClosed() {
        this.k = false;
        if (getView() != null) {
            ((MainHeaderView) getView()).slideDownSnappToLayout();
        }
    }

    public final void onOriginSelected(int i2) {
        this.j = false;
        if (getView() != null) {
            ((MainHeaderView) getView()).hideDummySnappToLayout();
            ((MainHeaderView) getView()).hideSnappArrived();
            ((MainHeaderView) getView()).showFavoritesContainer();
            ((MainHeaderView) getView()).showSearchButton();
            ((MainHeaderView) getView()).hideCancelRideButton();
            ((MainHeaderView) getView()).showBackButton();
            ((MainHeaderView) getView()).hidePromoView();
            if ((((MainHeaderView) getView()).getContext() instanceof Activity) && ((Activity) ((MainHeaderView) getView()).getContext()).getWindow() != null) {
                cab.snapp.c.c.tryHideKeyboard(((MainHeaderView) getView()).getContext(), ((MainHeaderView) getView()).promoEditText);
                ((Activity) ((MainHeaderView) getView()).getContext()).getWindow().setSoftInputMode(16);
            }
            ((MainHeaderView) getView()).setPromoText(null);
            ((MainHeaderView) getView()).showPromoSaveButton();
            ((MainHeaderView) getView()).slideUpSnappToLayout();
            ((MainHeaderView) getView()).setTitleText(i2);
            ((MainHeaderView) getView()).hideShareRide();
        }
    }

    public final void onDestinationSelected(int i2, String str, boolean z, boolean z2) {
        this.j = false;
        if (getView() != null) {
            if (!z2) {
                ((MainHeaderView) getView()).showDummySnappToLayout();
                ((MainHeaderView) getView()).slideDownSnappToLayout();
            }
            ((MainHeaderView) getView()).hideSnappArrived();
            ((MainHeaderView) getView()).hideFavoritesContainer();
            ((MainHeaderView) getView()).hideSearchButton();
            ((MainHeaderView) getView()).hideCancelRideButton();
            ((MainHeaderView) getView()).showBackButton();
            ((MainHeaderView) getView()).hidePromoView();
            if ((((MainHeaderView) getView()).getContext() instanceof Activity) && ((Activity) ((MainHeaderView) getView()).getContext()).getWindow() != null) {
                cab.snapp.c.c.tryHideKeyboard(((MainHeaderView) getView()).getContext(), ((MainHeaderView) getView()).promoEditText);
                ((Activity) ((MainHeaderView) getView()).getContext()).getWindow().setSoftInputMode(16);
            }
            if (z) {
                ((MainHeaderView) getView()).showPromoSaveButton();
            } else {
                ((MainHeaderView) getView()).hidePromoSaveButton();
            }
            ((MainHeaderView) getView()).hidePriceLayout();
            ((MainHeaderView) getView()).setSnappToAddressText(str);
            ((MainHeaderView) getView()).setTitleText(i2);
            ((MainHeaderView) getView()).showBackButton();
            ((MainHeaderView) getView()).hideShareRide();
            ((MainHeaderView) getView()).scaleDownOptionsContainer(new AnimatorListenerAdapter() {
                public final void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    if (c.this.getView() != null) {
                        ((MainHeaderView) c.this.getView()).hideOptionsContainer();
                    }
                }

                public final void onAnimationStart(Animator animator) {
                    super.onAnimationStart(animator);
                    if (c.this.getInteractor() != null) {
                        ((a) c.this.getInteractor()).navigateUpOptions();
                    }
                }
            });
        }
    }

    public final void onRideAccepted(int i2, boolean z, boolean z2) {
        this.j = false;
        if (getView() != null) {
            ((MainHeaderView) getView()).hideSnappArrived();
            ((MainHeaderView) getView()).hideFavoritesContainer();
            ((MainHeaderView) getView()).hideSearchButton();
            if (!z2) {
                ((MainHeaderView) getView()).hideBackButton();
                ((MainHeaderView) getView()).showCancelRideButton();
            } else {
                ((MainHeaderView) getView()).hideCancelRideButton();
                ((MainHeaderView) getView()).showBackButton();
            }
            if (z) {
                ((MainHeaderView) getView()).showPromoSaveButton();
            } else {
                ((MainHeaderView) getView()).hidePromoSaveButton();
            }
            ((MainHeaderView) getView()).showPriceLayout();
            ((MainHeaderView) getView()).slideUpSnappToLayout();
            ((MainHeaderView) getView()).showOptionsContainer();
            ((MainHeaderView) getView()).setTitleText(i2);
            ((MainHeaderView) getView()).hideShareRide();
        }
    }

    public final void onDriverArrived(int i2, boolean z, boolean z2) {
        this.j = false;
        if (getView() != null || getInteractor() != null) {
            if (c() != null && c().getVisibility() == 0 && (((MainHeaderView) getView()).getContext() instanceof Activity)) {
                ShowCaseItemDao showCaseItemDao = new ShowCaseItemDao();
                showCaseItemDao.setActivity((Activity) ((MainHeaderView) getView()).getContext());
                showCaseItemDao.setView(c());
                showCaseItemDao.setTitle(((MainHeaderView) getView()).getContext().getString(R.string.text_your_driver));
                showCaseItemDao.setDescription(((MainHeaderView) getView()).getContext().getString(R.string.message_to_driver_show_case_desc));
                this.d.showTapTargetForMessageToDriver(showCaseItemDao);
            }
            ((MainHeaderView) getView()).hideFavoritesContainer();
            ((MainHeaderView) getView()).hideSearchButton();
            if (!z2) {
                ((MainHeaderView) getView()).hideBackButton();
                ((MainHeaderView) getView()).showCancelRideButton();
            } else {
                ((MainHeaderView) getView()).hideCancelRideButton();
                ((MainHeaderView) getView()).showBackButton();
            }
            if (z) {
                ((MainHeaderView) getView()).showPromoSaveButton();
            } else {
                ((MainHeaderView) getView()).hidePromoSaveButton();
            }
            ((MainHeaderView) getView()).showPriceLayout();
            ((MainHeaderView) getView()).showSnappArrived();
            ((MainHeaderView) getView()).slideDownSnappArrived();
            ((MainHeaderView) getView()).slideUpSnappToLayout();
            ((MainHeaderView) getView()).showOptionsContainer();
            ((MainHeaderView) getView()).setTitleText(i2);
            ((MainHeaderView) getView()).hideShareRide();
        }
    }

    public final void onPassengerBoarded(int i2, boolean z, boolean z2) {
        this.j = true;
        if (getView() != null) {
            ((MainHeaderView) getView()).hideFavoritesContainer();
            ((MainHeaderView) getView()).hideSearchButton();
            ((MainHeaderView) getView()).hideCancelRideButton();
            if (z2) {
                ((MainHeaderView) getView()).hideShareRide();
                ((MainHeaderView) getView()).showBackButton();
            } else {
                ((MainHeaderView) getView()).hideBackButton();
                ((MainHeaderView) getView()).showShareRide();
            }
            if (z) {
                ((MainHeaderView) getView()).showPromoSaveButton();
            } else {
                ((MainHeaderView) getView()).hidePromoSaveButton();
            }
            ((MainHeaderView) getView()).showPriceLayout();
            ((MainHeaderView) getView()).slideUpSnappArrived();
            ((MainHeaderView) getView()).slideUpSnappToLayout();
            ((MainHeaderView) getView()).showOptionsContainer();
            ((MainHeaderView) getView()).setTitleText(i2);
            if (d() != null && d().getVisibility() == 0 && (((MainHeaderView) getView()).getContext() instanceof Activity)) {
                ShowCaseItemDao showCaseItemDao = new ShowCaseItemDao();
                showCaseItemDao.setActivity((Activity) ((MainHeaderView) getView()).getContext());
                showCaseItemDao.setView(d());
                showCaseItemDao.setTitle(((MainHeaderView) getView()).getContext().getString(R.string.ride_share_show_case_title));
                showCaseItemDao.setDescription(((MainHeaderView) getView()).getContext().getString(R.string.ride_share_show_case_desc));
                this.d.showTapTargetForRideShare(showCaseItemDao);
            }
        }
    }

    public final void onRideFinished(int i2) {
        this.j = false;
        if (getView() != null) {
            ((MainHeaderView) getView()).hideFavoritesContainer();
            ((MainHeaderView) getView()).hideBackButton();
            ((MainHeaderView) getView()).showSearchButton();
            ((MainHeaderView) getView()).hideCancelRideButton();
            ((MainHeaderView) getView()).slideUpSnappToLayout();
            ((MainHeaderView) getView()).setTitleText(i2);
            ((MainHeaderView) getView()).hidePromoView();
            if ((((MainHeaderView) getView()).getContext() instanceof Activity) && ((Activity) ((MainHeaderView) getView()).getContext()).getWindow() != null) {
                cab.snapp.c.c.tryHideKeyboard(((MainHeaderView) getView()).getContext(), ((MainHeaderView) getView()).promoEditText);
                ((Activity) ((MainHeaderView) getView()).getContext()).getWindow().setSoftInputMode(16);
            }
            ((MainHeaderView) getView()).setPromoText(null);
            ((MainHeaderView) getView()).showPromoSaveButton();
            ((MainHeaderView) getView()).hidePriceLayout();
            ((MainHeaderView) getView()).hideSnappArrived();
            ((MainHeaderView) getView()).hideOptionsContainer();
            ((MainHeaderView) getView()).hideShareRide();
        }
    }

    public final View getOptionsContainer() {
        if (getView() != null) {
            return ((MainHeaderView) getView()).getOptionsContainerView();
        }
        return null;
    }

    public final void onMessageSentToDriver(int i2) {
        if (getView() != null) {
            ((MainHeaderView) getView()).showToast(i2, (int) R.color.colorPrimary);
        }
    }

    public final void onRideDataUpdated(double d2, boolean z, boolean z2, boolean z3) {
        this.i = z;
        this.h = z2;
        if (getView() != null) {
            if (d2 <= 0.0d) {
                ((MainHeaderView) getView()).hidePriceTv();
                ((MainHeaderView) getView()).showFreeRideTv();
            } else {
                ((MainHeaderView) getView()).hideFreeRideTv();
                ((MainHeaderView) getView()).showPriceTv();
                if (getView() != null) {
                    if (z3) {
                        this.g = true;
                        if (getView() != null) {
                            ((MainHeaderView) getView()).animateAndSetPriceFromZero((int) d2);
                        }
                    } else {
                        String formatDouble = j.formatDouble(Double.valueOf(d2), Locale.getDefault());
                        if (formatDouble == null) {
                            formatDouble = "0";
                        }
                        ((MainHeaderView) getView()).setPrice(g.changeNumbersBasedOnCurrentLocale(formatDouble));
                    }
                }
            }
            if (z) {
                ((MainHeaderView) getView()).setOptionsEnabled();
            } else {
                ((MainHeaderView) getView()).setOptionsDisabled();
            }
            if (z2) {
                ((MainHeaderView) getView()).setPromoEnabled();
                return;
            }
            ((MainHeaderView) getView()).setPromoDisabled();
        }
    }

    public final void onPaymentStatusUpdated(String str, int i2, int i3) {
        if (getView() != null) {
            if (i3 == -1) {
                ((MainHeaderView) getView()).hidePaymentStatus();
                return;
            }
            ((MainHeaderView) getView()).showPaymentStatus();
            ((MainHeaderView) getView()).setSufficientCreditIcon(i2);
            ((MainHeaderView) getView()).setSufficientCreditText(str);
            ((MainHeaderView) getView()).setSufficientCreditTextColor(i3);
        }
    }

    /* access modifiers changed from: private */
    public void a(final boolean z) {
        if (getView() != null) {
            if (z) {
                ((MainHeaderView) getView()).setPriceStartValue(15000);
                ((MainHeaderView) getView()).setPriceEndValue(b.DISCONNECTED_BUFFER_SIZE_DEFAULT);
            } else {
                ((MainHeaderView) getView()).setPriceStartValue(b.DISCONNECTED_BUFFER_SIZE_DEFAULT);
                ((MainHeaderView) getView()).setPriceEndValue(15000);
            }
            ((MainHeaderView) getView()).setPriceFormat("%s");
        }
        if (getView() != null) {
            ((MainHeaderView) getView()).animatePriceText(1000, new AnimatorListenerAdapter() {
                public final void onAnimationEnd(Animator animator) {
                    if (!c.this.g) {
                        c.this.a(!z);
                        return;
                    }
                    if (c.this.getView() != null) {
                        if (c.this.i) {
                            ((MainHeaderView) c.this.getView()).setOptionsEnabled();
                        }
                        if (c.this.h) {
                            ((MainHeaderView) c.this.getView()).setPromoEnabled();
                        }
                    }
                }
            });
        }
    }

    public final void onEditOptionsRequest() {
        if (getView() != null) {
            ((MainHeaderView) getView()).setOptionsDisabled();
            ((MainHeaderView) getView()).setPromoDisabled();
            this.g = false;
            a(false);
        }
    }

    public final void onFailedRequest(String str) {
        if (getView() != null) {
            if (str != null && !str.isEmpty()) {
                ((MainHeaderView) getView()).showToast(str, (int) R.color.cherry);
            }
            if (this.h) {
                ((MainHeaderView) getView()).setPromoEnabled();
            }
            if (this.i) {
                ((MainHeaderView) getView()).setOptionsEnabled();
            }
        }
    }

    public final void onCancelRideFailed(int i2) {
        if (getView() != null) {
            ((MainHeaderView) getView()).showToast(i2, (int) R.color.cherry);
            ((MainHeaderView) getView()).hideLoadingDialog();
        }
    }

    public final void onCancelRideSucceed(int i2) {
        if (getView() != null) {
            ((MainHeaderView) getView()).showToast(i2, (int) R.color.colorPrimary);
            ((MainHeaderView) getView()).hideLoadingDialog();
        }
    }

    public final void onVoucherSucceed(String str) {
        if (getView() != null) {
            if (str != null && str.isEmpty()) {
                ((MainHeaderView) getView()).showToast(str, (int) R.color.colorPrimary);
            }
            ((MainHeaderView) getView()).hidePromoView();
            ((MainHeaderView) getView()).setPromoEditTextDisabled();
            ((MainHeaderView) getView()).hidePromoLoading();
        }
    }

    private View c() {
        if (getView() == null) {
            return null;
        }
        return ((MainHeaderView) getView()).getMessageToDriverView();
    }

    private View d() {
        if (getView() == null) {
            return null;
        }
        return ((MainHeaderView) getView()).getRideShareButton();
    }

    public final void onRideStateUpdated(int i2) {
        this.l = i2;
        if (getView() != null) {
            ((MainHeaderView) getView()).hideLoadingDialog();
            ((MainHeaderView) getView()).hideCancelRideDialog();
            ((MainHeaderView) getView()).hideShareRideDialog();
            ((MainHeaderView) getView()).cancelMessageToDriverDialog();
        }
    }

    public final void onNoInternetConnection() {
        if (getView() != null && ((MainHeaderView) getView()).getContext() != null) {
            new r(((MainHeaderView) getView()).getContext()).showNoInternetDialog();
        }
    }

    public final void onFailedVoucherRequest(String str) {
        if (getView() != null) {
            if (str != null && !str.isEmpty()) {
                ((MainHeaderView) getView()).showToast(str, (int) R.color.cherry);
            }
            ((MainHeaderView) getView()).hidePromoLoading();
            ((MainHeaderView) getView()).showPromoSaveButton();
            ((MainHeaderView) getView()).setPromoEnabled();
            ((MainHeaderView) getView()).setOptionsEnabled();
        }
    }

    public final void onDrawerIconClicked() {
        if (getInteractor() != null) {
            a aVar = (a) getInteractor();
            if (aVar.b() != null) {
                aVar.b().toggleDrawer();
                aVar.reportSideMenuToggleToAppMetrica();
            }
        }
    }

    public final void onSearchClicked() {
        if (getInteractor() != null) {
            a aVar = (a) getInteractor();
            if (aVar.c.getCurrentState() == 0 || aVar.c.getCurrentState() == 1) {
                if (aVar.b() != null) {
                    aVar.b().navigateToSearch();
                }
                if (aVar.c.getCurrentState() == 0) {
                    cab.snapp.passenger.f.b.b.c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("searchButton", "tap").addOuterKeyToCurrentAsValue("setOrigin").build());
                } else if (aVar.c.getCurrentState() == 1) {
                    cab.snapp.passenger.f.b.b.c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("searchButton", "tap").addOuterKeyToCurrentAsValue("setDestination").build());
                }
            }
        }
    }

    public final void onBackClicked() {
        this.d.cancelAll();
        if (getInteractor() != null) {
            a aVar = (a) getInteractor();
            if (aVar.getActivity() != null) {
                aVar.getActivity().onBackPressed();
                if (aVar.c.getCurrentState() == 1) {
                    cab.snapp.passenger.f.b.b.c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("selectServiceType", "back").build());
                }
            }
        }
    }

    public final void onCancelRideClicked() {
        if (getView() != null && getInteractor() != null) {
            ((MainHeaderView) getView()).cancelImageButton.setEnabled(false);
            ((MainHeaderView) getView()).cancelImageButton.postDelayed(new Runnable() {
                public final void run() {
                    c.this.h();
                }
            }, 500);
            if (this.l == 5) {
                this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.ALERT_CONFIRMATION_FOR_CANCEL_RIDE, "[driverArrived][show]");
            } else {
                this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.ALERT_CONFIRMATION_FOR_CANCEL_RIDE, "[driverInway][show]");
            }
            ((a) getInteractor()).reportOnCancelButtonToAppMetrica();
            ((MainHeaderView) getView()).showCancelRideDialog(R.string.cancel_ride, R.string.cancel_ride_without_charge_message, R.string.cancel_ride_label, new View.OnClickListener() {
                public final void onClick(View view) {
                    c.this.e(view);
                }
            }, R.string.close, new View.OnClickListener() {
                public final void onClick(View view) {
                    c.this.d(view);
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void h() {
        if (getView() != null) {
            ((MainHeaderView) getView()).cancelImageButton.setEnabled(true);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void c(View view) {
        if (getInteractor() != null) {
            ((a) getInteractor()).shareRide();
        }
        if (getView() != null) {
            ((MainHeaderView) getView()).hideShareRideDialog();
        }
    }

    public final void onPromoClicked() {
        if (getView() != null) {
            ((MainHeaderView) getView()).promoButton.setEnabled(false);
            ((MainHeaderView) getView()).optionsBtn.setEnabled(false);
            ((MainHeaderView) getView()).promoButton.postDelayed(new Runnable() {
                public final void run() {
                    c.this.g();
                }
            }, 500);
            if (((MainHeaderView) getView()).isOptionsContainerShowing()) {
                b();
            }
            if (((MainHeaderView) getView()).isPromoViewShowing()) {
                a();
                return;
            }
            if (getInteractor() != null && this.h) {
                this.e.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "In Ride Voucher");
                cab.snapp.c.c.showKeyboard(((MainHeaderView) getView()).getContext(), ((MainHeaderView) getView()).promoEditText);
                if ((((MainHeaderView) getView()).getContext() instanceof Activity) && ((Activity) ((MainHeaderView) getView()).getContext()).getWindow() != null) {
                    ((Activity) ((MainHeaderView) getView()).getContext()).getWindow().setSoftInputMode(48);
                }
                ((MainHeaderView) getView()).showPromoView();
            }
            if (getInteractor() != null) {
                ((a) getInteractor()).reportOnPromoClickedToAppMetrica();
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void g() {
        if (getView() != null) {
            ((MainHeaderView) getView()).promoButton.setEnabled(true);
            ((MainHeaderView) getView()).optionsBtn.setEnabled(true);
        }
    }

    public final void onOptionsClicked() {
        MainHeaderView mainHeaderView = (MainHeaderView) getView();
        if (mainHeaderView != null) {
            mainHeaderView.setOptionsDisabled();
            mainHeaderView.setPromoDisabled();
            mainHeaderView.getOptionsBtn().postDelayed(new Runnable() {
                public final void run() {
                    c.this.f();
                }
            }, 500);
            int i2 = 0;
            if (mainHeaderView.isPromoViewShowing()) {
                i2 = 100;
                a();
            }
            if (mainHeaderView.isOptionsContainerShowing()) {
                b();
                return;
            }
            this.e.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Ride Option Button In Ride");
            ((a) getInteractor()).reportOnOptionClickedToAppMetrica();
            mainHeaderView.showOptionsContainer();
            mainHeaderView.scaleUpOptionsContainer(new AnimatorListenerAdapter() {
                public final void onAnimationStart(Animator animator) {
                    super.onAnimationStart(animator);
                    if (c.this.getView() != null) {
                        if (c.this.j) {
                            ((MainHeaderView) c.this.getView()).hideShareRide();
                        } else {
                            ((MainHeaderView) c.this.getView()).hideCancelRideButton();
                        }
                        ((MainHeaderView) c.this.getView()).showBackButton();
                    }
                    if (c.this.getInteractor() != null) {
                        ((a) c.this.getInteractor()).navigateToOptions();
                    }
                }
            }, i2);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void f() {
        if (getView() != null) {
            ((MainHeaderView) getView()).setOptionsEnabled();
            if (getInteractor() != null && ((a) getInteractor()).isPromoEnabled()) {
                ((MainHeaderView) getView()).setPromoEnabled();
            }
        }
    }

    public final void onSubmitPromoClicked() {
        this.e.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "In Ride Voucher Submit Button");
        if (getView() != null && getInteractor() != null) {
            if (((MainHeaderView) getView()).getPromoCodeText() == null || ((MainHeaderView) getView()).getPromoCodeText().isEmpty()) {
                ((MainHeaderView) getView()).showToast((int) R.string.please_enter_voucher_code, (int) R.color.cherry);
                return;
            }
            ((MainHeaderView) getView()).setOptionsDisabled();
            ((MainHeaderView) getView()).setPromoDisabled();
            ((MainHeaderView) getView()).hidePromoSaveButton();
            ((MainHeaderView) getView()).showPromoLoading();
            ((a) getInteractor()).applyVoucher(((MainHeaderView) getView()).getPromoCodeText());
            cab.snapp.c.c.tryHideKeyboard(((MainHeaderView) getView()).getContext(), ((MainHeaderView) getView()).getPromoCodeEditText());
        }
    }

    public final void onMessageToDriverClicked() {
        this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_MESSAGE_TO_DRIVER_POPUP, "in ride - message to driver click");
        ((a) getInteractor()).onMessageToDriverClicked();
        if (getView() != null) {
            List<String> list = this.f956a;
            if (list != null && !list.isEmpty()) {
                ((MainHeaderView) getView()).messageToDriverTextView.setEnabled(false);
                ((MainHeaderView) getView()).messageToDriverImageView.setClickable(false);
                ((MainHeaderView) getView()).messageToDriverTextView.postDelayed(new Runnable() {
                    public final void run() {
                        c.this.e();
                    }
                }, 500);
                ((MainHeaderView) getView()).showMessageToDriverDialog(this.f956a, 0, this, R.string.ic_font_message, R.string.send_message_to_driver, R.string.close, R.string.send_message, new View.OnClickListener() {
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
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void e() {
        if (getView() != null) {
            ((MainHeaderView) getView()).messageToDriverTextView.setEnabled(true);
            ((MainHeaderView) getView()).messageToDriverImageView.setClickable(true);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        if (getInteractor() != null) {
            ((a) getInteractor()).sendMessageToDriver(this.c, this.f957b);
        }
        if (getView() != null) {
            ((MainHeaderView) getView()).cancelMessageToDriverDialog();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        this.e.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Message To Driver Close Button");
        this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_MESSAGE_TO_DRIVER, "[close]");
        if (getView() != null) {
            ((MainHeaderView) getView()).cancelMessageToDriverDialog();
        }
    }

    public final void onItemSelected(int i2, String str) {
        this.f957b = str;
        this.c = i2;
    }

    public final void onShareRideClicked() {
        this.e.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Open Ride Sharing Dialog");
        this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_INFORM_RIDE, "clicked");
        cab.snapp.passenger.f.b.b.c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideInform", "tap").addOuterKeyToCurrentAsValue("Boarded").build());
        if (getView() != null) {
            ((MainHeaderView) getView()).showShareRideDialog(R.string.ic_font_ride_share, R.string.ride_share_dialog_title, R.string.ride_share_dialog_content, R.string.ride_share_dialog_action_text, new View.OnClickListener() {
                public final void onClick(View view) {
                    c.this.c(view);
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void d(View view) {
        if (this.l == 5) {
            this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.ALERT_CONFIRMATION_FOR_CANCEL_RIDE, "[driverArrived][back]");
        } else {
            this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.ALERT_CONFIRMATION_FOR_CANCEL_RIDE, "[driverInway][back]");
        }
        if (getView() != null) {
            ((MainHeaderView) getView()).hideCancelRideDialog();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void e(View view) {
        this.e.sendAnalyticsEvent(c.C0021c.RIDE, c.b.CANCEL, "Cancel on price range");
        if (this.l == 5) {
            this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.ALERT_CONFIRMATION_FOR_CANCEL_RIDE, "[driverArrived][cancel]");
        } else {
            this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.ALERT_CONFIRMATION_FOR_CANCEL_RIDE, "[driverInway][cancel]");
        }
        ((a) getInteractor()).reportOnRideCanceledToMarketing();
        if (getInteractor() != null) {
            ((a) getInteractor()).a();
        }
        if (getView() != null) {
            ((MainHeaderView) getView()).hideCancelRideDialog();
            ((MainHeaderView) getView()).showLoadingDialog();
        }
    }
}
