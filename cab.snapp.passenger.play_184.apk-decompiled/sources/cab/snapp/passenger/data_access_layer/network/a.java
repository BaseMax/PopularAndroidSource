package cab.snapp.passenger.data_access_layer.network;

import android.os.Build;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.f.e;
import cab.snapp.passenger.f.g;
import io.fabric.sdk.android.services.network.c;
import java.util.HashMap;

public final class a {
    public static String getClientId() {
        return "android_293ladfa12938176yfgsndf";
    }

    public static String getClientSecret() {
        return "as;dfh98129-9111.*(U)jsflsdf";
    }

    public static HashMap<String, String> getPublicHeaders() {
        HashMap<String, String> hashMap = new HashMap<>();
        HashMap hashMap2 = new HashMap();
        hashMap2.put(c.HEADER_CONTENT_TYPE, "application/json; charset=utf-8");
        hashMap.putAll(hashMap2);
        HashMap hashMap3 = new HashMap();
        String str = Build.VERSION.RELEASE;
        String deviceName = cab.snapp.c.a.getDeviceName();
        hashMap3.put("User-Agent", ("Android " + str + " ; " + deviceName + " ; Passenger/" + cab.snapp.passenger.c.VERSION_NAME).trim());
        hashMap.putAll(hashMap3);
        hashMap.putAll(a());
        HashMap hashMap4 = new HashMap();
        hashMap4.put("Package-Name", cab.snapp.passenger.c.APPLICATION_ID);
        hashMap.putAll(hashMap4);
        hashMap.putAll(b());
        HashMap hashMap5 = new HashMap();
        hashMap5.put("x-app-version-code", "184");
        hashMap.putAll(hashMap5);
        return hashMap;
    }

    public static HashMap<String, String> getPusherHeader() {
        return new HashMap<>(a());
    }

    public static HashMap<String, String> getOauthHeaders() {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.putAll(b());
        return hashMap;
    }

    private static HashMap<String, String> a() {
        HashMap<String, String> hashMap = new HashMap<>();
        e eVar = new e();
        String IUDXU = eVar.IUDXU();
        hashMap.put("X-u", IUDXU);
        hashMap.put("X-h", eVar.IUDXH(IUDXU));
        return hashMap;
    }

    private static HashMap<String, String> b() {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("locale", g.getCurrentActiveLocaleString());
        return hashMap;
    }

    public static HashMap<String, String> getSecureDeviceIdHeader() {
        HashMap<String, String> hashMap = new HashMap<>();
        if (BaseApplication.get(BaseApplication.getContext()) == null) {
            return hashMap;
        }
        String secureDeviceIdString = cab.snapp.c.a.getSecureDeviceIdString(BaseApplication.get(BaseApplication.getContext()));
        if (secureDeviceIdString.length() > 0) {
            hashMap.put("device_id", secureDeviceIdString);
        }
        return hashMap;
    }
}
