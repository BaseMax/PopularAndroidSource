package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.c.g;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.c;

public abstract class cl<A extends a.c, L> {

    /* renamed from: a  reason: collision with root package name */
    private final bi<L> f2821a;

    protected cl(bi<L> biVar) {
        this.f2821a = biVar;
    }

    public final bi<L> zzajo() {
        return this.f2821a;
    }

    /* access modifiers changed from: protected */
    public abstract void zzc(A a2, g<Boolean> gVar) throws RemoteException;
}
