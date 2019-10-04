package com.google.android.gms.common.api;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.c.f;
import com.google.android.gms.c.g;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.C0065a;
import com.google.android.gms.common.api.internal.al;
import com.google.android.gms.common.api.internal.an;
import com.google.android.gms.common.api.internal.av;
import com.google.android.gms.common.api.internal.bg;
import com.google.android.gms.common.api.internal.bi;
import com.google.android.gms.common.api.internal.bk;
import com.google.android.gms.common.api.internal.bo;
import com.google.android.gms.common.api.internal.bt;
import com.google.android.gms.common.api.internal.bx;
import com.google.android.gms.common.api.internal.cb;
import com.google.android.gms.common.api.internal.cl;
import com.google.android.gms.common.api.internal.co;
import com.google.android.gms.common.api.internal.cp;
import com.google.android.gms.common.api.internal.cu;
import com.google.android.gms.common.api.internal.h;
import com.google.android.gms.common.internal.ap;

public class e<O extends a.C0065a> {

    /* renamed from: a  reason: collision with root package name */
    protected final al f2738a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f2739b;
    private final a<O> c;
    private final O d;
    private final cp<O> e;
    private final Looper f;
    private final int g;
    private final f h;
    private final bx i;

    public static class a {
        public static final a zzfmj = new r().zzagq();
        public final bx zzfmk;
        public final Looper zzfml;

        private a(bx bxVar, Looper looper) {
            this.zzfmk = bxVar;
            this.zzfml = looper;
        }

        /* synthetic */ a(bx bxVar, Looper looper, byte b2) {
            this(bxVar, looper);
        }
    }

