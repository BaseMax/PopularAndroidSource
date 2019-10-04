package com.yandex.metrica.impl;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final long f5656a = TimeUnit.SECONDS.toMillis(10);

    /* renamed from: b  reason: collision with root package name */
    private final Handler f5657b;
    /* access modifiers changed from: private */
    public final CountDownLatch c;

    public a() {
        this(new CountDownLatch(1), new Handler(Looper.getMainLooper()));
    }

    public a(CountDownLatch countDownLatch, Handler handler) {
        this.c = countDownLatch;
        this.f5657b = handler;
    }

    public void a() {
        this.f5657b.postDelayed(new Runnable() {
            public void run() {
                a.this.c.countDown();
            }
        }, f5656a);
    }

    public void b() {
        try {
            this.c.await();
        } catch (InterruptedException unused) {
        }
    }
}
