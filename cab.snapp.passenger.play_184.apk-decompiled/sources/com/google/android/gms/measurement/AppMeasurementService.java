package com.google.android.gms.measurement;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.internal.ml;
import com.google.android.gms.internal.mp;

public final class AppMeasurementService extends Service implements mp {

    /* renamed from: a  reason: collision with root package name */
    private ml<AppMeasurementService> f3763a;

    private final ml<AppMeasurementService> a() {
        if (this.f3763a == null) {
            this.f3763a = new ml<>(this);
        }
        return this.f3763a;
    }

    public final boolean callServiceStopSelfResult(int i) {
        return stopSelfResult(i);
    }

    public final IBinder onBind(Intent intent) {
        return a().onBind(intent);
    }

    public final void onCreate() {
        super.onCreate();
        a().onCreate();
    }

    public final void onDestroy() {
        a().onDestroy();
        super.onDestroy();
    }

    public final void onRebind(Intent intent) {
        a().onRebind(intent);
    }

    public final int onStartCommand(Intent intent, int i, int i2) {
        return a().onStartCommand(intent, i, i2);
    }

    public final boolean onUnbind(Intent intent) {
        return a().onUnbind(intent);
    }

    public final void zza(JobParameters jobParameters, boolean z) {
        throw new UnsupportedOperationException();
    }

    public final void zzm(Intent intent) {
        AppMeasurementReceiver.completeWakefulIntent(intent);
    }
}
