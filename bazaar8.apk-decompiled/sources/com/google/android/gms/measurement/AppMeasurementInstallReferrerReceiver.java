package com.google.android.gms.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import c.e.a.b.h.b.O;
import c.e.a.b.h.b.S;

public final class AppMeasurementInstallReferrerReceiver extends BroadcastReceiver implements S {

    /* renamed from: a  reason: collision with root package name */
    public O f13221a;

    public final BroadcastReceiver.PendingResult a() {
        return goAsync();
    }

    public final void a(Context context, Intent intent) {
    }

    public final void onReceive(Context context, Intent intent) {
        if (this.f13221a == null) {
            this.f13221a = new O(this);
        }
        this.f13221a.a(context, intent);
    }
}
