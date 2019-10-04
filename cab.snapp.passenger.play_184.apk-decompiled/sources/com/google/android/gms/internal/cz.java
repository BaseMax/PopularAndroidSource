package com.google.android.gms.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.auth.api.a;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.internal.cu;
import com.google.android.gms.common.api.m;

abstract class cz<R extends m> extends cu<R, db> {
    cz(f fVar) {
        super(a.CREDENTIALS_API, fVar);
    }

    /* access modifiers changed from: protected */
    public abstract void a(df dfVar) throws DeadObjectException, RemoteException;

    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((m) obj);
    }

    public final /* synthetic */ void zza(a.c cVar) throws RemoteException {
        db dbVar = (db) cVar;
        dbVar.getContext();
        a((df) dbVar.zzakn());
    }
}
