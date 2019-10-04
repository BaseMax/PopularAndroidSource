package com.google.android.gms.internal;

import android.app.PendingIntent;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.CredentialRequest;
import com.google.android.gms.auth.api.credentials.HintRequest;
import com.google.android.gms.auth.api.credentials.a;
import com.google.android.gms.auth.api.credentials.b;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.internal.ap;

public final class cs implements b {
    public final h<Status> delete(f fVar, Credential credential) {
        return fVar.zze(new cw(fVar, credential));
    }

    public final h<Status> disableAutoSignIn(f fVar) {
        return fVar.zze(new cx(fVar));
    }

    public final h<a> request(f fVar, CredentialRequest credentialRequest) {
        return fVar.zzd(new ct(fVar, credentialRequest));
    }

    public final h<Status> save(f fVar, Credential credential) {
        return fVar.zze(new cv(fVar, credential));
    }

    public final PendingIntent getHintPickerIntent(f fVar, HintRequest hintRequest) {
        ap.checkArgument(fVar.zza((com.google.android.gms.common.api.a<?>) com.google.android.gms.auth.api.a.CREDENTIALS_API), "Auth.CREDENTIALS_API must be added to GoogleApiClient to use this API");
        return da.zza(fVar.getContext(), ((db) fVar.zza(com.google.android.gms.auth.api.a.zzecv)).g, hintRequest);
    }
}
