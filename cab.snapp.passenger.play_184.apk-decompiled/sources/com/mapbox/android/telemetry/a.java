package com.mapbox.android.telemetry;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class a extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private final y f4931a;

    a(y yVar) {
        this.f4931a = yVar;
    }

    public final void onReceive(Context context, Intent intent) {
        try {
            if ("com.mapbox.scheduler_flusher".equals(intent.getAction())) {
                this.f4931a.onPeriodRaised();
            }
        } catch (Throwable unused) {
        }
    }

    static Intent a() {
        return new Intent("com.mapbox.scheduler_flusher");
    }
}
