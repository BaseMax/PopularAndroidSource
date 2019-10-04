package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;

final class gl extends gm {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ PendingIntent f3171a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    gl(f fVar, PendingIntent pendingIntent) {
        super(fVar);
        this.f3171a = pendingIntent;
    }

    public final /* synthetic */ void zza(a.c cVar) throws RemoteException {
        ((hj) cVar).zza(this.f3171a, (gt) new gn(this));
    }
}
