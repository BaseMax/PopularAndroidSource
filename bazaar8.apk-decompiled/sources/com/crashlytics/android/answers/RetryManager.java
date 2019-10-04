package com.crashlytics.android.answers;

import e.a.a.a.a.c.a.e;

public class RetryManager {
    public static final long NANOSECONDS_IN_MS = 1000000;
    public long lastRetry;
    public e retryState;

    public RetryManager(e eVar) {
        if (eVar != null) {
            this.retryState = eVar;
            return;
        }
        throw new NullPointerException("retryState must not be null");
    }

    public boolean canRetry(long j2) {
        return j2 - this.lastRetry >= this.retryState.a() * NANOSECONDS_IN_MS;
    }

    public void recordRetry(long j2) {
        this.lastRetry = j2;
        this.retryState = this.retryState.c();
    }

    public void reset() {
        this.lastRetry = 0;
        this.retryState = this.retryState.b();
    }
}
