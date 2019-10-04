package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;

final class ge extends gm {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ boolean f3162a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    ge(f fVar, boolean z) {
        super(fVar);
        this.f3162a = z;
    }

    public final /* synthetic */ void zza(a.c cVar) throws RemoteException {
        ((hj) cVar).zzbj(this.f3162a);
        setResult(Status.zzfni);
    }
}
