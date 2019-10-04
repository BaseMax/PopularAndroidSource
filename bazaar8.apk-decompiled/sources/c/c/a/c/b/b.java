package c.c.a.c.b;

import android.content.Context;
import android.net.ConnectivityManager;
import android.telephony.TelephonyManager;
import b.i.f.a;
import h.f.b.j;

/* compiled from: ContextExt.kt */
public final class b {
    public static final String a(Context context) {
        j.b(context, "$this$getNetworkOperator");
        Object systemService = context.getSystemService("phone");
        if (!(systemService instanceof TelephonyManager)) {
            systemService = null;
        }
        TelephonyManager telephonyManager = (TelephonyManager) systemService;
        if (telephonyManager == null) {
            return "unknown";
        }
        String networkOperator = telephonyManager.getNetworkOperator();
        if (networkOperator == null) {
            return "unknown";
        }
        switch (networkOperator.hashCode()) {
            case 47834357:
                if (networkOperator.equals("26207")) {
                    return "O2_Germany";
                }
                break;
            case 47897777:
                if (networkOperator.equals("28601")) {
                    networkOperator = "Turkcell";
                    break;
                }
                break;
            case 49564152:
                if (networkOperator.equals("42402")) {
                    return "Etisalat";
                }
                break;
            case 49592051:
                if (networkOperator.equals("43211")) {
                    return "MCI";
                }
                break;
            case 49592081:
                if (networkOperator.equals("43220")) {
                    return "Rightel";
                }
                break;
            case 49592114:
                if (networkOperator.equals("43232")) {
                    return "Taliya";
                }
                break;
            case 49592117:
                if (networkOperator.equals("43235")) {
                    return "Irancell";
                }
                break;
            case 49592236:
                if (networkOperator.equals("43270")) {
                    return "TCI";
                }
                break;
        }
        return networkOperator;
    }

    public static final String b(Context context) {
        String str;
        j.b(context, "$this$getNetworkType");
        Object systemService = context.getSystemService("phone");
        if (!(systemService instanceof TelephonyManager)) {
            systemService = null;
        }
        TelephonyManager telephonyManager = (TelephonyManager) systemService;
        String str2 = "Unknown";
        if (telephonyManager != null) {
            if (c(context)) {
                return "WIFI";
            }
            try {
                switch (telephonyManager.getNetworkType()) {
                    case 0:
                        break;
                    case 1:
                        str = "GPRS";
                        break;
                    case 2:
                        str = "EDGE";
                        break;
                    case 3:
                        str = "UMTS";
                        break;
                    case 4:
                        str = "CDMA";
                        break;
                    case 5:
                        str = "EVDO rev. 0";
                        break;
                    case 6:
                        str = "EVDO rev. A";
                        break;
                    case 7:
                        str = "1xRTT";
                        break;
                    case 8:
                        str = "HSDPA";
                        break;
                    case 9:
                        str = "HSUPA";
                        break;
                    case 10:
                        str = "HSPA";
                        break;
                    case 11:
                        str = "iDen";
                        break;
                    case 12:
                        str = "EVDO rev. B";
                        break;
                    case 13:
                        str = "LTE";
                        break;
                    case 14:
                        str = "eHRPD";
                        break;
                    case 15:
                        str = "HSPA+";
                        break;
                }
                str2 = str;
            } catch (Exception unused) {
            }
        }
        return str2;
    }

    public static final boolean c(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null || a.a(connectivityManager)) {
            return false;
        }
        return true;
    }
}
