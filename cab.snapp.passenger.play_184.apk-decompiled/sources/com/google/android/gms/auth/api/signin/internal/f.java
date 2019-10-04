package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.e;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.m;

final class f extends l<e> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f2668a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ GoogleSignInOptions f2669b;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    f(com.google.android.gms.common.api.f fVar, Context context, GoogleSignInOptions googleSignInOptions) {
        super(fVar);
        this.f2668a = context;
        this.f2669b = googleSignInOptions;
    }

    public final /* synthetic */ void zza(a.c cVar) throws RemoteException {
        ((t) ((d) cVar).zzakn()).zza(new g(this), this.f2669b);
    }

    public final /* synthetic */ m zzb(Status status) {
        return new e(null, status);
    }
}
