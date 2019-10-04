package com.bumptech.glide.g;

import android.os.Build;
import android.os.SystemClock;

public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final double f2077a;

    static {
        double d = 1.0d;
        if (Build.VERSION.SDK_INT >= 17) {
            d = 1.0d / Math.pow(10.0d, 6.0d);
        }
        f2077a = d;
    }

    private f() {
    }

    public static long getLogTime() {
        if (Build.VERSION.SDK_INT >= 17) {
            return SystemClock.elapsedRealtimeNanos();
        }
        return SystemClock.uptimeMillis();
    }

    public static double getElapsedMillis(long j) {
        double logTime = (double) (getLogTime() - j);
        double d = f2077a;
        Double.isNaN(logTime);
        return logTime * d;
    }
}
