package com.google.android.gms.internal;

import android.os.Process;

final class fo implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Runnable f3149a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3150b;

    public fo(Runnable runnable, int i) {
        this.f3149a = runnable;
        this.f3150b = i;
    }

    public final void run() {
        Process.setThreadPriority(this.f3150b);
        this.f3149a.run();
    }
}
