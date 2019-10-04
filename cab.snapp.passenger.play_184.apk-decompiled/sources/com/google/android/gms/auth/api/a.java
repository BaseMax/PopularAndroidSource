package com.google.android.gms.auth.api;

import android.os.Bundle;
import com.google.android.gms.auth.api.credentials.PasswordSpecification;
import com.google.android.gms.auth.api.credentials.b;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.c;
import com.google.android.gms.auth.api.signin.internal.d;
import com.google.android.gms.common.api.a;
import com.google.android.gms.internal.cg;
import com.google.android.gms.internal.ch;
import com.google.android.gms.internal.ci;
import com.google.android.gms.internal.cs;
import com.google.android.gms.internal.db;
import com.google.android.gms.internal.dp;

public final class a {
    public static final com.google.android.gms.common.api.a<C0061a> CREDENTIALS_API = new com.google.android.gms.common.api.a<>("Auth.CREDENTIALS_API", f2609b, zzecv);
    public static final b CredentialsApi = new cs();
    public static final com.google.android.gms.common.api.a<GoogleSignInOptions> GOOGLE_SIGN_IN_API = new com.google.android.gms.common.api.a<>("Auth.GOOGLE_SIGN_IN_API", d, zzecx);
    public static final com.google.android.gms.auth.api.signin.b GoogleSignInApi = new c();
    public static final com.google.android.gms.common.api.a<g> PROXY_API = e.API;
    public static final com.google.android.gms.auth.api.proxy.a ProxyApi = new dp();

    /* renamed from: a  reason: collision with root package name */
    private static a.g<ci> f2608a = new a.g<>();

    /* renamed from: b  reason: collision with root package name */
    private static final a.b<db, C0061a> f2609b = new b();
    private static final a.b<ci, Object> c = new c();
    private static final a.b<d, GoogleSignInOptions> d = new d();
    private static com.google.android.gms.common.api.a<Object> e = new com.google.android.gms.common.api.a<>("Auth.ACCOUNT_STATUS_API", c, f2608a);
    private static cg f = new ch();
    public static final a.g<db> zzecv = new a.g<>();
    public static final a.g<d> zzecx = new a.g<>();

    @Deprecated
    /* renamed from: com.google.android.gms.auth.api.a$a  reason: collision with other inner class name */
    public static class C0061a implements a.C0065a.e {

        /* renamed from: a  reason: collision with root package name */
        private static C0061a f2610a = new C0062a().zzaat();

        /* renamed from: b  reason: collision with root package name */
        private final String f2611b = null;
        private final PasswordSpecification c;
        private final boolean d;

        @Deprecated
        /* renamed from: com.google.android.gms.auth.api.a$a$a  reason: collision with other inner class name */
        public static class C0062a {

            /* renamed from: a  reason: collision with root package name */
            protected PasswordSpecification f2612a = PasswordSpecification.zzeft;

            /* renamed from: b  reason: collision with root package name */
            protected Boolean f2613b = Boolean.FALSE;

            public final C0062a forceEnableSaveDialog() {
                this.f2613b = Boolean.TRUE;
                return this;
            }

            public final C0061a zzaat() {
                return new C0061a(this);
            }
        }

        public C0061a(C0062a aVar) {
            this.c = aVar.f2612a;
            this.d = aVar.f2613b.booleanValue();
        }

        public final Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putString("consumer_package", null);
            bundle.putParcelable("password_specification", this.c);
            bundle.putBoolean("force_save_dialog", this.d);
            return bundle;
        }

        public final PasswordSpecification zzaas() {
            return this.c;
        }
    }

    private a() {
    }
}
