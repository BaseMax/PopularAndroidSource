package com.a.a.c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.concurrent.atomic.AtomicBoolean;

final class r {

    /* renamed from: a  reason: collision with root package name */
    private static final IntentFilter f1815a = new IntentFilter("android.intent.action.BATTERY_CHANGED");

    /* renamed from: b  reason: collision with root package name */
    private static final IntentFilter f1816b = new IntentFilter("android.intent.action.ACTION_POWER_CONNECTED");
    private static final IntentFilter c = new IntentFilter("android.intent.action.ACTION_POWER_DISCONNECTED");
    private final AtomicBoolean d;
    private final Context e;
    private final BroadcastReceiver f;
    private final BroadcastReceiver g;
    /* access modifiers changed from: private */
    public boolean h;

    public r(Context context) {
        this.e = context;
        Intent registerReceiver = context.registerReceiver(null, f1815a);
        int i = -1;
        i = registerReceiver != null ? registerReceiver.getIntExtra("status", -1) : i;
        this.h = i == 2 || i == 5;
        this.g = new BroadcastReceiver() {
            public final void onReceive(Context context, Intent intent) {
                boolean unused = r.this.h = true;
            }
        };
        this.f = new BroadcastReceiver() {
            public final void onReceive(Context context, Intent intent) {
                boolean unused = r.this.h = false;
            }
        };
        context.registerReceiver(this.g, f1816b);
        context.registerReceiver(this.f, c);
        this.d = new AtomicBoolean(true);
    }

    public final boolean isPowerConnected() {
        return this.h;
    }

    public final void dispose() {
        if (this.d.getAndSet(false)) {
            this.e.unregisterReceiver(this.g);
            this.e.unregisterReceiver(this.f);
        }
    }
}
