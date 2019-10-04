package cab.snapp.passenger.units.splash;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Parcelable;
import cab.snapp.arch.protocol.BaseInteractor;
import cab.snapp.authenticator.c;
import cab.snapp.c.f;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.c.b;
import cab.snapp.passenger.c.d;
import cab.snapp.passenger.c.g;
import cab.snapp.passenger.data_access_layer.network.responses.ConfigResponse;
import cab.snapp.passenger.data_access_layer.network.responses.SnappGroupContentResponse;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.k;
import cab.snapp.passenger.play.R;
import cab.snapp.passenger.units.welcome.WelcomeController;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;
import javax.inject.Inject;

public class a extends BaseInteractor<d, c> {
    public static final String SNAPP_ADD_ACCOUNT_FROM_SETTINGS = "SNAPP_ADD_ACCOUNT_FROM_SETTINGS";
    public static final String UNIQUE_ID = UUID.randomUUID().toString();
    @Inject

    /* renamed from: a  reason: collision with root package name */
    cab.snapp.b.a f1314a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    b f1315b;
    @Inject
    g c;
    @Inject
    d d;
    @Inject
    c e;
    @Inject
    cab.snapp.authenticator.c f;
    @Inject
    cab.snapp.passenger.data_access_layer.network.b g;
    @Inject
    cab.snapp.b h;
    private String i = "";
    private boolean j;

    public static String getPrivateChannelId() {
        return cab.snapp.passenger.data_access_layer.a.c.getInstance().getPrivateChannelId(UNIQUE_ID);
    }

    public void navigateToSignup() {
        if (getRouter() != null) {
            ((d) getRouter()).routeToSignUpController();
        }
    }

    public void navigateToLogin() {
        if (getRouter() != null) {
            ((d) getRouter()).routeToLogInController();
        }
    }

    public void changeLocale(int i2) {
        if (getActivity() != null && cab.snapp.passenger.f.g.changeAppLocale(getActivity(), i2)) {
            int savedLocale = cab.snapp.passenger.f.g.getSavedLocale();
            String str = savedLocale != 10 ? savedLocale != 20 ? savedLocale != 30 ? savedLocale != 40 ? savedLocale != 50 ? "" : "Arabic" : "Turki" : "French" : "English" : "Persian";
            HashMap hashMap = new HashMap();
            hashMap.put("language", str);
            this.e.reportEvent(c.e.APP_LANGUAGE, hashMap);
        }
    }

    public void handleChangeServerEndPointClick() {
        if (cab.snapp.passenger.f.a.isEndpointSwitchEnabled()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(cab.snapp.passenger.data_access_layer.network.b.DEV_1);
            arrayList.add(cab.snapp.passenger.data_access_layer.network.b.DEV_2);
            arrayList.add(cab.snapp.passenger.data_access_layer.network.b.DEV_3);
            arrayList.add(cab.snapp.passenger.data_access_layer.network.b.DEV_CLOUD_1);
            arrayList.add(cab.snapp.passenger.data_access_layer.network.b.DEV_CLOUD_2);
            arrayList.add(cab.snapp.passenger.data_access_layer.network.b.DEV_CLOUD_3);
            arrayList.add(cab.snapp.passenger.data_access_layer.network.b.DEV_CLOUD_5);
            arrayList.add(cab.snapp.passenger.data_access_layer.network.b.MASTER_REP);
            if (getPresenter() != null) {
                ((c) getPresenter()).onShowEndPointSelectionDialog(arrayList);
            }
        }
    }