    public e(Activity activity, a<O> aVar, O o, a aVar2) {
        ap.checkNotNull(activity, "Null activity is not permitted.");
        ap.checkNotNull(aVar, "Api must not be null.");
        ap.checkNotNull(aVar2, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        this.f2739b = activity.getApplicationContext();
        this.c = aVar;
        this.d = o;
        this.f = aVar2.zzfml;
        this.e = cp.zza(this.c, this.d);
        this.h = new av(this);
        this.f2738a = al.zzcj(this.f2739b);
        this.g = this.f2738a.zzais();
        this.i = aVar2.zzfmk;
        h.zza(activity, this.f2738a, this.e);
        this.f2738a.zza((e<?>) this);
    }

    @Deprecated
    public e(Activity activity, a<O> aVar, O o, bx bxVar) {
        this(activity, aVar, o, new r().zza(bxVar).zza(activity.getMainLooper()).zzagq());
    }

    protected e(Context context, a<O> aVar, Looper looper) {
        ap.checkNotNull(context, "Null context is not permitted.");
        ap.checkNotNull(aVar, "Api must not be null.");
        ap.checkNotNull(looper, "Looper must not be null.");
        this.f2739b = context.getApplicationContext();
        this.c = aVar;
        this.d = null;
        this.f = looper;
        this.e = cp.zzb(aVar);
        this.h = new av(this);
        this.f2738a = al.zzcj(this.f2739b);
        this.g = this.f2738a.zzais();
        this.i = new co();
    }

    @Deprecated
    public e(Context context, a<O> aVar, O o, Looper looper, bx bxVar) {
        this(context, aVar, (a.C0065a) null, new r().zza(looper).zza(bxVar).zzagq());
    }

    public e(Context context, a<O> aVar, O o, a aVar2) {
        ap.checkNotNull(context, "Null context is not permitted.");
        ap.checkNotNull(aVar, "Api must not be null.");
        ap.checkNotNull(aVar2, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        this.f2739b = context.getApplicationContext();
        this.c = aVar;
        this.d = o;
        this.f = aVar2.zzfml;
        this.e = cp.zza(this.c, this.d);
        this.h = new av(this);
        this.f2738a = al.zzcj(this.f2739b);
        this.g = this.f2738a.zzais();
        this.i = aVar2.zzfmk;
        this.f2738a.zza((e<?>) this);
    }

    @Deprecated
    public e(Context context, a<O> aVar, O o, bx bxVar) {
        this(context, aVar, o, new r().zza(bxVar).zzagq());
    }

    private final <TResult, A extends a.c> f<TResult> a(int i2, cb<A, TResult> cbVar) {
        g gVar = new g();
        this.f2738a.zza(this, i2, cbVar, gVar, this.i);
        return gVar.getTask();
    }

    private final <A extends a.c, T extends cu<? extends m, A>> T a(int i2, T t) {
        t.zzahi();
        this.f2738a.zza(this, i2, (cu<? extends m, a.c>) t);
        return t;
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0030  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final com.google.android.gms.common.internal.bm a() {
        /*
            r3 = this;
            com.google.android.gms.common.internal.bm r0 = new com.google.android.gms.common.internal.bm
            r0.<init>()
            O r1 = r3.d
            boolean r2 = r1 instanceof com.google.android.gms.common.api.a.C0065a.b
            if (r2 == 0) goto L_0x0018
            com.google.android.gms.common.api.a$a$b r1 = (com.google.android.gms.common.api.a.C0065a.b) r1
            com.google.android.gms.auth.api.signin.GoogleSignInAccount r1 = r1.getGoogleSignInAccount()
            if (r1 == 0) goto L_0x0018
            android.accounts.Account r1 = r1.getAccount()
            goto L_0x0026
        L_0x0018:
            O r1 = r3.d
            boolean r2 = r1 instanceof com.google.android.gms.common.api.a.C0065a.C0066a
            if (r2 == 0) goto L_0x0025
            com.google.android.gms.common.api.a$a$a r1 = (com.google.android.gms.common.api.a.C0065a.C0066a) r1
            android.accounts.Account r1 = r1.getAccount()
            goto L_0x0026
        L_0x0025:
            r1 = 0
        L_0x0026:
            com.google.android.gms.common.internal.bm r0 = r0.zze((android.accounts.Account) r1)
            O r1 = r3.d
            boolean r2 = r1 instanceof com.google.android.gms.common.api.a.C0065a.b
            if (r2 == 0) goto L_0x003d
            com.google.android.gms.common.api.a$a$b r1 = (com.google.android.gms.common.api.a.C0065a.b) r1
            com.google.android.gms.auth.api.signin.GoogleSignInAccount r1 = r1.getGoogleSignInAccount()
            if (r1 == 0) goto L_0x003d
            java.util.Set r1 = r1.zzabb()
            goto L_0x0041
        L_0x003d:
            java.util.Set r1 = java.util.Collections.emptySet()
        L_0x0041:
            com.google.android.gms.common.internal.bm r0 = r0.zze((java.util.Collection<com.google.android.gms.common.api.Scope>) r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.e.a():com.google.android.gms.common.internal.bm");
    }

    public final Context getApplicationContext() {
        return this.f2739b;
    }

    public final int getInstanceId() {
        return this.g;
    }

    public final Looper getLooper() {
        return this.f;
    }

    public final f<Boolean> zza(bi<?> biVar) {
        ap.checkNotNull(biVar, "Listener key cannot be null.");
        return this.f2738a.zza(this, biVar);
    }

    public final <A extends a.c, T extends bo<A, ?>, U extends cl<A, ?>> f<Void> zza(T t, U u) {
        ap.checkNotNull(t);
        ap.checkNotNull(u);
        ap.checkNotNull(t.zzajo(), "Listener has already been released.");
        ap.checkNotNull(u.zzajo(), "Listener has already been released.");
        ap.checkArgument(t.zzajo().equals(u.zzajo()), "Listener registration and unregistration methods must be constructed with the same ListenerHolder.");
        return this.f2738a.zza(this, (bo<a.c, ?>) t, (cl<a.c, ?>) u);
    }

    public final <TResult, A extends a.c> f<TResult> zza(cb<A, TResult> cbVar) {
        return a(0, cbVar);
    }

    public a.f zza(Looper looper, an<O> anVar) {
        return this.c.zzage().zza(this.f2739b, looper, a().zzgf(this.f2739b.getPackageName()).zzgg(this.f2739b.getClass().getName()).zzald(), this.d, anVar, anVar);
    }

    public final <L> bg<L> zza(L l, String str) {
        return bk.zzb(l, this.f, str);
    }

    public bt zza(Context context, Handler handler) {
        return new bt(context, handler, a().zzald());
    }

    public final <A extends a.c, T extends cu<? extends m, A>> T zza(T t) {
        return a(0, t);
    }

    public final a<O> zzagl() {
        return this.c;
    }

    public final O zzagm() {
        return this.d;
    }

    public final cp<O> zzagn() {
        return this.e;
    }

    public final f zzago() {
        return this.h;
    }

    public final <TResult, A extends a.c> f<TResult> zzb(cb<A, TResult> cbVar) {
        return a(1, cbVar);
    }

    public final <A extends a.c, T extends cu<? extends m, A>> T zzb(T t) {
        return a(1, t);
    }

    public final <A extends a.c, T extends cu<? extends m, A>> T zzc(T t) {
        return a(2, t);
    }
}
