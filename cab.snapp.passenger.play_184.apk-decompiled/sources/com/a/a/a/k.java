package com.a.a.a;

import io.fabric.sdk.android.c;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

final class k {

    /* renamed from: a  reason: collision with root package name */
    final List<a> f1690a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<ScheduledFuture<?>> f1691b = new AtomicReference<>();
    boolean c = true;
    private final ScheduledExecutorService d;
    private volatile boolean e = true;

    public interface a {
        void onBackground();
    }

    public k(ScheduledExecutorService scheduledExecutorService) {
        this.d = scheduledExecutorService;
    }

    public final void setFlushOnBackground(boolean z) {
        this.e = z;
    }

    public final void registerListener(a aVar) {
        this.f1690a.add(aVar);
    }

    public final void onActivityResumed() {
        this.c = false;
        ScheduledFuture andSet = this.f1691b.getAndSet(null);
        if (andSet != null) {
            andSet.cancel(false);
        }
    }

    public final void onActivityPaused() {
        if (this.e && !this.c) {
            this.c = true;
            try {
                this.f1691b.compareAndSet(null, this.d.schedule(new Runnable() {
                    public final void run() {
                        k.this.f1691b.set(null);
                        for (a onBackground : k.this.f1690a) {
                            onBackground.onBackground();
                        }
                    }
                }, 5000, TimeUnit.MILLISECONDS));
            } catch (RejectedExecutionException e2) {
                c.getLogger().d(b.TAG, "Failed to schedule background detector", e2);
            }
        }
    }
}
