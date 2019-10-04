package com.google.android.gms.auth.api.signin.internal;

import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.e;
import com.google.android.gms.common.api.Status;

final class g extends a {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ f f2670a;

    g(f fVar) {
        this.f2670a = fVar;
    }

    public final void zza(GoogleSignInAccount googleSignInAccount, Status status) throws RemoteException {
        if (googleSignInAccount != null) {
            n.zzbr(this.f2670a.f2668a).zza(this.f2670a.f2669b, googleSignInAccount);
        }
        this.f2670a.setResult(new e(googleSignInAccount, status));
    }
}
