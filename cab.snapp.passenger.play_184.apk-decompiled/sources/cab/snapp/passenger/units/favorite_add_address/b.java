package cab.snapp.passenger.units.favorite_add_address;

import android.location.Location;
import android.os.Bundle;
import androidx.navigation.NavController;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.mapmodule.a;
import cab.snapp.mapmodule.a.a.f;
import cab.snapp.mapmodule.a.a.n;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.c.c;
import cab.snapp.passenger.c.e;
import cab.snapp.passenger.c.h;
import cab.snapp.passenger.data.models.FavoriteModel;
import cab.snapp.passenger.data.models.GeocodeMasterModel;
import cab.snapp.passenger.data.models.NullLocation;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.network.requests.PinRequest;
import cab.snapp.passenger.data_access_layer.network.responses.PinResponse;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.search.SearchController;
import com.google.android.gms.common.api.k;
import com.google.android.gms.maps.model.LatLng;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.reactivex.e.g;
import io.reactivex.e.q;
import java.util.HashMap;
import java.util.List;
import javax.inject.Inject;

public class b extends BaseInteractor<e, d> {
    private static final Integer g = 1345;
    @Inject

    /* renamed from: a  reason: collision with root package name */
    cab.snapp.passenger.c.b f708a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    h f709b;
    @Inject
    c c;
    @Inject
    e d;
    @Inject
    d e;
    @Inject
    cab.snapp.passenger.f.b.b.c f;
    private final int h = 1348;
    private int i = R.id.view_favorite_add_address_map_parent;
    private LatLng j;
    private io.reactivex.b.c k;
    private GeocodeMasterModel l;
    private boolean m = false;
    private boolean n = true;
    private boolean o;
    private boolean p;

