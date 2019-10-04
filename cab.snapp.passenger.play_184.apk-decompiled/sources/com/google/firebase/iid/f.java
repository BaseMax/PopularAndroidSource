package com.google.firebase.iid;

import android.content.BroadcastReceiver;
import android.content.Intent;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

final class f {

    /* renamed from: a  reason: collision with root package name */
    final Intent f4063a;

    /* renamed from: b  reason: collision with root package name */
    private final BroadcastReceiver.PendingResult f4064b;
    private boolean c = false;
    private final ScheduledFuture<?> d;

    f(Intent intent, BroadcastReceiver.PendingResult pendingResult, ScheduledExecutorService scheduledExecutorService) {
        this.f4063a = intent;
        this.f4064b = pendingResult;
        this.d = scheduledExecutorService.schedule(new g(this, intent), 9500, TimeUnit.MILLISECONDS);
    }

    /* access modifiers changed from: package-private */
    public final synchronized void a() {
        if (!this.c) {
            this.f4064b.finish();
            this.d.cancel(false);
            this.c = true;
        }
    }
}
