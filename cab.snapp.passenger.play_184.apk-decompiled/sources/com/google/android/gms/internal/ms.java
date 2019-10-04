package com.google.android.gms.internal;

final class ms extends ih {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ mq f3398a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    ms(mq mqVar, jx jxVar) {
        super(jxVar);
        this.f3398a = mqVar;
    }

    public final void run() {
        mq mqVar = this.f3398a;
        mqVar.zzve();
        mqVar.zzbs(false);
        mqVar.zzawk().zzaj(mqVar.zzws().elapsedRealtime());
    }
}
