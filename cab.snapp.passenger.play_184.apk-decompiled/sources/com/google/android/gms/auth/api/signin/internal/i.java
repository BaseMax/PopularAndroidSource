package com.google.android.gms.auth.api.signin.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

final class i extends a {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ h f2671a;

    i(h hVar) {
        this.f2671a = hVar;
    }

    public final void zzi(Status status) throws RemoteException {
        this.f2671a.setResult(status);
    }
}
