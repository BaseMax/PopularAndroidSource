package com.google.android.gms.internal;

import android.os.Bundle;

final class mr extends ih {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ mq f3397a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    mr(mq mqVar, jx jxVar) {
        super(jxVar);
        this.f3397a = mqVar;
    }

    public final void run() {
        mq mqVar = this.f3397a;
        mqVar.zzve();
        mqVar.zzawy().zzazj().zzj("Session started, time", Long.valueOf(mqVar.zzws().elapsedRealtime()));
        mqVar.zzawz().zzjdg.set(false);
        mqVar.zzawm().zzc("auto", "_s", new Bundle());
        mqVar.zzawz().zzjdh.set(mqVar.zzws().currentTimeMillis());
    }
}
