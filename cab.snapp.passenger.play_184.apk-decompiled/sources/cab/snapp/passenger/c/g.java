package cab.snapp.passenger.c;

import android.location.Location;
import cab.snapp.b;
import cab.snapp.c.i;
import cab.snapp.deeplink.models.a;
import cab.snapp.deeplink.models.types.Host;
import cab.snapp.deeplink.models.types.PathType;
import cab.snapp.deeplink.models.types.Scheme;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.data.models.BoxOptions;
import cab.snapp.passenger.data.models.DriverInfo;
import cab.snapp.passenger.data.models.FinishRide;
import cab.snapp.passenger.data.models.LocationInfo;
import cab.snapp.passenger.data.models.Options;
import cab.snapp.passenger.data.models.RideInformation;
import cab.snapp.passenger.data.models.RideWaiting;
import cab.snapp.passenger.data.models.SafeCall;
import cab.snapp.passenger.data.models.ServiceTypeModel;
import cab.snapp.passenger.data.models.Vehicle;
import cab.snapp.passenger.data.models.events.AfterAcceptEvent;
import cab.snapp.passenger.data.models.events.CancelEvent;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.network.requests.RideRequest;
import cab.snapp.passenger.data_access_layer.network.responses.CancelRideRequestResponse;
import cab.snapp.passenger.data_access_layer.network.responses.ConfigResponse;
import cab.snapp.passenger.data_access_layer.network.responses.RidePaymentStatusResponse;
import cab.snapp.passenger.data_access_layer.network.responses.RideResponse;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.r;
import cab.snapp.passenger.play.R;
import cab.snapp.snappnetwork.model.f;
import com.google.android.gms.maps.model.LatLng;
import com.google.gson.JsonElement;
import com.google.gson.e;
import io.reactivex.z;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;
import javax.inject.Inject;

public final class g {
    public static final int BOX_OPTIONS_ERROR_CODE = 1993;
    public static final int DEFAULT_INVALID_PLACE_ID = -1000;
    public static final String EMPTY_BOX_OPTIONS_ADDRESS_ERROR = "EMPTY_BOX_OPTIONS_ADDRESS_ERROR";
    public static final String EMPTY_BOX_OPTIONS_ERROR = "EMPTY_BOX_OPTIONS_ERROR";
    public static final String EMPTY_BOX_OPTIONS_NAME_ERROR = "EMPTY_BOX_OPTIONS_NAME_ERROR";
    public static final String EMPTY_BOX_OPTIONS_PHONE_NUMBER_ERROR = "EMPTY_BOX_OPTIONS_PHONE_NUMBER_ERROR";
    public static final String INVALID_BOX_OPTIONS_PHONE_NUMBER_ERROR = "INVALID_BOX_OPTIONS_PHONE_NUMBER_ERROR";
    public static final int RIDE_CANCEL_ERROR_CODE = 2703;
    public static final String RIDE_CANCEL_WRONG_STATE_ERROR = "RIDE_CANCEL_WRONG_STATE_ERROR";
    public static final String RIDE_DATA_MANAGER_CHANNEL_ID = UUID.randomUUID().toString();
    public static final int RIDE_REQUEST_CANCEL_ERROR_CODE = 1372;
    public static final String RIDE_REQUEST_CANCEL_WRONG_STATE_ERROR = "RIDE_REQUEST_CANCEL_WRONG_STATE_ERROR";
    public static final int STATE_DESTINATION_SELECTED = 2;
    public static final int STATE_DRIVER_ARRIVED = 5;
    public static final int STATE_IDLE = 0;
    public static final int STATE_ORIGIN_SELECTED = 1;
    public static final int STATE_PASSENGER_BOARDED = 6;
    public static final int STATE_RIDE_ACCEPTED = 4;
    public static final int STATE_RIDE_FINISHED = 7;
    public static final int STATE_RIDE_REQUESTED = 3;
    public static final int UPDATE_SIGNAL_BOX_OPTIONS = 1011;
    public static final int UPDATE_SIGNAL_DESTINATION_ADDRESS = 1003;
    public static final int UPDATE_SIGNAL_DESTINATION_LAT_LNG = 1002;
    public static final int UPDATE_SIGNAL_DRIVER_LOCATION_INFO = 1012;
    public static final int UPDATE_SIGNAL_OPTIONS = 1004;
    public static final int UPDATE_SIGNAL_ORIGIN_ADDRESS = 1001;
    public static final int UPDATE_SIGNAL_ORIGIN_LAT_LNG = 1000;
    public static final int UPDATE_SIGNAL_PACKAGE_DELIVERY = 1010;
    public static final int UPDATE_SIGNAL_RATING_PASSED = 1013;
    public static final int UPDATE_SIGNAL_REALLOTMENT = 1015;
    public static final int UPDATE_SIGNAL_RIDE_STATE = 2000;
    public static final int UPDATE_SIGNAL_ROUND_TRIP = 1007;
    public static final int UPDATE_SIGNAL_SEC_DESTINATION_ADDRESS = 1006;
    public static final int UPDATE_SIGNAL_SEC_DESTINATION_LAT_LNG = 1005;
    public static final int UPDATE_SIGNAL_SERVICE_TYPE = 1009;
    public static final int UPDATE_SIGNAL_VOUCHER = 1014;
    public static final int UPDATE_SIGNAL_WAITING = 1008;
    private String A;
    private boolean B;
    private boolean C;
    private DriverInfo D;
    private LocationInfo E;
    private RideInformation F;
    private ServiceTypeModel G;
    private SafeCall H;
    private boolean I;
    private boolean J;
    private boolean K;
    private boolean L;
    private boolean M;
    private boolean N;
    private FinishRide O;
    private String P;
    private boolean Q;
    private a R;
    private cab.snapp.a.a S;
    private a T;
    private d U;
    private c V;
    private cab.snapp.passenger.b.a W;

    /* renamed from: a  reason: collision with root package name */
    private b f465a;

    /* renamed from: b  reason: collision with root package name */
    private b f466b;
    private e c;
    private int d = 1;
    private io.reactivex.j.b<Integer> e;
    private io.reactivex.b.c f;
    private io.reactivex.b.c g;
    private io.reactivex.b.c h;
    private int i = 0;
    private LatLng j;
    private String k;
    private LatLng l;
    private String m;
    private String n;
    private int o = -1000;
    private io.reactivex.j.a<RidePaymentStatusResponse> p;
    private List<RideWaiting> q;
    private Options r;
    private LatLng s;
    private String t;
    private boolean u;
    private String v;
    private int w = this.d;
    private boolean x;
    private BoxOptions y;
    private boolean z;

    @Inject
    public g(b bVar, e eVar, d dVar, c cVar, cab.snapp.passenger.b.a aVar, b bVar2) {
        this.f466b = bVar;
        this.c = eVar;
        this.U = dVar;
        this.V = cVar;
        this.W = aVar;
        this.f465a = bVar2;
        this.e = io.reactivex.j.b.create();
        this.p = io.reactivex.j.a.create();
        this.f = bVar2.getObservable().observeOn(io.reactivex.a.b.a.mainThread()).subscribe(new io.reactivex.e.g() {
            public final void accept(Object obj) {
                g.this.a((cab.snapp.a.a) obj);
            }
        }, $$Lambda$g$7arV4rlnWcciK7BWNTOCe2epCyc.INSTANCE);
        this.g = bVar.getConfigObservable().subscribe(new io.reactivex.e.g() {
            public final void accept(Object obj) {
                g.this.a((ConfigResponse) obj);
            }
        });
    }

