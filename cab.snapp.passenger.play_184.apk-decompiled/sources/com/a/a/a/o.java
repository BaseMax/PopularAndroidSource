package com.a.a.a;

import android.content.Context;
import com.a.a.a.ag;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.i;
import io.fabric.sdk.android.l;
import io.fabric.sdk.android.services.b.f;
import io.fabric.sdk.android.services.common.g;
import io.fabric.sdk.android.services.network.d;
import io.fabric.sdk.android.services.settings.b;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

final class o implements af {

    /* renamed from: a  reason: collision with root package name */
    final ah f1694a;

    /* renamed from: b  reason: collision with root package name */
    f f1695b;
    g c = new g();
    p d = new r();
    boolean e = true;
    boolean f = true;
    volatile int g = -1;
    private final i h;
    private final d i;
    private final Context j;
    private final ac k;
    private final ScheduledExecutorService l;
    private final AtomicReference<ScheduledFuture<?>> m = new AtomicReference<>();

    public o(i iVar, Context context, ScheduledExecutorService scheduledExecutorService, ac acVar, d dVar, ah ahVar) {
        this.h = iVar;
        this.j = context;
        this.l = scheduledExecutorService;
        this.k = acVar;
        this.i = dVar;
        this.f1694a = ahVar;
    }

    public final void setAnalyticsSettingsData(b bVar, String str) {
        ad adVar = new ad(this.h, str, bVar.analyticsURL, this.i, this.c.getValue(this.j));
        this.f1695b = j.build(adVar);
        this.k.f1656a = bVar;
        this.e = bVar.trackCustomEvents;
        l logger = c.getLogger();
        StringBuilder sb = new StringBuilder("Custom event tracking ");
        String str2 = "enabled";
        sb.append(this.e ? str2 : "disabled");
        logger.d(b.TAG, sb.toString());
        this.f = bVar.trackPredefinedEvents;
        l logger2 = c.getLogger();
        StringBuilder sb2 = new StringBuilder("Predefined event tracking ");
        if (!this.f) {
            str2 = "disabled";
        }
        sb2.append(str2);
        logger2.d(b.TAG, sb2.toString());
        if (bVar.samplingRate > 1) {
            c.getLogger().d(b.TAG, "Event sampling enabled");
            this.d = new aa(bVar.samplingRate);
        }
        this.g = bVar.flushIntervalSeconds;
        a(0, (long) this.g);
    }

    public final void processEvent(ag.a aVar) {
        ag build = aVar.build(this.f1694a);
        if (!this.e && ag.b.CUSTOM.equals(build.type)) {
            c.getLogger().d(b.TAG, "Custom events tracking disabled - skipping event: ".concat(String.valueOf(build)));
        } else if (!this.f && ag.b.PREDEFINED.equals(build.type)) {
            c.getLogger().d(b.TAG, "Predefined events tracking disabled - skipping event: ".concat(String.valueOf(build)));
        } else if (this.d.skipEvent(build)) {
            c.getLogger().d(b.TAG, "Skipping filtered event: ".concat(String.valueOf(build)));
        } else {
            try {
                this.k.writeEvent(build);
            } catch (IOException e2) {
                c.getLogger().e(b.TAG, "Failed to write event: ".concat(String.valueOf(build)), e2);
            }
            scheduleTimeBasedRollOverIfNeeded();
        }
    }

    public final void scheduleTimeBasedRollOverIfNeeded() {
        if (this.g != -1) {
            a((long) this.g, (long) this.g);
        }
    }

    public final void sendEvents() {
        if (this.f1695b == null) {
            io.fabric.sdk.android.services.common.i.logControlled(this.j, "skipping files send because we don't yet know the target endpoint");
            return;
        }
        io.fabric.sdk.android.services.common.i.logControlled(this.j, "Sending all files");
        List<File> batchOfFilesToSend = this.k.getBatchOfFilesToSend();
        int i2 = 0;
        while (batchOfFilesToSend.size() > 0) {
            try {
                io.fabric.sdk.android.services.common.i.logControlled(this.j, String.format(Locale.US, "attempt to send batch of %d files", new Object[]{Integer.valueOf(batchOfFilesToSend.size())}));
                boolean send = this.f1695b.send(batchOfFilesToSend);
                if (send) {
                    i2 += batchOfFilesToSend.size();
                    this.k.deleteSentFiles(batchOfFilesToSend);
                }
                if (!send) {
                    break;
                }
                batchOfFilesToSend = this.k.getBatchOfFilesToSend();
            } catch (Exception e2) {
                Context context = this.j;
                io.fabric.sdk.android.services.common.i.logControlledError(context, "Failed to send batch of analytics files to server: " + e2.getMessage(), e2);
            }
        }
        if (i2 == 0) {
            this.k.deleteOldestInRollOverIfOverMax();
        }
    }

    public final void cancelTimeBasedFileRollOver() {
        if (this.m.get() != null) {
            io.fabric.sdk.android.services.common.i.logControlled(this.j, "Cancelling time-based rollover because no events are currently being generated.");
            this.m.get().cancel(false);
            this.m.set(null);
        }
    }

    public final void deleteAllEvents() {
        this.k.deleteAllEventsFiles();
    }

    public final boolean rollFileOver() {
        try {
            return this.k.rollFileOver();
        } catch (IOException e2) {
            io.fabric.sdk.android.services.common.i.logControlledError(this.j, "Failed to roll file over.", e2);
            return false;
        }
    }

    private void a(long j2, long j3) {
        if (this.m.get() == null) {
            io.fabric.sdk.android.services.b.i iVar = new io.fabric.sdk.android.services.b.i(this.j, this);
            Context context = this.j;
            io.fabric.sdk.android.services.common.i.logControlled(context, "Scheduling time based file roll over every " + j3 + " seconds");
            try {
                this.m.set(this.l.scheduleAtFixedRate(iVar, j2, j3, TimeUnit.SECONDS));
            } catch (RejectedExecutionException e2) {
                io.fabric.sdk.android.services.common.i.logControlledError(this.j, "Failed to schedule time based file roll over", e2);
            }
        }
    }
}
