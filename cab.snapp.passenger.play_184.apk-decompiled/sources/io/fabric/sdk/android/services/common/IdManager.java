package io.fabric.sdk.android.services.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.provider.Settings;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.i;
import io.fabric.sdk.android.l;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;
import org.eclipse.paho.a.a.w;

public final class IdManager {
    public static final String COLLECT_DEVICE_IDENTIFIERS = "com.crashlytics.CollectDeviceIdentifiers";
    public static final String COLLECT_USER_IDENTIFIERS = "com.crashlytics.CollectUserIdentifiers";
    public static final String DEFAULT_VERSION_NAME = "0.0";
    private static final Pattern d = Pattern.compile("[^\\p{Alnum}]");
    private static final String e = Pattern.quote(w.TOPIC_LEVEL_SEPARATOR);

    /* renamed from: a  reason: collision with root package name */
    c f6580a;

    /* renamed from: b  reason: collision with root package name */
    b f6581b;
    boolean c;
    private final ReentrantLock f = new ReentrantLock();
    private final n g;
    private final boolean h;
    private final boolean i;
    private final Context j;
    private final String k;
    private final String l;
    private final Collection<i> m;

    public enum DeviceIdentifierType {
        WIFI_MAC_ADDRESS(1),
        BLUETOOTH_MAC_ADDRESS(2),
        FONT_TOKEN(53),
        ANDROID_ID(100),
        ANDROID_DEVICE_ID(101),
        ANDROID_SERIAL(102),
        ANDROID_ADVERTISING_ID(103);
        
        public final int protobufIndex;

        private DeviceIdentifierType(int i) {
            this.protobufIndex = i;
        }
    }

    @Deprecated
    public final String createIdHeaderValue(String str, String str2) {
        return "";
    }

    @Deprecated
    public final String getBluetoothMacAddress() {
        return null;
    }

    @Deprecated
    public final String getSerialNumber() {
        return null;
    }

    @Deprecated
    public final String getTelephonyId() {
        return null;
    }

    @Deprecated
    public final String getWifiMacAddress() {
        return null;
    }

    public IdManager(Context context, String str, String str2, Collection<i> collection) {
        if (context == null) {
            throw new IllegalArgumentException("appContext must not be null");
        } else if (str == null) {
            throw new IllegalArgumentException("appIdentifier must not be null");
        } else if (collection != null) {
            this.j = context;
            this.k = str;
            this.l = str2;
            this.m = collection;
            this.g = new n();
            this.f6580a = new c(context);
            this.h = i.getBooleanResourceValue(context, COLLECT_DEVICE_IDENTIFIERS, true);
            if (!this.h) {
                l logger = c.getLogger();
                logger.d(c.TAG, "Device ID collection disabled for " + context.getPackageName());
            }
            this.i = i.getBooleanResourceValue(context, COLLECT_USER_IDENTIFIERS, true);
            if (!this.i) {
                l logger2 = c.getLogger();
                logger2.d(c.TAG, "User information collection disabled for " + context.getPackageName());
            }
        } else {
            throw new IllegalArgumentException("kits must not be null");
        }
    }

    public final boolean canCollectUserIds() {
        return this.i;
    }

    private static String a(String str) {
        if (str == null) {
            return null;
        }
        return d.matcher(str).replaceAll("").toLowerCase(Locale.US);
    }

    public final String getAppInstallIdentifier() {
        String str = this.l;
        if (str != null) {
            return str;
        }
        SharedPreferences sharedPrefs = i.getSharedPrefs(this.j);
        String string = sharedPrefs.getString("crashlytics.installation.id", null);
        return string == null ? a(sharedPrefs) : string;
    }

    public final String getAppIdentifier() {
        return this.k;
    }

    public final String getOsVersionString() {
        return getOsDisplayVersionString() + w.TOPIC_LEVEL_SEPARATOR + getOsBuildVersionString();
    }

    public final String getOsDisplayVersionString() {
        return b(Build.VERSION.RELEASE);
    }

    public final String getOsBuildVersionString() {
        return b(Build.VERSION.INCREMENTAL);
    }

    public final String getModelName() {
        return String.format(Locale.US, "%s/%s", new Object[]{b(Build.MANUFACTURER), b(Build.MODEL)});
    }

    private static String b(String str) {
        return str.replaceAll(e, "");
    }

    public final String getDeviceUUID() {
        if (!this.h) {
            return "";
        }
        String androidId = getAndroidId();
        if (androidId != null) {
            return androidId;
        }
        SharedPreferences sharedPrefs = i.getSharedPrefs(this.j);
        String string = sharedPrefs.getString("crashlytics.installation.id", null);
        return string == null ? a(sharedPrefs) : string;
    }

    private String a(SharedPreferences sharedPreferences) {
        this.f.lock();
        try {
            String string = sharedPreferences.getString("crashlytics.installation.id", null);
            if (string == null) {
                string = a(UUID.randomUUID().toString());
                sharedPreferences.edit().putString("crashlytics.installation.id", string).commit();
            }
            return string;
        } finally {
            this.f.unlock();
        }
    }

    public final Map<DeviceIdentifierType, String> getDeviceIdentifiers() {
        HashMap hashMap = new HashMap();
        for (i next : this.m) {
            if (next instanceof l) {
                for (Map.Entry next2 : ((l) next).getDeviceIdentifiers().entrySet()) {
                    a(hashMap, (DeviceIdentifierType) next2.getKey(), (String) next2.getValue());
                }
            }
        }
        a(hashMap, DeviceIdentifierType.ANDROID_ID, getAndroidId());
        a(hashMap, DeviceIdentifierType.ANDROID_ADVERTISING_ID, getAdvertisingId());
        return Collections.unmodifiableMap(hashMap);
    }

    public final String getInstallerPackageName() {
        return this.g.getInstallerPackageName(this.j);
    }

    private synchronized b a() {
        if (!this.c) {
            this.f6581b = this.f6580a.getAdvertisingInfo();
            this.c = true;
        }
        return this.f6581b;
    }

    public final Boolean isLimitAdTrackingEnabled() {
        if (this.h) {
            b a2 = a();
            if (a2 != null) {
                return Boolean.valueOf(a2.limitAdTrackingEnabled);
            }
        }
        return null;
    }

    public final String getAdvertisingId() {
        if (this.h) {
            b a2 = a();
            if (a2 != null) {
                return a2.advertisingId;
            }
        }
        return null;
    }

    private static void a(Map<DeviceIdentifierType, String> map, DeviceIdentifierType deviceIdentifierType, String str) {
        if (str != null) {
            map.put(deviceIdentifierType, str);
        }
    }

    public final String getAndroidId() {
        if (this.h) {
            String string = Settings.Secure.getString(this.j.getContentResolver(), "android_id");
            if (!"9774d56d682e549c".equals(string)) {
                return a(string);
            }
        }
        return null;
    }
}
