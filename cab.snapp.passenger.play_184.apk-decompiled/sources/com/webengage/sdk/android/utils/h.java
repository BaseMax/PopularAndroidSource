package com.webengage.sdk.android.utils;

import java.lang.reflect.InvocationTargetException;

public class h {
    public static Object a(String str, String str2, Class<?>[] clsArr, Object[] objArr) {
        try {
            return Class.forName(str).getMethod(str2, clsArr).invoke(null, objArr);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }

    public static boolean a() {
        try {
            Class.forName("com.google.android.gms.gcm.GoogleCloudMessaging");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static boolean b() {
        try {
            Class.forName("com.google.android.gms.location.i");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static boolean c() {
        try {
            Class.forName("com.google.android.gms.common.api.f");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static boolean d() {
        try {
            Class.forName("com.google.android.gms.location.LocationResult");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static boolean e() {
        try {
            Class.forName("com.google.android.gms.location.c");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static boolean f() {
        try {
            Class.forName("com.google.android.gms.location.GeofencingRequest");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static boolean g() {
        try {
            Class.forName("com.google.android.gms.location.f");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static boolean h() {
        try {
            Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static boolean i() {
        try {
            Class.forName("com.webengage.cordova.WebEngagePlugin");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }
}
