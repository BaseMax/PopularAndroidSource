package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.m;

final class cx extends cz<Status> {
    cx(f fVar) {
        super(fVar);
    }

    /* access modifiers changed from: protected */
    public final void a(df dfVar) throws RemoteException {
        dfVar.zza(new cy(this));
    }

    public final /* synthetic */ m zzb(Status status) {
        return status;
    }
}
