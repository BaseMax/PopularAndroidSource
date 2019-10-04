package com.mapbox.android.telemetry;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.IntentFilter;

final class b implements z {

    /* renamed from: a  reason: collision with root package name */
    private final Context f4964a;

    /* renamed from: b  reason: collision with root package name */
    private final AlarmManager f4965b;
    private final a c;
    private PendingIntent d;

    b(Context context, AlarmManager alarmManager, a aVar) {
        this.f4964a = context;
        this.f4965b = alarmManager;
        this.c = aVar;
    }

    public final void register() {
        this.d = PendingIntent.getBroadcast(this.f4964a, 0, a.a(), 134217728);
        this.f4964a.registerReceiver(this.c, new IntentFilter("com.mapbox.scheduler_flusher"));
    }

    public final void schedule(long j) {
        this.f4965b.setInexactRepeating(3, j + aa.f4940a, aa.f4940a, this.d);
    }

    public final void unregister() {
        PendingIntent pendingIntent = this.d;
        if (pendingIntent != null) {
            this.f4965b.cancel(pendingIntent);
        }
        try {
            this.f4964a.unregisterReceiver(this.c);
        } catch (IllegalArgumentException unused) {
        }
    }
}
