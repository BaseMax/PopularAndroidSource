package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.internal.bv;

public final class AnalyticsReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private bv f2565a;

    public final void onReceive(Context context, Intent intent) {
        if (this.f2565a == null) {
            this.f2565a = new bv();
        }
        bv.onReceive(context, intent);
    }
}
