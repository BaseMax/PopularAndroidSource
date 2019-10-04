package cab.snapp.passenger.units.main;

import android.content.Intent;
import android.location.Location;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import androidx.lifecycle.Observer;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.Navigation;
import cab.snapp.arch.protocol.BaseController;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.b.a;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.activities.root.RootActivity;
import cab.snapp.passenger.c.e;
import cab.snapp.passenger.c.f;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.c.h;
import cab.snapp.passenger.data.models.AppmetricaEventParamsModel;
import cab.snapp.passenger.data.models.GeocodeMasterModel;
import cab.snapp.passenger.data.models.NullLocation;
import cab.snapp.passenger.data.models.OptionalConfig;
import cab.snapp.passenger.data.models.PlaceLatLng;
import cab.snapp.passenger.data.models.snapp_group.BannerItem;
import cab.snapp.passenger.data.models.snapp_group.ServiceItem;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.network.requests.CreditRequest;
import cab.snapp.passenger.data_access_layer.network.responses.ChangeLogSeenResponse;
import cab.snapp.passenger.data_access_layer.network.responses.ConfigResponse;
import cab.snapp.passenger.data_access_layer.network.responses.CreditResponse;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.j;
import cab.snapp.passenger.f.o;
import cab.snapp.passenger.f.p;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.search.SearchController;
import com.google.android.gms.common.api.k;
import com.google.android.gms.maps.model.LatLng;
import java.util.HashMap;
import java.util.UUID;
import javax.inject.Inject;

public class b extends BaseInteractor<f, d> {
    public static final String JEK_BOTTOM_SHEET_STATE_CHANNEL_KEY = UUID.randomUUID().toString();

    /* renamed from: MAIN_MAP_VIEW_ID */
    public static final int view_main_map = 2131362711;
    @Inject

    /* renamed from: a  reason: collision with root package name */
    o f910a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    cab.snapp.passenger.c.b f911b;
    @Inject
    g c;
    @Inject
    h d;
    @Inject
    f e;
    @Inject
    e f;
    @Inject
    d g;
    @Inject
    c h;
    @Inject
    a i;
    @Inject
    cab.snapp.passenger.f.b j;
    @Inject
    cab.snapp.passenger.c.d k;
    private final int l = 1001;
    private final int m = 1008;
    private NavController n;
    private NavController o;
    private j p;
    private int q = 0;
    private io.reactivex.b.c r;
    private io.reactivex.b.c s;
    private GeocodeMasterModel t;
    private boolean u = false;
    private boolean v;
    private boolean w = false;
    private String x;
    /* access modifiers changed from: private */
    public boolean y;

    /* access modifiers changed from: private */
    public static /* synthetic */ void a(CreditResponse creditResponse) throws Exception {
    }

    /* access modifiers changed from: private */
    public static /* synthetic */ void a(Throwable th) throws Exception {
    }

    /* access modifiers changed from: private */
    public static /* synthetic */ void b(Throwable th) throws Exception {
    }

    /* access modifiers changed from: private */
    public static /* synthetic */ void c(Throwable th) throws Exception {
    }

    public NavController getFooterNavController() {
        return this.n;
    }

    public NavController getHeaderNavController() {
        return this.o;
    }

    public boolean shouldShowShowCase() {
        if (getController() == null || getController().getOvertheMapNavigationController() == null || getController().getOvertheMapNavigationController().getCurrentDestination() == null || this.v || getController().getOvertheMapNavigationController().getCurrentDestination().getId() != R.id.overTheMapEmptyController) {
            return false;
        }
        return true;
    }

    /* access modifiers changed from: private */
    public void a(HashMap<Integer, GeocodeMasterModel> hashMap) {
        if (hashMap.containsKey(1001)) {
            this.t = hashMap.remove(1001);
        }
        GeocodeMasterModel geocodeMasterModel = this.t;
        if (geocodeMasterModel != null && geocodeMasterModel.getLatLng() != null) {
            cab.snapp.mapmodule.a instance = cab.snapp.mapmodule.a.getInstance();
            cab.snapp.mapmodule.a.a.e eVar = new cab.snapp.mapmodule.a.a.e(R.id.view_main_map, this.t.getLatLng().getLatitude(), this.t.getLatLng().getLongitude());
            instance.changeCenter(eVar);
        }
    }

