package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.m;

final class cw extends cz<Status> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ Credential f3125a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    cw(f fVar, Credential credential) {
        super(fVar);
        this.f3125a = credential;
    }

    /* access modifiers changed from: protected */
    public final void a(df dfVar) throws RemoteException {
        dfVar.zza((dd) new cy(this), new zzavz(this.f3125a));
    }

    public final /* synthetic */ m zzb(Status status) {
        return status;
    }
}
