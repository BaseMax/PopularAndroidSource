package com.google.android.gms.internal;

import android.os.Build;

public final class be {
    public static int version() {
        try {
            return Integer.parseInt(Build.VERSION.SDK);
        } catch (NumberFormatException unused) {
            bo.zzf("Invalid version number", Build.VERSION.SDK);
            return 0;
        }
    }
}
