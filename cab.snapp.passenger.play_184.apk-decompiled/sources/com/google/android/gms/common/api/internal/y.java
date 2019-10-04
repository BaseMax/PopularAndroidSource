package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.c.g;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.b;

abstract class y<T> extends a {

    /* renamed from: a  reason: collision with root package name */
    protected final g<T> f2882a;

    public y(int i, g<T> gVar) {
        super(i);
        this.f2882a = gVar;
    }

    public final void zza(an<?> anVar) throws DeadObjectException {
        try {
            zzb(anVar);
        } catch (DeadObjectException e) {
            zzs(a.a(e));
            throw e;
        } catch (RemoteException e2) {
            zzs(a.a(e2));
        }
    }

    public void zza(e eVar, boolean z) {
    }

    /* access modifiers changed from: protected */
    public abstract void zzb(an<?> anVar) throws RemoteException;

    public void zzs(Status status) {
        this.f2882a.trySetException(new b(status));
    }
}
