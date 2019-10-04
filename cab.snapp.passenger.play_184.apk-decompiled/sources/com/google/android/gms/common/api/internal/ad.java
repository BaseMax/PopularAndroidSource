package com.google.android.gms.common.api.internal;

import com.google.android.gms.auth.api.signin.internal.x;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.api.n;

final class ad implements n<Status> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ bz f2754a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ boolean f2755b;
    private /* synthetic */ f c;
    private /* synthetic */ z d;

    ad(z zVar, bz bzVar, boolean z, f fVar) {
        this.d = zVar;
        this.f2754a = bzVar;
        this.f2755b = z;
        this.c = fVar;
    }

    public final /* synthetic */ void onResult(m mVar) {
        Status status = (Status) mVar;
        x.zzbt(this.d.k).zzabv();
        if (status.isSuccess() && this.d.isConnected()) {
            this.d.reconnect();
        }
        this.f2754a.setResult(status);
        if (this.f2755b) {
            this.c.disconnect();
        }
    }
}
