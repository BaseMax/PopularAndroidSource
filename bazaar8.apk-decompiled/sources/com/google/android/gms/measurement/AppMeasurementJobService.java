package com.google.android.gms.measurement;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import c.e.a.b.h.b.Eb;
import c.e.a.b.h.b.Ib;

@TargetApi(24)
public final class AppMeasurementJobService extends JobService implements Ib {

    /* renamed from: a  reason: collision with root package name */
    public Eb<AppMeasurementJobService> f13222a;

    public final Eb<AppMeasurementJobService> a() {
        if (this.f13222a == null) {
            this.f13222a = new Eb<>(this);
        }
        return this.f13222a;
    }

    public final void a(Intent intent) {
    }

    public final void onCreate() {
        super.onCreate();
        a().a();
    }

    public final void onDestroy() {
        a().b();
        super.onDestroy();
    }

    public final void onRebind(Intent intent) {
        a().b(intent);
    }

    public final boolean onStartJob(JobParameters jobParameters) {
        return a().a(jobParameters);
    }

    public final boolean onStopJob(JobParameters jobParameters) {
        return false;
    }

    public final boolean onUnbind(Intent intent) {
        return a().c(intent);
    }

    public final boolean a(int i2) {
        throw new UnsupportedOperationException();
    }

    @TargetApi(24)
    public final void a(JobParameters jobParameters, boolean z) {
        jobFinished(jobParameters, false);
    }
}
