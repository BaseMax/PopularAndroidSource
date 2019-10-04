package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.CredentialRequest;
import com.google.android.gms.auth.api.credentials.a;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.m;

final class ct extends cz<a> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ CredentialRequest f3122a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    ct(f fVar, CredentialRequest credentialRequest) {
        super(fVar);
        this.f3122a = credentialRequest;
    }

    /* access modifiers changed from: protected */
    public final void a(df dfVar) throws RemoteException {
        dfVar.zza((dd) new cu(this), this.f3122a);
    }

    public final /* synthetic */ m zzb(Status status) {
        return cr.zzf(status);
    }
}
