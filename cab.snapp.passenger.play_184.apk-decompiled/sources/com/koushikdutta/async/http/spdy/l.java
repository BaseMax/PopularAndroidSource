package com.koushikdutta.async.http.spdy;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

final class l {

    /* renamed from: a  reason: collision with root package name */
    private final CountDownLatch f4807a = new CountDownLatch(1);

    /* renamed from: b  reason: collision with root package name */
    private long f4808b = -1;
    private long c = -1;

    l() {
    }

    public final void send() {
        if (this.f4808b == -1) {
            this.f4808b = System.nanoTime();
            return;
        }
        throw new IllegalStateException();
    }

    public final void receive() {
        if (this.c != -1 || this.f4808b == -1) {
            throw new IllegalStateException();
        }
        this.c = System.nanoTime();
        this.f4807a.countDown();
    }

    public final long roundTripTime() throws InterruptedException {
        this.f4807a.await();
        return this.c - this.f4808b;
    }

    public final long roundTripTime(long j, TimeUnit timeUnit) throws InterruptedException {
        if (this.f4807a.await(j, timeUnit)) {
            return this.c - this.f4808b;
        }
        return -2;
    }
}
