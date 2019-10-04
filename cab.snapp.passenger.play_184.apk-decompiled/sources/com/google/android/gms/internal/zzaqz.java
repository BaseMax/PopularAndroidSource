package com.google.android.gms.internal;

public enum zzaqz {
    NONE,
    GZIP;

    public static zzaqz zzee(String str) {
        return "GZIP".equalsIgnoreCase(str) ? GZIP : NONE;
    }
}
