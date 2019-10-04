package cab.snapp.passenger.units.second_destination;

import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import androidx.navigation.NavController;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.mapmodule.a;
import cab.snapp.mapmodule.a.a.f;
import cab.snapp.mapmodule.a.a.n;
import cab.snapp.mapmodule.a.a.q;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.c.e;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.c.h;
import cab.snapp.passenger.data.models.FavoriteModel;
import cab.snapp.passenger.data.models.GeocodeMasterModel;
import cab.snapp.passenger.data.models.NullLocation;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.network.requests.PinRequest;
import cab.snapp.passenger.data_access_layer.network.responses.PinResponse;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.j;
import cab.snapp.passenger.f.p;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.search.SearchController;
import com.google.android.gms.common.api.k;
import com.google.android.gms.maps.model.LatLng;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.HashMap;
import javax.inject.Inject;

public class b extends BaseInteractor<f, d> {
    public static final float FIXER_ANCHOR_X = 0.5f;
    public static final float FIXER_ANCHOR_Y = 1.0f;
    public static final int SEARCH_REQUEST_CODE = 1342;

    /* renamed from: a  reason: collision with root package name */
    final int f1170a = 1348;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    cab.snapp.passenger.c.b f1171b;
    @Inject
    g c;
    @Inject
    h d;
    @Inject
    e e;
    @Inject
    d f;
    @Inject
    c g;
    private int h = R.id.view_second_destination_map_parent;
    private LatLng i;
    private io.reactivex.b.c j;
    private GeocodeMasterModel k;
    private boolean l = false;
    private FavoriteModel m;
    private boolean n = false;
    private boolean o;
    private String p;

    /* access modifiers changed from: private */
    public static /* synthetic */ void a(Throwable th) throws Exception {
    }

