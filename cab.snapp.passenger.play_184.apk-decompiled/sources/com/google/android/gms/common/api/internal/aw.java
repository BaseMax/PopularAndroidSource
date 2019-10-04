package com.google.android.gms.common.api.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

public final class aw extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private Context f2779a;

    /* renamed from: b  reason: collision with root package name */
    private final ax f2780b;

    public aw(ax axVar) {
        this.f2780b = axVar;
    }

    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            this.f2780b.zzahg();
            unregister();
        }
    }

    public final void setContext(Context context) {
        this.f2779a = context;
    }

    public final synchronized void unregister() {
        if (this.f2779a != null) {
            this.f2779a.unregisterReceiver(this);
        }
        this.f2779a = null;
    }
}
