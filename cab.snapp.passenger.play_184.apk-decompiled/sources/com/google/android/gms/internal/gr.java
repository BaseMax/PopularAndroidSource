package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.internal.cv;
import com.google.android.gms.location.zzag;

final class gr extends gs {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ zzag f3175a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    gr(f fVar, zzag zzag) {
        super(fVar);
        this.f3175a = zzag;
    }

    public final /* synthetic */ void zza(a.c cVar) throws RemoteException {
        ((hj) cVar).zza(this.f3175a, (cv<Status>) this);
    }
}
