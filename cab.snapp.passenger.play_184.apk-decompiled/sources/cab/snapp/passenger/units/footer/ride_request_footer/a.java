package cab.snapp.passenger.units.footer.ride_request_footer;

import android.os.Bundle;
import android.view.View;
import androidx.navigation.NavController;
import androidx.navigation.Navigation;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.c.f;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.activities.root.RootActivity;
import cab.snapp.passenger.c.b;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.data.models.BoxOptions;
import cab.snapp.passenger.data.models.price.PriceModel;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.a.e;
import cab.snapp.passenger.data_access_layer.network.requests.PriceRequest;
import cab.snapp.passenger.data_access_layer.network.responses.PriceResponse;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.o;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.main.MainController;
import cab.snapp.passenger.units.phone_verification.PhoneVerificationController;
import cab.snapp.passenger.units.ride_options.RideOptionsController;
import java.util.List;
import java.util.UUID;
import javax.inject.Inject;

public class a extends BaseInteractor<e, c> {
    private static final String f = UUID.randomUUID().toString();
    @Inject

    /* renamed from: a  reason: collision with root package name */
    o f791a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    b f792b;
    @Inject
    g c;
    @Inject
    d d;
    @Inject
    c e;
    private int g = 0;
    private boolean h;
    /* access modifiers changed from: private */
    public int i;
    private boolean j = false;
    private boolean k = false;
    private String l;
    private NavController m;
    /* access modifiers changed from: private */
    public boolean n = false;
    /* access modifiers changed from: private */
    public boolean o = false;
    private BoxOptions p = new BoxOptions();
    private int q;
    private io.reactivex.b.c r;
    private boolean s;
    private String t;
    private List<PriceModel> u;

    public static String getPrivateChannelId() {
        return cab.snapp.passenger.data_access_layer.a.c.getInstance().getPrivateChannelId(f);
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            this.i = this.c.getServiceType();
            this.q = this.c.getCurrentState();
            if (getController() != null) {
                this.l = getController().getString(R.string.footer_request);
            }
            if (getPresenter() != null) {
                ((c) getPresenter()).onInitialize();
                ((c) getPresenter()).setAdapter(this.c.getServiceType());
                ((c) getPresenter()).startCountingPrice();
                ((c) getPresenter()).disableUI();
                ((c) getPresenter()).setRequestText(this.l);
                if (((c) getPresenter()).getMoreControllersContainer() != null) {
                    this.m = Navigation.findNavController(((c) getPresenter()).getMoreControllersContainer());
                }
                addDisposable(this.c.getUpdateSignalObservable().subscribe(new io.reactivex.e.g<Integer>() {
                    public final void accept(Integer num) throws Exception {
                        if (a.this.getPresenter() != null) {
                            if (num.intValue() == 2000) {
                                a.this.a();
                                return;
                            }
                            if (num.intValue() == 1009) {
                                if (a.this.i != a.this.c.getServiceType()) {
                                    a aVar = a.this;
                                    int unused = aVar.i = aVar.c.getServiceType();
                                    ((c) a.this.getPresenter()).disableUI();
                                    boolean z = true;
                                    a.this.c.setPackageDelivery(a.this.i == 5);
                                    c cVar = (c) a.this.getPresenter();
                                    int c = a.this.i;
                                    if (a.this.o || a.this.n) {
                                        z = false;
                                    }
                                    cVar.updateServiceType(c, z);
                                }
                            } else if (a.this.c.getCurrentState() == 2 && (num.intValue() == 1005 || num.intValue() == 1008 || num.intValue() == 1007)) {
                                if (a.this.getPresenter() != null) {
                                    ((c) a.this.getPresenter()).startCountingPrice();
                                    ((c) a.this.getPresenter()).disableUI();
                                }
                                a.this.g();
                            }
                        }
                    }
                }));
            }
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        this.h = true;
        a();
    }

    public void onUnitPause() {
        super.onUnitPause();
        this.f791a.cancelAll();
        if (getPresenter() != null) {
            ((c) getPresenter()).b();
            ((c) getPresenter()).a();
        }
    }