    /* access modifiers changed from: private */
    public static /* synthetic */ void d(Throwable th) throws Exception {
        com.a.a.a.logException(th);
        th.getMessage();
    }

    public final boolean isInRide() {
        int i2 = this.i;
        return i2 == 4 || i2 == 5 || i2 == 6;
    }

    public final void setDefaultServiceType(int i2) {
        this.d = i2;
        setServiceType(this.d);
    }

    public final a getDeepLink() {
        return this.R;
    }

    public final void setDeepLink(a aVar) {
        if (aVar == null) {
            this.Q = false;
        } else if (aVar.getHost() != null && (aVar.getHost() == Host.Ride || aVar.getHost() == Host.Shortcut)) {
            this.Q = true;
        } else if (aVar.getScheme() == Scheme.Geo) {
            this.Q = true;
        } else if (aVar.getHost() == null || !a(aVar.getHost())) {
            this.Q = false;
        } else {
            this.Q = true;
        }
        this.R = aVar;
    }

    private static boolean a(Host host) {
        return host == Host.Eco || host == Host.Rose || host == Host.Box || host == Host.Bike;
    }

    public final void applyDeepLink() {
        a aVar = this.R;
        if (aVar != null) {
            if (aVar.getHost() != null && (this.R.getHost() == Host.Ride || this.R.getHost() == Host.Shortcut)) {
                if (this.R.getPath1() != null && this.R.getPath1().getType() == PathType.Here) {
                    Location location = this.c.getLocation();
                    if (location != null) {
                        this.j = new LatLng(location.getLatitude(), location.getLongitude());
                    }
                } else if (!(this.R.getPath1() == null || this.R.getPath1().getType() != PathType.Location || this.R.getPath1().getLocation() == null)) {
                    this.j = new LatLng(this.R.getPath1().getLocation().getLatitude(), this.R.getPath1().getLocation().getLongitude());
                }
                if (!(this.j == null || this.R.getPath2() == null)) {
                    this.Q = true;
                    if (this.R.getPath2().getType() == PathType.Selective) {
                        d();
                    } else if (this.R.getPath2().getType() == PathType.Location && this.R.getPath2().getLocation() != null) {
                        d();
                        this.l = new LatLng(this.R.getPath2().getLocation().getLatitude(), this.R.getPath2().getLocation().getLongitude());
                        e();
                    }
                }
            } else if (this.R.getHost() != null && a(this.R.getHost())) {
                if (this.R.getHost() == Host.Eco) {
                    setDefaultServiceType(1);
                } else if (this.R.getHost() == Host.Rose) {
                    setDefaultServiceType(3);
                } else if (this.R.getHost() == Host.Bike) {
                    setDefaultServiceType(7);
                } else if (this.R.getHost() == Host.Box) {
                    setDefaultServiceType(5);
                }
                this.Q = true;
                if (this.R.getPath1() != null) {
                    if (this.R.getPath1().getType() == PathType.Here) {
                        Location location2 = this.c.getLocation();
                        if (location2 != null) {
                            this.j = new LatLng(location2.getLatitude(), location2.getLongitude());
                        }
                    } else if (this.R.getPath1().getType() == PathType.Location && this.R.getPath1().getLocation() != null) {
                        this.j = new LatLng(this.R.getPath1().getLocation().getLatitude(), this.R.getPath1().getLocation().getLongitude());
                    }
                    if (!(this.j == null || this.R.getPath2() == null)) {
                        if (this.R.getPath2().getType() == PathType.Selective) {
                            d();
                        } else if (this.R.getPath2().getType() == PathType.Location && this.R.getPath2().getLocation() != null) {
                            d();
                            this.l = new LatLng(this.R.getPath2().getLocation().getLatitude(), this.R.getPath2().getLocation().getLongitude());
                            e();
                        }
                    }
                }
            } else if (this.R.getScheme() == Scheme.Geo) {
                if (this.j == null) {
                    Location location3 = this.c.getLocation();
                    if (location3 != null) {
                        this.j = new LatLng(location3.getLatitude(), location3.getLongitude());
                    }
                }
                if (!(this.R.getPath2() == null || this.R.getPath2().getType() != PathType.Location || this.R.getPath2().getLocation() == null || this.j == null)) {
                    this.Q = true;
                    this.l = new LatLng(this.R.getPath2().getLocation().getLatitude(), this.R.getPath2().getLocation().getLongitude());
                    e();
                }
            }
            if (this.R.getPath3() != null && this.R.getPath3().getType() == PathType.StringData) {
                this.P = this.R.getPath3().getValue();
                this.e.onNext(1014);
            }
            a aVar2 = new a(this.R.getScheme(), this.R.getHost(), this.R.getPath1(), this.R.getPath2(), this.R.getPath3());
            this.T = aVar2;
            this.R = null;
            this.Q = false;
        }
    }