    private void a(int i2) {
        if (getPresenter() != null) {
            j jVar = this.p;
            if (jVar != null) {
                jVar.setCurrentState(i2);
            }
            checkForUpdateBanner();
            this.f910a.cancelAll();
            switch (i2) {
                case 0:
                    new Handler().postDelayed(new Runnable() {
                        public final void run() {
                            b.this.c();
                        }
                    }, 2000);
                    ((d) getPresenter()).onIdle(R.drawable.ic_origin_unselected_marker);
                    ((d) getPresenter()).onUpdateLocationSelectorContentDescription(R.string.origin_pin_marker_desc);
                    break;
                case 1:
                    ((d) getPresenter()).onOriginSelected(R.drawable.ic_dest_unselected_marker);
                    break;
                case 2:
                    ((d) getPresenter()).onDestinationSelected();
                    break;
                case 3:
                    if (this.q == 0 && getRouter() != null) {
                        Bundle bundle = new Bundle();
                        bundle.putBoolean(cab.snapp.passenger.units.request_ride_waiting.a.SHOULD_REQUEST_KEY, false);
                        ((f) getRouter()).routeToWaiting(bundle);
                        break;
                    }
                case 4:
                    ((d) getPresenter()).onRideAccepted();
                    break;
                case 5:
                    ((d) getPresenter()).onDriverArrived();
                    break;
                case 6:
                    ((d) getPresenter()).onPassengerBoarded();
                    break;
                case 7:
                    ((d) getPresenter()).onFinished(R.drawable.ic_origin_unselected_marker);
                    if (getRouter() != null && !this.c.isRatingPassed() && getActivity() != null && (getActivity() instanceof RootActivity) && ((RootActivity) getActivity()).isVisible()) {
                        if (this.c.isPackageDelivery()) {
                            this.c.reset();
                            break;
                        } else {
                            ((d) getPresenter()).onNavigatingToRatingUnit();
                            ((f) getRouter()).routeToRating();
                            break;
                        }
                    }
            }
            this.q = i2;
        }
        int i3 = this.q;
        if (i3 == 0) {
            c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("setOrigin", "show").build());
            return;
        }
        if (i3 == 1) {
            c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("setDestination", "show").build());
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void c() {
        if (getRouter() != null && this.c.getFinishedRide() != null && getActivity() != null && (getActivity() instanceof RootActivity) && ((RootActivity) getActivity()).isVisible() && ((RootActivity) getActivity()).getOverTheMapNavController() != null) {
            NavDestination currentDestination = ((RootActivity) getActivity()).getOverTheMapNavController().getCurrentDestination();
            String string = getActivity().getResources().getString(R.string.ride_rating_label);
            if (currentDestination != null && !string.equals(currentDestination.getLabel())) {
                ((d) getPresenter()).onNavigatingToRatingUnit();
                ((f) getRouter()).routeToRating();
            }
        }
    }

    public void checkForUpdateBanner() {
        if (!(getActivity() == null || getActivity().isFinishing() || getPresenter() == null)) {
            Integer valueOf = Integer.valueOf(this.c.getCurrentState());
            if (valueOf.intValue() == 1 || valueOf.intValue() == 2 || valueOf.intValue() == 3 || valueOf.intValue() == 7 || this.f911b.isUpdateDeniedByUser()) {
                ((d) getPresenter()).onHideUpdateBanner();
            } else if (this.f911b.shouldUpdateBeforeRide() && valueOf.intValue() == 0) {
                ((d) getPresenter()).onShowUpdateBannerBeforeRide();
            } else if (!this.f911b.shouldUpdateInRide() || !(valueOf.intValue() == 4 || valueOf.intValue() == 5 || valueOf.intValue() == 6)) {
                ((d) getPresenter()).onHideUpdateBanner();
            } else {
                ((d) getPresenter()).onShowUpdateBannerInRide();
            }
        }
    }

    public void toggleDrawer() {
        if (getPresenter() != null) {
            ((d) getPresenter()).onToggleDrawer();
            this.f910a.cancelAll();
        }
    }

    private void a(Location location) {
        if (location != null && !this.w) {
            HashMap hashMap = new HashMap();
            hashMap.put("coordinate", String.valueOf(location.getLatitude()) + "," + String.valueOf(location.getLongitude()));
            this.h.reportEvent(c.e.CURRENT_LOCATION_IN_APP_LAUNCH, hashMap);
            this.w = true;
        }
    }

    public void reportTopUpModalDefaultCloseToAppMetrica() {
        c.getInstance().sendNestedEventViaAppmetrica("JekHome", new b.a().addKeyValue("TopUpModalDefault", "Close").build());
    }

    public void reportPopUpLocationPositiveButtonClickedToAppMetrica() {
        try {
            this.h.sendNestedEventViaAppmetrica("Popup", new b.a().addKeyValue("What'sNew", "yes").build());
        } catch (Exception e2) {
            e2.printStackTrace();
            com.a.a.a.logException(e2);
        }
    }

    public void reportPopUpLocationNegativeButtonClickedToAppMetrica() {
        try {
            this.h.sendNestedEventViaAppmetrica("Popup", new b.a().addKeyValue("What'sNew", "no").build());
        } catch (Exception e2) {
            e2.printStackTrace();
            com.a.a.a.logException(e2);
        }
    }

