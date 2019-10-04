package com.google.android.gms.common.util;

import android.os.Build;

public final class m {
    public static boolean isAtLeastN() {
        return Build.VERSION.SDK_INT >= 24;
    }

    public static boolean isAtLeastO() {
        return Build.VERSION.SDK_INT >= 26 || "O".equals(Build.VERSION.CODENAME) || Build.VERSION.CODENAME.startsWith("OMR") || Build.VERSION.CODENAME.startsWith("ODR");
    }

    public static boolean zzamh() {
        return Build.VERSION.SDK_INT >= 15;
    }

    public static boolean zzami() {
        return Build.VERSION.SDK_INT >= 16;
    }

    public static boolean zzamj() {
        return Build.VERSION.SDK_INT >= 17;
    }

    public static boolean zzamk() {
        return Build.VERSION.SDK_INT >= 18;
    }

    public static boolean zzaml() {
        return Build.VERSION.SDK_INT >= 19;
    }

    public static boolean zzamm() {
        return Build.VERSION.SDK_INT >= 20;
    }

    public static boolean zzamn() {
        return Build.VERSION.SDK_INT >= 21;
    }
}
