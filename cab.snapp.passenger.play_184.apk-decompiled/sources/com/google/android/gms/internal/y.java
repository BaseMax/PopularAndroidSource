package com.google.android.gms.internal;

import com.google.android.gms.common.j;

public final class y {
    public static final String VERSION = String.valueOf(j.GOOGLE_PLAY_SERVICES_VERSION_CODE / 1000).replaceAll("(\\d+)(\\d)(\\d\\d)", "$1.$2.$3");
    public static final String zzdtc;

    static {
        String valueOf = String.valueOf(VERSION);
        zzdtc = valueOf.length() != 0 ? "ma".concat(valueOf) : new String("ma");
    }
}