    /* access modifiers changed from: package-private */
    public final void a(String str, String str2, boolean z) {
        if (getPresenter() != null) {
            ((d) getPresenter()).onAddLocationStarted();
            LatLng latLng = this.j;
            if (latLng != null) {
                addDisposable(this.c.add(str, String.valueOf(latLng.latitude), String.valueOf(this.j.longitude), str2).subscribe(new g(z) {
                    private final /* synthetic */ boolean f$1;

                    {
                        this.f$1 = r2;
                    }

                    public final void accept(Object obj) {
                        b.this.a(this.f$1, (FavoriteModel) obj);
                    }
                }, new g() {
                    public final void accept(Object obj) {
                        b.this.c((Throwable) obj);
                    }
                }));
                return;
            }
            ((d) getPresenter()).onError(new Throwable("get location problem!"));
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(List list) throws Exception {
        a();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(Throwable th) throws Exception {
        a();
    }

    private void a() {
        if (getPresenter() != null) {
            ((d) getPresenter()).onAddLocationFinished();
        }
        handleBack();
    }

    /* access modifiers changed from: private */
    public void a(cab.snapp.mapmodule.a.b.c cVar) {
        int i2 = cVar.type;
        if (i2 != 2000) {
            if (i2 != 2012) {
                if (i2 != 2002) {
                    if (!(i2 != 2003 || getPresenter() == null || this.j == null)) {
                        ((d) getPresenter()).onLocationMoveFinished();
                        PinRequest pinRequest = new PinRequest(this.j.latitude, this.j.longitude);
                        pinRequest.setFormattedAddress();
                        addDisposable(this.e.getPin(pinRequest).subscribe(new g() {
                            public final void accept(Object obj) {
                                b.this.a((PinResponse) obj);
                            }
                        }, $$Lambda$b$jpxnczZVgXxfbSrfufzDzo0eaYo.INSTANCE));
                    }
                } else if (getPresenter() != null) {
                    ((d) getPresenter()).onLocationMoveStarted();
                }
            } else if (!this.o) {
                boolean z = true;
                this.o = true;
                HashMap value = this.f709b.getSearchResults().getValue();
                if (this.l == null && value != null && value.containsKey(g)) {
                    this.l = (GeocodeMasterModel) value.remove(g);
                }
                if (this.l != null) {
                    a instance = a.getInstance();
                    f fVar = new f(this.i, this.l.getLatLng().getLatitude(), this.l.getLatLng().getLongitude(), 15.0f);
                    instance.changeCenterWithZoom(fVar);
                } else {
                    z = false;
                }
                if (!z) {
                    Location savedLocation = this.d.getSavedLocation();
                    LatLng latLng = new LatLng(savedLocation.getLatitude(), savedLocation.getLongitude());
                    a instance2 = a.getInstance();
                    f fVar2 = new f(this.i, latLng.latitude, latLng.longitude, 15.0f);
                    instance2.changeCenterWithZoom(fVar2);
                }
            }
        } else if (cVar instanceof cab.snapp.mapmodule.a.b.a) {
            cab.snapp.mapmodule.a.b.a aVar = (cab.snapp.mapmodule.a.b.a) cVar;
            this.j = new LatLng(aVar.latitude, aVar.longitude);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(PinResponse pinResponse) throws Exception {
        if (pinResponse != null) {
            String changeNumbersBasedOnCurrentLocale = cab.snapp.passenger.f.g.changeNumbersBasedOnCurrentLocale(pinResponse.getSnappFormattedAddress());
            if (getPresenter() != null) {
                ((d) getPresenter()).onPinAddressUpdated(changeNumbersBasedOnCurrentLocale);
            }
        }
    }

    public void requestMyLocation() {
        Location location = this.d.getLocation();
        if (location != null && this.n) {
            a instance = a.getInstance();
            n nVar = new n(this.i, location.getLatitude(), location.getLongitude());
            instance.moveAnimated(nVar);
        }
        if (this.k == null) {
            this.k = this.d.getLocationObservable(true).subscribe(new g() {
                public final void accept(Object obj) {
                    b.this.a((Location) obj);
                }
            });
            addDisposable(this.k);
        } else {
            this.d.refreshLocation(true);
        }
        this.n = true;
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Location location) throws Exception {
        if (location instanceof NullLocation) {
            NullLocation nullLocation = (NullLocation) location;
            this.p = nullLocation.isBecauseDenyPermission();
            if (nullLocation.getLocationSettingException() != null) {
                ((d) getPresenter()).onLocationIsUnavailable(nullLocation.getLocationSettingException());
            } else if (!this.p) {
                if (getPresenter() != null && !this.d.isLocationEnabled() && !this.d.isLocationModeBatterySavingOrPhoneOnly()) {
                    ((d) getPresenter()).onLocationIsUnavailable(null);
                }
            } else if (getPresenter() != null && nullLocation.isPermanentlyDeniedPermission()) {
                ((d) getPresenter()).onPermissionRequestIsDenied();
            }
        } else if (location != null) {
            a instance = a.getInstance();
            n nVar = new n(this.i, location.getLatitude(), location.getLongitude());
            instance.moveAnimated(nVar);
            if (!this.m) {
                if (getActivity() != null && cab.snapp.c.g.isLocationPermissionGranted(getActivity())) {
                    a.getInstance().showUserLocationIndicator(this.i);
                }
                this.m = true;
            }
        }
    }

    public void requestEditLocationSetting(k kVar) {
        if (kVar != null) {
            this.d.requestEditLocationSetting(kVar, 1348);
        }
    }

    public void handleBack() {
        if (getRouter() != null) {
            ((e) getRouter()).navigateUp();
        }
    }

    public void navigateToSearch() {
        if (getRouter() != null) {
            this.l = null;
            Bundle bundle = new Bundle();
            bundle.putInt(SearchController.KEY_SEARCH_REQUEST_CODE, g.intValue());
            ((e) getRouter()).routeToSearchUnit(bundle);
        }
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            if (this.f708a.getMapType() == 2) {
                if (getPresenter() != null) {
                    ((d) getPresenter()).onInitialize(true);
                }
            } else if (getPresenter() != null) {
                ((d) getPresenter()).onInitialize(false);
            }
            addDisposable(a.getInstance().getEventsObservable().filter(new q() {
                public final boolean test(Object obj) {
                    return b.this.b((cab.snapp.mapmodule.a.b.c) obj);
                }
            }).subscribe(new g() {
                public final void accept(Object obj) {
                    b.this.a((cab.snapp.mapmodule.a.b.c) obj);
                }
            }));
            if (!(getController() == null || getRouter() == null)) {
                NavController overtheMapNavigationController = getController().getOvertheMapNavigationController();
                if (overtheMapNavigationController != null) {
                    ((e) getRouter()).setNavigationController(overtheMapNavigationController);
                }
            }
            this.n = false;
            if (!this.p) {
                requestMyLocation();
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ boolean b(cab.snapp.mapmodule.a.b.c cVar) throws Exception {
        return cVar.id == this.i;
    }

    public void onUnitResume() {
        super.onUnitResume();
        this.f.reportScreenName("Select Favorite Loaction Page");
        a.getInstance().showUserLocationIndicator(this.i);
        this.o = false;
        if (getPresenter() != null) {
            ((d) getPresenter()).showAddFavoriteDialogIfNeeded();
        }
    }

    public void onUnitPause() {
        super.onUnitPause();
        a.getInstance().hideUserLocationIndicator(this.i);
        if (getPresenter() != null) {
            ((d) getPresenter()).dismissAddFavoriteDialog();
        }
    }

    public void reportPopUpLocationPositiveButtonToAppMetrica() {
        cab.snapp.passenger.f.b.b.c.getInstance().sendNestedEventViaAppmetrica("Popup", new b.a().addKeyValue(FirebaseAnalytics.b.LOCATION, "yes").build());
    }

    public void reportPopUpLocationNegativeButtonClickedToAppMetrica() {
        cab.snapp.passenger.f.b.b.c.getInstance().sendNestedEventViaAppmetrica("Popup", new b.a().addKeyValue(FirebaseAnalytics.b.LOCATION, "no").build());
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void c(Throwable th) throws Exception {
        if (getPresenter() != null) {
            ((d) getPresenter()).onAddLocationFinished();
            ((d) getPresenter()).onError(th);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, FavoriteModel favoriteModel) throws Exception {
        if (getPresenter() != null) {
            ((d) getPresenter()).onFavoriteLocationAdded();
            if (z && new cab.snapp.passenger.f.n(getActivity()).createHomeScreenShortcut(favoriteModel) && getPresenter() != null) {
                ((d) getPresenter()).onShortcutCreated(favoriteModel);
            }
        }
        addDisposable(this.c.fetchAndRefreshData().subscribe(new g() {
            public final void accept(Object obj) {
                b.this.a((List) obj);
            }
        }, new g() {
            public final void accept(Object obj) {
                b.this.b((Throwable) obj);
            }
        }));
    }
}
