package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.cv;

final class et extends en {

    /* renamed from: a  reason: collision with root package name */
    private final cv<Status> f3142a;

    public et(cv<Status> cvVar) {
        this.f3142a = cvVar;
    }

    public final void zzci(int i) throws RemoteException {
        this.f3142a.setResult(new Status(i));
    }
}
