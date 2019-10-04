package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.measurement.AppMeasurement;

final class jp implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ jx f3256a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ long f3257b;
    private /* synthetic */ Bundle c;
    private /* synthetic */ Context d;
    private /* synthetic */ iz e;
    private /* synthetic */ BroadcastReceiver.PendingResult f;

    jp(jx jxVar, long j, Bundle bundle, Context context, iz izVar, BroadcastReceiver.PendingResult pendingResult) {
        this.f3256a = jxVar;
        this.f3257b = j;
        this.c = bundle;
        this.d = context;
        this.e = izVar;
        this.f = pendingResult;
    }

    public final void run() {
        mz zzag = this.f3256a.zzaws().zzag(this.f3256a.zzawn().d(), "_fot");
        long longValue = (zzag == null || !(zzag.e instanceof Long)) ? 0 : ((Long) zzag.e).longValue();
        long j = this.f3257b;
        if (longValue > 0 && (j >= longValue || j <= 0)) {
            j = longValue - 1;
        }
        if (j > 0) {
            this.c.putLong("click_timestamp", j);
        }
        AppMeasurement.getInstance(this.d).logEventInternal("auto", "_cmp", this.c);
        this.e.zzazj().log("Install campaign recorded");
        BroadcastReceiver.PendingResult pendingResult = this.f;
        if (pendingResult != null) {
            pendingResult.finish();
        }
    }
}
