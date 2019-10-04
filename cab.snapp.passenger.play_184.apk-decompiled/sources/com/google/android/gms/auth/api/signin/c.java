package com.google.android.gms.auth.api.signin;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.c.f;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.api.internal.bx;
import com.google.android.gms.common.api.internal.co;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.internal.ai;
import com.google.android.gms.common.internal.an;
import com.google.android.gms.common.j;
import com.google.android.gms.dynamite.DynamiteModule;

public final class c extends e<GoogleSignInOptions> {

    /* renamed from: b  reason: collision with root package name */
    private static final a f2654b = new a((byte) 0);
    private static int c = b.zzehd;

    static class a implements an<e, GoogleSignInAccount> {
        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }

        public final /* synthetic */ Object zzb(m mVar) {
            return ((e) mVar).getSignInAccount();
        }
    }

    /* 'enum' modifier removed */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        private static final /* synthetic */ int[] f2655a = {zzehd, zzehe, zzehf, zzehg};
        public static final int zzehd = 1;
        public static final int zzehe = 2;
        public static final int zzehf = 3;
        public static final int zzehg = 4;

        public static int[] values$50KLMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UPRDECNM2TBKD0NM2S395TPMIPRED5N2UHRFDTJMOPAJD5JMSIBE8DM6IPBEEGI4IRBGDHIMQPBEEHGN8QBFDOTG____0() {
            return (int[]) f2655a.clone();
        }
    }

    c(Activity activity, GoogleSignInOptions googleSignInOptions) {
        super(activity, com.google.android.gms.auth.api.a.GOOGLE_SIGN_IN_API, googleSignInOptions, (bx) new co());
    }

    c(Context context, GoogleSignInOptions googleSignInOptions) {
        super(context, com.google.android.gms.auth.api.a.GOOGLE_SIGN_IN_API, googleSignInOptions, (bx) new co());
    }

    private final synchronized int a() {
        if (c == b.zzehd) {
            Context applicationContext = getApplicationContext();
            int isGooglePlayServicesAvailable = com.google.android.gms.common.b.getInstance().isGooglePlayServicesAvailable(applicationContext);
            c = isGooglePlayServicesAvailable == 0 ? b.zzehg : (j.zza(applicationContext, isGooglePlayServicesAvailable, null) != null || DynamiteModule.zzab(applicationContext, "com.google.android.gms.auth.api.fallback") == 0) ? b.zzehe : b.zzehf;
        }
        return c;
    }

    public final Intent getSignInIntent() {
        Context applicationContext = getApplicationContext();
        int i = h.f2659a[a() - 1];
        return i != 1 ? i != 2 ? com.google.android.gms.auth.api.signin.internal.e.zzc(applicationContext, (GoogleSignInOptions) zzagm()) : com.google.android.gms.auth.api.signin.internal.e.zza(applicationContext, (GoogleSignInOptions) zzagm()) : com.google.android.gms.auth.api.signin.internal.e.zzb(applicationContext, (GoogleSignInOptions) zzagm());
    }

    public final f<Void> revokeAccess() {
        return ai.zzb(com.google.android.gms.auth.api.signin.internal.e.zzb(zzago(), getApplicationContext(), a() == b.zzehf));
    }

    public final f<Void> signOut() {
        return ai.zzb(com.google.android.gms.auth.api.signin.internal.e.zza(zzago(), getApplicationContext(), a() == b.zzehf));
    }

    public final f<GoogleSignInAccount> silentSignIn() {
        return ai.zza(com.google.android.gms.auth.api.signin.internal.e.zza(zzago(), getApplicationContext(), (GoogleSignInOptions) zzagm(), a() == b.zzehf), f2654b);
    }
}
