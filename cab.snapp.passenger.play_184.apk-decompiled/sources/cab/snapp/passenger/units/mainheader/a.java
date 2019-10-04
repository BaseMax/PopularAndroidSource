package cab.snapp.passenger.units.mainheader;

import android.content.Intent;
import android.content.res.Resources;
import androidx.navigation.Navigation;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.c.f;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.activities.root.RootActivity;
import cab.snapp.passenger.c.b;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.data.models.DriverInfo;
import cab.snapp.passenger.data.models.OnActivityResultModel;
import cab.snapp.passenger.data.models.Options;
import cab.snapp.passenger.data.models.RideInformation;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.a.e;
import cab.snapp.passenger.data_access_layer.network.requests.EditOptionsRequest;
import cab.snapp.passenger.data_access_layer.network.requests.UpdateVoucherRequest;
import cab.snapp.passenger.data_access_layer.network.responses.EditOptionsResponse;
import cab.snapp.passenger.data_access_layer.network.responses.RidePaymentStatusResponse;
import cab.snapp.passenger.data_access_layer.network.responses.RideVoucherResponse;
import cab.snapp.passenger.data_access_layer.network.responses.UpdateOptionsResponse;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.o;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.main.MainController;
import com.google.android.gms.maps.model.LatLng;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.koushikdutta.async.http.a.j;
import java.util.List;
import java.util.UUID;
import javax.inject.Inject;

public class a extends BaseInteractor<e, c> {
    private static final String g = UUID.randomUUID().toString();
    @Inject

    /* renamed from: a  reason: collision with root package name */
    o f950a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    b f951b;
    @Inject
    g c;
    @Inject
    d d;
    @Inject
    c e;
    @Inject
    cab.snapp.passenger.c.d f;
    private final int h = 0;
    private final int i = 1;
    private final int j = 2;
    private final int k = 3;
    private io.reactivex.b.c l;
    private List<String> m;
    private int n = 0;
    private boolean o = true;
    private boolean p = false;
    private int q = 0;
    private EditOptionsResponse r;
    private String s;

    /* access modifiers changed from: private */
    public static /* synthetic */ void d(Throwable th) throws Exception {
    }

    public static String getPrivateChannelId() {
        return cab.snapp.passenger.data_access_layer.a.c.getInstance().getPrivateChannelId(g);
    }