    /* access modifiers changed from: private */
    public void a(cab.snapp.mapmodule.a.b.c cVar) {
        boolean z;
        int i2 = cVar.type;
        if (i2 != 2000) {
            if (i2 == 2012) {
                if (!this.o) {
                    this.o = true;
                    HashMap value = this.d.getSearchResults().getValue();
                    if (this.k == null && value != null && value.containsKey(Integer.valueOf(SEARCH_REQUEST_CODE))) {
                        this.k = (GeocodeMasterModel) value.remove(Integer.valueOf(SEARCH_REQUEST_CODE));
                    }
                    if (this.k != null) {
                        a instance = a.getInstance();
                        f fVar = new f(this.h, this.k.getLatLng().getLatitude(), this.k.getLatLng().getLongitude(), 15.0f);
                        instance.changeCenterWithZoom(fVar);
                        this.p = this.k.getId();
                        this.k = null;
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!z) {
                        LatLng destinationLatLng = this.c.getDestinationLatLng();
                        Location savedLocation = this.e.getSavedLocation();
                        if (destinationLatLng == null) {
                            destinationLatLng = new LatLng(savedLocation.getLatitude(), savedLocation.getLongitude());
                        }
                        new Handler().postDelayed(new Runnable(destinationLatLng) {
                            private final /* synthetic */ LatLng f$1;

                            {
                                this.f$1 = r2;
                            }

                            public final void run() {
                                b.this.a(this.f$1);
                            }
                        }, 1000);
                        new Handler().postDelayed(new Runnable() {
                            public final void run() {
                                b.this.b();
                            }
                        }, 1250);
                    }
                }
                if (this.f1171b.getMapType() == 1) {
                    j.updateTrafficState(this.h);
                }
                LatLng originLatLng = this.c.getOriginLatLng();
                LatLng destinationLatLng2 = this.c.getDestinationLatLng();
                if (originLatLng != null) {
                    a instance2 = a.getInstance();
                    cab.snapp.mapmodule.a.a.a aVar = new cab.snapp.mapmodule.a.a.a(a.ORIGIN_MARKER_TAG, this.h, originLatLng.latitude, originLatLng.longitude, R.drawable.ic_origin_selected_marker, 0.5f, 1.0f);
                    instance2.addOriginMarker(aVar);
                }
                if (destinationLatLng2 != null) {
                    a instance3 = a.getInstance();
                    cab.snapp.mapmodule.a.a.a aVar2 = new cab.snapp.mapmodule.a.a.a(a.DESTINATION_MARKER_TAG, this.h, destinationLatLng2.latitude, destinationLatLng2.longitude, R.drawable.ic_dest_selected_marker, 0.5f, 1.0f);
                    instance3.addDestinationMarker(aVar2);
                }
            } else if (i2 != 2002) {
                if (i2 == 2003) {
                    if (getPresenter() != null) {
                        ((d) getPresenter()).onMapMoveFinished();
                        LatLng latLng = this.i;
                        if (latLng != null) {
                            PinRequest pinRequest = new PinRequest(latLng.latitude, this.i.longitude);
                            pinRequest.setFormattedAddress();
                            addDisposable(this.f.getPin(pinRequest).subscribe(new io.reactivex.e.g() {
                                public final void accept(Object obj) {
                                    b.this.a((PinResponse) obj);
                                }
                            }, $$Lambda$b$f0O6oVwlc_c4ePxxbCEsudr5ug4.INSTANCE));
                        }
                    }
                    if (getRouter() != null) {
                        FavoriteModel favoriteModel = this.m;
                        if (!(favoriteModel == null || favoriteModel.getFormattedAddress() == null)) {
                            if (this.m.getFormattedAddress().getFormattedAddress() != null) {
                                this.c.setSecondDestinationFormattedAddress(this.m.getName());
                            }
                            this.c.setSecondDestinationLatLng(new LatLng(this.m.getFormattedAddress().getLat(), this.m.getFormattedAddress().getLng()));
                            this.m = null;
                            ((f) getRouter()).navigateUp();
                        }
                    }
                }
            } else if (getPresenter() != null) {
                ((d) getPresenter()).onMapMoveStarted();
            }
        } else if (cVar instanceof cab.snapp.mapmodule.a.b.a) {
            cab.snapp.mapmodule.a.b.a aVar3 = (cab.snapp.mapmodule.a.b.a) cVar;
            this.i = new LatLng(aVar3.latitude, aVar3.longitude);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(PinResponse pinResponse) throws Exception {
        if (pinResponse != null) {
            String changeNumbersBasedOnCurrentLocale = cab.snapp.passenger.f.g.changeNumbersBasedOnCurrentLocale(pinResponse.getSnappFormattedAddress());
            if (getPresenter() != null) {
                ((d) getPresenter()).onAddressUpdated(changeNumbersBasedOnCurrentLocale);
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(LatLng latLng) {
        a instance = a.getInstance();
        f fVar = new f(this.h, latLng.latitude, latLng.longitude, 15.0f);
        instance.changeCenterWithZoom(fVar);
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a() {
        int i2;
        if (a.getInstance().getMapType() == 1) {
            i2 = -40;
        } else {
            i2 = a.getInstance().getMapType() == 0 ? 90 : 0;
        }
        a.getInstance().scrollMap(new q(this.h, 0.0f, -cab.snapp.c.e.convertDpToPixel(getActivity(), (float) i2)));
    }

    public void secondDestinationSelected() {
        if (getRouter() != null) {
            LatLng latLng = this.i;
            if (latLng != null) {
                this.c.setSecondDestinationLatLng(latLng);
                p.requestLogSecondDestination(this.f, this.p, this.i.latitude, this.i.longitude);
                ((f) getRouter()).navigateUp();
                if (this.c.getCurrentState() == 2) {
                    c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("rideOption", "secondDestination[pinFixed]").addOuterKeyToCurrentAsValue("selectServiceType").build());
                } else if (this.c.getCurrentState() == 4) {
                    c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "secondDestination[pinFixed]").addOuterKeyToCurrentAsValue("driverAssigned").build());
                } else if (this.c.getCurrentState() == 5) {
                    c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "secondDestination[pinFixed]").addOuterKeyToCurrentAsValue("driverArrived").build());
                } else if (this.c.getCurrentState() == 6) {
                    c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "secondDestination[pinFixed]").addOuterKeyToCurrentAsValue("Boarded").build());
                }
            }
        }
    }

    public void showMyLocation() {
        Location location = this.e.getLocation();
        if (location != null) {
            a instance = a.getInstance();
            n nVar = new n(this.h, location.getLatitude(), location.getLongitude());
            instance.moveAnimated(nVar);
        }
        if (this.j == null) {
            this.j = this.e.getLocationObservable(true).subscribe(new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    b.this.a((Location) obj);
                }
            });
            addDisposable(this.j);
            return;
        }
        this.e.refreshLocation(true);
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Location location) throws Exception {
        if (location instanceof NullLocation) {
            NullLocation nullLocation = (NullLocation) location;
            if (nullLocation.getLocationSettingException() != null) {
                ((d) getPresenter()).onLocationIsUnavailable(nullLocation.getLocationSettingException());
            } else if (!nullLocation.isBecauseDenyPermission()) {
                if (getPresenter() != null && !this.e.isLocationEnabled() && !this.e.isLocationModeBatterySavingOrPhoneOnly()) {
                    ((d) getPresenter()).onLocationIsUnavailable(null);
                }
            } else if (getPresenter() != null && nullLocation.isPermanentlyDeniedPermission()) {
                ((d) getPresenter()).onPermissionRequestIsDenied();
            }
            try {
                c.getInstance().sendNestedEventViaAppmetrica("Popup", new b.a().addKeyValue(FirebaseAnalytics.b.LOCATION, "show").build());
            } catch (Exception e2) {
                e2.printStackTrace();
                com.a.a.a.logException(e2);
            }
        } else {
            if (location != null) {
                a instance = a.getInstance();
                n nVar = new n(this.h, location.getLatitude(), location.getLongitude());
                instance.moveAnimated(nVar);
                if (!this.n) {
                    if (cab.snapp.c.g.isLocationPermissionGranted(getActivity())) {
                        a.getInstance().showUserLocationIndicator(this.h);
                    }
                    this.n = true;
                }
            }
        }
    }

    public void requestEditLocationSetting(k kVar) {
        if (kVar != null) {
            this.e.requestEditLocationSetting(kVar, 1348);
        }
    }

    public void handleBack() {
        if (getRouter() != null) {
            ((f) getRouter()).navigateUp();
        }
    }

    public void navigateToSearch() {
        if (getRouter() != null) {
            this.k = null;
            Bundle bundle = new Bundle();
            bundle.putInt(SearchController.KEY_SEARCH_REQUEST_CODE, SEARCH_REQUEST_CODE);
            ((f) getRouter()).routeToSearchUnit(bundle);
        }
        if (this.c.getCurrentState() == 2) {
            c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("rideOption", "searchButton[tap]").addOuterKeyToCurrentAsValue("selectServiceType").build());
        } else if (this.c.getCurrentState() == 4) {
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "searchButton[tap]").addOuterKeyToCurrentAsValue("driverAssigned").build());
        } else if (this.c.getCurrentState() == 5) {
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "searchButton[tap]").addOuterKeyToCurrentAsValue("driverArrived").build());
        } else {
            if (this.c.getCurrentState() == 6) {
                c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "searchButton[tap]").addOuterKeyToCurrentAsValue("Boarded").build());
            }
        }
    }

    public void favoriteSelected(FavoriteModel favoriteModel) {
        if (favoriteModel != null && favoriteModel.getFormattedAddress() != null) {
            this.m = favoriteModel;
            a instance = a.getInstance();
            n nVar = new n(this.h, favoriteModel.getFormattedAddress().getLat(), favoriteModel.getFormattedAddress().getLng());
            instance.moveAnimated(nVar);
        }
    }

    public void navigateToAddFavoriteAddress() {
        if (getRouter() != null) {
            ((f) getRouter()).routeToAddFavoriteAddress();
        }
    }

    public g getSnappRideDataManager() {
        return this.c;
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            if (!(getController() == null || getRouter() == null)) {
                NavController overtheMapNavigationController = getController().getOvertheMapNavigationController();
                if (overtheMapNavigationController != null) {
                    ((f) getRouter()).setNavigationController(overtheMapNavigationController);
                }
            }
            if (this.f1171b.getMapType() == 2) {
                if (getPresenter() != null) {
                    ((d) getPresenter()).onInitialize(true);
                }
            } else if (getPresenter() != null) {
                ((d) getPresenter()).onInitialize(false);
            }
            addDisposable(a.getInstance().getEventsObservable().filter(new io.reactivex.e.q() {
                public final boolean test(Object obj) {
                    return b.this.b((cab.snapp.mapmodule.a.b.c) obj);
                }
            }).subscribe(new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    b.this.a((cab.snapp.mapmodule.a.b.c) obj);
                }
            }));
            this.e.refreshLocation(true);
            this.g.reportScreenName("");
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ boolean b(cab.snapp.mapmodule.a.b.c cVar) throws Exception {
        return cVar.id == this.h;
    }

    public void onUnitPause() {
        super.onUnitPause();
        a.getInstance().hideUserLocationIndicator(this.h);
    }

    public void onUnitResume() {
        super.onUnitResume();
        a.getInstance().showUserLocationIndicator(this.h);
        this.o = false;
    }

    public void reportOnMyLocationClickedToAppMetrica() {
        int currentState = this.c.getCurrentState();
        if (currentState == 2) {
            c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("rideOption", "secondDestination[tapLocationPin]").addOuterKeyToCurrentAsValue("selectServiceType").build());
        } else if (currentState == 4) {
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "secondDestination[tapLocationPin]").addOuterKeyToCurrentAsValue("driverAssigned").build());
        } else if (currentState == 5) {
            c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "secondDestination[tapLocationPin]").addOuterKeyToCurrentAsValue("driverArrived").build());
        } else {
            if (currentState == 6) {
                c.getInstance().sendNestedEventViaAppmetrica("In-ride", new b.a().addKeyValue("rideOption", "secondDestination[tapLocationPin]").addOuterKeyToCurrentAsValue("Boarded").build());
            }
        }
    }

    public void reportPopUpLocationPositiveButtonToAppMetrica() {
        c.getInstance().sendNestedEventViaAppmetrica("Popup", new b.a().addKeyValue(FirebaseAnalytics.b.LOCATION, "yes").build());
    }

    public void reportPopUpLocationNegativeButtonClickedToAppMetrica() {
        c.getInstance().sendNestedEventViaAppmetrica("Popup", new b.a().addKeyValue(FirebaseAnalytics.b.LOCATION, "no").build());
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b() {
        new Handler().postDelayed(new Runnable() {
            public final void run() {
                b.this.a();
            }
        }, 250);
    }
}
