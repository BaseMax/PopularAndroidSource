package com.google.android.gms.internal;

final class le implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ long f3331a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ ky f3332b;

    le(ky kyVar, long j) {
        this.f3332b = kyVar;
        this.f3331a = j;
    }

    public final void run() {
        this.f3332b.zzawz().zzjde.set(this.f3331a);
        this.f3332b.zzawy().zzazi().zzj("Minimum session duration set", Long.valueOf(this.f3331a));
    }
}
