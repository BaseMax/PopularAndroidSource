package com.google.android.gms.internal;

import android.app.job.JobParameters;

final class bx implements bd {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Integer f3110a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ bp f3111b;
    final /* synthetic */ JobParameters c;
    final /* synthetic */ bw d;
    private /* synthetic */ z e;

    bx(bw bwVar, Integer num, z zVar, bp bpVar, JobParameters jobParameters) {
        this.d = bwVar;
        this.f3110a = num;
        this.e = zVar;
        this.f3111b = bpVar;
        this.c = jobParameters;
    }

    public final void zzd(Throwable th) {
        this.d.f3108a.post(new by(this));
    }
}
