package com.google.android.gms.auth.api.signin.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

final class k extends a {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ j f2672a;

    k(j jVar) {
        this.f2672a = jVar;
    }

    public final void zzj(Status status) throws RemoteException {
        this.f2672a.setResult(status);
    }
}
