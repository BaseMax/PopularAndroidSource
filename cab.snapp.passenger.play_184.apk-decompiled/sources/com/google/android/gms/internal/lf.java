package com.google.android.gms.internal;

final class lf implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ long f3333a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ ky f3334b;

    lf(ky kyVar, long j) {
        this.f3334b = kyVar;
        this.f3333a = j;
    }

    public final void run() {
        this.f3334b.zzawz().zzjdf.set(this.f3333a);
        this.f3334b.zzawy().zzazi().zzj("Session timeout duration set", Long.valueOf(this.f3333a));
    }
}
