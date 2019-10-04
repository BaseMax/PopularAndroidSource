package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.m;

final class cv extends cz<Status> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ Credential f3124a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    cv(f fVar, Credential credential) {
        super(fVar);
        this.f3124a = credential;
    }

    /* access modifiers changed from: protected */
    public final void a(df dfVar) throws RemoteException {
        dfVar.zza((dd) new cy(this), new zzawf(this.f3124a));
    }

    public final /* synthetic */ m zzb(Status status) {
        return status;
    }
}