    public void changeServerEndPoint(String str) {
        if (getActivity() != null) {
            cab.snapp.b.a aVar = this.f1314a;
            if (aVar != null) {
                aVar.put(cab.snapp.passenger.data_access_layer.network.b.SWITCH_PASSENGER_ENDPOINT_PREF_KEY, str);
            }
            BaseApplication.doRestart();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(SnappGroupContentResponse snappGroupContentResponse) throws Exception {
        if (getPresenter() != null) {
            ((c) getPresenter()).onGetConfigSucceed();
        }
        d();
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(Throwable th) throws Exception {
        if (getPresenter() != null) {
            ((c) getPresenter()).onGetConfigSucceed();
        }
        d();
    }

    /* access modifiers changed from: protected */
    public final void a() {
        if (getActivity() != null) {
            if (f.isUserConnectedToNetwork(getActivity()) || getPresenter() == null) {
                addDisposable(this.f1315b.fetchAndRefreshConfig().subscribe(new io.reactivex.e.g() {
                    public final void accept(Object obj) {
                        a.this.a((ConfigResponse) obj);
                    }
                }, new io.reactivex.e.g() {
                    public final void accept(Object obj) {
                        a.this.a((Throwable) obj);
                    }
                }));
                return;
            }
            ((c) getPresenter()).onNoInternetConnection();
            ((c) getPresenter()).onGetConfigFailed();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(ConfigResponse configResponse) throws Exception {
        if (configResponse.getSnappGroupLastModificationTimestamp() == 0 && getPresenter() != null) {
            ((c) getPresenter()).onGetConfigSucceed();
        }
        handleConfigResponse(configResponse);
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Throwable th) throws Exception {
        if (getPresenter() != null) {
            ((c) getPresenter()).onGetConfigFailed();
        }
    }

    public void handleConfigResponse(ConfigResponse configResponse) {
        c cVar = this.e;
        if (!(cVar == null || configResponse == null)) {
            cVar.setUserProfile(configResponse.getProfileResponse());
        }
        if (!(configResponse == null || configResponse.getAppData() == null || configResponse.getAppData().getUpdateUri() == null || configResponse.getAppData().getUpdateUri().isEmpty())) {
            this.i = configResponse.getAppData().getUpdateUri();
        }
        if (configResponse != null) {
            if (this.e.hasUserEmailProvided()) {
                this.e.sendWithAttributesViaAdjust(c.a.APP_OPEN, this.e.getUserEmail());
                if (this.d.isContentValid()) {
                    this.e.sendWithAttributesViaAdjust(c.a.APP_OPEN_JEK, this.e.getUserEmail());
                } else {
                    this.e.sendWithAttributesViaAdjust(c.a.APP_OPEN_NON_JEK, this.e.getUserEmail());
                }
            } else {
                this.e.sendEventViaAdjust(c.a.APP_OPEN);
            }
        }
        if (!(configResponse == null || configResponse.getSnappUssd() == null)) {
            cab.snapp.passenger.f.a.a.setSnappUssd(configResponse.getSnappUssd());
        }
        if (configResponse == null || configResponse.getSnappGroupLastModificationTimestamp() == 0) {
            d();
            return;
        }
        long snappGroupLastModificationTimestamp = configResponse.getSnappGroupLastModificationTimestamp();
        if (this.f.isUserAuthorized()) {
            addDisposable(this.d.fetchContents(snappGroupLastModificationTimestamp).subscribe(new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    a.this.a((SnappGroupContentResponse) obj);
                }
            }, new io.reactivex.e.g() {
                public final void accept(Object obj) {
                    a.this.b((Throwable) obj);
                }
            }));
        }
    }

    private void d() {
        if (this.f1315b.getConfig() == null) {
            a();
            return;
        }
        if (getActivity() != null && !getActivity().isFinishing()) {
            k.initMap(getActivity(), this.f1315b.getMapType(), this.f1315b.getMapBoxToken(), this.f1315b.getMapBoxStyleUrl());
        }
        this.f1315b.getConfig();
        e();
    }

    private void a(boolean z) {
        if (!(getRouter() == null || ((d) getRouter()).addWelcomeController(new WelcomeController(), R.id.splash_footer_container) == null)) {
            this.j = true;
        }
        if (getPresenter() != null) {
            ((c) getPresenter()).onWelcomeChildIsAdded(!z);
        }
    }

    public void onUnitCreated() {
        super.onUnitCreated();
        if (getActivity() != null) {
            BaseApplication.get(getActivity()).getDataManagerComponent().inject(this);
        }
        ((c) getPresenter()).setStatusBarColor();
        this.e.reportScreenName("");
    }

    public void onUnitResume() {
        super.onUnitResume();
        if (this.f1314a == null || !cab.snapp.passenger.f.a.isDevCloudQAEnabled() || getPresenter() == null) {
            handleDefaultOnUnitResume();
        } else if (this.f1314a.containsKey(cab.snapp.passenger.data_access_layer.network.b.SWITCH_PASSENGER_DYNAMIC_ENDPOINT_PREF_KEY)) {
            ((c) getPresenter()).showInputDialogForQAEndpoints((String) this.f1314a.get(cab.snapp.passenger.data_access_layer.network.b.SWITCH_PASSENGER_DYNAMIC_ENDPOINT_PREF_KEY));
        } else {
            ((c) getPresenter()).showInputDialogForQAEndpoints("");
        }
    }

    public void handleDefaultOnUnitResume() {
        if (getRouter() != null) {
            if (!this.f.isUserAuthorized()) {
                this.e.reportLogOutUser();
            }
            if (com.google.android.gms.common.b.getInstance().isGooglePlayServicesAvailable(getActivity()) != 0) {
                if (getPresenter() != null) {
                    ((c) getPresenter()).showGplaySericeNotInstalled();
                }
            } else if (this.f.isUserAuthorized()) {
                this.f.getAuthToken(new c.b() {
                    public final void onTokenReceived(String str) {
                        a.this.a(str);
                    }
                });
            } else {
                init();
            }
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(String str) {
        if (getActivity() != null) {
            if (str != null) {
                init();
            } else if (getActivity() != null) {
                this.f.removeAccount(getActivity());
                getActivity().finish();
            }
        }
    }

    public void init() {
        if (getActivity() == null || getActivity().getIntent() == null || getActivity().getIntent().getExtras() == null || !getActivity().getIntent().getExtras().getBoolean(SNAPP_ADD_ACCOUNT_FROM_SETTINGS, false)) {
            if (this.f.isUserAuthorized()) {
                if (getPresenter() != null) {
                    ((c) getPresenter()).onReadyForFirstTime();
                }
                a();
                if (getRouter() != null && this.j) {
                    ((d) getRouter()).removeWelcomeController();
                }
            } else if (!this.j) {
                if (getPresenter() != null) {
                    ((c) getPresenter()).onReadyForFirstTime();
                }
                a();
            } else if (getPresenter() != null) {
                ((c) getPresenter()).onWelcomeChildIsAdded(false);
            }
        } else if (this.f.isUserAuthorized()) {
            if (getRouter() != null && this.j) {
                ((d) getRouter()).removeWelcomeController();
            }
            if (getPresenter() != null) {
                ((c) getPresenter()).onReadyForFirstTime();
            }
            a();
        } else if (!this.j) {
            a(true);
        } else if (getPresenter() != null) {
            ((c) getPresenter()).onWelcomeChildIsAdded(false);
        }
        if (getPresenter() != null && cab.snapp.passenger.f.a.isEndpointSwitchEnabled()) {
            ((c) getPresenter()).onVersionNameIsReady(cab.snapp.passenger.c.VERSION_NAME, cab.snapp.passenger.data_access_layer.network.b.BASE_URL);
        }
    }

    /* access modifiers changed from: package-private */
    public final void b() {
        if (!(getController() == null || getController().getContext() == null)) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse(this.i));
                getController().getContext().startActivity(intent);
            } catch (Exception e2) {
                e2.printStackTrace();
                com.a.a.a.logException(e2);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void c() {
        d();
    }

    public void closeApp() {
        if (getActivity() != null) {
            getActivity().finish();
        }
        System.exit(0);
    }

    public void downloadGplayService() {
        if (getActivity() != null) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse("https://play.google.com/store/apps/details?id=com.google.android.gms"));
                intent.setPackage("com.android.vending");
                getActivity().startActivity(intent);
                closeApp();
            } catch (ActivityNotFoundException e2) {
                e2.printStackTrace();
                com.a.a.a.logException(e2);
                try {
                    ArrayList arrayList = new ArrayList();
                    Intent intent2 = new Intent("android.intent.action.VIEW");
                    intent2.setData(Uri.parse("https://play.google.com/store/apps/details?id=com.google.android.gms"));
                    for (ResolveInfo resolveInfo : getActivity().getPackageManager().queryIntentActivities(intent2, 0)) {
                        String str = resolveInfo.activityInfo.packageName;
                        if (!str.equals("com.farsitel.bazaar") && !str.equals("ir.mservices.market") && !str.equals("ir.tgbs.android.iranapp") && !str.equals("net.jhoobin.jhub.charkhune")) {
                            Intent intent3 = new Intent("android.intent.action.VIEW");
                            intent3.setPackage(str);
                            intent3.setData(Uri.parse("https://play.google.com/store/apps/details?id=com.google.android.gms"));
                            arrayList.add(intent3);
                        }
                    }
                    Intent createChooser = Intent.createChooser((Intent) arrayList.remove(0), "");
                    createChooser.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) arrayList.toArray(new Parcelable[arrayList.size()]));
                    getActivity().startActivity(createChooser);
                    closeApp();
                } catch (Exception e3) {
                    e3.printStackTrace();
                    com.a.a.a.logException(e3);
                    Intent intent4 = new Intent("android.intent.action.VIEW");
                    intent4.setData(Uri.parse("https://play.google.com/store/apps/details?id=com.google.android.gms"));
                    getActivity().startActivity(intent4);
                    closeApp();
                }
            }
        }
    }

