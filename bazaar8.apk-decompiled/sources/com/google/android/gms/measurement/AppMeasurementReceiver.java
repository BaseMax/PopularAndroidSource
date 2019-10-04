package com.google.android.gms.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import b.q.a.a;
import c.e.a.b.h.b.O;
import c.e.a.b.h.b.S;

public final class AppMeasurementReceiver extends a implements S {

    /* renamed from: c  reason: collision with root package name */
    public O f13223c;

    public final void a(Context context, Intent intent) {
        a.b(context, intent);
    }

    public final void onReceive(Context context, Intent intent) {
        if (this.f13223c == null) {
            this.f13223c = new O(this);
        }
        this.f13223c.a(context, intent);
    }

    public final BroadcastReceiver.PendingResult a() {
        return goAsync();
    }
}
