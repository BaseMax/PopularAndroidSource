package com.yandex.metrica.impl;

import android.os.SystemClock;

class u {

    /* renamed from: a  reason: collision with root package name */
    private long f6523a = (SystemClock.elapsedRealtime() - 2000000);

    /* renamed from: b  reason: collision with root package name */
    private boolean f6524b = true;

    u() {
    }

    /* access modifiers changed from: package-private */
    public boolean a() {
        boolean z = this.f6524b;
        this.f6524b = false;
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.f6523a;
        if (!z || elapsedRealtime <= 1000) {
            return false;
        }
        return true;
    }

    /* access modifiers changed from: package-private */
    public void b() {
        this.f6524b = true;
        this.f6523a = SystemClock.elapsedRealtime();
    }

    /* access modifiers changed from: package-private */
    public boolean c() {
        return this.f6524b;
    }
}
