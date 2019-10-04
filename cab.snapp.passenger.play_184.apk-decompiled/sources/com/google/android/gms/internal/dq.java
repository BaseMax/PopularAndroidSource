package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyRequest;
import com.google.android.gms.common.api.f;

final class dq extends Cdo {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ ProxyRequest f3128a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    dq(f fVar, ProxyRequest proxyRequest) {
        super(fVar);
        this.f3128a = proxyRequest;
    }

    /* access modifiers changed from: protected */
    public final void a(dm dmVar) throws RemoteException {
        dmVar.zza(new dr(this), this.f3128a);
    }
}
