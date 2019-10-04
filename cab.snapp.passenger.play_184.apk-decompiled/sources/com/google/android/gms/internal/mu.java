package com.google.android.gms.internal;

final class mu implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ long f3401a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ mq f3402b;

    mu(mq mqVar, long j) {
        this.f3402b = mqVar;
        this.f3401a = j;
    }

    public final void run() {
        mq mqVar = this.f3402b;
        long j = this.f3401a;
        mqVar.zzve();
        mqVar.c();
        mqVar.f3396b.cancel();
        mqVar.c.cancel();
        mqVar.zzawy().zzazj().zzj("Activity paused, time", Long.valueOf(j));
        if (mqVar.f3395a != 0) {
            mqVar.zzawz().zzjdi.set(mqVar.zzawz().zzjdi.get() + (j - mqVar.f3395a));
        }
    }
}
