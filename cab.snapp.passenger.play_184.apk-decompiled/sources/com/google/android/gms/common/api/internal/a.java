package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import android.os.TransactionTooLargeException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.util.m;

public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private int f2749a;

    public a(int i) {
        this.f2749a = i;
    }

    public abstract void zza(an<?> anVar) throws DeadObjectException;

    public abstract void zza(e eVar, boolean z);

    public abstract void zzs(Status status);

    static /* synthetic */ Status a(RemoteException remoteException) {
        StringBuilder sb = new StringBuilder();
        if (m.zzamh() && (remoteException instanceof TransactionTooLargeException)) {
            sb.append("TransactionTooLargeException: ");
        }
        sb.append(remoteException.getLocalizedMessage());
        return new Status(8, sb.toString());
    }
}
