package com.google.android.gms.measurement;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import com.google.android.gms.internal.ml;
import com.google.android.gms.internal.mp;

public final class AppMeasurementJobService extends JobService implements mp {

    /* renamed from: a  reason: collision with root package name */
    private ml<AppMeasurementJobService> f3761a;

    private final ml<AppMeasurementJobService> a() {
        if (this.f3761a == null) {
            this.f3761a = new ml<>(this);
        }
        return this.f3761a;
    }

    public final boolean callServiceStopSelfResult(int i) {
        throw new UnsupportedOperationException();
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

    public final boolean onStartJob(JobParameters jobParameters) {
        return a().onStartJob(jobParameters);
    }

    public final boolean onStopJob(JobParameters jobParameters) {
        return false;
    }

    public final boolean onUnbind(Intent intent) {
        return a().onUnbind(intent);
    }

    public final void zza(JobParameters jobParameters, boolean z) {
        jobFinished(jobParameters, false);
    }

    public final void zzm(Intent intent) {
    }
}
