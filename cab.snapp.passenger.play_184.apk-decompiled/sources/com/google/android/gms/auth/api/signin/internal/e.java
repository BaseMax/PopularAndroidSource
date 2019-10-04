package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.i;
import com.google.android.gms.common.api.internal.al;
import com.google.android.gms.internal.fb;

public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static fb f2667a = new fb("GoogleSignInCommon", new String[0]);

    private static void a(Context context) {
        n.zzbr(context).clear();
        for (f zzags : f.zzagr()) {
            zzags.zzags();
        }
        al.zzair();
    }

    public static com.google.android.gms.auth.api.signin.e getSignInResultFromIntent(Intent intent) {
        if (intent == null || (!intent.hasExtra("googleSignInStatus") && !intent.hasExtra("googleSignInAccount"))) {
            return null;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) intent.getParcelableExtra("googleSignInAccount");
        Status status = (Status) intent.getParcelableExtra("googleSignInStatus");
        if (googleSignInAccount != null) {
            status = Status.zzfni;
        }
        return new com.google.android.gms.auth.api.signin.e(googleSignInAccount, status);
    }

    public static Intent zza(Context context, GoogleSignInOptions googleSignInOptions) {
        f2667a.zzb("getSignInIntent()", new Object[0]);
        SignInConfiguration signInConfiguration = new SignInConfiguration(context.getPackageName(), googleSignInOptions);
        Intent intent = new Intent("com.google.android.gms.auth.GOOGLE_SIGN_IN");
        intent.setPackage(context.getPackageName());
        intent.setClass(context, SignInHubActivity.class);
        Bundle bundle = new Bundle();
        bundle.putParcelable("config", signInConfiguration);
        intent.putExtra("config", bundle);
        return intent;
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:0x008a  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0098  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.google.android.gms.common.api.g<com.google.android.gms.auth.api.signin.e> zza(com.google.android.gms.common.api.f r5, android.content.Context r6, com.google.android.gms.auth.api.signin.GoogleSignInOptions r7, boolean r8) {
        /*
            com.google.android.gms.internal.fb r0 = f2667a
            r1 = 0
            java.lang.Object[] r2 = new java.lang.Object[r1]
            java.lang.String r3 = "silentSignIn()"
            r0.zzb(r3, r2)
            com.google.android.gms.internal.fb r0 = f2667a
            java.lang.Object[] r2 = new java.lang.Object[r1]
            java.lang.String r3 = "getEligibleSavedSignInResult()"
            r0.zzb(r3, r2)
            com.google.android.gms.common.internal.ap.checkNotNull(r7)
            com.google.android.gms.auth.api.signin.internal.n r0 = com.google.android.gms.auth.api.signin.internal.n.zzbr(r6)
            com.google.android.gms.auth.api.signin.GoogleSignInOptions r0 = r0.zzabm()
            r2 = 0
            if (r0 == 0) goto L_0x0087
            android.accounts.Account r3 = r0.getAccount()
            android.accounts.Account r4 = r7.getAccount()
            if (r3 != 0) goto L_0x0031
            if (r4 != 0) goto L_0x002f
            r3 = 1
            goto L_0x0035
        L_0x002f:
            r3 = 0
            goto L_0x0035
        L_0x0031:
            boolean r3 = r3.equals(r4)
        L_0x0035:
            if (r3 == 0) goto L_0x0087
            boolean r3 = r7.zzabf()
            if (r3 != 0) goto L_0x0087
            boolean r3 = r7.isIdTokenRequested()
            if (r3 == 0) goto L_0x0057
            boolean r3 = r0.isIdTokenRequested()
            if (r3 == 0) goto L_0x0087
            java.lang.String r3 = r7.getServerClientId()
            java.lang.String r4 = r0.getServerClientId()
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L_0x0087
        L_0x0057:
            java.util.HashSet r3 = new java.util.HashSet
            java.util.ArrayList r0 = r0.zzabe()
            r3.<init>(r0)
            java.util.HashSet r0 = new java.util.HashSet
            java.util.ArrayList r4 = r7.zzabe()
            r0.<init>(r4)
            boolean r0 = r3.containsAll(r0)
            if (r0 == 0) goto L_0x0087
            com.google.android.gms.auth.api.signin.internal.n r0 = com.google.android.gms.auth.api.signin.internal.n.zzbr(r6)
            com.google.android.gms.auth.api.signin.GoogleSignInAccount r0 = r0.zzabl()
            if (r0 == 0) goto L_0x0087
            boolean r3 = r0.zza()
            if (r3 != 0) goto L_0x0087
            com.google.android.gms.auth.api.signin.e r3 = new com.google.android.gms.auth.api.signin.e
            com.google.android.gms.common.api.Status r4 = com.google.android.gms.common.api.Status.zzfni
            r3.<init>(r0, r4)
            goto L_0x0088
        L_0x0087:
            r3 = r2
        L_0x0088:
            if (r3 == 0) goto L_0x0098
            com.google.android.gms.internal.fb r6 = f2667a
            java.lang.Object[] r7 = new java.lang.Object[r1]
            java.lang.String r8 = "Eligible saved sign in result found"
            r6.zzb(r8, r7)
            com.google.android.gms.common.api.g r5 = com.google.android.gms.common.api.i.zzb(r3, r5)
            return r5
        L_0x0098:
            if (r8 == 0) goto L_0x00aa
            com.google.android.gms.auth.api.signin.e r6 = new com.google.android.gms.auth.api.signin.e
            com.google.android.gms.common.api.Status r7 = new com.google.android.gms.common.api.Status
            r8 = 4
            r7.<init>(r8)
            r6.<init>(r2, r7)
            com.google.android.gms.common.api.g r5 = com.google.android.gms.common.api.i.zzb(r6, r5)
            return r5
        L_0x00aa:
            com.google.android.gms.internal.fb r8 = f2667a
            java.lang.Object[] r0 = new java.lang.Object[r1]
            java.lang.String r1 = "trySilentSignIn()"
            r8.zzb(r1, r0)
            com.google.android.gms.auth.api.signin.internal.f r8 = new com.google.android.gms.auth.api.signin.internal.f
            r8.<init>(r5, r6, r7)
            com.google.android.gms.common.api.internal.cu r5 = r5.zzd(r8)
            com.google.android.gms.common.api.internal.bm r6 = new com.google.android.gms.common.api.internal.bm
            r6.<init>(r5)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.internal.e.zza(com.google.android.gms.common.api.f, android.content.Context, com.google.android.gms.auth.api.signin.GoogleSignInOptions, boolean):com.google.android.gms.common.api.g");
    }

    public static h<Status> zza(f fVar, Context context, boolean z) {
        f2667a.zzb("Signing out", new Object[0]);
        a(context);
        return z ? i.zza(Status.zzfni, fVar) : fVar.zze(new h(fVar));
    }

    public static Intent zzb(Context context, GoogleSignInOptions googleSignInOptions) {
        f2667a.zzb("getFallbackSignInIntent()", new Object[0]);
        Intent zza = zza(context, googleSignInOptions);
        zza.setAction("com.google.android.gms.auth.APPAUTH_SIGN_IN");
        return zza;
    }

    public static h<Status> zzb(f fVar, Context context, boolean z) {
        f2667a.zzb("Revoking access", new Object[0]);
        a(context);
        return z ? i.zza(Status.zzfnn, fVar) : fVar.zze(new j(fVar));
    }

    public static Intent zzc(Context context, GoogleSignInOptions googleSignInOptions) {
        f2667a.zzb("getNoImplementationSignInIntent()", new Object[0]);
        Intent zza = zza(context, googleSignInOptions);
        zza.setAction("com.google.android.gms.auth.NO_IMPL");
        return zza;
    }
}
