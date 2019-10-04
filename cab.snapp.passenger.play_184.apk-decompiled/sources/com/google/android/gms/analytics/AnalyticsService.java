package com.google.android.gms.analytics;

import android.app.Service;
import android.app.job.JobParameters;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.internal.bw;
import com.google.android.gms.internal.bz;

public final class AnalyticsService extends Service implements bz {

    /* renamed from: a  reason: collision with root package name */
    private bw<AnalyticsService> f2566a;

    private final bw<AnalyticsService> a() {
        if (this.f2566a == null) {
            this.f2566a = new bw<>(this);
        }
        return this.f2566a;
    }

    public final boolean callServiceStopSelfResult(int i) {
        return stopSelfResult(i);
    }

    public final IBinder onBind(Intent intent) {
        a();
        return null;
    }

    public final void onCreate() {
        super.onCreate();
        a().onCreate();
    }

    public final void onDestroy() {
        a().onDestroy();
        super.onDestroy();
    }

    public final int onStartCommand(Intent intent, int i, int i2) {
        return a().onStartCommand(intent, i, i2);
    }

    public final void zza(JobParameters jobParameters, boolean z) {
        throw new UnsupportedOperationException();
    }
}
