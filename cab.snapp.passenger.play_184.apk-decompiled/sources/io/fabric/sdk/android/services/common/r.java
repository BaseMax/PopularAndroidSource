package io.fabric.sdk.android.services.common;

import android.os.SystemClock;
import android.util.Log;

public final class r {

    /* renamed from: a  reason: collision with root package name */
    private final String f6616a;

    /* renamed from: b  reason: collision with root package name */
    private final String f6617b;
    private final boolean c;
    private long d;
    private long e;

    public r(String str, String str2) {
        this.f6616a = str;
        this.f6617b = str2;
        this.c = !Log.isLoggable(str2, 2);
    }

    public final synchronized void startMeasuring() {
        if (!this.c) {
            this.d = SystemClock.elapsedRealtime();
            this.e = 0;
        }
    }

    public final synchronized void stopMeasuring() {
        if (!this.c) {
            if (this.e == 0) {
                this.e = SystemClock.elapsedRealtime() - this.d;
                StringBuilder sb = new StringBuilder();
                sb.append(this.f6616a);
                sb.append(": ");
                sb.append(this.e);
                sb.append("ms");
            }
        }
    }

    public final long getDuration() {
        return this.e;
    }
}
