package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.bl;
import com.google.android.gms.common.internal.c;

public final class d extends c<t> {
    private final GoogleSignInOptions g;

    public d(Context context, Looper looper, bl blVar, GoogleSignInOptions googleSignInOptions, f.b bVar, f.c cVar) {
        super(context, looper, 91, blVar, bVar, cVar);
        googleSignInOptions = googleSignInOptions == null ? new GoogleSignInOptions.a().build() : googleSignInOptions;
        if (!blVar.zzakw().isEmpty()) {
            GoogleSignInOptions.a aVar = new GoogleSignInOptions.a(googleSignInOptions);
            for (Scope requestScopes : blVar.zzakw()) {
                aVar.requestScopes(requestScopes, new Scope[0]);
            }
            googleSignInOptions = aVar.build();
        }
        this.g = googleSignInOptions;
    }

    public final Intent getSignInIntent() {
        return e.zza(getContext(), this.g);
    }

    public final boolean zzabj() {
        return true;
    }

    public final GoogleSignInOptions zzabk() {
        return this.g;
    }

    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
        return queryLocalInterface instanceof t ? (t) queryLocalInterface : new u(iBinder);
    }

    public final String zzhi() {
        return "com.google.android.gms.auth.api.signin.service.START";
    }

    public final String zzhj() {
        return "com.google.android.gms.auth.api.signin.internal.ISignInService";
    }
}
