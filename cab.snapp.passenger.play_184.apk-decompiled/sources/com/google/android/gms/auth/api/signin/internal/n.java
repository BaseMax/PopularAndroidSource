package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.ap;

public final class n {

    /* renamed from: a  reason: collision with root package name */
    private static n f2673a;

    /* renamed from: b  reason: collision with root package name */
    private x f2674b;
    private GoogleSignInAccount c = this.f2674b.zzabt();
    private GoogleSignInOptions d = this.f2674b.zzabu();

    private n(Context context) {
        this.f2674b = x.zzbt(context);
    }

    private static synchronized n a(Context context) {
        n nVar;
        synchronized (n.class) {
            if (f2673a == null) {
                f2673a = new n(context);
            }
            nVar = f2673a;
        }
        return nVar;
    }

    public static synchronized n zzbr(Context context) {
        n a2;
        synchronized (n.class) {
            a2 = a(context.getApplicationContext());
        }
        return a2;
    }

    public final synchronized void clear() {
        this.f2674b.clear();
        this.c = null;
        this.d = null;
    }

    public final synchronized void zza(GoogleSignInOptions googleSignInOptions, GoogleSignInAccount googleSignInAccount) {
        x xVar = this.f2674b;
        ap.checkNotNull(googleSignInAccount);
        ap.checkNotNull(googleSignInOptions);
        xVar.a("defaultGoogleSignInAccount", googleSignInAccount.zzaba());
        xVar.a(googleSignInAccount, googleSignInOptions);
        this.c = googleSignInAccount;
        this.d = googleSignInOptions;
    }

    public final synchronized GoogleSignInAccount zzabl() {
        return this.c;
    }

    public final synchronized GoogleSignInOptions zzabm() {
        return this.d;
    }
}
