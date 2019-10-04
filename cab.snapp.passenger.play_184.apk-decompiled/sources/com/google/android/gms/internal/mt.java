package com.google.android.gms.internal;

final class mt implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ long f3399a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ mq f3400b;

    mt(mq mqVar, long j) {
        this.f3400b = mqVar;
        this.f3399a = j;
    }

    public final void run() {
        ih ihVar;
        long j;
        mq mqVar = this.f3400b;
        long j2 = this.f3399a;
        mqVar.zzve();
        mqVar.c();
        mqVar.f3396b.cancel();
        mqVar.c.cancel();
        mqVar.zzawy().zzazj().zzj("Activity resumed, time", Long.valueOf(j2));
        mqVar.f3395a = j2;
        if (mqVar.zzws().currentTimeMillis() - mqVar.zzawz().zzjdf.get() > mqVar.zzawz().zzjdh.get()) {
            mqVar.zzawz().zzjdg.set(true);
            mqVar.zzawz().zzjdi.set(0);
        }
        if (mqVar.zzawz().zzjdg.get()) {
            ihVar = mqVar.f3396b;
            j = mqVar.zzawz().zzjde.get();
        } else {
            ihVar = mqVar.c;
            j = 3600000;
        }
        ihVar.zzs(Math.max(0, j - mqVar.zzawz().zzjdi.get()));
    }
}
