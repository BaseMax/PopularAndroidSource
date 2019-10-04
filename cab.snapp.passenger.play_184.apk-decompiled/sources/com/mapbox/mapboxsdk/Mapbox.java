package com.mapbox.mapboxsdk;

import android.content.Context;
import com.mapbox.mapboxsdk.constants.MapboxConstants;
import com.mapbox.mapboxsdk.exceptions.MapboxConfigurationException;
import com.mapbox.mapboxsdk.log.Logger;
import com.mapbox.mapboxsdk.maps.TelemetryDefinition;
import com.mapbox.mapboxsdk.net.ConnectivityReceiver;
import com.mapbox.mapboxsdk.storage.FileSource;
import com.mapbox.mapboxsdk.utils.ThreadUtils;

public final class Mapbox {
    private static Mapbox INSTANCE = null;
    private static final String TAG = "Mbgl-Mapbox";
    private static ModuleProvider moduleProvider;
    private String accessToken;
    private AccountsManager accounts;
    private Context context;
    private TelemetryDefinition telemetry;

    public static synchronized Mapbox getInstance(Context context2, String str) {
        Mapbox mapbox;
        synchronized (Mapbox.class) {
            ThreadUtils.init(context2);
            ThreadUtils.checkThread(TAG);
            if (INSTANCE == null) {
                Context applicationContext = context2.getApplicationContext();
                FileSource.initializeFileDirsPaths(applicationContext);
                INSTANCE = new Mapbox(applicationContext, str);
                if (isAccessTokenValid(str)) {
                    initializeTelemetry();
                    INSTANCE.accounts = new AccountsManager();
                }
                ConnectivityReceiver.instance(applicationContext);
            }
            mapbox = INSTANCE;
        }
        return mapbox;
    }

    Mapbox(Context context2, String str) {
        this.context = context2;
        this.accessToken = str;
    }

    public static String getAccessToken() {
        validateMapbox();
        return INSTANCE.accessToken;
    }

    public static void setAccessToken(String str) {
        validateMapbox();
        Mapbox mapbox = INSTANCE;
        mapbox.accessToken = str;
        TelemetryDefinition telemetryDefinition = mapbox.telemetry;
        if (telemetryDefinition != null) {
            telemetryDefinition.disableTelemetrySession();
            INSTANCE.telemetry = null;
        }
        if (isAccessTokenValid(str)) {
            initializeTelemetry();
            INSTANCE.accounts = new AccountsManager();
        } else {
            INSTANCE.accounts = null;
        }
        FileSource.getInstance(getApplicationContext()).setAccessToken(str);
    }

    public static String getSkuToken() {
        AccountsManager accountsManager = INSTANCE.accounts;
        if (accountsManager != null) {
            return accountsManager.getSkuToken();
        }
        throw new MapboxConfigurationException("A valid access token parameter is required when using a Mapbox service.\nPlease see https://www.mapbox.com/help/create-api-access-token/ to learn how to create one.\nMore information in this guide https://www.mapbox.com/help/first-steps-android-sdk/#access-tokens.Currently provided token is: " + INSTANCE.accessToken);
    }

    public static Context getApplicationContext() {
        validateMapbox();
        return INSTANCE.context;
    }

    public static synchronized void setConnected(Boolean bool) {
        synchronized (Mapbox.class) {
            validateMapbox();
            ConnectivityReceiver.instance(INSTANCE.context).setConnected(bool);
        }
    }

    public static synchronized Boolean isConnected() {
        Boolean valueOf;
        synchronized (Mapbox.class) {
            validateMapbox();
            valueOf = Boolean.valueOf(ConnectivityReceiver.instance(INSTANCE.context).isConnected());
        }
        return valueOf;
    }

    private static void initializeTelemetry() {
        try {
            INSTANCE.telemetry = getModuleProvider().obtainTelemetry();
        } catch (Exception e) {
            Logger.e(TAG, "Error occurred while initializing telemetry", e);
            MapStrictMode.strictModeViolation("Error occurred while initializing telemetry", e);
        }
    }

    public static TelemetryDefinition getTelemetry() {
        return INSTANCE.telemetry;
    }

    public static ModuleProvider getModuleProvider() {
        if (moduleProvider == null) {
            moduleProvider = new ModuleProviderImpl();
        }
        return moduleProvider;
    }

    private static void validateMapbox() {
        if (INSTANCE == null) {
            throw new MapboxConfigurationException();
        }
    }

    static boolean isAccessTokenValid(String str) {
        if (str == null) {
            return false;
        }
        String lowerCase = str.trim().toLowerCase(MapboxConstants.MAPBOX_LOCALE);
        if (lowerCase.length() == 0 || (!lowerCase.startsWith("pk.") && !lowerCase.startsWith("sk."))) {
            return false;
        }
        return true;
    }

    public static boolean hasInstance() {
        return INSTANCE != null;
    }
}
