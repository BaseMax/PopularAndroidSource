package com.google.android.gms.common.internal;

import com.google.android.gms.c.g;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.h;
import java.util.concurrent.TimeUnit;

final class ak implements h.a {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ h f2928a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ g f2929b;
    private /* synthetic */ an c;
    private /* synthetic */ ao d;

    ak(h hVar, g gVar, an anVar, ao aoVar) {
        this.f2928a = hVar;
        this.f2929b = gVar;
        this.c = anVar;
        this.d = aoVar;
    }

    public final void zzr(Status status) {
        if (status.isSuccess()) {
            this.f2929b.setResult(this.c.zzb(this.f2928a.await(0, TimeUnit.MILLISECONDS)));
            return;
        }
        this.f2929b.setException(this.d.zzz(status));
    }
}
