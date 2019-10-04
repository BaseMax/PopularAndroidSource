package com.google.android.gms.internal;

import android.app.job.JobParameters;

final /* synthetic */ class mn implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ml f3391a;

    /* renamed from: b  reason: collision with root package name */
    private final iz f3392b;
    private final JobParameters c;

    mn(ml mlVar, iz izVar, JobParameters jobParameters) {
        this.f3391a = mlVar;
        this.f3392b = izVar;
        this.c = jobParameters;
    }

    public final void run() {
        ml mlVar = this.f3391a;
        iz izVar = this.f3392b;
        JobParameters jobParameters = this.c;
        izVar.zzazj().log("AppMeasurementJobService processed last upload request.");
        ((mp) mlVar.f3388a).zza(jobParameters, false);
    }
}