    public void onApplicationRootBackPressed() {
        super.onApplicationRootBackPressed();
        if (getPresenter() != null) {
            if (this.n) {
                ((c) getPresenter()).onHideOptions();
                b();
            } else if (this.o) {
                ((c) getPresenter()).onHideBoxOptions();
            }
        }
    }

    /* access modifiers changed from: private */
    public void a() {
        if (getActivity() instanceof RootActivity) {
            if (!(this.c.getVoucher() == null || getPresenter() == null)) {
                ((c) getPresenter()).setPromoCode(this.c.getVoucher());
            }
            if (this.c.getCurrentState() == 0) {
                if (this.h && ((RootActivity) getActivity()).isVisible() && h() != null && getRouter() != null) {
                    this.h = false;
                    ((e) getRouter()).navigateUpToMainFooter(h().getFooterNavController());
                }
            } else if (this.c.getCurrentState() == 1) {
                if (this.h && ((RootActivity) getActivity()).isVisible() && h() != null && getRouter() != null) {
                    this.h = false;
                    ((e) getRouter()).navigateUpToMainFooter(h().getFooterNavController());
                }
            } else if (this.c.getCurrentState() == 2) {
                g();
            } else if ((this.c.getCurrentState() == 4 || this.c.getCurrentState() == 5 || this.c.getCurrentState() == 6) && this.h && ((RootActivity) getActivity()).isVisible() && h() != null && getRouter() != null) {
                this.h = false;
                ((e) getRouter()).navigateToDriverAssignedFooter(h().getFooterNavController());
            }
        }
    }