    public void changeDynamicEndpoint(String str) {
        cab.snapp.b.a aVar = this.f1314a;
        if (aVar != null) {
            aVar.put(cab.snapp.passenger.data_access_layer.network.b.SWITCH_PASSENGER_DYNAMIC_ENDPOINT_PREF_KEY, str);
            this.g.initialize(this.f1314a);
            handleDefaultOnUnitResume();
        }
    }

    private void e() {
        if (!this.f.isUserAuthorized()) {
            a(false);
        } else if (getRouter() != null) {
            this.h.init();
            cab.snapp.b.a aVar = new cab.snapp.b.a(getActivity());
            if (!aVar.containsKey("HAS_SEEN_SKIPPABLE_PHONE_VERIFICATION_SHARED_PREF_KEY") && aVar.containsKey("first_time_sign_up") && (aVar.get("first_time_sign_up") instanceof Boolean) && ((Boolean) aVar.get("first_time_sign_up")).booleanValue()) {
                aVar.put("first_time_sign_up", Boolean.FALSE);
                aVar.put("HAS_SEEN_SKIPPABLE_PHONE_VERIFICATION_SHARED_PREF_KEY", Boolean.TRUE);
                ((d) getRouter()).goToSkippablePhoneVerificationUnit();
            }
            ((d) getRouter()).routeToMainController();
        }
    }
}
