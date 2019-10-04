package com.webengage.sdk.android.actions.database;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.nfc.NfcAdapter;
import android.nfc.NfcManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.webengage.sdk.android.utils.e;

class x {
    private static String a(int i) {
        switch (i) {
            case 0:
                return "UNKNOWN";
            case 1:
                return "GPRS";
            case 2:
                return "EDGE";
            case 3:
                return "UMTS";
            case 4:
                return "CDMA";
            case 5:
                return "EVDO_0";
            case 6:
                return "EVDO_A";
            case 7:
                return "1xRTT";
            case 8:
                return "HSDPA";
            case 9:
                return "HSUPA";
            case 10:
                return "HSPA";
            case 11:
                return "IDEN";
            case 12:
                return "EVDO_B";
            default:
                return "UNKNOWN";
        }
    }

    public static String a(Context context) {
        if (e.a("android.permission.ACCESS_NETWORK_STATE", context)) {
            return ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
        }
        return null;
    }

    public static String b(Context context) {
        if (e.a("android.permission.ACCESS_NETWORK_STATE", context)) {
            return a(((TelephonyManager) context.getSystemService("phone")).getNetworkType());
        }
        return null;
    }

    public static boolean c(Context context) {
        try {
            return Build.VERSION.SDK_INT < 17 ? Settings.System.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0 : Settings.Global.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0;
        } catch (Exception unused) {
        }
    }

    public static boolean d(Context context) {
        try {
            if (Build.VERSION.SDK_INT >= 10) {
                NfcAdapter defaultAdapter = ((NfcManager) context.getSystemService("nfc")).getDefaultAdapter();
                if (defaultAdapter != null && defaultAdapter.isEnabled()) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static Boolean e(Context context) {
        if (e.a("android.permission.ACCESS_WIFI_STATE", context)) {
            return Boolean.valueOf(((ConnectivityManager) context.getSystemService("connectivity")).getNetworkInfo(1).isConnected());
        }
        return null;
    }

    public static Boolean f(Context context) {
        if (!e.a("android.permission.BLUETOOTH", context)) {
            return null;
        }
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        return Boolean.valueOf(defaultAdapter != null && defaultAdapter.isEnabled());
    }

    public static Boolean g(Context context) {
        if (e.a("android.permission.ACCESS_FINE_LOCATION", context)) {
            return Boolean.valueOf(((LocationManager) context.getSystemService(FirebaseAnalytics.b.LOCATION)).isProviderEnabled("gps"));
        }
        return null;
    }
}
