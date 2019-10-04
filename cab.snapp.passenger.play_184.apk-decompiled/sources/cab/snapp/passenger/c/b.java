package cab.snapp.passenger.c;

import android.content.Context;
import cab.snapp.b.a;
import cab.snapp.passenger.data.models.OptionalConfig;
import cab.snapp.passenger.data_access_layer.a.d;
import cab.snapp.passenger.data_access_layer.network.responses.ConfigResponse;
import cab.snapp.passenger.data_access_layer.network.responses.OptionalConfigResponse;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.snappnetwork.model.f;
import com.adjust.sdk.Adjust;
import io.reactivex.e.g;
import io.reactivex.z;
import javax.inject.Inject;

public final class b {

    /* renamed from: a  reason: collision with root package name */
    private Context f451a;

    /* renamed from: b  reason: collision with root package name */
    private d f452b;
    private a c;
    private c d;
    private io.reactivex.j.b<ConfigResponse> e = io.reactivex.j.b.create();
    private io.reactivex.j.b<OptionalConfig> f = io.reactivex.j.b.create();
    private ConfigResponse g = null;
    private OptionalConfig h = null;
    private io.reactivex.b.c i;

    @Inject
    public b(Context context, d dVar, c cVar) {
        this.f452b = dVar;
        this.d = cVar;
        setContext(context);
        setPreferencesManager(new a(context));
        a aVar = this.c;
        if (aVar != null && aVar.containsKey("Config_Data_Manager_Key_Config")) {
            this.g = (ConfigResponse) this.c.get("Config_Data_Manager_Key_Config");
        }
        a aVar2 = this.c;
        if (aVar2 != null && aVar2.containsKey("Config_Data_Manager_Key_Optional_Config")) {
            this.h = (OptionalConfig) this.c.get("Config_Data_Manager_Key_Optional_Config");
        }
    }

    public final void setContext(Context context) {
        this.f451a = context;
    }

    public final void setPreferencesManager(a aVar) {
        this.c = aVar;
    }

    public final ConfigResponse getConfig() {
        return this.g;
    }

    public final OptionalConfig getOptionalConfig() {
        return this.h;
    }

    public final z<ConfigResponse> getConfigObservable() {
        return this.e;
    }

    public final z<OptionalConfig> getOptionalConfigObservable() {
        return this.f;
    }

