package com.webengage.sdk.android;

import android.content.BroadcastReceiver;
import android.content.Intent;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

class ar implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private boolean f5513a = false;

    /* renamed from: b  reason: collision with root package name */
    private ScheduledFuture f5514b = null;
    private BroadcastReceiver.PendingResult c = null;
    private Intent d = null;

    private ar() {
    }

    ar(Intent intent, ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, BroadcastReceiver.PendingResult pendingResult) {
        this.d = intent;
        this.f5514b = scheduledThreadPoolExecutor.schedule(this, 8000, TimeUnit.MILLISECONDS);
        this.c = pendingResult;
    }

    public Intent a() {
        return this.d;
    }

    public synchronized void b() {
        if (this.c != null && !this.f5513a) {
            try {
                this.c.finish();
                this.f5514b.cancel(false);
                this.f5513a = true;
            } catch (Exception e) {
                Logger.e("WebEngage", e.toString());
            }
        }
    }

    public void run() {
        b();
    }
}
