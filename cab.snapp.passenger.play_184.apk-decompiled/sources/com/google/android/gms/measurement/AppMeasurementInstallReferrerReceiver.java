package com.google.android.gms.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.internal.jo;
import com.google.android.gms.internal.jq;

public final class AppMeasurementInstallReferrerReceiver extends BroadcastReceiver implements jq {

    /* renamed from: a  reason: collision with root package name */
    private jo f3760a;

    public final BroadcastReceiver.PendingResult doGoAsync() {
        return goAsync();
    }

    public final void doStartService(Context context, Intent intent) {
    }

    public final void onReceive(Context context, Intent intent) {
        if (this.f3760a == null) {
            this.f3760a = new jo(this);
        }
        this.f3760a.onReceive(context, intent);
    }
}
