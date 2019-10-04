package com.google.android.gms.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.internal.jo;
import com.google.android.gms.internal.jq;

public final class AppMeasurementReceiver extends WakefulBroadcastReceiver implements jq {

    /* renamed from: a  reason: collision with root package name */
    private jo f3762a;

    public final BroadcastReceiver.PendingResult doGoAsync() {
        return goAsync();
    }

    public final void doStartService(Context context, Intent intent) {
        startWakefulService(context, intent);
    }

    public final void onReceive(Context context, Intent intent) {
        if (this.f3762a == null) {
            this.f3762a = new jo(this);
        }
        this.f3762a.onReceive(context, intent);
    }
}
