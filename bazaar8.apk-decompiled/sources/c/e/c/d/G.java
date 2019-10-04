package c.e.c.d;

import android.content.BroadcastReceiver;
import android.content.Intent;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public final class G {

    /* renamed from: a  reason: collision with root package name */
    public final Intent f11599a;

    /* renamed from: b  reason: collision with root package name */
    public final BroadcastReceiver.PendingResult f11600b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f11601c = false;

    /* renamed from: d  reason: collision with root package name */
    public final ScheduledFuture<?> f11602d;

    public G(Intent intent, BroadcastReceiver.PendingResult pendingResult, ScheduledExecutorService scheduledExecutorService) {
        this.f11599a = intent;
        this.f11600b = pendingResult;
        this.f11602d = scheduledExecutorService.schedule(new F(this, intent), 9000, TimeUnit.MILLISECONDS);
    }

    public final synchronized void a() {
        if (!this.f11601c) {
            this.f11600b.finish();
            this.f11602d.cancel(false);
            this.f11601c = true;
        }
    }
}
