package com.google.android.gms.common.util;

import android.os.SystemClock;

public final class e implements d {

    /* renamed from: a  reason: collision with root package name */
    private static e f3006a = new e();

    private e() {
    }

    public static d zzamg() {
        return f3006a;
    }

    public final long currentTimeMillis() {
        return System.currentTimeMillis();
    }

    public final long elapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }

    public final long nanoTime() {
        return System.nanoTime();
    }
}
