package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.c.g;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.c;

public abstract class bo<A extends a.c, L> {

    /* renamed from: a  reason: collision with root package name */
    private final bg<L> f2799a;

    protected bo(bg<L> bgVar) {
        this.f2799a = bgVar;
    }

    public final bi<L> zzajo() {
        return this.f2799a.zzajo();
    }

    public final void zzajp() {
        this.f2799a.clear();
    }

    /* access modifiers changed from: protected */
    public abstract void zzb(A a2, g<Void> gVar) throws RemoteException;
}
