package cab.snapp.passenger.units.footer.driver_assigned_footer;

import android.os.Bundle;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.c.h;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.activities.root.RootActivity;
import cab.snapp.passenger.c.b;
import cab.snapp.passenger.c.f;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.data.models.DriverInfo;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.a.e;
import cab.snapp.passenger.data_access_layer.network.responses.CreditResponse;
import cab.snapp.passenger.data_access_layer.network.responses.RideReceiptResponse;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.o;
import cab.snapp.passenger.units.main.MainController;
import java.util.UUID;
import javax.inject.Inject;

public class a extends BaseInteractor<e, c> {
    private static final String h = UUID.randomUUID().toString();

    /* renamed from: a  reason: collision with root package name */
    protected DriverInfo f756a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    o f757b;
    @Inject
    f c;
    @Inject
    b d;
    @Inject
    g e;
    @Inject
    d f;
    @Inject
    c g;
    private int i;
    private boolean j;
    private boolean k;

    public static String getPrivateChannelId() {
        return cab.snapp.passenger.data_access_layer.a.c.getInstance().getPrivateChannelId(h);
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            this.i = this.e.getCurrentState();
            int i2 = this.i;
            if (i2 == 4 || i2 == 5 || i2 == 6) {
                this.f756a = this.e.getDriverInfo();
            } else if (!(e() == null || getRouter() == null)) {
                ((e) getRouter()).routeBackToIdleFooter(e().getFooterNavController(), null);
            }
            g gVar = this.e;
            if (gVar != null && gVar.isRideReallotted()) {
                a();
            }
            addDisposable(this.e.getUpdateSignalObservable().subscribe(new io.reactivex.e.g<Integer>() {
                public final void accept(Integer num) throws Exception {
                    if (num == null || num.intValue() != 2000) {
                        if (num != null && num.intValue() == 1015) {
                            a.this.a();
                        }
                        return;
                    }
                    a.this.c();
                }
            }));
            d();
            addDisposable(cab.snapp.passenger.data_access_layer.a.c.getInstance().subscribeToPrivateChannel(cab.snapp.passenger.units.mainheader.a.getPrivateChannelId(), new io.reactivex.e.g<Boolean>() {
                public final void accept(Boolean bool) throws Exception {
                    if (a.this.getPresenter() != null) {
                        ((c) a.this.getPresenter()).onViewVisibilityUpdate(Boolean.valueOf(!bool.booleanValue()));
                    }
                }
            }));
            addDisposable(cab.snapp.passenger.data_access_layer.a.c.getInstance().subscribeToPrivateChannel(getPrivateChannelId(), new io.reactivex.e.g<Boolean>() {
                public final void accept(Boolean bool) throws Exception {
                    if (a.this.getPresenter() != null) {
                        ((c) a.this.getPresenter()).OnRideRatingUnitIsOnForeground();
                    }
                }
            }));
            if (getPresenter() != null) {
                ((c) getPresenter()).onInitialize();
            }
        }
    }

    /* access modifiers changed from: private */
    public void a() {
        if (getPresenter() != null) {
            ((c) getPresenter()).onReallotment(this.e.isRideReallotted(), this.e.isInRide());
            this.f756a = this.e.getDriverInfo();
            d();
        }
    }

    private void b() {
        int i2 = this.i;
        if (i2 == 4) {
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("driverAssigned", "show").build());
            return;
        }
        if (i2 == 6) {
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("Boarded", "show").build());
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        this.i = this.e.getCurrentState();
        this.j = true;
        c();
        this.g.reportScreenName("DriverAssignedFragment");
    }

    public void onUnitPause() {
        super.onUnitPause();
        this.f757b.cancelAll();
    }

    /* access modifiers changed from: private */
    public void c() {
        if (e() != null && getRouter() != null && (getActivity() instanceof RootActivity) && this.j) {
            if (this.e.getCurrentState() == 2) {
                if (((RootActivity) getActivity()).isVisible()) {
                    this.j = false;
                    ((e) getRouter()).routeBackToRequestFooter(e().getFooterNavController(), null);
                }
            } else if ((this.e.getCurrentState() == 0 || this.e.getCurrentState() == 7) && ((RootActivity) getActivity()).isVisible()) {
                this.j = false;
                ((e) getRouter()).routeBackToIdleFooter(e().getFooterNavController(), null);
            }
            b();
        }
    }

    private void d() {
        if (getPresenter() != null && getActivity() != null && this.f756a != null) {
            ((c) getPresenter()).onDataReady(this.e.getServiceType() == 5 || this.e.getServiceType() == 7, this.f756a.getName(), this.f756a.getVehicleModel(), this.f756a.getImageUrl(), this.f756a.getPlateNumber());
        }
    }

    public void payCost() {
        if (!this.k) {
            this.k = true;
            if (this.e.getCurrentState() == 4) {
                this.g.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_ASSIGNED_PAYMENT, "[tap]");
            } else {
                this.g.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_PAYMENT, "clicked");
            }
            if (!(getActivity() == null || !(getActivity() instanceof RootActivity) || getRouter() == null || getPresenter() == null)) {
                ((c) getPresenter()).onBeforeGetReceipt();
                addDisposable(this.f.getRideReceipt(this.e.getRideId()).subscribe(new io.reactivex.e.g() {
                    public final void accept(Object obj) {
                        a.this.a((RideReceiptResponse) obj);
                    }
                }, new io.reactivex.e.g() {
                    public final void accept(Object obj) {
                        a.this.a((Throwable) obj);
                    }
                }));
                if (this.e.getCurrentState() == 4) {
                    c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("payment", "tap").addOuterKeyToCurrentAsValue("driverAssigned").build());
                } else if (this.e.getCurrentState() == 5) {
                    c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("payment", "tap").addOuterKeyToCurrentAsValue("driverArrived").build());
                } else if (this.e.getCurrentState() == 6) {
                    c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("payment", "tap").addOuterKeyToCurrentAsValue("Boarded").build());
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void a(Throwable th) {
        this.k = false;
        if (!(th instanceof e) || getPresenter() == null) {
            if (getPresenter() != null) {
                ((c) getPresenter()).onGetReceiptFailed();
            }
        } else if (((e) th).getErrorCode() == 1069) {
            ((c) getPresenter()).onNotAuthorizedForInRidePayment(th.getMessage());
        } else {
            ((c) getPresenter()).onGetReceiptFailed();
        }
    }

    /* access modifiers changed from: private */
    public void a(RideReceiptResponse rideReceiptResponse) {
        if (!(getPresenter() == null || getRouter() == null || e() == null || getController() == null)) {
            this.k = false;
            CreditResponse credit = this.c.getCredit();
            if (credit == null) {
                credit = new CreditResponse();
                credit.setDefaultWallet(1);
            }
            credit.setSnappCredit((long) rideReceiptResponse.getCurrentCredit());
            if (rideReceiptResponse.getApReceipt() != null) {
                credit.setApCredit(Long.valueOf((long) rideReceiptResponse.getApReceipt().getCredit()));
            }
            this.c.updateCredit(credit);
            if (rideReceiptResponse.getRidePrice() == 0.0d) {
                ((c) getPresenter()).onRideIsFree();
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable(cab.snapp.passenger.units.payment.a.RIDE_RECEIPT_ARGUMENT_KEY, rideReceiptResponse);
            ((e) getRouter()).routeToPayment(getController().getOvertheMapNavigationController(), bundle);
            ((c) getPresenter()).onGetReceiptSuccess();
        }
    }

    public void reportOnCallDriverToAppMetrica() {
        if (this.e.getCurrentState() == 4) {
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("driverAssigned", "callDriver").build());
        } else if (this.e.getCurrentState() == 5) {
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("driverArrived", "callDriver").build());
        } else {
            if (this.e.getCurrentState() == 6) {
                c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("Boarded", "callDriver").build());
            }
        }
    }

    private cab.snapp.passenger.units.main.b e() {
        if (getPresenter() == null || getController() == null || getController().getParentFragment() == null || getController().getParentFragment().getParentFragment() == null || !(getController().getParentFragment().getParentFragment() instanceof MainController)) {
            return null;
        }
        return (cab.snapp.passenger.units.main.b) ((MainController) getController().getParentFragment().getParentFragment()).getControllerInteractor();
    }

    public void callDriver() {
        int currentState = this.e.getCurrentState();
        if (currentState == 4) {
            this.g.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_ASSIGNED_CALL_TO_DRIVER, "[DriverInway]");
        } else if (currentState == 5) {
            this.g.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_ASSIGNED_CALL_TO_DRIVER, "[DriverArrive]");
        } else {
            this.g.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_IN_RIDE_CALL_TO_DRIVER, "in ride - call driver");
        }
        if (this.f756a != null) {
            h.callNumber(getActivity(), this.f756a.getCellphone());
        }
        reportOnCallDriverToAppMetrica();
    }
}
