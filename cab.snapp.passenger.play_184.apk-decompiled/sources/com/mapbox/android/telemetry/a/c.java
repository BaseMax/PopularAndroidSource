package com.mapbox.android.telemetry.a;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.core.content.ContextCompat;
import com.mapbox.android.a.b.h;

final class c implements b {

    /* renamed from: a  reason: collision with root package name */
    private final Context f4935a;

    /* renamed from: b  reason: collision with root package name */
    private final com.mapbox.android.a.b.c f4936b;
    private final e c;

    public final void onPause() {
    }

    c(Context context, com.mapbox.android.a.b.c cVar, e eVar) {
        this.f4935a = context;
        this.f4936b = cVar;
        this.c = eVar;
    }

    private PendingIntent a() {
        return PendingIntent.getBroadcast(this.f4935a, 0, new Intent("com.mapbox.android.telemetry.location.locationupdatespendingintent.action.LOCATION_UPDATED"), 134217728);
    }

    public final void onResume() {
        try {
            this.f4935a.registerReceiver(this.c, new IntentFilter("com.mapbox.android.telemetry.location.locationupdatespendingintent.action.LOCATION_UPDATED"));
        } catch (IllegalArgumentException unused) {
        }
        if (ContextCompat.checkSelfPermission(this.f4935a, "android.permission.ACCESS_FINE_LOCATION") == 0) {
            try {
                this.f4936b.requestLocationUpdates(new h.a(1000).setPriority(3).setMaxWaitTime(5000).build(), a());
            } catch (SecurityException unused2) {
            }
        }
    }

    public final void onDestroy() {
        this.f4936b.removeLocationUpdates(a());
        try {
            this.f4935a.unregisterReceiver(this.c);
        } catch (IllegalArgumentException unused) {
        }
    }
}