    public void reportSideMenuToggleToAppMetrica() {
        if (this.c.getCurrentState() == 0) {
            c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("setOrigin", "sideMenu").build());
        } else if (this.c.getCurrentState() == 1) {
            c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("setDestination", "sideMenu").build());
        } else if (this.c.getCurrentState() == 2) {
            c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("selectServiceType", "sideMenu").build());
        } else if (this.c.getCurrentState() == 4) {
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("driverAssigned", "sideMenu").build());
        } else if (this.c.getCurrentState() == 5) {
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("driverArrived", "sideMenu").build());
        } else {
            if (this.c.getCurrentState() == 6) {
                c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("Boarded", "sideMenu").build());
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        if (f.isUserConnectedToNetwork(getActivity()) || getPresenter() == null) {
            addDisposable(this.c.cancelRide().subscribe(new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    a.this.b((cab.snapp.snappnetwork.model.f) obj);
                }
            }, new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    a.this.e((Throwable) obj);
                }
            }));
        } else {
            ((c) getPresenter()).onNoInternetConnection();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(cab.snapp.snappnetwork.model.f fVar) throws Exception {
        this.e.reportEvent(c.e.PASSENGER_CANCELED);
        if (getPresenter() != null) {
            ((c) getPresenter()).onCancelRideSucceed(R.string.ride_canceled);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void e(Throwable th) throws Exception {
        if (getPresenter() != null) {
            ((c) getPresenter()).onCancelRideFailed(R.string.ride_cancel_failed);
        }
    }

    public void navigateToOptions() {
        if (getRouter() != null) {
            cab.snapp.passenger.data_access_layer.a.c.getInstance().emitToPrivateChannel(getPrivateChannelId(), Boolean.TRUE);
            ((e) getRouter()).navigateToRideOptions();
            this.p = true;
            if (getActivity() instanceof RootActivity) {
                ((RootActivity) getActivity()).setInRideOptionsAreShown(true);
            }
        }
    }

    public void navigateUpOptions() {
        if (getRouter() != null) {
            cab.snapp.passenger.data_access_layer.a.c.getInstance().emitToPrivateChannel(getPrivateChannelId(), Boolean.FALSE);
            ((e) getRouter()).navigateToEmpty();
            if (getActivity() != null && (getActivity() instanceof RootActivity)) {
                ((RootActivity) getActivity()).setInRideOptionsAreShown(false);
            }
            this.p = false;
            this.r = null;
            if (getPresenter() != null) {
                ((c) getPresenter()).onRideDataUpdated(d(), c(), isPromoEnabled(), false);
            }
            if (this.c.isInRide()) {
                this.c.updatePaymentStatus();
            }
            cab.snapp.passenger.data_access_layer.a.c.getInstance().emitToPrivateChannel(getPrivateChannelId(), Boolean.FALSE);
        }
        if (this.c.getCurrentState() == 4 || this.c.getCurrentState() == 5 || this.c.getCurrentState() == 6 || this.c.getCurrentState() == 7) {
            this.o = false;
            this.c.setSecondDestinationLatLng(null);
            this.c.setSecondDestinationFormattedAddress(null);
            this.c.setWaitingKey(null);
            this.c.setRoundTrip(false);
            this.o = true;
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(cab.snapp.snappnetwork.model.f fVar) throws Exception {
        if (getPresenter() != null) {
            ((c) getPresenter()).onMessageSentToDriver(R.string.sent_successfully);
        }
    }

    public void shareRide() {
        String str;
        String str2;
        if (getActivity() != null && !getActivity().isFinishing()) {
            RideInformation rideInformation = this.c.getRideInformation();
            String rideId = this.c.getRideId();
            DriverInfo driverInfo = this.c.getDriverInfo();
            if (!(rideInformation == null || rideId == null || driverInfo == null)) {
                if (rideInformation.getRideId() == null || rideInformation.getStartTime() == null || rideInformation.getShareUrl() == null || driverInfo.getName() == null) {
                    str = "";
                } else {
                    String startTime = rideInformation.getStartTime();
                    String rideId2 = rideInformation.getRideId();
                    String shareUrl = rideInformation.getShareUrl();
                    String name = driverInfo.getName();
                    if (this.c.getServiceType() == 5) {
                        str2 = getActivity().getString(R.string.ride_share_message_box) + "\n";
                    } else {
                        str2 = getActivity().getString(R.string.ride_share_message) + "\n";
                    }
                    str = str2 + getActivity().getString(R.string.ride_share_boarded_time) + " " + startTime + "\n" + getActivity().getString(R.string.ride_share_driver_name) + " " + name + "\n" + getActivity().getString(R.string.ride_share_ride_id) + " " + rideId2 + "\n" + getActivity().getString(R.string.ride_share_details) + "\n" + shareUrl + "\n\n";
                }
                if (!str.equalsIgnoreCase("")) {
                    Intent intent = new Intent("android.intent.action.SEND");
                    intent.setType(j.CONTENT_TYPE);
                    intent.putExtra("android.intent.extra.TEXT", str);
                    try {
                        Intent intent2 = new Intent();
                        intent2.setAction("android.intent.action.PICK_ACTIVITY");
                        intent2.putExtra("android.intent.extra.TITLE", getActivity().getString(R.string.send_with));
                        intent2.putExtra("android.intent.extra.INTENT", intent);
                        getActivity().startActivityForResult(intent2, 1005);
                    } catch (SecurityException e2) {
                        e2.printStackTrace();
                        com.a.a.a.logException(e2);
                        try {
                            getActivity().startActivity(Intent.createChooser(intent, getActivity().getString(R.string.send_with)));
                        } catch (Resources.NotFoundException e3) {
                            e3.printStackTrace();
                        }
                    }
                }
            }
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideInform", FirebaseAnalytics.a.SHARE).addOuterKeyToCurrentAsValue("Boarded").build());
        }
    }

    public void applyVoucher(String str) {
        UpdateVoucherRequest updateVoucherRequest = new UpdateVoucherRequest();
        updateVoucherRequest.setVoucher(str);
        addDisposable(this.d.updateVoucherInRide(updateVoucherRequest, this.c.getRideId()).subscribe(new io.reactivex.e.g(str) {
            private final /* synthetic */ String f$1;

            {
                this.f$1 = r2;
            }

            public final void accept(Object obj) {
                a.this.a(this.f$1, (RideVoucherResponse) obj);
            }
        }, new io.reactivex.e.g() {
            public final void accept(Object obj) {
                a.this.c((Throwable) obj);
            }
        }));
        if (this.c.getCurrentState() == 4) {
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("discountCode", "register").addOuterKeyToCurrentAsValue("driverAssigned").build());
        } else if (this.c.getCurrentState() == 5) {
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("discountCode", "register").addOuterKeyToCurrentAsValue("driverArrived").build());
        } else {
            if (this.c.getCurrentState() == 6) {
                c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("discountCode", "register").addOuterKeyToCurrentAsValue("Boarded").build());
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(String str, RideVoucherResponse rideVoucherResponse) throws Exception {
        if (getPresenter() != null && rideVoucherResponse != null) {
            this.c.setVoucher(str);
            if (this.c.getRideInformation() != null) {
                this.c.getRideInformation().setFinalPrice(rideVoucherResponse.getRidePrice());
            }
            ((c) getPresenter()).onVoucherSucceed(rideVoucherResponse.getMessage());
            ((c) getPresenter()).onRideDataUpdated(rideVoucherResponse.getRidePrice(), c(), isPromoEnabled(), true);
            this.c.updatePaymentStatus();
            this.c.reportVoucherIsValidToMarketing();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void c(Throwable th) throws Exception {
        if (getPresenter() != null) {
            if (th instanceof e) {
                ((c) getPresenter()).onFailedVoucherRequest(th.getMessage());
                if (((e) th).getErrorCode() == 1037) {
                    this.c.reportVoucherIsNotValidToMarketing();
                }
            } else {
                ((c) getPresenter()).onFailedVoucherRequest(null);
            }
        }
    }

    public void navigateToAddFavoriteAddress() {
        if (getRouter() != null && getController() != null) {
            ((e) getRouter()).navigateToAddFavorite(getController().getOvertheMapNavigationController());
        }
    }

    private void a(Integer num) {
        if (getPresenter() != null) {
            ((c) getPresenter()).onRideStateUpdated(num.intValue());
            boolean z = true;
            boolean z2 = (getActivity() instanceof RootActivity) && ((RootActivity) getActivity()).areInRideOptionsShown();
            switch (num.intValue()) {
                case 0:
                    ((c) getPresenter()).onIdle(R.string.where_are_you, this.f.isContentValid());
                    break;
                case 1:
                    ((c) getPresenter()).onOriginSelected(R.string.where_are_you_going);
                    return;
                case 2:
                    boolean areOptionsShown = (getActivity() == null || !(getActivity() instanceof RootActivity)) ? false : ((RootActivity) getActivity()).areOptionsShown();
                    c cVar = (c) getPresenter();
                    String destinationFormattedAddress = this.c.getDestinationFormattedAddress();
                    if (this.c.getVoucher() != null) {
                        z = false;
                    }
                    cVar.onDestinationSelected(R.string.safe_ride, destinationFormattedAddress, z, areOptionsShown);
                    return;
                case 3:
                    ((c) getPresenter()).onRideRequested();
                    return;
                case 4:
                    c cVar2 = (c) getPresenter();
                    if (this.c.getVoucher() != null) {
                        z = false;
                    }
                    cVar2.onRideAccepted(R.string.safe_ride, z, z2);
                    ((c) getPresenter()).onRideDataUpdated(d(), c(), isPromoEnabled(), false);
                    return;
                case 5:
                    c cVar3 = (c) getPresenter();
                    if (this.c.getVoucher() != null) {
                        z = false;
                    }
                    cVar3.onDriverArrived(R.string.safe_ride, z, z2);
                    ((c) getPresenter()).onRideDataUpdated(d(), c(), isPromoEnabled(), false);
                    return;
                case 6:
                    c cVar4 = (c) getPresenter();
                    if (this.c.getVoucher() != null) {
                        z = false;
                    }
                    cVar4.onPassengerBoarded(R.string.safe_ride, z, z2);
                    ((c) getPresenter()).onRideDataUpdated(d(), c(), isPromoEnabled(), false);
                    return;
                case 7:
                    ((c) getPresenter()).onRideFinished(R.string.where_are_you);
                    break;
            }
        }
    }

    public boolean isPromoEnabled() {
        boolean isCanUseRideVoucher = this.c.getRideInformation() != null ? this.c.getRideInformation().isCanUseRideVoucher() : true;
        if (this.c.getVoucher() != null) {
            return false;
        }
        return isCanUseRideVoucher;
    }

    private boolean c() {
        if (this.c.getServiceTypeModel() != null) {
            return this.c.getServiceTypeModel().isRideOptionsEnabled();
        }
        return true;
    }

    private double d() {
        if (this.p) {
            EditOptionsResponse editOptionsResponse = this.r;
            if (editOptionsResponse != null) {
                return (double) editOptionsResponse.getTotalPrice();
            }
        }
        if (this.c.getRideInformation() != null) {
            return this.c.getRideInformation().getFinalPrice();
        }
        return 0.0d;
    }

    public void onActivityResultModelReceived(OnActivityResultModel onActivityResultModel) {
        if (getActivity() != null && !getActivity().isFinishing() && onActivityResultModel != null && onActivityResultModel.getRequestCode() == 1005 && onActivityResultModel.getData() != null) {
            Intent data = onActivityResultModel.getData();
            if (!(data == null || data.getComponent() == null)) {
                String flattenToShortString = data.getComponent().flattenToShortString();
                if (flattenToShortString.contains("mms") || flattenToShortString.contains("sms")) {
                    this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_INFORM_RIDE, "[sms]");
                } else if (flattenToShortString.contains("org.telegram.messenger")) {
                    this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_INFORM_RIDE, "[telegram]");
                } else if (flattenToShortString.contains("com.linkedin.android")) {
                    this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_INFORM_RIDE, "[linkedin]");
                } else if (flattenToShortString.contains("com.twitter.android")) {
                    this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_INFORM_RIDE, "[twitter]");
                }
            }
            getActivity().startActivity(onActivityResultModel.getData());
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(Throwable th) throws Exception {
        if (th != null && (th instanceof e)) {
            e eVar = (e) th;
            if (eVar.getErrorCode() == 1068 || eVar.getErrorCode() == 1043 || eVar.getErrorCode() == 1037) {
                if (!(getPresenter() == null || th.getMessage() == null)) {
                    ((c) getPresenter()).onFailedRequest(th.getMessage());
                }
                if (eVar.getErrorCode() == 1037) {
                    this.c.reportVoucherIsNotValidToMarketing();
                }
            }
        } else if (getPresenter() != null) {
            ((c) getPresenter()).onFailedRequest(null);
        }
        this.c.setRoundTrip(false);
        this.c.setSecondDestinationLatLng(null);
        this.c.setWaitingKey(null);
        cab.snapp.passenger.data_access_layer.a.c.getInstance().emitToPrivateChannel(cab.snapp.passenger.units.ride_options.a.getConfirmationPrivateChannelId(), Boolean.FALSE);
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(EditOptionsResponse editOptionsResponse) throws Exception {
        if (editOptionsResponse != null && String.valueOf(this.n).equalsIgnoreCase(editOptionsResponse.getTag())) {
            this.r = editOptionsResponse;
            if (getPresenter() != null) {
                ((c) getPresenter()).onRideDataUpdated((double) editOptionsResponse.getTotalPrice(), c(), isPromoEnabled(), true);
            }
            this.c.updatePaymentStatus();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Throwable th) throws Exception {
        if ((th instanceof e) && th.getMessage() != null) {
            e eVar = (e) th;
            if (eVar.getErrorCode() == 1037) {
                if (getPresenter() != null) {
                    ((c) getPresenter()).onFailedRequest(eVar.getMessage());
                }
                this.c.reportVoucherIsNotValidToMarketing();
            } else if (eVar.getErrorCode() == 1004) {
                if (getPresenter() != null) {
                    ((c) getPresenter()).onFailedRequest(eVar.getMessage());
                }
            } else if (eVar.getErrorCode() == 1054) {
                ((c) getPresenter()).onFailedRequest(eVar.getMessage());
            }
        } else if (!(getPresenter() == null || getActivity() == null)) {
            ((c) getPresenter()).onFailedRequest(getActivity().getString(R.string.server_connection_failed));
        }
        ((c) getPresenter()).onRideDataUpdated(d(), c(), isPromoEnabled(), true);
        this.c.updatePaymentStatus();
        if (this.c.isInRide()) {
            this.o = false;
            Options options = this.c.getOptions();
            int i2 = this.q;
            if (i2 == 1) {
                if (options != null && options.getExtraDestination() != null) {
                    this.c.setSecondDestinationLatLng(new LatLng(options.getExtraDestination().getLat(), options.getExtraDestination().getLng()));
                    this.c.setSecondDestinationFormattedAddress(options.getExtraDestination().getFormattedAddress());
                } else if (this.c.getSecondDestinationLatLng() != null) {
                    this.c.setSecondDestinationLatLng(null);
                    this.c.setSecondDestinationFormattedAddress(null);
                }
            } else if (i2 == 2) {
                if (options != null && options.getRoundTripPrice() > 0.0d) {
                    this.c.setRoundTrip(true);
                } else if (this.c.isRoundTrip()) {
                    this.c.setRoundTrip(false);
                }
            } else if (i2 == 3) {
                if (options != null && options.getSnappWaiting() != null) {
                    this.c.setWaitingKey(options.getSnappWaiting().getKey());
                } else if (this.c.getWaitingKey() != null) {
                    this.c.setWaitingKey(null);
                }
            }
            this.o = true;
        }
        cab.snapp.passenger.data_access_layer.a.c.getInstance().emitToPrivateChannel(cab.snapp.passenger.units.ride_options.a.getConfirmationPrivateChannelId(), Boolean.FALSE);
    }

    /* access modifiers changed from: package-private */
    public final cab.snapp.passenger.units.main.b b() {
        if (getController() == null || getController().getParentFragment() == null || getController().getParentFragment().getParentFragment() == null || !(getController().getParentFragment().getParentFragment() instanceof MainController)) {
            return null;
        }
        return (cab.snapp.passenger.units.main.b) ((MainController) getController().getParentFragment().getParentFragment()).getControllerInteractor();
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            this.s = cab.snapp.passenger.data_access_layer.a.c.getInstance().getPrivateChannelId(cab.snapp.passenger.units.main.b.JEK_BOTTOM_SHEET_STATE_CHANNEL_KEY);
            addDisposable(cab.snapp.passenger.data_access_layer.a.c.getInstance().subscribeToPrivateChannel(this.s, new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    a.this.a((Boolean) obj);
                }
            }));
            addDisposable(cab.snapp.passenger.data_access_layer.a.c.getInstance().subscribeToPrivateChannel(cab.snapp.passenger.units.footer.ride_request_footer.a.getPrivateChannelId(), new io.reactivex.e.g<Boolean>() {
                public final void accept(Boolean bool) throws Exception {
                    if (!(a.this.getPresenter() == null || bool == null)) {
                        if (bool.booleanValue()) {
                            ((c) a.this.getPresenter()).onRideOptionsOpened();
                            return;
                        }
                        ((c) a.this.getPresenter()).onRideOptionsClosed();
                    }
                }
            }));
            if (this.l == null) {
                this.l = this.c.getUpdateSignalObservable().subscribe(new io.reactivex.e.g() {
                    public final void accept(Object obj) {
                        a.this.b((Integer) obj);
                    }
                });
                addDisposable(this.l);
            }
            if (this.f951b.getConfig() != null) {
                this.m = this.f951b.getConfig().getListRideMessages();
            }
            if (getPresenter() != null) {
                ((c) getPresenter()).onInitialize(this.m);
                if (!(((c) getPresenter()).getOptionsContainer() == null || getRouter() == null)) {
                    ((e) getRouter()).setNavigationController(Navigation.findNavController(((c) getPresenter()).getOptionsContainer()));
                }
            }
            addDisposable(cab.snapp.passenger.data_access_layer.a.c.getInstance().subscribeToPrivateChannel(cab.snapp.passenger.units.ride_options.a.getPrivateChannelId(), new io.reactivex.e.g<Boolean>() {
                public final void accept(Boolean bool) throws Exception {
                    if (a.this.c.getCurrentState() != 2) {
                        if (!bool.booleanValue()) {
                            a.f(a.this);
                        } else if (a.this.getPresenter() != null) {
                            ((c) a.this.getPresenter()).onPopOptions();
                        }
                    }
                }
            }));
            addDisposable(cab.snapp.passenger.data_access_layer.a.c.getInstance().subscribeToPrivateChannel(RootActivity.getPrivateChannelId(), new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    a.this.onActivityResultModelReceived((OnActivityResultModel) obj);
                }
            }));
            addDisposable(this.c.getPaymentStatusObservable().subscribe(new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    a.this.a((RidePaymentStatusResponse) obj);
                }
            }));
            if (getPresenter() != null) {
                ((c) getPresenter()).onRideDataUpdated(d(), c(), isPromoEnabled(), false);
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Boolean bool) throws Exception {
        if (bool.booleanValue() && getRouter() != null && b() != null) {
            ((e) getRouter()).navigateToJekHeader(b().getHeaderNavController());
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(Integer num) throws Exception {
        if (num != null) {
            if (num.intValue() == 2000) {
                a(Integer.valueOf(this.c.getCurrentState()));
                return;
            }
            if (num.intValue() == 1003) {
                if (getPresenter() != null) {
                    boolean z = false;
                    boolean areOptionsShown = (getActivity() == null || !(getActivity() instanceof RootActivity)) ? false : ((RootActivity) getActivity()).areOptionsShown();
                    c cVar = (c) getPresenter();
                    String destinationFormattedAddress = this.c.getDestinationFormattedAddress();
                    if (this.c.getVoucher() == null) {
                        z = true;
                    }
                    cVar.onDestinationSelected(R.string.safe_ride, destinationFormattedAddress, z, areOptionsShown);
                }
            } else if ((num.intValue() == 1005 || num.intValue() == 1007 || num.intValue() == 1008) && ((this.c.getCurrentState() == 6 || this.c.getCurrentState() == 5 || this.c.getCurrentState() == 4) && this.o)) {
                if (num.intValue() == 1005) {
                    this.q = 1;
                } else if (num.intValue() == 1007) {
                    this.q = 2;
                } else {
                    this.q = 3;
                }
                EditOptionsRequest editOptionsRequest = new EditOptionsRequest();
                this.n++;
                editOptionsRequest.setTag(String.valueOf(this.n));
                if (this.c.getServiceType() != 5) {
                    if (this.c.getSecondDestinationLatLng() != null) {
                        editOptionsRequest.setExtraDestinationLat(Double.valueOf(this.c.getSecondDestinationLatLng().latitude));
                        editOptionsRequest.setExtraDestinationLng(Double.valueOf(this.c.getSecondDestinationLatLng().longitude));
                    }
                    if (this.c.getWaitingKey() != null) {
                        editOptionsRequest.setWaiting(this.c.getWaitingKey());
                    }
                }
                editOptionsRequest.setRoundTrip(Boolean.valueOf(this.c.isRoundTrip()));
                editOptionsRequest.setPackageDelivery(this.c.isPackageDelivery());
                if (getPresenter() != null) {
                    ((c) getPresenter()).onEditOptionsRequest();
                }
                addDisposable(this.d.editRideOptions(this.c.getRideId(), editOptionsRequest).subscribe(new io.reactivex.e.g() {
                    public final void accept(Object obj) {
                        a.this.a((EditOptionsResponse) obj);
                    }
                }, new io.reactivex.e.g() {
                    public final void accept(Object obj) {
                        a.this.a((Throwable) obj);
                    }
                }));
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(RidePaymentStatusResponse ridePaymentStatusResponse) throws Exception {
        c cVar = (c) getPresenter();
        String text = ridePaymentStatusResponse.getText();
        int status = ridePaymentStatusResponse.getStatus();
        int i2 = 17170445;
        int i3 = status == 1 ? R.drawable.ic_credit_green_16_dp : status == 0 ? R.drawable.ic_credit_red_16dp : 17170445;
        int status2 = ridePaymentStatusResponse.getStatus();
        if (status2 == 1) {
            i2 = R.color.green_blue_two;
        } else if (status2 == 0) {
            i2 = R.color.cherry;
        } else if (status2 != -1) {
            i2 = -1;
        }
        cVar.onPaymentStatusUpdated(text, i3, i2);
    }

    public void onUnitResume() {
        super.onUnitResume();
        a(Integer.valueOf(this.c.getCurrentState()));
        this.c.updatePaymentStatus();
    }

    public void onUnitPause() {
        super.onUnitPause();
        this.f950a.cancelAll();
    }

    public void onApplicationRootBackPressed() {
        super.onApplicationRootBackPressed();
        if (this.p && getPresenter() != null) {
            ((c) getPresenter()).onHideOptions();
            if (getActivity() instanceof RootActivity) {
                ((RootActivity) getActivity()).setInRideOptionsAreShown(false);
            }
        }
    }

    public void reportOnRideCanceledToMarketing() {
        if (this.c.getCurrentState() == 4) {
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("cancel", "cancel").addOuterKeyToCurrentAsValue("driverAssigned").build());
            return;
        }
        if (this.c.getCurrentState() == 5) {
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("cancel", "cancel").addOuterKeyToCurrentAsValue("driverArrived").build());
        }
    }

    public void reportOnCancelButtonToAppMetrica() {
        if (this.c.getCurrentState() == 4) {
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("cancel", "tap").addOuterKeyToCurrentAsValue("driverAssigned").build());
            return;
        }
        if (this.c.getCurrentState() == 5) {
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("cancel", "tap").addOuterKeyToCurrentAsValue("driverArrived").build());
        }
    }

    public void reportOnPromoClickedToAppMetrica() {
        if (this.c.getCurrentState() == 4) {
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("discountCode", "tap").addOuterKeyToCurrentAsValue("driverAssigned").build());
        } else if (this.c.getCurrentState() == 5) {
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("discountCode", "tap").addOuterKeyToCurrentAsValue("driverArrived").build());
        } else {
            if (this.c.getCurrentState() == 6) {
                c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("discountCode", "tap").addOuterKeyToCurrentAsValue("Boarded").build());
            }
        }
    }

    public void reportOnOptionClickedToAppMetrica() {
        if (this.c.getCurrentState() == 4) {
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "tap").addOuterKeyToCurrentAsValue("driverAssigned").build());
        } else if (this.c.getCurrentState() == 5) {
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "tap").addOuterKeyToCurrentAsValue("driverArrived").build());
        } else {
            if (this.c.getCurrentState() == 6) {
                c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "tap").addOuterKeyToCurrentAsValue("Boarded").build());
            }
        }
    }

    public void sendMessageToDriver(int i2, String str) {
        if (i2 == 0) {
            this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_MESSAGE_TO_DRIVER_SEND_MESSAGE, "[nowComing]");
        } else if (i2 == 1) {
            this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_MESSAGE_TO_DRIVER_SEND_MESSAGE, "[5MinComing]");
        } else if (i2 == 2) {
            this.e.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_MESSAGE_TO_DRIVER_SEND_MESSAGE, "[callToMe]");
        }
        this.e.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Message To Driver Send Button");
        c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("messageToDriver", str).addOuterKeyToCurrentAsValue("driverArrived").build());
        String rideId = this.c.getRideId();
        if (this.c.getCurrentState() == 5 && rideId != null && !rideId.isEmpty()) {
            addDisposable(this.d.sendMessageToDriver(rideId, i2, str).subscribe(new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    a.this.a((cab.snapp.snappnetwork.model.f) obj);
                }
            }, $$Lambda$a$PEbnLCqKxhd833fseO3GFd8LSdM.INSTANCE));
        }
    }

    public void onMessageToDriverClicked() {
        c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("messageToDriver", "tap").addOuterKeyToCurrentAsValue("driverArrived").build());
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(UpdateOptionsResponse updateOptionsResponse) throws Exception {
        if (updateOptionsResponse != null) {
            if (this.c.getRideInformation() != null) {
                this.c.getRideInformation().setFinalPrice((double) updateOptionsResponse.getTotalPrice());
            }
            this.o = false;
            this.c.setWaitingKey(null);
            this.c.setRoundTrip(false);
            this.c.setSecondDestinationLatLng(null);
            this.c.setOptions(updateOptionsResponse.getOptions());
            this.o = true;
        }
        if (getPresenter() != null) {
            ((c) getPresenter()).onPopOptions();
        }
    }

    static /* synthetic */ void f(a aVar) {
        if (f.isUserConnectedToNetwork(aVar.getActivity()) || aVar.getPresenter() == null) {
            EditOptionsRequest editOptionsRequest = new EditOptionsRequest();
            editOptionsRequest.setTag(String.valueOf(aVar.n));
            if (aVar.c.getServiceType() != 5) {
                if (aVar.c.getSecondDestinationLatLng() != null) {
                    editOptionsRequest.setExtraDestinationLat(Double.valueOf(aVar.c.getSecondDestinationLatLng().latitude));
                    editOptionsRequest.setExtraDestinationLng(Double.valueOf(aVar.c.getSecondDestinationLatLng().longitude));
                }
                if (aVar.c.getWaitingKey() != null) {
                    editOptionsRequest.setWaiting(aVar.c.getWaitingKey());
                }
            }
            editOptionsRequest.setRoundTrip(Boolean.valueOf(aVar.c.isRoundTrip()));
            editOptionsRequest.setPackageDelivery(aVar.c.isPackageDelivery());
            aVar.addDisposable(aVar.d.applyRideOptions(aVar.c.getRideId(), editOptionsRequest).subscribe(new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    a.this.a((UpdateOptionsResponse) obj);
                }
            }, new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    a.this.b((Throwable) obj);
                }
            }));
            return;
        }
        ((c) aVar.getPresenter()).onNoInternetConnection();
    }
}
