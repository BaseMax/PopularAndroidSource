package com.a.a.a;

import io.fabric.sdk.android.services.concurrency.a.g;

final class z {

    /* renamed from: a  reason: collision with root package name */
    long f1699a;

    /* renamed from: b  reason: collision with root package name */
    private g f1700b;

    public z(g gVar) {
        if (gVar != null) {
            this.f1700b = gVar;
            return;
        }
        throw new NullPointerException("retryState must not be null");
    }

    public final boolean canRetry(long j) {
        return j - this.f1699a >= this.f1700b.getRetryDelay() * 1000000;
    }

    public final void recordRetry(long j) {
        this.f1699a = j;
        this.f1700b = this.f1700b.nextRetryState();
    }

    public final void reset() {
        this.f1699a = 0;
        this.f1700b = this.f1700b.initialRetryState();
    }
}
