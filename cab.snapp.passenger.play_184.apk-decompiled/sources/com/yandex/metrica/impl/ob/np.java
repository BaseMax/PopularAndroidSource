package com.yandex.metrica.impl.ob;

import android.os.SystemClock;

public class np implements nq {
    public long a() {
        return System.currentTimeMillis();
    }

    public long b() {
        return System.currentTimeMillis() / 1000;
    }

    public long c() {
        return SystemClock.elapsedRealtime();
    }
}