    private void b() {
        if (this.c.getCurrentState() == 4) {
            this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_ASSIGNED_OPTIONS, "[back]");
        }
        if (!this.c.isInRide()) {
            this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_PRE_RIDE_OPTIONS, "[back]");
        }
    }

    public void onRideOptionsClicked() {
        if (this.n) {
            if (getPresenter() != null) {
                ((c) getPresenter()).onHideOptions();
                b();
            }
        } else if (getPresenter() != null) {
            ((c) getPresenter()).onShowRideOptions();
            this.e.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Ride Option Button Before Ride");
            if (!this.c.isInRide()) {
                this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_PRE_RIDE_OPTIONS, "[tap]");
            } else if (this.c.getCurrentState() == 4) {
                this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_ASSIGNED_OPTIONS, "[tap]");
            } else {
                this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_IN_RIDE_OPTIONS, "clicked");
            }
            if (this.c.getCurrentState() == 2) {
                c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("rideOption", "tap").addOuterKeyToCurrentAsValue("selectServiceType").build());
            } else if (this.c.getCurrentState() == 4) {
                c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "tap").addOuterKeyToCurrentAsValue("driverAssigned").build());
            } else if (this.c.getCurrentState() == 5) {
                c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "tap").addOuterKeyToCurrentAsValue("driverArrived").build());
            } else if (this.c.getCurrentState() == 6) {
                c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "tap").addOuterKeyToCurrentAsValue("Boarded").build());
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x003c, code lost:
        if (r4.c.areBoxOptionsValid() != false) goto L_0x00d3;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onActionButtonClicked() {
        /*
            r4 = this;
            cab.snapp.arch.protocol.BasePresenter r0 = r4.getPresenter()
            if (r0 == 0) goto L_0x00d6
            android.app.Activity r0 = r4.getActivity()
            if (r0 != 0) goto L_0x000e
            goto L_0x00d6
        L_0x000e:
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            cab.snapp.b.a r1 = new cab.snapp.b.a
            android.app.Activity r2 = r4.getActivity()
            r1.<init>(r2)
            java.lang.String r2 = "Confirm_Women_Service_Type"
            boolean r3 = r1.containsKey(r2)
            if (r3 == 0) goto L_0x002d
            java.lang.Object r3 = r1.get(r2)
            if (r3 == 0) goto L_0x002d
            java.lang.Object r0 = r1.get(r2)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
        L_0x002d:
            int r1 = r4.i
            r2 = 5
            if (r1 != r2) goto L_0x005e
            boolean r0 = r4.o
            if (r0 == 0) goto L_0x0040
            cab.snapp.passenger.c.g r0 = r4.c
            boolean r0 = r0.areBoxOptionsValid()
            if (r0 == 0) goto L_0x00d6
            goto L_0x00d3
        L_0x0040:
            cab.snapp.passenger.f.b.b.c r0 = r4.e
            boolean r0 = r0.hasUserEmailProvided()
            if (r0 == 0) goto L_0x0054
            java.lang.String r0 = cab.snapp.passenger.f.b.b.c.a.FIRST_RIDE_REQUEST
            cab.snapp.passenger.f.b.b.c r1 = r4.e
            java.lang.String r2 = r1.getUserEmail()
            r3 = 0
            r1.sendWithAttributesViaAdjust(r0, r2, r3)
        L_0x0054:
            cab.snapp.arch.protocol.BasePresenter r0 = r4.getPresenter()
            cab.snapp.passenger.units.footer.ride_request_footer.c r0 = (cab.snapp.passenger.units.footer.ride_request_footer.c) r0
            r0.onShowBoxOptions()
            return
        L_0x005e:
            r2 = 3
            if (r1 != r2) goto L_0x0075
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x0071
            cab.snapp.arch.protocol.BasePresenter r0 = r4.getPresenter()
            cab.snapp.passenger.units.footer.ride_request_footer.c r0 = (cab.snapp.passenger.units.footer.ride_request_footer.c) r0
            r0.onSnappRoseConfirmationNeeded()
            return
        L_0x0071:
            r4.c()
            return
        L_0x0075:
            boolean r0 = r4.isNeedConfirmation()
            if (r0 == 0) goto L_0x00d3
            cab.snapp.passenger.f.b.b.c r0 = r4.e
            boolean r0 = r0.hasUserEmailProvided()
            if (r0 == 0) goto L_0x00ba
            cab.snapp.passenger.c.b r0 = r4.f792b
            cab.snapp.passenger.data_access_layer.network.responses.ConfigResponse r0 = r0.getConfig()
            cab.snapp.passenger.data.models.ABTestBean r0 = r0.getAbTest()
            if (r0 == 0) goto L_0x00ad
            cab.snapp.passenger.c.b r0 = r4.f792b
            cab.snapp.passenger.data_access_layer.network.responses.ConfigResponse r0 = r0.getConfig()
            cab.snapp.passenger.data.models.ABTestBean r0 = r0.getAbTest()
            boolean r0 = r0.isSnappGroup()
            if (r0 == 0) goto L_0x00ad
            cab.snapp.passenger.f.b.b.c r0 = r4.e
            java.lang.String r1 = cab.snapp.passenger.f.b.b.c.a.ECO_RIDE_REQUEST_JEK
            cab.snapp.passenger.f.b.b.c r2 = r4.e
            java.lang.String r2 = r2.getUserEmail()
            r0.sendWithAttributesViaAdjust(r1, r2)
            goto L_0x00ba
        L_0x00ad:
            cab.snapp.passenger.f.b.b.c r0 = r4.e
            java.lang.String r1 = cab.snapp.passenger.f.b.b.c.a.ECO_RIDE_REQUEST_NON_JEK
            cab.snapp.passenger.f.b.b.c r2 = r4.e
            java.lang.String r2 = r2.getUserEmail()
            r0.sendWithAttributesViaAdjust(r1, r2)
        L_0x00ba:
            cab.snapp.passenger.f.b.b.c r0 = r4.e
            java.lang.String r1 = cab.snapp.passenger.f.b.b.c.C0021c.NEW_UX
            java.lang.String r2 = cab.snapp.passenger.f.b.b.c.b.ALERT_CONFIRM_BEFORE_RIDE
            java.lang.String r3 = "[show]"
            r0.sendAnalyticsEvent(r1, r2, r3)
            cab.snapp.arch.protocol.BasePresenter r0 = r4.getPresenter()
            cab.snapp.passenger.units.footer.ride_request_footer.c r0 = (cab.snapp.passenger.units.footer.ride_request_footer.c) r0
            java.lang.String r1 = r4.getNeedConfirmationMessage()
            r0.onSnappConfirmationNeeded(r1)
            return
        L_0x00d3:
            r4.c()
        L_0x00d6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cab.snapp.passenger.units.footer.ride_request_footer.a.onActionButtonClicked():void");
    }

    public void rideRequestConfirmed() {
        if (isNeedConfirmation()) {
            f();
        }
        c();
    }

    private void c() {
        if (h() != null && getPresenter() != null) {
            e();
            d();
            this.c.setServiceTypeModel(((c) getPresenter()).getCurrentServiceTypeModel());
            if (this.n) {
                ((c) getPresenter()).onHideOptions();
                b();
            } else if (this.o) {
                ((c) getPresenter()).onHideBoxOptions();
            }
            h().navigateToWaiting(null);
        }
    }

    private static void d() {
        c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("request", "tap").addOuterKeyToCurrentAsValue("selectServiceType").build());
    }

    private void e() {
        String str;
        this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_RIDE_REQUEST, "before ride - ride request");
        int i2 = this.i;
        if (i2 == 1) {
            str = c.a.ECO_SERVICE_TYPE_RIDE_REQUEST;
        } else if (i2 == 2) {
            str = c.a.PLUS_SERVICE_TYPE_RIDE_REQUEST;
        } else if (i2 != 3) {
            str = i2 != 5 ? null : c.a.BOX_SERVICE_TYPE_RIDE_REQUEST;
        } else {
            str = c.a.ROSE_SERVICE_TYPE_RIDE_REQUEST;
        }
        if (str != null && str.isEmpty() && this.e.hasUserEmailProvided()) {
            c cVar = this.e;
            cVar.sendWithAttributesViaAdjust(str, cVar.getUserEmail(), null);
        }
    }

    private void f() {
        if (this.e.hasUserEmailProvided()) {
            this.e.sendWithAttributesViaAdjust(c.a.FIRST_RIDE_REQUEST, this.e.getUserEmail(), null);
        }
    }

    /* access modifiers changed from: private */
    public void g() {
        if (getActivity() == null || f.isUserConnectedToNetwork(getActivity()) || getPresenter() == null) {
            PriceRequest priceRequest = new PriceRequest();
            priceRequest.setServiceType(this.i);
            if (this.c.getCurrentState() == 2) {
                this.g++;
                priceRequest.setOriginLat(this.c.getOriginLatLng().latitude);
                priceRequest.setOriginLng(this.c.getOriginLatLng().longitude);
                priceRequest.setDestinationLat(this.c.getDestinationLatLng().latitude);
                priceRequest.setDestinationLng(this.c.getDestinationLatLng().longitude);
                if (this.c.getDestinationPlaceId() != -1000) {
                    priceRequest.setDestinationPlaceID(this.c.getDestinationPlaceId());
                }
                priceRequest.setPackageDelivery(this.c.isPackageDelivery());
                if (this.c.getSecondDestinationLatLng() != null) {
                    priceRequest.setExtraDestinationLat(Double.valueOf(this.c.getSecondDestinationLatLng().latitude));
                    priceRequest.setExtraDestinationLng(Double.valueOf(this.c.getSecondDestinationLatLng().longitude));
                }
                priceRequest.setRoundTrip(this.c.isRoundTrip());
                priceRequest.setWaiting(this.c.getWaitingKey());
                priceRequest.setTag(String.valueOf(this.g));
                priceRequest.setVoucherCode(this.c.getVoucher());
                addDisposable(this.d.getPrice(priceRequest).subscribe(new io.reactivex.e.g() {
                    public final void accept(Object obj) {
                        a.this.a((PriceResponse) obj);
                    }
                }, new io.reactivex.e.g() {
                    public final void accept(Object obj) {
                        a.this.b((Throwable) obj);
                    }
                }));
            }
            return;
        }
        if (this.c.getCurrentState() == 2) {
            if (getActivity() instanceof RootActivity) {
                ((RootActivity) getActivity()).setOptionsAreShown(false);
            }
            this.c.stateUp();
        }
        ((c) getPresenter()).onNoInternetConnection();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(PriceResponse priceResponse) throws Exception {
        if (getPresenter() != null && priceResponse != null && priceResponse.getPriceModels() != null && String.valueOf(this.g).equals(priceResponse.getTag())) {
            this.s = priceResponse.isNeedConfirmRide();
            this.t = priceResponse.getConfirmRideMessage();
            this.c.setNeedConfirmRideRequest(this.s);
            this.u = priceResponse.getPriceModels();
            ((c) getPresenter()).updateList(this.u);
            if (!this.n && !this.o) {
                ((c) getPresenter()).showServiceTypes();
            }
            if (this.c.getCurrentState() == 2) {
                this.c.setRideWaitingList(priceResponse.getRideWaitingList());
            }
            boolean z = true;
            this.c.setPackageDelivery(this.i == 5);
            c cVar = (c) getPresenter();
            int i2 = this.i;
            if (this.o || this.n) {
                z = false;
            }
            cVar.updateServiceType(i2, z);
            ((c) getPresenter()).onUserServiceTypeHasNoErrorForDisplayingShowCase();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(Throwable th) throws Exception {
        cab.snapp.passenger.data_access_layer.a.c.getInstance().emitToPrivateChannel(cab.snapp.passenger.units.ride_options.a.getConfirmationPrivateChannelId(), Boolean.FALSE);
        if (getPresenter() != null && (th instanceof e)) {
            int currentState = this.c.getCurrentState();
            e eVar = (e) th;
            if (eVar.getErrorCode() == 1028) {
                ((c) getPresenter()).onNeedPhoneVerification();
            } else if (eVar.getErrorCode() == 1004) {
                ((c) getPresenter()).onCanNotCalculatePrice(eVar.getMessage());
                if (currentState == 2) {
                    if (getActivity() instanceof RootActivity) {
                        ((RootActivity) getActivity()).setOptionsAreShown(false);
                    }
                    this.c.stateUp();
                }
            } else if (eVar.getErrorCode() == 1035) {
                if (currentState == 2) {
                    if (getActivity() instanceof RootActivity) {
                        ((RootActivity) getActivity()).setOptionsAreShown(false);
                    }
                    this.c.stateUp();
                }
                ((c) getPresenter()).onUserIsBlocked(eVar.getMessage());
                this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.ALERT_USER_IS_BLOCK, "[show]");
            } else if (eVar.getErrorCode() == 1045) {
                ((c) getPresenter()).onVoucherAlreadyActivated(eVar.getMessage());
            } else if (eVar.getErrorCode() == 1037) {
                ((c) getPresenter()).onVoucherIsNotValid(eVar.getMessage());
                this.c.reportVoucherIsNotValidToMarketing();
                this.c.setVoucher(null);
                g();
            } else if (eVar.getErrorCode() == 1054) {
                ((c) getPresenter()).onUnknownError(eVar.getMessage());
                if (currentState == 2) {
                    if (this.c.getSecondDestinationLatLng() != null) {
                        this.c.setSecondDestinationFormattedAddress(null);
                        this.c.setSecondDestinationLatLng(null);
                        return;
                    }
                    if (getActivity() instanceof RootActivity) {
                        ((RootActivity) getActivity()).setOptionsAreShown(false);
                    }
                    this.c.stateUp();
                }
            } else {
                ((c) getPresenter()).onUnknownError(eVar.getMessage());
                if (currentState == 2) {
                    if (getActivity() instanceof RootActivity) {
                        ((RootActivity) getActivity()).setOptionsAreShown(false);
                    }
                    this.c.stateUp();
                }
            }
        }
    }

    public void startPhoneVerificationProcedure() {
        io.reactivex.b.c cVar = this.r;
        if (cVar != null) {
            cVar.dispose();
        }
        if (getPresenter() != null) {
            ((c) getPresenter()).presentPhoneVerificationUnit(new PhoneVerificationController(), getController().getChildFragmentManager());
        }
        this.r = cab.snapp.passenger.data_access_layer.a.c.getInstance().subscribeToPrivateChannel(cab.snapp.passenger.units.phone_verification.a.getPrivateChanelId(), new io.reactivex.e.g() {
            public final void accept(Object obj) {
                a.this.b((String) obj);
            }
        });
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(String str) throws Exception {
        io.reactivex.b.c cVar = this.r;
        if (cVar != null) {
            cVar.dispose();
        }
        if (getPresenter() != null) {
            if (!str.isEmpty()) {
                ((c) getPresenter()).onPhoneVerificationSuccessful();
                g();
            }
            ((c) getPresenter()).finishPresentingPhoneVerificationUnit();
        }
    }

    public void navigateToOptions() {
        if (getRouter() != null) {
            Bundle bundle = new Bundle();
            bundle.putInt(RideOptionsController.KEY_SERVICE_TYPE, this.i);
            ((e) getRouter()).navigateToRideOptions(this.m, bundle);
            this.o = false;
            this.n = true;
            if (getActivity() instanceof RootActivity) {
                ((RootActivity) getActivity()).setOptionsAreShown(true);
            }
        }
    }

    public void navigateUpOptions() {
        if (getRouter() != null) {
            ((e) getRouter()).navigateToEmpty(this.m);
            this.o = false;
            this.n = false;
            cab.snapp.passenger.data_access_layer.a.c.getInstance().emitToPrivateChannel(getPrivateChannelId(), Boolean.FALSE);
            if (getActivity() instanceof RootActivity) {
                ((RootActivity) getActivity()).setOptionsAreShown(false);
            }
        }
    }

    public void navigateToBoxOptions() {
        if (getRouter() != null) {
            this.o = true;
            this.n = false;
            ((e) getRouter()).navigateToBoxOptions(this.m);
            if (getActivity() instanceof RootActivity) {
                ((RootActivity) getActivity()).setOptionsAreShown(true);
            }
        }
    }

    public void navigateUpBoxOptions() {
        if (getRouter() != null) {
            this.o = false;
            ((e) getRouter()).navigateToEmpty(this.m);
            cab.snapp.passenger.data_access_layer.a.c.getInstance().emitToPrivateChannel(getPrivateChannelId(), Boolean.FALSE);
            if (getActivity() instanceof RootActivity) {
                ((RootActivity) getActivity()).setOptionsAreShown(false);
            }
        }
    }

    private cab.snapp.passenger.units.main.b h() {
        if (getController() == null || getController().getParentFragment() == null || getController().getParentFragment().getParentFragment() == null || !(getController().getParentFragment().getParentFragment() instanceof MainController) || ((MainController) getController().getParentFragment().getParentFragment()).getControllerInteractor() == null) {
            return null;
        }
        return (cab.snapp.passenger.units.main.b) ((MainController) getController().getParentFragment().getParentFragment()).getControllerInteractor();
    }

    public View getMainView() {
        if (h() == null || h().getController() == null) {
            return null;
        }
        return h().getController().getView();
    }

    public void applyVoucher(String str) {
        if (getPresenter() != null) {
            if (f.isUserConnectedToNetwork(getActivity()) || getPresenter() == null) {
                if (this.c.getVoucher() == null || !a(str)) {
                    PriceRequest priceRequest = new PriceRequest();
                    priceRequest.setServiceType(this.i);
                    if (this.c.getCurrentState() == 2) {
                        this.g++;
                        priceRequest.setOriginLat(this.c.getOriginLatLng().latitude);
                        priceRequest.setOriginLng(this.c.getOriginLatLng().longitude);
                        priceRequest.setDestinationLat(this.c.getDestinationLatLng().latitude);
                        priceRequest.setDestinationLng(this.c.getDestinationLatLng().longitude);
                        priceRequest.setPackageDelivery(this.c.isPackageDelivery());
                        if (this.c.getSecondDestinationLatLng() != null) {
                            priceRequest.setExtraDestinationLat(Double.valueOf(this.c.getSecondDestinationLatLng().latitude));
                            priceRequest.setExtraDestinationLng(Double.valueOf(this.c.getSecondDestinationLatLng().longitude));
                        }
                        priceRequest.setRoundTrip(this.c.isRoundTrip());
                        priceRequest.setWaiting(this.c.getWaitingKey());
                        priceRequest.setTag(String.valueOf(this.g));
                        priceRequest.setVoucherCode(str);
                        addDisposable(this.d.getPrice(priceRequest).subscribe(new io.reactivex.e.g(str) {
                            private final /* synthetic */ String f$1;

                            {
                                this.f$1 = r2;
                            }

                            public final void accept(Object obj) {
                                a.this.a(this.f$1, (PriceResponse) obj);
                            }
                        }, new io.reactivex.e.g() {
                            public final void accept(Object obj) {
                                a.this.a((Throwable) obj);
                            }
                        }));
                    }
                } else if (a(str)) {
                    ((c) getPresenter()).hidePromoLoading();
                    ((c) getPresenter()).showPromoSaveButton();
                }
                if (this.c.getCurrentState() == 2) {
                    c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("discountCode", "register").addOuterKeyToCurrentAsValue("selectServiceType").build());
                }
                return;
            }
            ((c) getPresenter()).hidePromoLoading();
            ((c) getPresenter()).showPromoSaveButton();
            ((c) getPresenter()).onNoInternetConnection();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(String str, PriceResponse priceResponse) throws Exception {
        this.c.reportVoucherIsValidToMarketing();
        if (getPresenter() != null && priceResponse != null && priceResponse.getPriceModels() != null && String.valueOf(this.g).equals(priceResponse.getTag())) {
            this.s = priceResponse.isNeedConfirmRide();
            this.t = priceResponse.getConfirmRideMessage();
            this.c.setNeedConfirmRideRequest(this.s);
            ((c) getPresenter()).hidePromoLoading();
            ((c) getPresenter()).showPromoSaveButton();
            this.u = priceResponse.getPriceModels();
            ((c) getPresenter()).updateList(this.u);
            if (!this.n && !this.o) {
                ((c) getPresenter()).showServiceTypes();
            }
            if (this.c.getCurrentState() == 2) {
                this.c.setRideWaitingList(priceResponse.getRideWaitingList());
            }
            this.c.setVoucher(str);
            boolean z = true;
            this.c.setPackageDelivery(this.i == 5);
            c cVar = (c) getPresenter();
            int i2 = this.i;
            if (this.o || this.n) {
                z = false;
            }
            cVar.updateServiceType(i2, z);
            ((c) getPresenter()).onPromoClicked();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Throwable th) throws Exception {
        if (getPresenter() != null) {
            ((c) getPresenter()).hidePromoLoading();
            ((c) getPresenter()).showPromoSaveButton();
            if (th instanceof e) {
                if (((e) th).getErrorCode() == 1037) {
                    this.c.reportVoucherIsNotValidToMarketing();
                }
                ((c) getPresenter()).onUnknownError(th.getMessage());
            }
        }
    }

    private boolean a(String str) {
        return this.c.getVoucher().equalsIgnoreCase(str);
    }

    public void scalingOptionsStarted() {
        cab.snapp.passenger.data_access_layer.a.c.getInstance().emitToPrivateChannel(getPrivateChannelId(), Boolean.TRUE);
    }

    public void roseRequestConfirmed() {
        if (getActivity() != null) {
            new cab.snapp.b.a(getActivity()).put("Confirm_Women_Service_Type", Boolean.FALSE);
            if (isNeedConfirmation()) {
                f();
            }
            c();
        }
    }

    public void onPromoIsAccessible() {
        if (getPresenter() != null) {
            if (!this.c.isInRide()) {
                this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_PRE_RIDE_VOUCHER, "[clicked on label]");
            } else if (this.c.getCurrentState() == 4) {
                this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_ASSIGNED_VOUCHER, "[clicked on label]");
            }
            if (this.c.getCurrentState() == 2) {
                c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("discountCode", "tap").addOuterKeyToCurrentAsValue("selectServiceType").build());
            }
            if (this.n) {
                ((c) getPresenter()).onHideOptions();
                b();
                return;
            }
            if (this.o) {
                ((c) getPresenter()).onHideBoxOptions();
            }
        }
    }

    public BoxOptions getBoxOptions() {
        return this.p;
    }

    public void setBoxOptions(BoxOptions boxOptions) {
        this.p = boxOptions;
    }

    public boolean isNeedConfirmation() {
        return this.s;
    }

    public String getNeedConfirmationMessage() {
        return this.t;
    }

    public void selectServiceType(int i2) {
        this.c.setServiceType(i2);
    }

    public void updateFreeRideStatus(boolean z) {
        this.c.setRideFree(z);
    }
}