    public final z<ConfigResponse> fetchAndRefreshConfig() {
        return this.f452b.getConfig(this.f451a).doOnNext(new g() {
            public final void accept(Object obj) {
                b.this.a((ConfigResponse) obj);
            }
        });
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(ConfigResponse configResponse) throws Exception {
        this.g = configResponse;
        this.e.onNext(configResponse);
        a aVar = this.c;
        if (aVar != null) {
            aVar.put("Config_Data_Manager_Key_Config", configResponse);
        }
        ConfigResponse configResponse2 = this.g;
        if (!(configResponse2 == null || configResponse2.getFollowedApps() == null)) {
            a.checkDualAppsAndSendToServer(this.f451a, this.g.getFollowedApps(), this.f452b);
        }
        if (needFingerPrint()) {
            try {
                String adid = Adjust.getAdid();
                if (adid != null && !adid.isEmpty()) {
                    this.i = this.f452b.sendFingerPrint(adid).subscribe(new g() {
                        public final void accept(Object obj) {
                            b.this.a((f) obj);
                        }
                    }, new g() {
                        public final void accept(Object obj) {
                            b.this.a((Throwable) obj);
                        }
                    });
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                com.a.a.a.logException(e2);
            }
        }
        ConfigResponse configResponse3 = this.g;
        if (!(configResponse3 == null || configResponse3.getMapBoxToken() == null || this.g.getMapBoxToken().isEmpty())) {
            c cVar = this.d;
            String str = c.C0021c.TECHNICAL;
            String str2 = c.b.Problem;
            cVar.sendAnalyticsEvent(str, str2, "MapBox Token - PassengerMasterActivity : " + this.g.getMapBoxToken());
        }
        this.d.reportUserAttributes(this.g);
        this.d.sendUserProfileToAppmetrica(this.g);
    }

    public final z<ConfigResponse> refreshConfigForRideState() {
        return this.f452b.getConfig(this.f451a);
    }

    public final z<OptionalConfig> fetchAndRefreshOptionalConfig() {
        return this.f452b.getOptionalConfig().doOnNext(new g() {
            public final void accept(Object obj) {
                b.this.b((OptionalConfigResponse) obj);
            }
        }).map($$Lambda$b$TWlHMPBNd3Ok4h8nYPxlZZvzQXE.INSTANCE);
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void b(OptionalConfigResponse optionalConfigResponse) throws Exception {
        if (optionalConfigResponse != null) {
            this.h = optionalConfigResponse.getOptionalConfig();
            this.f.onNext(optionalConfigResponse.getOptionalConfig());
            a(optionalConfigResponse.getOptionalConfig());
            return;
        }
        a((OptionalConfig) null);
    }

    /* access modifiers changed from: private */
    public static /* synthetic */ OptionalConfig a(OptionalConfigResponse optionalConfigResponse) throws Exception {
        if (optionalConfigResponse != null) {
            return optionalConfigResponse.getOptionalConfig();
        }
        return null;
    }

    private void a(OptionalConfig optionalConfig) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.put("Config_Data_Manager_Key_Optional_Config", optionalConfig);
        }
    }

    public final boolean mustUpdateApp() {
        ConfigResponse configResponse = this.g;
        return (configResponse == null || configResponse.getAppData() == null || this.g.getAppData().getLatestSupportedVersionCode() <= 184) ? false : true;
    }

    public final boolean needFingerPrint() {
        ConfigResponse configResponse = this.g;
        return (configResponse == null || configResponse.getProfileResponse() == null || !this.g.getProfileResponse().isNeedFingerPrint()) ? false : true;
    }

    public final boolean isUpdateDeniedByUser() {
        if (this.h != null) {
            a aVar = this.c;
            if (aVar != null && aVar.containsKey("Config_Data_Manager_Key_Deny_Update_Version")) {
                String str = (String) this.c.get("Config_Data_Manager_Key_Deny_Update_Version");
                if (str != null && str.equalsIgnoreCase(this.h.getVersionName())) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void denyUpdate() {
        OptionalConfig optionalConfig = this.h;
        if (optionalConfig != null) {
            a aVar = this.c;
            if (aVar != null) {
                aVar.put("Config_Data_Manager_Key_Deny_Update_Version", optionalConfig.getVersionName());
            }
        }
    }

    public final boolean shouldUpdateBeforeRide() {
        ConfigResponse configResponse = this.g;
        if (!(configResponse == null || configResponse.getAppData() == null || this.g.getAppData().getLatestVersionCode() <= 184)) {
            OptionalConfig optionalConfig = this.h;
            if (optionalConfig != null && (optionalConfig.getShowType().equalsIgnoreCase(OptionalConfig.TYPE_MAIN_SCREEN) || this.h.getShowType().equalsIgnoreCase(OptionalConfig.TYPE_BOTH))) {
                return true;
            }
        }
        return false;
    }

    public final boolean shouldUpdateInRide() {
        ConfigResponse configResponse = this.g;
        if (!(configResponse == null || configResponse.getAppData() == null || this.g.getAppData().getLatestVersionCode() <= 184)) {
            OptionalConfig optionalConfig = this.h;
            if (optionalConfig != null && (optionalConfig.getShowType().equalsIgnoreCase(OptionalConfig.TYPE_IN_RIDE) || this.h.getShowType().equalsIgnoreCase(OptionalConfig.TYPE_BOTH))) {
                return true;
            }
        }
        return false;
    }

    public final int getMapType() {
        ConfigResponse configResponse = this.g;
        if (configResponse == null || ((configResponse.getAbTest() != null && this.g.getAbTest().isMap()) || this.g.getMapType() != 1)) {
            return 2;
        }
        return 1;
    }

    public final String getMapBoxToken() {
        ConfigResponse configResponse = this.g;
        return configResponse != null ? configResponse.getMapBoxToken() : "";
    }

    public final String getMapBoxStyleUrl() {
        ConfigResponse configResponse = this.g;
        return configResponse != null ? configResponse.getMapBoxStyleUrl() : "";
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(f fVar) throws Exception {
        io.reactivex.b.c cVar = this.i;
        if (cVar != null) {
            cVar.dispose();
        }
    }

    /* access modifiers changed from: private */
    public /* synthetic */ void a(Throwable th) throws Exception {
        io.reactivex.b.c cVar = this.i;
        if (cVar != null) {
            cVar.dispose();
        }
    }

    public final void removeChangeLogList() {
        ConfigResponse configResponse = this.g;
        if (configResponse != null) {
            configResponse.setPassengerChangeLogList(null);
        }
    }

    public final void reset() {
        this.g = null;
        a aVar = this.c;
        if (aVar != null) {
            aVar.delete("Config_Data_Manager_Key_Config");
            this.c.delete("Config_Data_Manager_Key_Optional_Config");
        }
    }
}
