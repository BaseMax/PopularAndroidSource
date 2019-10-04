package com.google.android.gms.analytics;

import androidx.core.app.NotificationCompat;
import com.google.android.gms.internal.bo;

public final class l {
    private static String a(String str, int i) {
        if (i <= 0) {
            bo.zzf("index out of range for prefix", str);
            return "";
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 11);
        sb.append(str);
        sb.append(i);
        return sb.toString();
    }

    public static String zzai(int i) {
        return a("&cd", i);
    }

    public static String zzaj(int i) {
        return a("cd", i);
    }

    public static String zzak(int i) {
        return a("&cm", i);
    }

    public static String zzal(int i) {
        return a("cm", i);
    }

    public static String zzam(int i) {
        return a("&pr", i);
    }

    public static String zzan(int i) {
        return a("pr", i);
    }

    public static String zzao(int i) {
        return a("&promo", i);
    }

    public static String zzap(int i) {
        return a(NotificationCompat.CATEGORY_PROMO, i);
    }

    public static String zzaq(int i) {
        return a("pi", i);
    }

    public static String zzar(int i) {
        return a("&il", i);
    }

    public static String zzas(int i) {
        return a("il", i);
    }

    public static String zzat(int i) {
        return a("cd", i);
    }

    public static String zzau(int i) {
        return a("cm", i);
    }
}
