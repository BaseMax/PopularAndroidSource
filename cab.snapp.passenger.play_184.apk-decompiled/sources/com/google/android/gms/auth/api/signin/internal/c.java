package com.google.android.gms.auth.api.signin.internal;

import android.content.Intent;
import com.google.android.gms.auth.api.a;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.b;
import com.google.android.gms.auth.api.signin.e;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.h;

public final class c implements b {
    private static GoogleSignInOptions a(f fVar) {
        return ((d) fVar.zza(a.zzecx)).zzabk();
    }

    public final Intent getSignInIntent(f fVar) {
        return e.zza(fVar.getContext(), a(fVar));
    }

    public final e getSignInResultFromIntent(Intent intent) {
        return e.getSignInResultFromIntent(intent);
    }

    public final h<Status> revokeAccess(f fVar) {
        return e.zzb(fVar, fVar.getContext(), false);
    }

    public final h<Status> signOut(f fVar) {
        return e.zza(fVar, fVar.getContext(), false);
    }

    public final g<e> silentSignIn(f fVar) {
        return e.zza(fVar, fVar.getContext(), a(fVar), false);
    }
}
