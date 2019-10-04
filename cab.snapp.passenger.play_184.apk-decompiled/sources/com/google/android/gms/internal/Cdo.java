package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.auth.api.e;
import com.google.android.gms.auth.api.proxy.a;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.internal.cu;
import com.google.android.gms.common.api.m;

/* renamed from: com.google.android.gms.internal.do  reason: invalid class name */
abstract class Cdo extends cu<a.C0063a, dj> {
    public Cdo(f fVar) {
        super(e.API, fVar);
    }

    /* access modifiers changed from: protected */
    public abstract void a(dm dmVar) throws RemoteException;

    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((a.C0063a) obj);
    }

    public final /* synthetic */ void zza(a.c cVar) throws RemoteException {
        dj djVar = (dj) cVar;
        djVar.getContext();
        a((dm) djVar.zzakn());
    }

    public final /* synthetic */ m zzb(Status status) {
        return new ds(status);
    }
}
