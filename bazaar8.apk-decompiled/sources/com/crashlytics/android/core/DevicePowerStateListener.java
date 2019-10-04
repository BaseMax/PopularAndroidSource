package com.crashlytics.android.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.concurrent.atomic.AtomicBoolean;

public class DevicePowerStateListener {
    public static final IntentFilter FILTER_BATTERY_CHANGED = new IntentFilter("android.intent.action.BATTERY_CHANGED");
    public static final IntentFilter FILTER_POWER_CONNECTED = new IntentFilter("android.intent.action.ACTION_POWER_CONNECTED");
    public static final IntentFilter FILTER_POWER_DISCONNECTED = new IntentFilter("android.intent.action.ACTION_POWER_DISCONNECTED");
    public final Context context;
    public boolean isPowerConnected;
    public final BroadcastReceiver powerConnectedReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            boolean unused = DevicePowerStateListener.this.isPowerConnected = true;
        }
    };
    public final BroadcastReceiver powerDisconnectedReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            boolean unused = DevicePowerStateListener.this.isPowerConnected = false;
        }
    };
    public final AtomicBoolean receiversRegistered = new AtomicBoolean(false);

    public DevicePowerStateListener(Context context2) {
        this.context = context2;
    }

    public void dispose() {
        if (this.receiversRegistered.getAndSet(false)) {
            this.context.unregisterReceiver(this.powerConnectedReceiver);
            this.context.unregisterReceiver(this.powerDisconnectedReceiver);
        }
    }

    public void initialize() {
        boolean z = true;
        if (!this.receiversRegistered.getAndSet(true)) {
            Intent registerReceiver = this.context.registerReceiver(null, FILTER_BATTERY_CHANGED);
            int i2 = -1;
            if (registerReceiver != null) {
                i2 = registerReceiver.getIntExtra("status", -1);
            }
            if (!(i2 == 2 || i2 == 5)) {
                z = false;
            }
            this.isPowerConnected = z;
            this.context.registerReceiver(this.powerConnectedReceiver, FILTER_POWER_CONNECTED);
            this.context.registerReceiver(this.powerDisconnectedReceiver, FILTER_POWER_DISCONNECTED);
        }
    }

    public boolean isPowerConnected() {
        return this.isPowerConnected;
    }
}
