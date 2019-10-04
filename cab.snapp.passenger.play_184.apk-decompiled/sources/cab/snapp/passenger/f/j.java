package cab.snapp.passenger.f;

import android.location.Location;
import android.os.Handler;
import cab.snapp.b.a;
import cab.snapp.deeplink.models.types.Scheme;
import cab.snapp.mapmodule.a.a.f;
import cab.snapp.mapmodule.a.a.o;
import cab.snapp.mapmodule.a.a.p;
import cab.snapp.mapmodule.a.a.q;
import cab.snapp.mapmodule.a.a.s;
import cab.snapp.mapmodule.a.a.t;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.c.b;
import cab.snapp.passenger.c.e;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.data.models.AvailableServiceTypes;
import cab.snapp.passenger.data.models.LocationInfo;
import cab.snapp.passenger.data.models.Options;
import cab.snapp.passenger.data.models.Vehicle;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.network.requests.PinRequest;
import cab.snapp.passenger.data_access_layer.network.responses.PinResponse;
import cab.snapp.passenger.play.R;
import com.google.android.gms.maps.model.LatLng;
import com.koushikdutta.ion.bitmap.IonBitmapCache;
import com.raizlabs.android.dbflow.sql.language.x;
import io.reactivex.b.c;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public final class j {
    public static final int DEFAULT_ZOOM_LEVEL = 15;
    private static a E = null;
    public static final float FIXER_ANCHOR_X = 0.5f;
    public static final float FIXER_ANCHOR_Y = 1.0f;
    public static final String INTERACTION_CENTER_CHANGED_ON_IDLE = "INTERACTION_CENTER_CHANGED_ON_IDLE";
    public static final float JEK_ZOOM_LEVEL = 12.5f;
    public static final String MAP_INTERACTIONS_CHANNEL_KEY = UUID.randomUUID().toString();
    public static final String MAP_STATE_KEY = "MAP_STATE_KEY";
    public static final String PIN_RESPONSE_CHANNEL_KEY = UUID.randomUUID().toString();

    /* renamed from: b  reason: collision with root package name */
    private static int f574b;
    private b A;
    private g B;
    private e C;
    private d D;

    /* renamed from: a  reason: collision with root package name */
    c f575a;
    private final String c = UUID.randomUUID().toString();
    public double centerLatitude;
    public double centerLongitude;
    public int currentZoom;
    private final int d = 7;
    private final long e = IonBitmapCache.DEFAULT_ERROR_CACHE_DURATION;
    private final int f = 15;
    private double g;
    private double h;
    private int i;
    private int j = R.drawable.ic_snapp_marker;
    private List<AvailableServiceTypes> k;
    private String l;
    public String lastFormattedAddress;
    private String m;
    private int n;
    private boolean o = false;
    private boolean p = false;
    private boolean q = false;
    private boolean r = false;
    private boolean s = false;
    private int t = 7;
    private long u = IonBitmapCache.DEFAULT_ERROR_CACHE_DURATION;
    private long v = IonBitmapCache.DEFAULT_ERROR_CACHE_DURATION;
    private String w;
    private boolean x = true;
    private boolean y = false;
    private boolean z = false;

    public j(int i2, b bVar, g gVar, e eVar, d dVar, a aVar) {
        this.A = bVar;
        this.B = gVar;
        this.C = eVar;
        this.D = dVar;
        E = aVar;
        f574b = i2;
        this.i = gVar.getServiceType();
        this.k = new ArrayList();
        this.l = cab.snapp.passenger.data_access_layer.a.c.getInstance().getPrivateChannelId(PIN_RESPONSE_CHANNEL_KEY);
        this.m = cab.snapp.passenger.data_access_layer.a.c.getInstance().getPrivateChannelId(MAP_INTERACTIONS_CHANNEL_KEY);
        this.n = 0;
    }

    public static int getMapViewId() {
        return f574b;
    }

    public static void showTraffic(int i2) {
        if (i2 == 0) {
            i2 = f574b;
        }
        cab.snapp.mapmodule.a.getInstance().showTraffic(i2);
    }

    public static void hideTraffic(int i2) {
        if (i2 == 0) {
            i2 = f574b;
        }
        cab.snapp.mapmodule.a.getInstance().hideTraffic(i2);
    }

    public static void updateTrafficState(int i2) {
        if (E.get("passenger_traffic_map") == null) {
            showTraffic(i2);
        } else if (E.get("passenger_traffic_map") == null || !E.get("passenger_traffic_map").equals("1")) {
            hideTraffic(i2);
        } else {
            showTraffic(i2);
        }
    }

    public final void handleEvent(cab.snapp.mapmodule.a.b.c cVar) {
        if (cVar.id == f574b) {
            int i2 = cVar.type;
            if (i2 == 2000) {
                cab.snapp.mapmodule.a.b.a aVar = (cab.snapp.mapmodule.a.b.a) cVar;
                this.centerLatitude = aVar.latitude;
                this.centerLongitude = aVar.longitude;
                this.currentZoom = aVar.zoom;
                int i3 = this.n;
                if (i3 == 0 || i3 == 2) {
                    if (this.currentZoom < 15) {
                        cab.snapp.mapmodule.a.getInstance().hideVehicleMarkers(f574b);
                    } else {
                        cab.snapp.mapmodule.a.getInstance().showVehicleMarkers(f574b);
                    }
                }
                String str = this.w;
                if (str == null || !str.equalsIgnoreCase(a.a.a.b.geoHashStringWithCharacterPrecision(this.centerLatitude, this.centerLongitude, this.t))) {
                    int i4 = this.n;
                    if (i4 == 0) {
                        cab.snapp.passenger.data_access_layer.a.c.getInstance().emitToPrivateChannel(this.m, INTERACTION_CENTER_CHANGED_ON_IDLE);
                        String geoHashStringWithCharacterPrecision = a.a.a.b.geoHashStringWithCharacterPrecision(this.centerLatitude, this.centerLongitude, this.t);
                        String str2 = this.w;
                        if (str2 == null) {
                            a(geoHashStringWithCharacterPrecision);
                        } else if (!str2.equalsIgnoreCase(geoHashStringWithCharacterPrecision)) {
                            cab.snapp.passenger.d.b bVar = (cab.snapp.passenger.d.b) x.select(new com.raizlabs.android.dbflow.sql.language.a.a[0]).from(cab.snapp.passenger.d.b.class).where(cab.snapp.passenger.d.c.type.is(1000)).and(cab.snapp.passenger.d.c.key.is(geoHashStringWithCharacterPrecision)).querySingle();
                            if (bVar == null) {
                                a(geoHashStringWithCharacterPrecision);
                            } else if (bVar.getLastModificationTimestamp() + this.u >= System.currentTimeMillis()) {
                                try {
                                    a((PinResponse) new com.google.gson.e().fromJson(bVar.getJsonString(), PinResponse.class), false, geoHashStringWithCharacterPrecision);
                                } catch (Exception e2) {
                                    com.a.a.a.logException(e2);
                                    e2.printStackTrace();
                                }
                            } else {
                                bVar.delete();
                                a(geoHashStringWithCharacterPrecision);
                            }
                        }
                    } else if (i4 == 1) {
                        String geoHashStringWithCharacterPrecision2 = a.a.a.b.geoHashStringWithCharacterPrecision(this.centerLatitude, this.centerLongitude, this.t);
                        String str3 = this.w;
                        if (str3 == null) {
                            b(geoHashStringWithCharacterPrecision2);
                        } else if (!str3.equalsIgnoreCase(geoHashStringWithCharacterPrecision2)) {
                            cab.snapp.passenger.d.b bVar2 = (cab.snapp.passenger.d.b) x.select(new com.raizlabs.android.dbflow.sql.language.a.a[0]).from(cab.snapp.passenger.d.b.class).where(cab.snapp.passenger.d.c.type.is(1001)).and(cab.snapp.passenger.d.c.key.is(geoHashStringWithCharacterPrecision2)).querySingle();
                            if (bVar2 == null) {
                                b(geoHashStringWithCharacterPrecision2);
                            } else if (bVar2.getLastModificationTimestamp() + this.v >= System.currentTimeMillis()) {
                                try {
                                    b((PinResponse) new com.google.gson.e().fromJson(bVar2.getJsonString(), PinResponse.class), false, geoHashStringWithCharacterPrecision2);
                                } catch (Exception e3) {
                                    com.a.a.a.logException(e3);
                                    e3.printStackTrace();
                                }
                            } else {
                                bVar2.delete();
                                b(geoHashStringWithCharacterPrecision2);
                            }
                        }
                    }
                    this.w = a.a.a.b.geoHashStringWithCharacterPrecision(this.centerLatitude, this.centerLongitude, this.t);
                }
            } else if (i2 == 2012) {
                this.z = true;
                b bVar3 = this.A;
                if (bVar3 != null && bVar3.getMapType() == 1) {
                    updateTrafficState(f574b);
                }
                if (!(this.A.getConfig() == null || this.A.getConfig().getPinCacheConfig() == null)) {
                    this.t = this.A.getConfig().getPinCacheConfig().getCacheGeohashCharacters();
                    this.u = (long) (this.A.getConfig().getPinCacheConfig().getCacheVehiclesTtl() * 1000);
                    this.v = (long) (this.A.getConfig().getPinCacheConfig().getCacheReverseGeocodeTtl() * 1000);
                }
                Location savedLocation = this.C.getSavedLocation();
                if (savedLocation != null && !this.B.hasRideDeeplink()) {
                    cab.snapp.mapmodule.a instance = cab.snapp.mapmodule.a.getInstance();
                    f fVar = new f(f574b, savedLocation.getLatitude(), savedLocation.getLongitude(), 15.0f);
                    instance.changeCenterWithZoom(fVar);
                }
                if (this.r) {
                    this.r = false;
                    refreshCoordinationMarkers();
                    new Handler().postDelayed(new Runnable() {
                        public final void run() {
                            j.this.h();
                        }
                    }, 1500);
                }
                new Handler().postDelayed(new Runnable() {
                    public final void run() {
                        j.this.g();
                    }
                }, 1000);
                b(this.B.getCurrentState());
                if (this.y) {
                    a();
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void h() {
        if (this.B.getCurrentState() == 2) {
            d();
            return;
        }
        if (this.B.isInRide()) {
            updateDriverMarker();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void g() {
        if (cab.snapp.c.g.isLocationPermissionGranted(BaseApplication.getContext()) && this.B.getCurrentState() != 6) {
            showUserLocationIndicator();
        }
    }

    private void a(final String str) {
        PinRequest pinRequest = new PinRequest(this.centerLatitude, this.centerLongitude);
        pinRequest.setFormattedAddress();
        pinRequest.setVehicles();
        pinRequest.setServiceType(this.i);
        this.f575a = this.D.getPin(pinRequest).subscribe(new io.reactivex.e.g<PinResponse>() {
            public final void accept(PinResponse pinResponse) throws Exception {
                j.this.a(pinResponse, true, str);
            }
        }, new io.reactivex.e.g<Throwable>() {
            public final void accept(Throwable th) throws Exception {
                com.a.a.a.logException(th);
                th.getMessage();
            }
        });
    }

    /* access modifiers changed from: private */
    public void a(PinResponse pinResponse, boolean z2, String str) {
        if (pinResponse != null) {
            cab.snapp.passenger.data_access_layer.a.c.getInstance().emitToPrivateChannel(this.l, pinResponse);
            this.lastFormattedAddress = g.changeNumbersBasedOnCurrentLocale(pinResponse.getSnappFormattedAddress());
            if (pinResponse.getAvailableServiceTypesList() != null && pinResponse.getAvailableServiceTypesList().size() > 0 && this.n == 0) {
                this.k = pinResponse.getAvailableServiceTypesList();
                if (this.currentZoom >= 15) {
                    b();
                }
            }
            if (z2) {
                pinResponse.save(str, true);
            }
        }
    }

    private void b(final String str) {
        PinRequest pinRequest = new PinRequest(this.centerLatitude, this.centerLongitude);
        pinRequest.setFormattedAddress();
        this.f575a = this.D.getPin(pinRequest).subscribe(new io.reactivex.e.g<PinResponse>() {
            public final void accept(PinResponse pinResponse) throws Exception {
                j.this.b(pinResponse, true, str);
            }
        }, new io.reactivex.e.g<Throwable>() {
            public final void accept(Throwable th) throws Exception {
                com.a.a.a.logException(th);
                th.getMessage();
            }
        });
    }

    /* access modifiers changed from: private */
    public void b(PinResponse pinResponse, boolean z2, String str) {
        if (pinResponse != null) {
            cab.snapp.passenger.data_access_layer.a.c.getInstance().emitToPrivateChannel(this.l, pinResponse);
            if (z2) {
                pinResponse.save(str, false);
            }
        }
    }

    private void a() {
        if (this.B.getCurrentState() == 0 && this.B.hasRideDeeplink()) {
            this.B.applyDeepLink();
        } else if (this.B.getCurrentState() == 1 && this.B.hasRideDeeplink() && this.B.getDeepLink().getScheme() == Scheme.Geo) {
            this.B.applyDeepLink();
        }
        this.y = false;
    }

    public final void checkDeepLink() {
        if (this.z) {
            a();
        } else {
            this.y = true;
        }
    }

    private void b() {
        cab.snapp.mapmodule.a.getInstance().removeAllVehicles(f574b);
        for (AvailableServiceTypes next : this.k) {
            if (next.getType() == this.i) {
                for (Vehicle next2 : next.getVehicles()) {
                    cab.snapp.mapmodule.a instance = cab.snapp.mapmodule.a.getInstance();
                    cab.snapp.mapmodule.a.a.d dVar = r5;
                    cab.snapp.mapmodule.a.a.d dVar2 = new cab.snapp.mapmodule.a.a.d(f574b, next2.getLatestLat(), next2.getLatestLng(), this.j, 0.0f, 0.0f, (float) next2.getBearing(), 0.0f, next2.getId());
                    instance.addVehicleMarker(dVar);
                }
                if (this.currentZoom >= 15) {
                    cab.snapp.mapmodule.a.getInstance().showVehicleMarkers(f574b);
                }
            }
        }
    }

    public final void dispose() {
        c cVar = this.f575a;
        if (cVar != null) {
            cVar.dispose();
            this.f575a = null;
        }
    }

    public final void setServiceType(int i2) {
        this.i = i2;
        if (this.B.getSecondDestinationLatLng() != null) {
            if (i2 == 5 || i2 == 6) {
                c();
            } else {
                a(this.B.getSecondDestinationLatLng());
            }
        }
        d();
        a(i2);
        b();
    }

    private void a(int i2) {
        if (i2 == 1) {
            this.j = R.drawable.ic_snapp_marker;
        } else if (i2 == 2) {
            this.j = R.drawable.ic_snapp_marker;
        } else if (i2 == 3) {
            this.j = R.drawable.ic_snapp_st3_marker;
        } else if (i2 == 5) {
            this.j = R.drawable.ic_snapp_st4_marker;
        } else if (i2 == 6) {
            this.j = R.drawable.ic_snapp_st4_marker;
        } else if (i2 != 7) {
            this.j = R.drawable.ic_snapp_marker;
        } else {
            this.j = R.drawable.ic_snapp_st5_marker;
        }
    }

    public final void updateDriverMarker() {
        LocationInfo driverLocationInfo = this.B.getDriverLocationInfo();
        if (driverLocationInfo != null) {
            cab.snapp.mapmodule.a.getInstance().removeAllVehicles(f574b);
            cab.snapp.mapmodule.a instance = cab.snapp.mapmodule.a.getInstance();
            cab.snapp.mapmodule.a.a.d dVar = new cab.snapp.mapmodule.a.a.d(f574b, driverLocationInfo.getLat(), driverLocationInfo.getLng(), this.j, 0.0f, 0.0f, (float) driverLocationInfo.getBearing(), 1.0f, this.c);
            instance.addVehicleMarker(dVar);
            e();
        }
    }

    public final void refreshCoordinationMarkers() {
        g gVar = this.B;
        if (gVar != null) {
            if (gVar.getOriginLatLng() != null) {
                cab.snapp.mapmodule.a.getInstance().removeMarker(new p(f574b, cab.snapp.mapmodule.a.ORIGIN_MARKER_TAG));
                cab.snapp.mapmodule.a.a.a aVar = new cab.snapp.mapmodule.a.a.a(cab.snapp.mapmodule.a.ORIGIN_MARKER_TAG, f574b, this.B.getOriginLatLng().latitude, this.B.getOriginLatLng().longitude, R.drawable.ic_origin_selected_marker, 0.5f, 1.0f);
                cab.snapp.mapmodule.a.getInstance().addOriginMarker(aVar);
                this.o = true;
            } else {
                cab.snapp.mapmodule.a.getInstance().removeMarker(new p(f574b, cab.snapp.mapmodule.a.ORIGIN_MARKER_TAG));
                this.o = false;
            }
            if (this.B.getDestinationLatLng() != null) {
                cab.snapp.mapmodule.a.getInstance().removeMarker(new p(f574b, cab.snapp.mapmodule.a.DESTINATION_MARKER_TAG));
                cab.snapp.mapmodule.a.a.a aVar2 = new cab.snapp.mapmodule.a.a.a(cab.snapp.mapmodule.a.DESTINATION_MARKER_TAG, f574b, this.B.getDestinationLatLng().latitude, this.B.getDestinationLatLng().longitude, R.drawable.ic_dest_selected_marker, 0.5f, 1.0f);
                cab.snapp.mapmodule.a.getInstance().addDestinationMarker(aVar2);
                this.p = true;
                this.x = false;
            } else {
                cab.snapp.mapmodule.a.getInstance().removeMarker(new p(f574b, cab.snapp.mapmodule.a.DESTINATION_MARKER_TAG));
                this.p = false;
            }
            if (this.B.getOptions() != null && this.B.getOptions().getExtraDestination() != null) {
                cab.snapp.mapmodule.a.getInstance().removeMarker(new p(f574b, cab.snapp.mapmodule.a.SECOND_DESTINATION_MARKER_TAG));
                cab.snapp.mapmodule.a.a.a aVar3 = new cab.snapp.mapmodule.a.a.a(cab.snapp.mapmodule.a.SECOND_DESTINATION_MARKER_TAG, f574b, this.B.getOptions().getExtraDestination().getLat(), this.B.getOptions().getExtraDestination().getLng(), R.drawable.ic_second_dest_selected_marker, 0.5f, 1.0f);
                cab.snapp.mapmodule.a.getInstance().addSecondDestinationMarker(aVar3);
                this.q = true;
            } else if (this.B.getSecondDestinationLatLng() != null) {
                cab.snapp.mapmodule.a.getInstance().removeMarker(new p(f574b, cab.snapp.mapmodule.a.SECOND_DESTINATION_MARKER_TAG));
                cab.snapp.mapmodule.a.a.a aVar4 = new cab.snapp.mapmodule.a.a.a(cab.snapp.mapmodule.a.SECOND_DESTINATION_MARKER_TAG, f574b, this.B.getSecondDestinationLatLng().latitude, this.B.getSecondDestinationLatLng().longitude, R.drawable.ic_second_dest_selected_marker, 0.5f, 1.0f);
                cab.snapp.mapmodule.a.getInstance().addSecondDestinationMarker(aVar4);
                this.q = true;
            } else {
                cab.snapp.mapmodule.a.getInstance().removeMarker(new p(f574b, cab.snapp.mapmodule.a.SECOND_DESTINATION_MARKER_TAG));
                this.q = false;
            }
        }
    }

    public final void updateSecondDestinationMarker() {
        LatLng latLng = null;
        if (!this.q) {
            if (this.B.isInRide()) {
                Options options = this.B.getOptions();
                if (!(options == null || options.getExtraDestination() == null)) {
                    latLng = new LatLng(options.getExtraDestination().getLat(), options.getExtraDestination().getLng());
                }
            } else {
                latLng = this.B.getSecondDestinationLatLng();
            }
            if (latLng != null) {
                a(latLng);
            }
        } else {
            if (this.B.isInRide()) {
                Options options2 = this.B.getOptions();
                if (!(options2 == null || options2.getExtraDestination() == null)) {
                    latLng = new LatLng(options2.getExtraDestination().getLat(), options2.getExtraDestination().getLng());
                }
            } else {
                latLng = this.B.getSecondDestinationLatLng();
            }
            if (latLng == null) {
                c();
            } else {
                c();
                a(latLng);
            }
        }
        if (this.B.isInRide()) {
            e();
        } else {
            d();
        }
    }

    private void a(LatLng latLng) {
        cab.snapp.mapmodule.a.a.a aVar = new cab.snapp.mapmodule.a.a.a(cab.snapp.mapmodule.a.SECOND_DESTINATION_MARKER_TAG, f574b, latLng.latitude, latLng.longitude, R.drawable.ic_second_dest_selected_marker, 0.5f, 1.0f);
        cab.snapp.mapmodule.a.getInstance().addSecondDestinationMarker(aVar);
        this.q = true;
    }

    private void c() {
        cab.snapp.mapmodule.a.getInstance().removeMarker(new p(f574b, cab.snapp.mapmodule.a.SECOND_DESTINATION_MARKER_TAG));
        this.q = false;
    }

    public final void setCurrentState(int i2) {
        a(this.B.getServiceType());
        if (!this.z) {
            this.r = true;
        }
        b(i2);
        switch (i2) {
            case 0:
                showUserLocationIndicator();
                this.g = 0.0d;
                this.h = 0.0d;
                this.x = true;
                refreshCoordinationMarkers();
                if (this.currentZoom >= 15) {
                    cab.snapp.mapmodule.a.getInstance().showVehicleMarkers(f574b);
                }
                if (this.C.getLocation() != null) {
                    cab.snapp.mapmodule.a instance = cab.snapp.mapmodule.a.getInstance();
                    f fVar = new f(f574b, this.C.getLocation().getLatitude(), this.C.getLocation().getLongitude(), (float) this.currentZoom);
                    instance.changeCenterWithZoom(fVar);
                    break;
                }
                break;
            case 1:
                showUserLocationIndicator();
                refreshCoordinationMarkers();
                if (!(this.g == 0.0d || this.h == 0.0d)) {
                    cab.snapp.mapmodule.a instance2 = cab.snapp.mapmodule.a.getInstance();
                    f fVar2 = new f(f574b, this.g, this.h, (float) this.currentZoom);
                    instance2.changeCenterWithZoom(fVar2);
                    this.g = 0.0d;
                    this.h = 0.0d;
                }
                cab.snapp.mapmodule.a.getInstance().hideVehicleMarkers(f574b);
                if (this.x) {
                    LatLng originLatLng = this.B.getOriginLatLng();
                    if (!(originLatLng == null || this.centerLatitude == originLatLng.latitude || this.centerLongitude == originLatLng.longitude)) {
                        cab.snapp.mapmodule.a instance3 = cab.snapp.mapmodule.a.getInstance();
                        f fVar3 = new f(f574b, originLatLng.latitude, originLatLng.longitude, 15.0f);
                        instance3.changeCenterWithZoom(fVar3);
                    }
                    new Handler().postDelayed($$Lambda$j$d4ba5un0wuNLqaLoe9xLLrNC85E.INSTANCE, 200);
                }
                this.x = false;
                break;
            case 2:
                showUserLocationIndicator();
                refreshCoordinationMarkers();
                d();
                setServiceType(this.B.getServiceType());
                break;
            case 4:
                showUserLocationIndicator();
                cab.snapp.mapmodule.a.getInstance().removeAllVehicles(f574b);
                refreshCoordinationMarkers();
                updateDriverMarker();
                if (this.n == 0) {
                    this.r = true;
                    break;
                }
                break;
            case 5:
                showUserLocationIndicator();
                cab.snapp.mapmodule.a.getInstance().removeAllVehicles(f574b);
                refreshCoordinationMarkers();
                updateDriverMarker();
                if (this.n == 0) {
                    this.r = true;
                    break;
                }
                break;
            case 6:
                hideUserLocationIndicator();
                cab.snapp.mapmodule.a.getInstance().removeAllVehicles(f574b);
                refreshCoordinationMarkers();
                updateDriverMarker();
                if (this.n == 0) {
                    this.r = true;
                    break;
                }
                break;
            case 7:
                if (this.o) {
                    cab.snapp.mapmodule.a.getInstance().removeMarker(new p(f574b, cab.snapp.mapmodule.a.ORIGIN_MARKER_TAG));
                    this.o = false;
                }
                if (this.p) {
                    cab.snapp.mapmodule.a.getInstance().removeMarker(new p(f574b, cab.snapp.mapmodule.a.DESTINATION_MARKER_TAG));
                    this.p = false;
                }
                if (this.currentZoom >= 15) {
                    cab.snapp.mapmodule.a.getInstance().showVehicleMarkers(f574b);
                }
                if (this.C.getLocation() != null) {
                    cab.snapp.mapmodule.a instance4 = cab.snapp.mapmodule.a.getInstance();
                    f fVar4 = new f(f574b, this.C.getLocation().getLatitude(), this.C.getLocation().getLongitude(), 15.0f);
                    instance4.changeCenterWithZoom(fVar4);
                }
                showUserLocationIndicator();
                break;
        }
        this.n = i2;
    }

    private static void b(int i2) {
        cab.snapp.mapmodule.a.a.g gVar = new cab.snapp.mapmodule.a.a.g(f574b);
        switch (i2) {
            case 0:
                gVar.startPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_side_padding);
                gVar.endPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_side_padding);
                gVar.bottomPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_bottom_padding_before_request_footer);
                gVar.topPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_bottom_padding_before_request_footer);
                break;
            case 1:
                gVar.startPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_side_padding);
                gVar.endPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_side_padding);
                gVar.bottomPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_bottom_padding_before_request_footer);
                gVar.topPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_bottom_padding_before_request_footer);
                break;
            case 2:
                gVar.startPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_side_padding);
                gVar.endPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_side_padding);
                gVar.bottomPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_bottom_padding_after_price_response);
                gVar.topPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_top_padding_after_price);
                break;
            case 3:
                gVar.startPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_side_padding);
                gVar.endPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_side_padding);
                gVar.bottomPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_bottom_padding_in_ride);
                gVar.topPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_top_padding_in_ride);
                break;
            case 4:
                gVar.startPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_side_padding);
                gVar.endPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_side_padding);
                gVar.bottomPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_bottom_padding_in_ride);
                gVar.topPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_top_padding_in_ride);
                break;
            case 5:
                gVar.startPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_side_padding);
                gVar.endPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_side_padding);
                gVar.bottomPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_bottom_padding_in_ride);
                gVar.topPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_top_padding_in_ride);
                break;
            case 6:
                gVar.startPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_side_padding);
                gVar.endPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_side_padding);
                gVar.bottomPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_bottom_padding_in_ride);
                gVar.topPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_top_padding_in_ride);
                break;
            case 7:
                gVar.startPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_side_padding);
                gVar.endPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_side_padding);
                gVar.bottomPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_bottom_padding_before_request_footer);
                gVar.topPadding = (int) BaseApplication.getContext().getResources().getDimension(R.dimen.google_map_logo_bottom_padding_before_request_footer);
                break;
        }
        cab.snapp.mapmodule.a.getInstance().changeLogoPadding(gVar);
    }

    /* access modifiers changed from: private */
    public static /* synthetic */ void f() {
        int i2;
        if (cab.snapp.mapmodule.a.getInstance().getMapType() == 1) {
            i2 = -40;
        } else {
            i2 = cab.snapp.mapmodule.a.getInstance().getMapType() == 0 ? 90 : 0;
        }
        cab.snapp.mapmodule.a.getInstance().scrollMap(new q(f574b, 0.0f, -cab.snapp.c.e.convertDpToPixel(BaseApplication.getContext(), (float) i2)));
    }

    private void d() {
        LatLng destinationLatLng = this.B.getDestinationLatLng();
        LatLng originLatLng = this.B.getOriginLatLng();
        if (destinationLatLng != null && originLatLng != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList.add(Double.valueOf(originLatLng.latitude));
            arrayList.add(Double.valueOf(destinationLatLng.latitude));
            arrayList2.add(Double.valueOf(originLatLng.longitude));
            arrayList2.add(Double.valueOf(destinationLatLng.longitude));
            LatLng secondDestinationLatLng = this.B.getSecondDestinationLatLng();
            if (secondDestinationLatLng != null) {
                int i2 = this.i;
                if (!(i2 == 6 || i2 == 5)) {
                    arrayList.add(Double.valueOf(secondDestinationLatLng.latitude));
                    arrayList2.add(Double.valueOf(secondDestinationLatLng.longitude));
                }
            }
            if (arrayList.size() > 1 && arrayList2.size() > 1) {
                new Handler().postDelayed(new Runnable(arrayList, arrayList2) {
                    private final /* synthetic */ List f$0;
                    private final /* synthetic */ List f$1;

                    {
                        this.f$0 = r1;
                        this.f$1 = r2;
                    }

                    public final void run() {
                        j.a(this.f$0, this.f$1);
                    }
                }, 500);
            }
        }
    }

    /* access modifiers changed from: private */
    public static /* synthetic */ void a(List list, List list2) {
        if (cab.snapp.mapmodule.a.getInstance().getMapType() == 0) {
            cab.snapp.mapmodule.a.getInstance().zoomToBoundingBox(new s(f574b, list, list2, 64));
            return;
        }
        cab.snapp.mapmodule.a instance = cab.snapp.mapmodule.a.getInstance();
        t tVar = new t(f574b, list, list2, (int) cab.snapp.c.e.convertDpToPixel(BaseApplication.getContext(), 64.0f), (int) cab.snapp.c.e.convertDpToPixel(BaseApplication.getContext(), 180.0f), (int) cab.snapp.c.e.convertDpToPixel(BaseApplication.getContext(), 64.0f), (int) cab.snapp.c.e.convertDpToPixel(BaseApplication.getContext(), 304.0f));
        instance.zoomToBoundingBoxWithDifferentPaddings(tVar);
    }

    private void e() {
        if (this.B != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            LatLng originLatLng = this.B.getOriginLatLng();
            LatLng destinationLatLng = this.B.getDestinationLatLng();
            LatLng latLng = null;
            LatLng latLng2 = (this.B.getOptions() == null || this.B.getOptions().getExtraDestination() == null) ? null : new LatLng(this.B.getOptions().getExtraDestination().getLat(), this.B.getOptions().getExtraDestination().getLng());
            if (this.B.getDriverLocationInfo() != null) {
                latLng = new LatLng(this.B.getDriverLocationInfo().getLat(), this.B.getDriverLocationInfo().getLng());
            }
            int currentState = this.B.getCurrentState();
            if (currentState == 4) {
                if (originLatLng != null) {
                    arrayList.add(Double.valueOf(originLatLng.latitude));
                    arrayList2.add(Double.valueOf(originLatLng.longitude));
                }
                if (latLng != null) {
                    arrayList.add(Double.valueOf(latLng.latitude));
                    arrayList2.add(Double.valueOf(latLng.longitude));
                }
            } else if (currentState == 5) {
                if (originLatLng != null) {
                    arrayList.add(Double.valueOf(originLatLng.latitude));
                    arrayList2.add(Double.valueOf(originLatLng.longitude));
                }
                if (latLng != null) {
                    arrayList.add(Double.valueOf(latLng.latitude));
                    arrayList2.add(Double.valueOf(latLng.longitude));
                }
            } else if (currentState == 6) {
                if (destinationLatLng != null) {
                    arrayList.add(Double.valueOf(destinationLatLng.latitude));
                    arrayList2.add(Double.valueOf(destinationLatLng.longitude));
                }
                if (latLng2 != null) {
                    arrayList.add(Double.valueOf(latLng2.latitude));
                    arrayList2.add(Double.valueOf(latLng2.longitude));
                }
                if (latLng != null) {
                    arrayList.add(Double.valueOf(latLng.latitude));
                    arrayList2.add(Double.valueOf(latLng.longitude));
                }
            }
            if (arrayList.size() > 1 && arrayList2.size() > 1) {
                if (cab.snapp.mapmodule.a.getInstance().getMapType() == 0) {
                    cab.snapp.mapmodule.a.getInstance().zoomToBoundingBox(new s(f574b, arrayList, arrayList2, 64));
                    return;
                }
                cab.snapp.mapmodule.a instance = cab.snapp.mapmodule.a.getInstance();
                t tVar = new t(f574b, arrayList, arrayList2, (int) cab.snapp.c.e.convertDpToPixel(BaseApplication.getContext(), 64.0f), (int) cab.snapp.c.e.convertDpToPixel(BaseApplication.getContext(), 176.0f), (int) cab.snapp.c.e.convertDpToPixel(BaseApplication.getContext(), 64.0f), (int) cab.snapp.c.e.convertDpToPixel(BaseApplication.getContext(), 200.0f));
                instance.zoomToBoundingBoxWithDifferentPaddings(tVar);
            }
        }
    }

    public final void setCurrentLocation(Location location) {
        if (location != null) {
            cab.snapp.mapmodule.a instance = cab.snapp.mapmodule.a.getInstance();
            int i2 = f574b;
            double latitude = location.getLatitude();
            double longitude = location.getLongitude();
            int i3 = this.currentZoom;
            o oVar = new o(i2, latitude, longitude, i3 == 0 ? 15.0f : (float) i3);
            instance.moveAnimatedWithZoom(oVar);
            if (cab.snapp.c.g.isLocationPermissionGranted(BaseApplication.getContext())) {
                showUserLocationIndicator();
            }
        }
    }

    public final void handleOnLocationClicked(Location location) {
        if (location != null) {
            cab.snapp.mapmodule.a instance = cab.snapp.mapmodule.a.getInstance();
            o oVar = new o(f574b, location.getLatitude(), location.getLongitude(), 15.0f);
            instance.moveAnimatedWithZoom(oVar);
            if (cab.snapp.c.g.isLocationPermissionGranted(BaseApplication.getContext())) {
                showUserLocationIndicator();
            }
        }
    }

    public final void showUserLocationIndicator() {
        cab.snapp.mapmodule.a.getInstance().showUserLocationIndicator(f574b);
    }

    public final void hideUserLocationIndicator() {
        cab.snapp.mapmodule.a.getInstance().hideUserLocationIndicator(f574b);
    }

    public final void handleMapForJekScreen() {
        cab.snapp.mapmodule.a.a.j jVar = new cab.snapp.mapmodule.a.a.j(f574b, this.centerLatitude, this.centerLongitude, 12.5f);
        cab.snapp.mapmodule.a.getInstance().changeZoomAnimated(jVar);
    }

    public final void handleMapForCabScreen() {
        cab.snapp.mapmodule.a.a.j jVar = new cab.snapp.mapmodule.a.a.j(f574b, this.centerLatitude, this.centerLongitude, 15.0f);
        cab.snapp.mapmodule.a.getInstance().changeZoomAnimated(jVar);
    }
}