    public void navigateToSearch() {
        if (getRouter() != null) {
            Bundle bundle = new Bundle();
            if (this.c.getCurrentState() == 0) {
                this.h.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_SEARCH_ORIGIN, "[tap]");
                bundle.putInt(SearchController.KEY_IS_PUSHED_FOR, 1);
            } else if (this.c.getCurrentState() == 1) {
                this.h.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.MAIN_PAGE_SEARCH_DESTINATION, "[tap]");
                bundle.putInt(SearchController.KEY_IS_PUSHED_FOR, 2);
            }
            bundle.putInt(SearchController.KEY_SEARCH_REQUEST_CODE, 1001);
            ((f) getRouter()).routeToSearchUnit(bundle);
        }
    }

    public void navigateToWaiting(Bundle bundle) {
        if (getRouter() != null) {
            ((f) getRouter()).routeToWaiting(bundle);
            this.f910a.cancelAll();
        }
    }

    public synchronized void requestMyLocation() {
        if (!(this.p == null || this.f.getLocation() == null || ((this.c.getCurrentState() != 1 && this.c.getCurrentState() != 0) || !b()))) {
            this.p.handleOnLocationClicked(this.f.getLocation());
            if (this.c.getCurrentState() == 0) {
                c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("setOrigin", "tapLocationPin").build());
            } else if (this.c.getCurrentState() == 1) {
                c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("setDestination", "tapLocationPin").build());
            }
        }
        if (this.r == null) {
            this.r = this.f.getLocationObservable(true).subscribe(new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    b.this.c((Location) obj);
                }
            });
            addDisposable(this.r);
            return;
        }
        this.f.refreshLocation(true);
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void c(Location location) throws Exception {
        if ((this.c.getCurrentState() == 1 || this.c.getCurrentState() == 0) && b()) {
            if (!(location instanceof NullLocation) || getPresenter() == null) {
                j jVar = this.p;
                if (jVar != null) {
                    jVar.handleOnLocationClicked(location);
                }
                a(location);
            } else {
                NullLocation nullLocation = (NullLocation) location;
                if (nullLocation.getLocationSettingException() != null) {
                    ((d) getPresenter()).onLocationIsUnavailable(nullLocation.getLocationSettingException());
                } else if (!nullLocation.isBecauseDenyPermission()) {
                    if (!this.f.isLocationEnabled() && !this.f.isLocationModeBatterySavingOrPhoneOnly()) {
                        ((d) getPresenter()).onLocationIsUnavailable(null);
                    }
                } else if (nullLocation.isPermanentlyDeniedPermission()) {
                    ((d) getPresenter()).onPermissionRequestIsDenied();
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void a() {
        this.s = this.f.getLocationObservable(!this.y).subscribe(new io.reactivex.e.g() {
            public final void accept(Object obj) {
                b.this.b((Location) obj);
            }
        });
        addDisposable(this.s);
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(Location location) throws Exception {
        if ((this.c.getCurrentState() == 1 || this.c.getCurrentState() == 0) && b()) {
            if (!(location instanceof NullLocation) || getPresenter() == null) {
                j jVar = this.p;
                if (jVar != null) {
                    jVar.setCurrentLocation(location);
                }
                a(location);
            } else {
                NullLocation nullLocation = (NullLocation) location;
                this.y = nullLocation.isBecauseDenyPermission();
                if (nullLocation.getLocationSettingException() != null) {
                    ((d) getPresenter()).onLocationIsUnavailable(nullLocation.getLocationSettingException());
                } else if (!this.y) {
                    if (!this.f.isLocationEnabled() && !this.f.isLocationModeBatterySavingOrPhoneOnly()) {
                        ((d) getPresenter()).onLocationIsUnavailable(null);
                    }
                } else if (nullLocation.isPermanentlyDeniedPermission()) {
                    ((d) getPresenter()).onPermissionRequestIsDenied();
                }
            }
        }
        io.reactivex.b.c cVar = this.s;
        if (cVar != null) {
            cVar.dispose();
            this.s = null;
        }
    }

    /* access modifiers changed from: private */
    public boolean b() {
        return getController() == null || getController().getOvertheMapNavigationController() == null || getController().getOvertheMapNavigationController().getCurrentDestination() == null || getController().getOvertheMapNavigationController().getCurrentDestination().getId() == R.id.overTheMapEmptyController;
    }

    public void startUpdate() {
        if (getActivity() != null && !getActivity().isFinishing()) {
            ConfigResponse config = this.f911b.getConfig();
            if (config != null && config.getAppData() != null && config.getAppData().getUpdateUri() != null && !config.getAppData().getUpdateUri().isEmpty()) {
                String updateUri = config.getAppData().getUpdateUri();
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse(updateUri));
                getActivity().startActivity(intent);
            }
        }
    }

    public void denyUpdate() {
        this.f911b.denyUpdate();
    }

    public void handleSeenChangeLog(int i2) {
        addDisposable(this.g.requestSeenChangeLog(i2).subscribe(new io.reactivex.e.g() {
            public final void accept(Object obj) {
                b.this.a((ChangeLogSeenResponse) obj);
            }
        }, $$Lambda$b$BzPgYd0ToLsILcVqLf8FEpTPY.INSTANCE));
        try {
            this.h.sendNestedEventViaAppmetrica("Popup", new b.a().addKeyValue("What'sNew", "ok").build());
        } catch (Exception e2) {
            e2.printStackTrace();
            com.a.a.a.logException(e2);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(ChangeLogSeenResponse changeLogSeenResponse) throws Exception {
        this.f911b.removeChangeLogList();
    }

    public void handleDrawerOpened() {
        cab.snapp.passenger.data_access_layer.a.c.getInstance().emitToPrivateChannel(cab.snapp.passenger.units.sideMenu.a.getPrivateChannelId(), Boolean.TRUE);
        addDisposable(this.e.fetchAndRefreshCredit(CreditRequest.PLACE.SIDE_MENU_TOPUP).subscribe($$Lambda$b$MIiLQwInB6TkylwvoNQ1AinxF0.INSTANCE, $$Lambda$b$8UnBwpiqUHjDqr6r9VPd5grwE.INSTANCE));
        if (getActivity() instanceof RootActivity) {
            ((RootActivity) getActivity()).setIsDrawerOpened(true);
        }
    }

    public void handleDrawerClosed() {
        cab.snapp.passenger.data_access_layer.a.c.getInstance().emitToPrivateChannel(cab.snapp.passenger.units.sideMenu.a.getPrivateChannelId(), Boolean.FALSE);
        if (getActivity() instanceof RootActivity) {
            ((RootActivity) getActivity()).setIsDrawerOpened(false);
        }
    }

    public void handleJekBottomSheetOpened() {
        cab.snapp.passenger.data_access_layer.a.c.getInstance().emitToPrivateChannel(this.x, Boolean.TRUE);
        if (getActivity() instanceof RootActivity) {
            ((RootActivity) getActivity()).setJekBottomSheetOpened(true);
        }
        j jVar = this.p;
        if (jVar != null) {
            jVar.handleMapForJekScreen();
        }
        try {
            c.getInstance().sendNestedEventViaAppmetrica("JekHome", new b.a().addKeyValue("Show", "").build());
        } catch (Exception e2) {
            e2.printStackTrace();
            com.a.a.a.logException(e2);
        }
    }

    public void handleJekBottomSheetClosed() {
        cab.snapp.passenger.data_access_layer.a.c.getInstance().emitToPrivateChannel(this.x, Boolean.FALSE);
        if (getActivity() instanceof RootActivity) {
            ((RootActivity) getActivity()).setJekBottomSheetOpened(false);
        }
        j jVar = this.p;
        if (jVar != null) {
            jVar.handleMapForCabScreen();
        }
    }

    public void requestEditLocationSetting(k kVar) {
        if (kVar != null) {
            this.f.requestEditLocationSetting(kVar, 1008);
        }
    }

    public boolean isOriginCenterOfMap() {
        j jVar = this.p;
        if (jVar != null) {
            return cab.snapp.passenger.f.h.shouldShowCenterOfTehranDialog(new PlaceLatLng(jVar.centerLatitude, this.p.centerLongitude));
        }
        return false;
    }

    public void chargeItemClicked(ServiceItem serviceItem) {
        if (cab.snapp.c.f.isUserConnectedToNetwork(getActivity()) || getPresenter() == null) {
            this.h.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.HOMESCREEN_SNAPP_CHARGE, "[tap]");
            if (this.h.hasUserEmailProvided()) {
                this.h.sendWithAttributesViaAdjust(c.a.HOMESCREEN_CHARGE_OPEN, this.h.getUserEmail());
            }
            try {
                AppmetricaEventParamsModel appmetricaEventParamsModel = new AppmetricaEventParamsModel();
                appmetricaEventParamsModel.setCategory(c.C0021c.NEW_UX);
                appmetricaEventParamsModel.setAction(c.b.HOMESCREEN_SNAPP_CHARGE);
                appmetricaEventParamsModel.setLabel("[tap]");
                this.h.sendEventViaAppmetrica("Homescreen Choice SnappCharge", appmetricaEventParamsModel);
            } catch (Exception e2) {
                e2.printStackTrace();
                com.a.a.a.logException(e2);
            }
            try {
                c.getInstance().sendNestedEventViaAppmetrica("JekHome", new b.a().addKeyValue("Services", serviceItem.getAppmetricaTrackId()).build());
            } catch (Exception e3) {
                e3.printStackTrace();
                com.a.a.a.logException(e3);
            }
            if (!(getRouter() == null || getController() == null)) {
                ((f) getRouter()).routeToSnappChargeController(null);
            }
            return;
        }
        ((d) getPresenter()).onNoInternetConnection();
    }

    public void showCreditTopUp() {
        if (getRouter() != null) {
            try {
                c.getInstance().sendNestedEventViaAppmetrica("JekHome", new b.a().addKeyValue("TapTopUp", "").build());
            } catch (Exception e2) {
                e2.printStackTrace();
                com.a.a.a.logException(e2);
            }
        }
        if (getPresenter() != null) {
            ((d) getPresenter()).openBottomSheet();
        }
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
            boolean z = true;
            this.x = cab.snapp.passenger.data_access_layer.a.c.getInstance().getPrivateChannelId(JEK_BOTTOM_SHEET_STATE_CHANNEL_KEY);
            if (((MainController) getController()) != null) {
                if (getRouter() != null) {
                    ((f) getRouter()).setNavigationController(getController().getOvertheMapNavigationController());
                }
                if (this.c.getFinishedRide() != null && getActivity() != null && (getActivity() instanceof RootActivity) && ((RootActivity) getActivity()).isVisible()) {
                    new a(getActivity()).put("HAS_SEEN_JEK_TOUR_SHARED_PREF_KEY", Boolean.TRUE);
                } else if ((getActivity() instanceof RootActivity) && getRouter() != null) {
                    a aVar = new a(getActivity());
                    int currentState = this.c.getCurrentState();
                    if (this.c.isInRide() || currentState == 3) {
                        aVar.put("HAS_SEEN_JEK_TOUR_SHARED_PREF_KEY", Boolean.TRUE);
                    } else {
                        Boolean bool = (Boolean) aVar.get("HAS_SEEN_JEK_TOUR_SHARED_PREF_KEY");
                        if ((bool == null || !bool.booleanValue()) && this.k.isContentValid()) {
                            this.v = true;
                            ((f) getRouter()).routeToTourUnit();
                            aVar.put("HAS_SEEN_JEK_TOUR_SHARED_PREF_KEY", Boolean.TRUE);
                            this.f910a.cancelAll();
                        }
                    }
                }
                if (!this.v) {
                    ConfigResponse config = this.f911b.getConfig();
                    if (!(config == null || getPresenter() == null)) {
                        ((d) getPresenter()).onWhatsNewDataReady(config.getPassengerChangeLogList());
                    }
                }
                j jVar = new j(R.id.view_main_map, this.f911b, this.c, this.f, this.g, this.i);
                this.p = jVar;
                this.q = 0;
                if (getPresenter() != null) {
                    ((d) getPresenter()).onInitialize(this.f911b.getMapType() == 2);
                    this.n = Navigation.findNavController(((d) getPresenter()).getFooterContainerView());
                    this.o = Navigation.findNavController(((d) getPresenter()).getHeaderContainerView());
                }
                addDisposable(cab.snapp.mapmodule.a.getInstance().getEventsObservable().subscribe(new io.reactivex.e.g() {
                    public final void accept(Object obj) {
                        b.this.a((cab.snapp.mapmodule.a.b.c) obj);
                    }
                }));
                a(this.c.getCurrentState());
                addDisposable(this.c.getUpdateSignalObservable().subscribe(new io.reactivex.e.g() {
                    public final void accept(Object obj) {
                        b.this.a((Integer) obj);
                    }
                }));
                if (!this.u) {
                    addDisposable(this.f911b.fetchAndRefreshOptionalConfig().subscribe(new io.reactivex.e.g() {
                        public final void accept(Object obj) {
                            b.this.a((OptionalConfig) obj);
                        }
                    }, $$Lambda$b$Q_odJPuYFSXMHT5VTVvuk6jQeJU.INSTANCE));
                }
                addDisposable(cab.snapp.passenger.data_access_layer.a.c.getInstance().subscribeToPrivateChannel(cab.snapp.passenger.units.footer.ride_request_footer.a.getPrivateChannelId(), new io.reactivex.e.g<Boolean>() {
                    public final void accept(Boolean bool) throws Exception {
                        if (b.this.getPresenter() != null) {
                            ((d) b.this.getPresenter()).onUpdateMapBoxCopyRightStatus(Boolean.valueOf(!bool.booleanValue()));
                        }
                    }
                }));
                addDisposable(cab.snapp.passenger.data_access_layer.a.c.getInstance().subscribeToPrivateChannel(cab.snapp.passenger.units.tour.b.getTourFinishedPrivateChannelId(), new io.reactivex.e.g<Boolean>() {
                    public final void accept(Boolean bool) throws Exception {
                        if (bool.booleanValue() && b.this.c.getCurrentState() == 0 && !b.this.y && b.this.b()) {
                            b.this.a();
                        }
                    }
                }));
                addDisposable(cab.snapp.passenger.data_access_layer.a.c.getInstance().subscribeToPrivateChannel(cab.snapp.passenger.units.mainheader.a.getPrivateChannelId(), new io.reactivex.e.g<Boolean>() {
                    public final void accept(Boolean bool) throws Exception {
                        if (b.this.getPresenter() != null) {
                            ((d) b.this.getPresenter()).onUpdateMapBoxCopyRightStatus(Boolean.valueOf(!bool.booleanValue()));
                        }
                    }
                }));
                addDisposable(cab.snapp.passenger.data_access_layer.a.c.getInstance().subscribeToPrivateChannel(this.x, new io.reactivex.e.g() {
                    public final void accept(Object obj) {
                        b.this.a(obj);
                    }
                }));
                this.d.getSearchResults().observeForever(new Observer() {
                    public final void onChanged(Object obj) {
                        b.this.a((HashMap<Integer, GeocodeMasterModel>) (HashMap) obj);
                    }
                });
                if (getPresenter() != null) {
                    ((d) getPresenter()).setUserType(this.k.isContentValid());
                    if (this.k.isContentValid()) {
                        ((d) getPresenter()).setShouldShowJek(this.c.getCurrentState() == 0);
                        if (this.c.getCurrentState() == 0) {
                            if (this.i.get("FIRST_TIME_SEE_JEK") != null && ((Boolean) this.i.get("FIRST_TIME_SEE_JEK")).booleanValue()) {
                                z = false;
                            }
                            if (z) {
                                try {
                                    this.h.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.ONBOARDING_SNAPP_GROUP, "[show]");
                                } catch (Exception e2) {
                                    e2.printStackTrace();
                                    com.a.a.a.logException(e2);
                                }
                                a aVar2 = this.i;
                                if (aVar2 != null) {
                                    aVar2.put("FIRST_TIME_SEE_JEK", Boolean.TRUE);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Integer num) throws Exception {
        if (num.intValue() == 2000) {
            a(this.c.getCurrentState());
        } else if (num.intValue() == 1009) {
            this.p.setServiceType(this.c.getServiceType());
        } else if (num.intValue() == 1005) {
            this.p.updateSecondDestinationMarker();
        } else if (num.intValue() == 1012) {
            this.p.updateDriverMarker();
        } else {
            if (num.intValue() == 1015 && getRouter() != null) {
                Bundle bundle = new Bundle();
                bundle.putBoolean(cab.snapp.passenger.units.request_ride_waiting.a.SHOULD_REQUEST_KEY, false);
                ((f) getRouter()).routeToWaiting(bundle);
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(OptionalConfig optionalConfig) throws Exception {
        checkForUpdateBanner();
        this.u = true;
        if (optionalConfig != null && getPresenter() != null) {
            ((d) getPresenter()).onOptionalConfigIsReady(optionalConfig);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Object obj) throws Exception {
        if ((obj instanceof Boolean) && !((Boolean) obj).booleanValue()) {
            this.v = false;
            if (getPresenter() != null) {
                ((d) getPresenter()).onHandleShowCase();
            }
        }
    }

    public void onUnitResume() {
        super.onUnitResume();
        if (!(this.k.getBanners() == null || this.k.getServices() == null || this.k.getServiceTypes() == null)) {
            ((d) getPresenter()).onSnappJekDataProvided(this.k.getBanners(), this.k.getServices(), this.k.getServiceTypes());
        }
        if ((getActivity() instanceof RootActivity) && b()) {
            ((RootActivity) getActivity()).resetStatusBarColor();
        }
        this.h.reportScreenName("Map Screen");
        if (this.p != null && this.c.hasRideDeeplink()) {
            this.p.checkDeepLink();
            this.p.refreshCoordinationMarkers();
            if (getRouter() != null) {
                ((f) getRouter()).routeToEmpty();
            }
            if (getPresenter() != null) {
                ((d) getPresenter()).setShouldShowJek(false);
                ((d) getPresenter()).setHasDeeplink(true);
                ((d) getPresenter()).closeJekBottomSheet();
            }
        }
        if (!this.c.isInRide() && this.c.getCurrentState() != 3) {
            a(this.c.getCurrentState());
        }
        if (this.c.getCurrentState() != 6) {
            j jVar = this.p;
            if (jVar != null) {
                jVar.showUserLocationIndicator();
            }
        }
        if (this.c.getCurrentState() == 0 && !this.y && b()) {
            a();
        }
        if (getRouter() != null && this.j.hasPendingDeepLink()) {
            this.j.handleDeepLink(getRouter());
        }
    }

    public void onApplicationRootBackPressed() {
        super.onApplicationRootBackPressed();
        if (getPresenter() != null) {
            if (((d) getPresenter()).isDrawerOpened()) {
                ((d) getPresenter()).onClosingSideMenu();
            } else if (!((d) getPresenter()).isJekBottomSheetOpened() && this.k.isContentValid() && this.c.getCurrentState() == 0) {
                ((d) getPresenter()).openJekBottomSheet();
                if (this.q == 0) {
                    c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("setOrigin", "BackToJeK").build());
                }
            }
        }
    }

    public BaseController getController() {
        return super.getController();
    }

    public void onUnitPause() {
        super.onUnitPause();
        this.f910a.cancelAll();
        j jVar = this.p;
        if (jVar != null) {
            jVar.hideUserLocationIndicator();
        }
    }

    public void onDestroy() {
        super.onDestroy();
        j jVar = this.p;
        if (jVar != null) {
            jVar.dispose();
        }
        if (getPresenter() != null) {
            ((d) getPresenter()).release();
        }
    }

    public void handleLocationSelected() {
        if (this.c.getCurrentState() == 0) {
            c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("setOrigin", "pinFixed").build());
        } else if (this.c.getCurrentState() == 1) {
            c.getInstance().sendNestedEventViaAppmetrica("Pre-ride", new b.a().addKeyValue("setDestination", "pinFixed").build());
        }
        if (this.c.getCurrentState() == 0) {
            if (!isOriginCenterOfMap() || getPresenter() == null || ((d) getPresenter()).isEverInaccurateOriginDialogShown()) {
                this.c.setOriginLatLng(new LatLng(this.p.centerLatitude, this.p.centerLongitude));
                this.c.setOriginFormattedAddress(this.p.lastFormattedAddress);
                if (getPresenter() != null) {
                    ((d) getPresenter()).onUpdateLocationSelectorContentDescription(R.string.second_destination_pin_marker_desc);
                }
                GeocodeMasterModel geocodeMasterModel = this.t;
                if (geocodeMasterModel != null) {
                    p.requestLogOrigin(this.g, geocodeMasterModel.getId(), this.p.centerLatitude, this.p.centerLongitude);
                }
            } else {
                ((d) getPresenter()).handleInaccurateOriginSelectedLocation();
                return;
            }
        } else if (this.c.getCurrentState() == 1) {
            this.c.setDestinationLatLng(new LatLng(this.p.centerLatitude, this.p.centerLongitude));
            this.c.setDestinationFormattedAddress(this.p.lastFormattedAddress);
            this.c.setDestinationFormattedDetailsAddress(this.p.lastFormattedAddress);
            GeocodeMasterModel geocodeMasterModel2 = this.t;
            if (geocodeMasterModel2 != null) {
                p.requestLogDestination(this.g, geocodeMasterModel2.getId(), this.p.centerLatitude, this.p.centerLongitude);
            }
        }
        this.t = null;
    }

    public void itemCabClicked() {
        if (this.h.hasUserEmailProvided()) {
            this.h.sendWithAttributesViaAdjust(c.a.HOMESCREEN_CAB_OPEN, this.h.getUserEmail());
        }
        try {
            AppmetricaEventParamsModel appmetricaEventParamsModel = new AppmetricaEventParamsModel();
            appmetricaEventParamsModel.setCategory(c.C0021c.NEW_UX);
            appmetricaEventParamsModel.setAction(c.b.HOMESCREEN_SNAPP_CAB);
            appmetricaEventParamsModel.setLabel("[tap]");
            this.h.sendEventViaAppmetrica("Homescreen Choice Cab", appmetricaEventParamsModel);
            this.h.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.HOMESCREEN_SNAPP_CAB, "[tap]");
        } catch (Exception e2) {
            e2.printStackTrace();
            com.a.a.a.logException(e2);
        }
    }

    public void webHostedItemSelected(ServiceItem serviceItem) {
        int id = serviceItem.getId();
        if (id == 2) {
            this.h.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.HOMESCREEN_SNAPP_FLIGHT, "[tap]");
            if (this.h.hasUserEmailProvided()) {
                this.h.sendWithAttributesViaAdjust(c.a.HOMESCREEN_FLIGHT_OPEN, this.h.getUserEmail());
            }
            try {
                AppmetricaEventParamsModel appmetricaEventParamsModel = new AppmetricaEventParamsModel();
                appmetricaEventParamsModel.setCategory(c.C0021c.NEW_UX);
                appmetricaEventParamsModel.setAction(c.b.HOMESCREEN_SNAPP_FLIGHT);
                appmetricaEventParamsModel.setLabel("[tap]");
                this.h.sendEventViaAppmetrica("Homescreen Choice Flight", appmetricaEventParamsModel);
            } catch (Exception e2) {
                e2.printStackTrace();
                com.a.a.a.logException(e2);
            }
        } else if (id == 5) {
            this.h.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.HOMESCREEN_SNAPP_MALL, "[tap]");
            if (this.h.hasUserEmailProvided()) {
                this.h.sendWithAttributesViaAdjust(c.a.HOMESCREEN_MALL_OPEN, this.h.getUserEmail());
            }
            AppmetricaEventParamsModel appmetricaEventParamsModel2 = new AppmetricaEventParamsModel();
            appmetricaEventParamsModel2.setCategory(c.C0021c.NEW_UX);
            appmetricaEventParamsModel2.setAction(c.b.HOMESCREEN_SNAPP_MALL);
            appmetricaEventParamsModel2.setLabel("[tap]");
            this.h.sendEventViaAppmetrica("Homescreen Choice SnappMall", appmetricaEventParamsModel2);
        } else if (id == 6) {
            this.h.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.HOMESCREEN_SNAPP_FOOD, "[tap]");
            if (this.h.hasUserEmailProvided()) {
                this.h.sendWithAttributesViaAdjust(c.a.HOMESCREEN_FOOD_OPEN, this.h.getUserEmail());
            }
            try {
                AppmetricaEventParamsModel appmetricaEventParamsModel3 = new AppmetricaEventParamsModel();
                appmetricaEventParamsModel3.setCategory(c.C0021c.NEW_UX);
                appmetricaEventParamsModel3.setAction(c.b.HOMESCREEN_SNAPP_FOOD);
                appmetricaEventParamsModel3.setLabel("[tap]");
                this.h.sendEventViaAppmetrica("Homescreen Choice Food", appmetricaEventParamsModel3);
            } catch (Exception e3) {
                e3.printStackTrace();
                com.a.a.a.logException(e3);
            }
        } else if (id == 7 && this.h.hasUserEmailProvided()) {
            this.h.sendWithAttributesViaAdjust(c.a.HOMESCREEN_HOTEL_OPEN, this.h.getUserEmail());
        }
        try {
            c.getInstance().sendNestedEventViaAppmetrica("JekHome", new b.a().addKeyValue("Services", serviceItem.getAppmetricaTrackId()).build());
        } catch (Exception e4) {
            e4.printStackTrace();
            com.a.a.a.logException(e4);
        }
        if (getRouter() != null) {
            Bundle bundle = new Bundle();
            bundle.putParcelable(cab.snapp.passenger.units.webhost.a.SERVICE_ITEM_KEY, serviceItem);
            ((f) getRouter()).routeToWebHost(bundle);
        }
    }

    public void contentSelected(BannerItem bannerItem, int i2) {
        this.h.sendAnalyticsEvent(c.C0021c.NEW_UX, c.b.HOMESCREEN_NEWS, "[tap]");
        c cVar = this.h;
        String str = c.C0021c.NEW_UX;
        String str2 = c.b.HOMESCREEN_BANNER;
        cVar.sendAnalyticsEvent(str, str2, "[" + bannerItem.getReferralLink() + "][tap]");
        if (this.h.hasUserEmailProvided()) {
            if (i2 == 0) {
                this.h.sendWithAttributesViaAdjust(c.a.HOMESCREEN_BANNER_1, this.h.getUserEmail());
                AppmetricaEventParamsModel appmetricaEventParamsModel = new AppmetricaEventParamsModel();
                appmetricaEventParamsModel.setCategory(c.C0021c.NEW_UX);
                appmetricaEventParamsModel.setAction(c.b.HOMESCREEN_BANNER);
                appmetricaEventParamsModel.setLabel("[tap]");
                this.h.sendEventViaAppmetrica("Homescreen Choice Banner 1", appmetricaEventParamsModel);
            } else if (i2 == 1) {
                this.h.sendWithAttributesViaAdjust(c.a.HOMESCREEN_BANNER_2, this.h.getUserEmail());
                AppmetricaEventParamsModel appmetricaEventParamsModel2 = new AppmetricaEventParamsModel();
                appmetricaEventParamsModel2.setCategory(c.C0021c.NEW_UX);
                appmetricaEventParamsModel2.setAction(c.b.HOMESCREEN_BANNER);
                appmetricaEventParamsModel2.setLabel("[tap]");
                this.h.sendEventViaAppmetrica("Homescreen Choice Banner 2", appmetricaEventParamsModel2);
            }
        }
        try {
            c.getInstance().sendNestedEventViaAppmetrica("JekHome", new b.a().addKeyValue("Banners", bannerItem.getAppmetricaTrackId()).build());
        } catch (Exception e2) {
            e2.printStackTrace();
            com.a.a.a.logException(e2);
        }
        if (getRouter() != null) {
            Bundle bundle = new Bundle();
            bundle.putString(cab.snapp.passenger.units.webhost.a.CONTENT_URL_KEY, bannerItem.getReferralLink());
            bundle.putBoolean(cab.snapp.passenger.units.webhost.a.IS_TOP_BAR_HIDDEN, bannerItem.isTopBarHidden());
            ((f) getRouter()).routeToWebHost(bundle);
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(cab.snapp.mapmodule.a.b.c cVar) throws Exception {
        if (cVar.id == R.id.view_main_map && getPresenter() != null) {
            int i2 = cVar.type;
            if (i2 == 2002) {
                ((d) getPresenter()).onMapStartMoving();
            } else if (i2 == 2003) {
                ((d) getPresenter()).onMapStoppedMoving();
            }
        }
        if (getActivity() != null && (getActivity() instanceof RootActivity)) {
            ((RootActivity) getActivity()).hideLoadingForSnappCabItemClickedFromSnappServices();
        }
        this.p.handleEvent(cVar);
    }
}
