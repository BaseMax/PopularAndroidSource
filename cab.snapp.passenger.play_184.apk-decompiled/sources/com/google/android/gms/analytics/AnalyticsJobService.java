package com.google.android.gms.analytics;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import com.google.android.gms.internal.bw;
import com.google.android.gms.internal.bz;

public final class AnalyticsJobService extends JobService implements bz {

    /* renamed from: a  reason: collision with root package name */
    private bw<AnalyticsJobService> f2564a;

    private final bw<AnalyticsJobService> a() {
        if (this.f2564a == null) {
            this.f2564a = new bw<>(this);
        }
        return this.f2564a;
    }

    public final boolean callServiceStopSelfResult(int i) {
        return stopSelfResult(i);
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

    public final boolean onStartJob(JobParameters jobParameters) {
        return a().onStartJob(jobParameters);
    }

    public final boolean onStopJob(JobParameters jobParameters) {
        return false;
    }

    public final void zza(JobParameters jobParameters, boolean z) {
        jobFinished(jobParameters, false);
    }
}