    /* access modifiers changed from: private */
    public void a(cab.snapp.a.a aVar) {
        cab.snapp.a.a aVar2 = aVar;
        if (!(aVar.getEventType() == null || aVar.getData() == null)) {
            e eVar = new e();
            String eventType = aVar.getEventType();
            char c2 = 65535;
            switch (eventType.hashCode()) {
                case -2140195143:
                    if (eventType.equals(cab.snapp.passenger.b.a.DRIVER_ACCEPTED_RIDE_EVENT)) {
                        c2 = 3;
                        break;
                    }
                    break;
                case -1461395280:
                    if (eventType.equals(cab.snapp.passenger.b.a.NO_DRIVER_ACCEPTED_EVENT)) {
                        c2 = 1;
                        break;
                    }
                    break;
                case -1004510458:
                    if (eventType.equals(cab.snapp.passenger.b.a.ONLINE_PAYMENT_FINISHES_EVENT)) {
                        c2 = 8;
                        break;
                    }
                    break;
                case -977068071:
                    if (eventType.equals(cab.snapp.passenger.b.a.RIDE_FINISHED_EVENT)) {
                        c2 = 6;
                        break;
                    }
                    break;
                case -924393821:
                    if (eventType.equals("POLLING_SIDE_REQUEST")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -795517977:
                    if (eventType.equals(cab.snapp.passenger.b.a.REALLOTMENT_EVENT)) {
                        c2 = 9;
                        break;
                    }
                    break;
                case -658362473:
                    if (eventType.equals(cab.snapp.passenger.b.a.RECEIPT_CHANGE_EVENT)) {
                        c2 = 7;
                        break;
                    }
                    break;
                case -571565216:
                    if (eventType.equals(cab.snapp.passenger.b.a.PASSENGER_BOARDED_EVENT)) {
                        c2 = 5;
                        break;
                    }
                    break;
                case -339102006:
                    if (eventType.equals(cab.snapp.passenger.b.a.RIDE_CANCELLED_EVENT)) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 42105686:
                    if (eventType.equals(cab.snapp.passenger.b.a.DRIVER_ARRIVED_EVENT)) {
                        c2 = 4;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    int i2 = this.i;
                    if (i2 == 4 || i2 == 5 || i2 == 6) {
                        try {
                            Vehicle vehicle = (Vehicle) eVar.fromJson((JsonElement) aVar.getData(), Vehicle.class);
                            if (!(vehicle == null || this.E == null)) {
                                this.E.setBearing(vehicle.getBearing());
                                this.E.setLat(vehicle.getLatestLat());
                                this.E.setLng(vehicle.getLatestLng());
                                this.e.onNext(1012);
                            }
                            return;
                        } catch (Exception e2) {
                            e2.printStackTrace();
                            com.a.a.a.logException(e2);
                            break;
                        }
                    }
                case 1:
                    try {
                        CancelEvent cancelEvent = (CancelEvent) eVar.fromJson((JsonElement) aVar.getData(), CancelEvent.class);
                        if (cancelEvent != null && cancelEvent.getReallottedRideId() != null && this.A.equals(cancelEvent.getReallottedRideId()) && !this.C) {
                            this.C = true;
                            this.A = cancelEvent.getRideId();
                        }
                        if (cancelEvent != null && a(aVar2, cancelEvent.getRideId())) {
                            this.V.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.ALERT_RIDE_IS_NOT_ACCEPTED_YET, "[show]");
                            cab.snapp.snappuikit.b.makeText(BaseApplication.getContext(), (int) R.string.no_driver_accepted).textColor(BaseApplication.getContext().getResources().getColor(R.color.cherry)).show();
                            l();
                        }
                        return;
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        com.a.a.a.logException(e3);
                        return;
                    }
                case 2:
                    try {
                        CancelEvent cancelEvent2 = (CancelEvent) eVar.fromJson((JsonElement) aVar.getData(), CancelEvent.class);
                        if (cancelEvent2 != null && cancelEvent2.getReallottedRideId() != null && this.A.equals(cancelEvent2.getReallottedRideId()) && !this.C) {
                            this.C = true;
                            this.A = cancelEvent2.getRideId();
                        }
                        if (cancelEvent2 != null && a(aVar2, cancelEvent2.getRideId())) {
                            String string = BaseApplication.getContext().getString(R.string.ride_canceled_by_driver);
                            if (!(cancelEvent2 == null || cancelEvent2.getMessage() == null || com.raizlabs.android.dbflow.a.isNullOrEmpty(cancelEvent2.getMessage()))) {
                                string = cancelEvent2.getMessage();
                            }
                            String str = string;
                            this.V.reportEvent(c.e.DRIVER_CANCELED);
                            if (BaseApplication.getTopActivity() != null) {
                                new r(BaseApplication.getTopActivity()).showInformativeDialog(BaseApplication.getContext().getString(R.string.cancel_ride_label), str, 1, false, 0);
                            }
                            if (this.r != null) {
                                if (this.r.getExtraDestination() != null) {
                                    this.s = new LatLng(this.r.getExtraDestination().getLat(), this.r.getExtraDestination().getLng());
                                    this.t = this.r.getExtraDestination().getFormattedAddress();
                                }
                                if (this.r.getRoundTripPrice() > 0.0d) {
                                    this.u = true;
                                }
                                if (this.r.getSnappWaiting() != null) {
                                    this.v = this.r.getSnappWaiting().getKey();
                                }
                                this.r = null;
                            }
                            this.F = null;
                            this.E = null;
                            this.D = null;
                            this.A = null;
                            this.S = null;
                            b();
                            l();
                        }
                        return;
                    } catch (Exception e4) {
                        e4.printStackTrace();
                        com.a.a.a.logException(e4);
                        return;
                    }
                case 3:
                    try {
                        AfterAcceptEvent afterAcceptEvent = (AfterAcceptEvent) eVar.fromJson((JsonElement) aVar.getData(), AfterAcceptEvent.class);
                        a(afterAcceptEvent);
                        if (!(afterAcceptEvent == null || afterAcceptEvent.getRideInformation() == null || !a(aVar2, afterAcceptEvent.getRideInformation().getRideId()))) {
                            if (afterAcceptEvent.getListWaitingTips() != null) {
                                this.q = afterAcceptEvent.getListWaitingTips();
                            }
                            this.F = afterAcceptEvent.getRideInformation();
                            this.D = afterAcceptEvent.getDriverInfo();
                            this.E = afterAcceptEvent.getDriverLocationInfo();
                            if (afterAcceptEvent.getOptions() != null) {
                                this.r = afterAcceptEvent.getOptions();
                                this.u = false;
                                this.v = null;
                                this.s = null;
                                this.t = null;
                            }
                            if (afterAcceptEvent.getServiceTypeModel() != null) {
                                this.G = afterAcceptEvent.getServiceTypeModel();
                            }
                            if (afterAcceptEvent.getSafeCall() != null) {
                                this.H = afterAcceptEvent.getSafeCall();
                            }
                            if (this.F != null) {
                                this.x = this.F.isDelivery();
                                this.w = this.F.getServiceType();
                            }
                            if (this.i != 4) {
                                g();
                            }
                            if (this.C) {
                                this.e.onNext(1015);
                            }
                        }
                        return;
                    } catch (Exception e5) {
                        e5.printStackTrace();
                        com.a.a.a.logException(e5);
                        return;
                    }
                case 4:
                    try {
                        AfterAcceptEvent afterAcceptEvent2 = (AfterAcceptEvent) eVar.fromJson((JsonElement) aVar.getData(), AfterAcceptEvent.class);
                        a(afterAcceptEvent2);
                        if (!(afterAcceptEvent2 == null || afterAcceptEvent2.getRideInformation() == null || !a(aVar2, afterAcceptEvent2.getRideInformation().getRideId()))) {
                            if (afterAcceptEvent2.getListWaitingTips() != null) {
                                this.q = afterAcceptEvent2.getListWaitingTips();
                            }
                            this.F = afterAcceptEvent2.getRideInformation();
                            this.D = afterAcceptEvent2.getDriverInfo();
                            this.E = afterAcceptEvent2.getDriverLocationInfo();
                            if (afterAcceptEvent2.getOptions() != null) {
                                this.r = afterAcceptEvent2.getOptions();
                                this.u = false;
                                this.v = null;
                                this.s = null;
                                this.t = null;
                            }
                            if (afterAcceptEvent2.getServiceTypeModel() != null) {
                                this.G = afterAcceptEvent2.getServiceTypeModel();
                            }
                            if (this.F != null) {
                                this.x = this.F.isDelivery();
                                this.w = this.F.getServiceType();
                            }
                            if (this.i != 5) {
                                this.I = true;
                                h();
                            }
                            if (this.C) {
                                this.e.onNext(1015);
                            }
                        }
                        return;
                    } catch (Exception e6) {
                        e6.printStackTrace();
                        com.a.a.a.logException(e6);
                        return;
                    }
                case 5:
                    try {
                        AfterAcceptEvent afterAcceptEvent3 = (AfterAcceptEvent) eVar.fromJson((JsonElement) aVar.getData(), AfterAcceptEvent.class);
                        a(afterAcceptEvent3);
                        if (!(afterAcceptEvent3 == null || afterAcceptEvent3.getRideInformation() == null || !a(aVar2, afterAcceptEvent3.getRideInformation().getRideId()))) {
                            if (afterAcceptEvent3.getListWaitingTips() != null) {
                                this.q = afterAcceptEvent3.getListWaitingTips();
                            }
                            this.F = afterAcceptEvent3.getRideInformation();
                            this.D = afterAcceptEvent3.getDriverInfo();
                            this.E = afterAcceptEvent3.getDriverLocationInfo();
                            if (afterAcceptEvent3.getOptions() != null) {
                                this.r = afterAcceptEvent3.getOptions();
                                this.u = false;
                                this.v = null;
                                this.s = null;
                                this.t = null;
                            }
                            if (afterAcceptEvent3.getServiceTypeModel() != null) {
                                this.G = afterAcceptEvent3.getServiceTypeModel();
                            }
                            if (this.F != null) {
                                this.x = this.F.isDelivery();
                                this.w = this.F.getServiceType();
                            }
                            if (this.i != 6) {
                                this.J = true;
                                i();
                            }
                            if (this.C) {
                                this.e.onNext(1015);
                            }
                        }
                        return;
                    } catch (Exception e7) {
                        e7.printStackTrace();
                        com.a.a.a.logException(e7);
                        return;
                    }
                case 6:
                    try {
                        AfterAcceptEvent afterAcceptEvent4 = (AfterAcceptEvent) eVar.fromJson((JsonElement) aVar.getData(), AfterAcceptEvent.class);
                        a(afterAcceptEvent4);
                        if (!(afterAcceptEvent4 == null || afterAcceptEvent4.getRideInformation() == null || !a(aVar2, afterAcceptEvent4.getRideInformation().getRideId()))) {
                            this.F = afterAcceptEvent4.getRideInformation();
                            this.D = afterAcceptEvent4.getDriverInfo();
                            this.L = true;
                            this.N = false;
                            if (this.F != null) {
                                this.x = this.F.isDelivery();
                                this.w = this.F.getServiceType();
                            }
                            if (this.i != 7) {
                                j();
                            }
                        }
                        return;
                    } catch (Exception e8) {
                        e8.printStackTrace();
                        com.a.a.a.logException(e8);
                        return;
                    }
                case 7:
                case 8:
                    return;
                case 9:
                    a((AfterAcceptEvent) eVar.fromJson((JsonElement) aVar.getData(), AfterAcceptEvent.class));
                    if (this.C) {
                        k();
                        this.e.onNext(1015);
                        break;
                    }
                    break;
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0037, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized void a(cab.snapp.passenger.data.models.events.AfterAcceptEvent r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            boolean r0 = r2.C     // Catch:{ all -> 0x0038 }
            if (r0 == 0) goto L_0x0007
            monitor-exit(r2)
            return
        L_0x0007:
            cab.snapp.passenger.data.models.RideInformation r0 = r3.getRideInformation()     // Catch:{ all -> 0x0038 }
            if (r0 == 0) goto L_0x0036
            cab.snapp.passenger.data.models.RideInformation r0 = r3.getRideInformation()     // Catch:{ all -> 0x0038 }
            java.lang.String r0 = r0.getReallottedRideId()     // Catch:{ all -> 0x0038 }
            if (r0 == 0) goto L_0x0036
            java.lang.String r0 = r2.A     // Catch:{ all -> 0x0038 }
            cab.snapp.passenger.data.models.RideInformation r1 = r3.getRideInformation()     // Catch:{ all -> 0x0038 }
            java.lang.String r1 = r1.getReallottedRideId()     // Catch:{ all -> 0x0038 }
            boolean r0 = r0.equals(r1)     // Catch:{ all -> 0x0038 }
            if (r0 == 0) goto L_0x0036
            r0 = 1
            r2.C = r0     // Catch:{ all -> 0x0038 }
            cab.snapp.passenger.data.models.RideInformation r3 = r3.getRideInformation()     // Catch:{ all -> 0x0038 }
            java.lang.String r3 = r3.getRideId()     // Catch:{ all -> 0x0038 }
            r2.A = r3     // Catch:{ all -> 0x0038 }
            monitor-exit(r2)
            return
        L_0x0036:
            monitor-exit(r2)
            return
        L_0x0038:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: cab.snapp.passenger.c.g.a(cab.snapp.passenger.data.models.events.AfterAcceptEvent):void");
    }

    public final void updatePaymentStatus() {
        if (getRideInformation() == null || getRideInformation().getFinalPrice() > 0.0d) {
            z<RidePaymentStatusResponse> ridePaymentStatus = this.U.getRidePaymentStatus(this.A);
            io.reactivex.j.a<RidePaymentStatusResponse> aVar = this.p;
            aVar.getClass();
            this.h = ridePaymentStatus.subscribe(new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    io.reactivex.j.a.this.onNext((RidePaymentStatusResponse) obj);
                }
            }, new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    g.this.c((Throwable) obj);
                }
            });
            return;
        }
        cleanRidePaymentStatusText();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void c(Throwable th) throws Exception {
        RidePaymentStatusResponse ridePaymentStatusResponse = new RidePaymentStatusResponse();
        ridePaymentStatusResponse.setStatus(-1);
        ridePaymentStatusResponse.setText("");
        this.p.onNext(ridePaymentStatusResponse);
    }

    private synchronized boolean a(cab.snapp.a.a aVar, String str) {
        if (this.A == null) {
            this.S = aVar;
            return false;
        } else if (!this.A.equals(str)) {
            this.S = aVar;
            return false;
        } else if (this.S == null) {
            this.S = aVar;
            return true;
        } else if (aVar.getEventId().equals(this.S.getEventId())) {
            this.S = aVar;
            return false;
        } else {
            this.S = aVar;
            return true;
        }
    }

    public final void handleRefreshedConfigForRideState(ConfigResponse configResponse) {
        if ((configResponse != null && (configResponse.getRide() != null || configResponse.getWaitingRide() != null)) || configResponse.getNeedRate() != null) {
            a(configResponse);
        }
    }

    /* access modifiers changed from: private */
    public void a(ConfigResponse configResponse) {
        if (configResponse != null) {
            this.M = configResponse.isSkippableRating();
            this.H = configResponse.getSafeCall();
            this.O = configResponse.getNeedRate();
            if (configResponse.getRide() == null && configResponse.getWaitingRide() == null) {
                if (isInRide() || this.i == 3) {
                    reset();
                }
            } else if (configResponse.getWaitingRide() == null || configResponse.getWaitingRide().getRideInformation() == null) {
                this.E = configResponse.getRide().getDriverLocationInfo();
                this.D = configResponse.getRide().getDriverInfo();
                this.q = configResponse.getRide().getRideWaitingList();
                this.r = configResponse.getRide().getOptions();
                this.G = configResponse.getRide().getServiceType();
                this.F = configResponse.getRide().getRideInformation();
                RideInformation rideInformation = this.F;
                if (rideInformation != null) {
                    this.w = rideInformation.getServiceType();
                    this.x = this.F.isDelivery();
                    this.A = this.F.getRideId();
                    if (this.F.getOrigin() != null) {
                        this.j = new LatLng(this.F.getOrigin().getLat(), this.F.getOrigin().getLng());
                        this.k = this.F.getOrigin().getFormattedAddress();
                        this.i = 1;
                    }
                    if (this.F.getDestination() != null) {
                        this.l = new LatLng(this.F.getDestination().getLat(), this.F.getDestination().getLng());
                        this.m = this.F.getDestination().getFormattedAddress();
                        this.i = 2;
                    }
                    int currentState = this.F.getCurrentState();
                    if (currentState != 1) {
                        if (currentState == 2) {
                            this.B = true;
                            g();
                            a();
                        } else if (currentState == 3) {
                            this.B = true;
                            this.I = true;
                            h();
                            a();
                        } else if (currentState == 4) {
                            this.B = true;
                            this.I = true;
                            this.J = true;
                            i();
                            a();
                        } else if (currentState == 5) {
                            this.B = true;
                            this.I = true;
                            this.J = true;
                            this.L = true;
                            j();
                        } else if (currentState == 16) {
                            this.B = true;
                            this.I = true;
                            this.J = true;
                            i();
                            a();
                        } else if (currentState != 17) {
                            reset();
                        } else {
                            this.B = true;
                            this.I = true;
                            this.J = true;
                            i();
                            a();
                        }
                    }
                    if (!this.L && this.F.getReallottedRideId() != null) {
                        this.C = true;
                        this.e.onNext(1015);
                    }
                }
            } else {
                this.A = configResponse.getWaitingRide().getRideInformation().getRideId();
                this.w = configResponse.getWaitingRide().getRideInformation().getServiceType();
                this.G = configResponse.getWaitingRide().getServiceType();
                this.q = configResponse.getWaitingRide().getRideWaitingList();
                if (configResponse.getWaitingRide().getRideInformation().getOrigin() != null) {
                    this.j = new LatLng(configResponse.getWaitingRide().getRideInformation().getOrigin().getLat(), configResponse.getWaitingRide().getRideInformation().getOrigin().getLng());
                }
                if (configResponse.getWaitingRide().getRideInformation().getDestination() != null) {
                    this.l = new LatLng(configResponse.getWaitingRide().getRideInformation().getDestination().getLat(), configResponse.getWaitingRide().getRideInformation().getDestination().getLng());
                }
                if (configResponse.getWaitingRide().getOptions() != null) {
                    this.r = configResponse.getWaitingRide().getOptions();
                    Options options = this.r;
                    if (!(options == null || options.getExtraDestination() == null)) {
                        this.t = this.r.getExtraDestination().getFormattedAddress();
                        this.s = new LatLng(this.r.getExtraDestination().getLat(), this.r.getExtraDestination().getLng());
                    }
                    Options options2 = this.r;
                    this.u = options2 != null && options2.getRoundTripPrice() > 0.0d;
                    Options options3 = this.r;
                    if (!(options3 == null || options3.getSnappWaiting() == null)) {
                        this.v = this.r.getSnappWaiting().getKey();
                    }
                }
                a();
                if (configResponse.getWaitingRide().getRideInformation().getReallottedRideId() != null) {
                    this.C = true;
                    k();
                    this.e.onNext(1015);
                    return;
                }
                this.B = true;
                f();
            }
        }
    }

    private void a() {
        b bVar = this.f466b;
        ConfigResponse config = bVar != null ? bVar.getConfig() : null;
        this.W.setRideId(this.A);
        this.f465a.init();
        this.f465a.start("POLING", cab.snapp.d.a.c.TAG);
        if (config == null || config.getSnappPusher() == null || config.getSnappPusher().isEnabled()) {
            this.f465a.start(cab.snapp.d.c.c.TAG);
        }
        if (isInRide()) {
            this.f465a.start("POLUNG_SIDE_REQUEST");
        }
    }

    private void b() {
        this.S = null;
        this.f465a.stop(new String[0]);
    }

    public final void checkAndStartEventManagerIfNeeded() {
        a();
    }

    private void c() {
        switch (this.i) {
            case 0:
                d();
                break;
            case 1:
                e();
                return;
            case 2:
                f();
                return;
            case 3:
                g();
                return;
            case 4:
                h();
                return;
            case 5:
                i();
                return;
            case 6:
                j();
                return;
            case 7:
                if (this.N) {
                    reset();
                    break;
                }
                break;
        }
    }

    public final boolean stateUp() {
        switch (this.i) {
            case 0:
                return false;
            case 1:
                this.C = false;
                this.j = null;
                this.k = null;
                this.i = 0;
                this.e.onNext(2000);
                this.V.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_BACK_TO_SET_ORIGIN, "[tap]");
                return true;
            case 2:
                this.C = false;
                this.P = null;
                this.l = null;
                this.m = null;
                this.n = null;
                this.o = -1000;
                this.w = this.d;
                this.x = false;
                this.y = null;
                this.r = null;
                this.q = null;
                this.s = null;
                this.t = null;
                this.u = false;
                this.v = null;
                this.i = 1;
                this.e.onNext(2000);
                this.V.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_BACK_TO_SET_DESTINATION, "[tap]");
                return true;
            default:
                return false;
        }
    }

    private void d() {
        if (this.j != null) {
            this.i = 1;
            this.e.onNext(2000);
            t();
        }
    }

    private void e() {
        if (this.l != null) {
            this.i = 2;
            this.e.onNext(2000);
            u();
        }
    }

    private void f() {
        if (this.w != 0 && this.B) {
            this.C = false;
            this.i = 3;
            this.e.onNext(2000);
        }
    }

    private void g() {
        if (this.F != null && this.D != null) {
            updatePaymentStatus();
            r();
            this.f465a.start("POLUNG_SIDE_REQUEST");
            this.i = 4;
            this.e.onNext(2000);
            if (this.F.getDestination() != null) {
                Location location = new Location("gps");
                location.setLatitude(this.F.getDestination().getLat());
                location.setLongitude(this.F.getDestination().getLng());
                this.c.saveLocation(location);
            }
        }
    }

    private void h() {
        q();
        if (this.I) {
            updatePaymentStatus();
            this.i = 5;
            this.e.onNext(2000);
        }
    }

    private void i() {
        if (this.J) {
            updatePaymentStatus();
            s();
            this.i = 6;
            this.e.onNext(2000);
        }
    }

    private void j() {
        if (this.L) {
            this.C = false;
            this.i = 7;
            this.e.onNext(2000);
            v();
            w();
            b();
            cleanRidePaymentStatusText();
        }
    }

    public final void cleanRidePaymentStatusText() {
        RidePaymentStatusResponse ridePaymentStatusResponse = new RidePaymentStatusResponse();
        ridePaymentStatusResponse.setText("");
        ridePaymentStatusResponse.setStatus(-2);
        this.p.onNext(ridePaymentStatusResponse);
    }

    private void k() {
        this.B = true;
        this.i = 3;
        this.e.onNext(2000);
    }

    private void l() {
        this.B = false;
        this.C = false;
        this.i = 2;
        this.e.onNext(2000);
    }

    public final z<f> cancelRide() {
        int i2 = this.i;
        if (i2 == 4 || i2 == 5) {
            String str = this.A;
            if (str != null) {
                return this.U.cancelRide(str).doOnNext(new io.reactivex.e.g() {
                    public final void accept(Object obj) {
                        g.this.a((f) obj);
                    }
                });
            }
        }
        return z.error((Throwable) new cab.snapp.passenger.data_access_layer.a.e(null, RIDE_CANCEL_ERROR_CODE, RIDE_CANCEL_WRONG_STATE_ERROR));
    }

    public final z<CancelRideRequestResponse> cancelRideRequest() {
        if (this.i == 3) {
            String str = this.A;
            if (str != null) {
                return this.U.cancelRideRequest(str).doOnNext(new io.reactivex.e.g() {
                    public final void accept(Object obj) {
                        g.this.a((CancelRideRequestResponse) obj);
                    }
                }).doOnError(new io.reactivex.e.g() {
                    public final void accept(Object obj) {
                        g.this.b((Throwable) obj);
                    }
                });
            }
        }
        return z.error((Throwable) new cab.snapp.passenger.data_access_layer.a.e(null, RIDE_REQUEST_CANCEL_ERROR_CODE, RIDE_REQUEST_CANCEL_WRONG_STATE_ERROR));
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(CancelRideRequestResponse cancelRideRequestResponse) throws Exception {
        boolean z2 = false;
        if (cancelRideRequestResponse == null || cancelRideRequestResponse.getRideInformation() == null) {
            Options options = this.r;
            if (options != null) {
                if (options.getExtraDestination() != null) {
                    this.t = this.r.getExtraDestination().getFormattedAddress();
                    this.s = new LatLng(this.r.getExtraDestination().getLat(), this.r.getExtraDestination().getLng());
                }
                if (this.r.getRoundTripPrice() > 0.0d) {
                    z2 = true;
                }
                this.u = z2;
                if (this.r.getSnappWaiting() != null) {
                    this.v = this.r.getSnappWaiting().getKey();
                }
            }
            b();
            l();
        } else if (cancelRideRequestResponse.getRideInformation().getCurrentState() != 0) {
            this.D = cancelRideRequestResponse.getDriverInfo();
            this.F = cancelRideRequestResponse.getRideInformation();
            this.E = cancelRideRequestResponse.getLocationInfo();
            if (this.r == null && cancelRideRequestResponse.getOptions() != null) {
                this.r = cancelRideRequestResponse.getOptions();
            }
            if (cancelRideRequestResponse.getRideInformation().getCurrentState() == 2) {
                g();
            } else if (cancelRideRequestResponse.getRideInformation().getCurrentState() == 3) {
                this.I = true;
                h();
            } else if (cancelRideRequestResponse.getRideInformation().getCurrentState() == 4) {
                this.I = true;
                this.J = true;
                i();
            }
        } else {
            Options options2 = this.r;
            if (options2 != null) {
                if (options2.getExtraDestination() != null) {
                    this.t = this.r.getExtraDestination().getFormattedAddress();
                    this.s = new LatLng(this.r.getExtraDestination().getLat(), this.r.getExtraDestination().getLng());
                }
                if (this.r.getRoundTripPrice() > 0.0d) {
                    z2 = true;
                }
                this.u = z2;
                if (this.r.getSnappWaiting() != null) {
                    this.v = this.r.getSnappWaiting().getKey();
                }
            }
            b();
            l();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(Throwable th) throws Exception {
        if ((th instanceof cab.snapp.passenger.data_access_layer.a.e) && ((cab.snapp.passenger.data_access_layer.a.e) th).getErrorCode() == 1020) {
            b();
            l();
        }
    }

    public final z<RideResponse> requestRide() {
        if (this.j == null || this.l == null) {
            IllegalArgumentException illegalArgumentException = new IllegalArgumentException("originLatLng or destination LatLng can't be null");
            com.a.a.a.logException(illegalArgumentException);
            throw illegalArgumentException;
        }
        RideRequest rideRequest = new RideRequest();
        if (this.x) {
            if (this.y == null) {
                return z.error((Throwable) new cab.snapp.passenger.data_access_layer.a.e(null, BOX_OPTIONS_ERROR_CODE, EMPTY_BOX_OPTIONS_ERROR));
            }
            if (m() && n() && o()) {
                rideRequest.setPackageInfo(this.y.getDescription());
                rideRequest.setExtraInfo(this.y.getAddress());
                rideRequest.setRecipientName(this.y.getFullName());
                rideRequest.setRecipientCellphone(this.y.getPhoneNumber());
                rideRequest.setPaidByRecipient(this.y.isPaidByRecipient());
            } else if (!n()) {
                return z.error((Throwable) new cab.snapp.passenger.data_access_layer.a.e(null, BOX_OPTIONS_ERROR_CODE, EMPTY_BOX_OPTIONS_NAME_ERROR));
            } else {
                if (!m()) {
                    return z.error((Throwable) new cab.snapp.passenger.data_access_layer.a.e(null, BOX_OPTIONS_ERROR_CODE, EMPTY_BOX_OPTIONS_ADDRESS_ERROR));
                }
                if (!o()) {
                    return z.error((Throwable) new cab.snapp.passenger.data_access_layer.a.e(null, BOX_OPTIONS_ERROR_CODE, EMPTY_BOX_OPTIONS_PHONE_NUMBER_ERROR));
                }
                if (!p()) {
                    return z.error((Throwable) new cab.snapp.passenger.data_access_layer.a.e(null, BOX_OPTIONS_ERROR_CODE, INVALID_BOX_OPTIONS_PHONE_NUMBER_ERROR));
                }
            }
        }
        rideRequest.setPackageDelivery(this.x);
        rideRequest.setOriginLatitude(this.j.latitude);
        rideRequest.setOriginLongitude(this.j.longitude);
        rideRequest.setDestinationLatitude(this.l.latitude);
        rideRequest.setDestinationLongitude(this.l.longitude);
        String str = this.n;
        if (str != null && !str.isEmpty()) {
            rideRequest.setDestinationDetails(this.n);
        }
        if (this.w != 5) {
            LatLng latLng = this.s;
            if (latLng != null) {
                rideRequest.setExtraDestinationLatitude(Double.valueOf(latLng.latitude));
                rideRequest.setExtraDestinationLongitude(Double.valueOf(this.s.longitude));
            }
            rideRequest.setWaitingKey(this.v);
        }
        rideRequest.setRoundTrip(this.u);
        String str2 = this.P;
        if (str2 != null && !str2.isEmpty()) {
            rideRequest.setVoucherCode(this.P);
        }
        rideRequest.setServiceType(this.w);
        return this.U.requestRide(rideRequest).doOnNext(new io.reactivex.e.g() {
            public final void accept(Object obj) {
                g.this.a((RideResponse) obj);
            }
        }).doOnError(new io.reactivex.e.g() {
            public final void accept(Object obj) {
                g.this.a((Throwable) obj);
            }
        });
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(RideResponse rideResponse) throws Exception {
        String str;
        if (rideResponse != null) {
            this.A = rideResponse.getRideId();
            a();
            setRideRequested(true);
            int i2 = this.w;
            String str2 = "";
            if (i2 == 1) {
                str2 = c.a.ECO_SERVICE_TYPE_BOARDED;
                str = "eco";
            } else if (i2 == 2) {
                str2 = c.a.PLUS_SERVICE_TYPE_BOARDED;
                str = "plus";
            } else if (i2 == 3) {
                str2 = c.a.ROSE_SERVICE_TYPE_BOARDED;
                str = "rose";
            } else if (i2 != 5) {
                str = i2 != 7 ? str2 : "bike";
            } else {
                str2 = c.a.BOX_SERVICE_TYPE_BOARDED;
                str = "box";
            }
            HashMap hashMap = new HashMap();
            hashMap.put("serviceType", str);
            this.V.reportEvent(c.e.RIDE_REQUEST, hashMap);
            if (this.V.hasUserEmailProvided()) {
                c cVar = this.V;
                cVar.sendWithAttributesViaAdjust(str2, cVar.getUserEmail(), this.A);
            }
            a aVar = this.T;
            if (aVar != null) {
                if (aVar.getScheme() == Scheme.Geo) {
                    this.V.sendAnalyticsEvent(c.C0021c.INTEGRATION, c.b.INTENT, "Deep Link Geo Request");
                    return;
                }
                this.V.sendAnalyticsEvent(c.C0021c.INTEGRATION, c.b.INTENT, "Deep Link Request");
            }
            return;
        }
        b();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Throwable th) throws Exception {
        b();
    }

    public final boolean areBoxOptionsValid() {
        if (this.x) {
            if (!n()) {
                cab.snapp.snappuikit.b.makeText(BaseApplication.getContext(), (int) R.string.enter_full_name).textColor(BaseApplication.getContext().getResources().getColor(R.color.cherry)).show();
                return false;
            } else if (!o()) {
                cab.snapp.snappuikit.b.makeText(BaseApplication.getContext(), (int) R.string.error_enter_phone_number).textColor(BaseApplication.getContext().getResources().getColor(R.color.cherry)).show();
                return false;
            } else if (!p()) {
                cab.snapp.snappuikit.b.makeText(BaseApplication.getContext(), (int) R.string.error_mobile_not_correct).textColor(BaseApplication.getContext().getResources().getColor(R.color.cherry)).show();
                return false;
            } else if (!m()) {
                cab.snapp.snappuikit.b.makeText(BaseApplication.getContext(), (int) R.string.error_address_required).textColor(BaseApplication.getContext().getResources().getColor(R.color.cherry)).show();
                return false;
            }
        }
        return true;
    }

    private boolean m() {
        return this.y.getAddress() != null && !this.y.getAddress().isEmpty();
    }

    private boolean n() {
        return this.y.getFullName() != null && !this.y.getFullName().isEmpty();
    }

    private boolean o() {
        return this.y.getPhoneNumber() != null && !this.y.getPhoneNumber().isEmpty();
    }

    private boolean p() {
        return i.isPhoneNumberValid(this.y.getPhoneNumber());
    }

    public final void reportVoucherIsValidToMarketing() {
        if (!isInRide()) {
            this.V.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_PRE_RIDE_VOUCHER, "[successful]");
        }
        if (this.i == 4) {
            this.V.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_ASSIGNED_VOUCHER, "[successful]");
        }
    }

    public final void reportVoucherIsNotValidToMarketing() {
        if (!isInRide()) {
            this.V.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_PRE_RIDE_VOUCHER, "[failed]");
        }
        if (this.i == 4) {
            this.V.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_ASSIGNED_VOUCHER, "[failed]");
        }
    }

    private void q() {
        c cVar = this.V;
        String str = c.C0021c.RIDE;
        String str2 = c.b.ARRIVED;
        cVar.sendAnalyticsEvent(str, str2, str2);
    }

    private void r() {
        this.V.reportEvent(c.e.ACCEPTED_OFFER_BY_DRIVER);
        c cVar = this.V;
        String str = c.C0021c.RIDE;
        String str2 = c.b.Assigned;
        cVar.sendAnalyticsEvent(str, str2, str2);
        a aVar = this.T;
        if (aVar != null) {
            if (aVar.getScheme() == Scheme.Geo) {
                this.V.sendAnalyticsEvent(c.C0021c.INTEGRATION, c.b.INTENT, "Deep Link Geo Assigned");
            } else {
                this.V.sendAnalyticsEvent(c.C0021c.INTEGRATION, c.b.INTENT, "Deep Link Assigned");
            }
            this.T = null;
        }
    }

    private void s() {
        HashMap hashMap = new HashMap();
        int i2 = this.w;
        hashMap.put("serviceType", i2 != 1 ? i2 != 3 ? i2 != 5 ? i2 != 7 ? "" : "bike" : "box" : "rose" : "eco");
        this.V.reportEvent(c.e.BOARDED, hashMap);
        if (this.K && isItTheFirstTime("FIRST_TIME_PASSENGER_BOARDED_SHARED_PREF_KEY") && this.V.hasUserEmailProvided()) {
            this.V.sendWithAttributesViaAdjust(c.a.FIRST_TIME_PASSENGER_BOARDED, this.V.getUserEmail(), this.A);
            this.V.sendWithAttributesViaAdjust(c.a.FIRST_RIDE_GHOST, this.V.getUserEmail(), this.A);
            if (this.V.hasUserPhoneProvided()) {
                this.V.sendWithAttributesViaAppmetrica(c.d.FIRST_RIDE_BOARDED, this.V.getUserEmail(), this.A, this.V.getUserCellPhone());
            }
        }
        c cVar = this.V;
        String str = c.C0021c.RIDE;
        String str2 = c.b.BOARDED;
        cVar.sendAnalyticsEvent(str, str2, str2);
    }

    public final boolean isItTheFirstTime(String str) {
        cab.snapp.b.a aVar = new cab.snapp.b.a(BaseApplication.getContext());
        if (aVar.containsKey(str) && (aVar.get(str) instanceof Boolean) && ((Boolean) aVar.get(str)).booleanValue()) {
            return false;
        }
        aVar.put(str, Boolean.TRUE);
        return true;
    }

    private void t() {
        this.V.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_SET_ORIGIN, "[map]");
        HashMap hashMap = new HashMap();
        hashMap.put("coordinate", String.valueOf(this.j.latitude) + "," + String.valueOf(this.j.longitude));
        this.V.reportEvent(c.e.ORIGIN_SET, hashMap);
        this.V.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Fix Origin");
    }

    private void u() {
        this.V.sendAnalyticsEvent(c.C0021c.UX, c.b.CLICK, "Fix Destination");
        this.V.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_SET_DESTINATION, "[map]");
        HashMap hashMap = new HashMap();
        hashMap.put("coordinate", String.valueOf(this.l.latitude) + "," + String.valueOf(this.l.longitude));
        this.V.reportEvent(c.e.DESTINATION_SET, hashMap);
    }

    private void v() {
        if (this.F != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("amount", String.valueOf(this.F.getFinalPrice()));
            this.V.reportEvent(c.e.RIDE_COST, hashMap);
            HashMap hashMap2 = new HashMap();
            hashMap2.put("amount", String.valueOf(this.V.getUserCredit()));
            this.V.reportEvent(c.e.EXISTING_CREDIT, hashMap2);
        }
    }

    private void w() {
        if (this.V.hasUserEmailProvided()) {
            this.V.sendWithAttributesViaAdjust(c.a.FINISH_RIDE, this.V.getUserEmail(), this.A);
        }
    }

    public final void setNeedConfirmRideRequest(boolean z2) {
        this.K = z2;
    }

    public final void setHasDriverArrived(boolean z2) {
        this.I = z2;
        c();
    }

    public final FinishRide getFinishedRide() {
        return this.O;
    }

    public final int getCurrentState() {
        return this.i;
    }

    public final LatLng getOriginLatLng() {
        return this.j;
    }

    public final void setOriginLatLng(LatLng latLng) {
        if (this.i == 0) {
            this.j = latLng;
            this.e.onNext(1000);
            c();
        }
    }

    public final String getOriginFormattedAddress() {
        return this.k;
    }

    public final void setOriginFormattedAddress(String str) {
        this.k = str;
        this.e.onNext(1001);
        c();
    }

    public final LatLng getDestinationLatLng() {
        return this.l;
    }

    public final void setDestinationLatLng(LatLng latLng) {
        if (this.i == 1) {
            this.l = latLng;
            this.e.onNext(1002);
            c();
        }
    }

    public final String getDestinationFormattedAddress() {
        return this.m;
    }

    public final void setDestinationFormattedAddress(String str) {
        this.m = str;
        this.e.onNext(1003);
        c();
    }

    public final String getDestinationFormattedDetailsAddress() {
        return this.n;
    }

    public final void setDestinationFormattedDetailsAddress(String str) {
        this.n = str;
    }

    public final String getVoucher() {
        return this.P;
    }

    public final void setVoucher(String str) {
        this.P = str;
        this.e.onNext(1014);
        c();
    }

    public final List<RideWaiting> getRideWaitingList() {
        return this.q;
    }

    public final void setRideWaitingList(List<RideWaiting> list) {
        this.q = list;
        c();
    }

    public final Options getOptions() {
        return this.r;
    }

    public final void setOptions(Options options) {
        this.r = options;
        this.e.onNext(1004);
        c();
    }

    public final LatLng getSecondDestinationLatLng() {
        return this.s;
    }

    public final void setSecondDestinationLatLng(LatLng latLng) {
        this.s = latLng;
        this.e.onNext(1005);
        c();
    }

    public final String getSecondDestinationFormattedAddress() {
        return this.t;
    }

    public final void setSecondDestinationFormattedAddress(String str) {
        this.t = str;
        this.e.onNext(1006);
        c();
    }

    public final boolean hasRideDeeplink() {
        return this.Q;
    }

    public final boolean isRideFree() {
        return this.z;
    }

    public final void setRideFree(boolean z2) {
        this.z = z2;
    }

    public final boolean isRoundTrip() {
        return this.u;
    }

    public final void setRoundTrip(boolean z2) {
        this.u = z2;
        this.e.onNext(1007);
        c();
    }

    public final String getWaitingKey() {
        return this.v;
    }

    public final void setWaitingKey(String str) {
        this.v = str;
        this.e.onNext(1008);
        c();
    }

    public final int getServiceType() {
        return this.w;
    }

    public final void setServiceType(int i2) {
        this.w = i2;
        this.e.onNext(1009);
        c();
    }

    public final boolean isPackageDelivery() {
        return this.x;
    }

    public final void setPackageDelivery(boolean z2) {
        this.x = z2;
        this.e.onNext(1010);
        c();
    }

    public final BoxOptions getBoxOptions() {
        return this.y;
    }

    public final void setBoxOptions(BoxOptions boxOptions) {
        this.y = boxOptions;
        this.e.onNext(1011);
        c();
    }

    public final boolean isRideRequested() {
        return this.B;
    }

    public final void setRideRequested(boolean z2) {
        this.B = z2;
        c();
    }

    public final DriverInfo getDriverInfo() {
        return this.D;
    }

    public final void setDriverInfo(DriverInfo driverInfo) {
        this.D = driverInfo;
        c();
    }

    public final LocationInfo getDriverLocationInfo() {
        return this.E;
    }

    public final void setDriverLocationInfo(LocationInfo locationInfo) {
        this.E = locationInfo;
        c();
    }

    public final RideInformation getRideInformation() {
        return this.F;
    }

    public final void setRideInformation(RideInformation rideInformation) {
        this.F = rideInformation;
        c();
    }

    public final ServiceTypeModel getServiceTypeModel() {
        return this.G;
    }

    public final void setServiceTypeModel(ServiceTypeModel serviceTypeModel) {
        this.G = serviceTypeModel;
        c();
    }

    public final SafeCall getSafeCall() {
        return this.H;
    }

    public final void setSafeCall(SafeCall safeCall) {
        this.H = safeCall;
        c();
    }

    public final boolean isRatingSkippable() {
        return this.M;
    }

    public final void setRatingSkippable(boolean z2) {
        this.M = z2;
        c();
    }

    public final z<Integer> getUpdateSignalObservable() {
        return this.e;
    }

    public final boolean hasDriverArrived() {
        return this.I;
    }

    public final boolean isPassengerBoarded() {
        return this.J;
    }

    public final void setPassengerBoarded(boolean z2) {
        this.J = z2;
        c();
    }

    public final boolean isRideFinished() {
        return this.L;
    }

    public final void setRideFinished(boolean z2) {
        this.L = z2;
        c();
    }

    public final boolean isRatingPassed() {
        return this.N;
    }

    public final void setRatingPassed(boolean z2) {
        this.N = z2;
        c();
    }

    public final String getRideId() {
        return this.A;
    }

    public final void setRideId(String str) {
        this.A = str;
    }

    public final int getDestinationPlaceId() {
        return this.o;
    }

    public final void setDestinationPlaceId(int i2) {
        this.o = i2;
    }

    public final boolean isRideReallotted() {
        return this.C;
    }

    public final z<RidePaymentStatusResponse> getPaymentStatusObservable() {
        return this.p.hide();
    }

    public final void reset() {
        this.P = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.o = -1000;
        this.q = null;
        this.r = null;
        this.s = null;
        this.t = null;
        this.u = false;
        this.v = null;
        this.x = false;
        this.y = null;
        this.B = false;
        this.D = null;
        this.E = null;
        this.F = null;
        this.G = null;
        this.I = false;
        this.J = false;
        this.L = false;
        this.N = false;
        this.O = null;
        this.S = null;
        setDefaultServiceType(1);
        setServiceType(1);
        this.i = 0;
        this.e.onNext(2000);
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(f fVar) throws Exception {
        Options options = this.r;
        if (options != null) {
            if (options.getExtraDestination() != null) {
                this.s = new LatLng(this.r.getExtraDestination().getLat(), this.r.getExtraDestination().getLng());
                this.t = this.r.getExtraDestination().getFormattedAddress();
            }
            if (this.r.getRoundTripPrice() > 0.0d) {
                this.u = true;
            }
            if (this.r.getSnappWaiting() != null) {
                this.v = this.r.getSnappWaiting().getKey();
            }
            this.r = null;
        }
        this.F = null;
        this.E = null;
        this.D = null;
        this.A = null;
        this.S = null;
        b();
        l();
    }
}
