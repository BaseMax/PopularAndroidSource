package com.google.android.gms.auth.api;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.bl;
import java.util.Collections;
import java.util.List;

final class d extends a.b<com.google.android.gms.auth.api.signin.internal.d, GoogleSignInOptions> {
    d() {
    }

    public final /* synthetic */ a.f zza(Context context, Looper looper, bl blVar, Object obj, f.b bVar, f.c cVar) {
        com.google.android.gms.auth.api.signin.internal.d dVar = new com.google.android.gms.auth.api.signin.internal.d(context, looper, blVar, (GoogleSignInOptions) obj, bVar, cVar);
        return dVar;
    }

    public final /* synthetic */ List zzr(Object obj) {
        GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions) obj;
        return googleSignInOptions == null ? Collections.emptyList() : googleSignInOptions.zzabe();
    }
}
