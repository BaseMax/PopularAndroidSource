package c.e.a.b.d.a;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import c.e.a.b.d.a.a;
import c.e.a.b.d.a.a.C0753a;
import c.e.a.b.d.a.a.C0755c;
import c.e.a.b.d.a.a.C0761i;
import c.e.a.b.d.a.a.C0762j;
import c.e.a.b.d.a.a.C0767o;
import c.e.a.b.d.a.a.C0776y;
import c.e.a.b.d.a.a.E;
import c.e.a.b.d.a.a.N;
import c.e.a.b.d.a.a.d;
import c.e.a.b.d.d.r;
import c.e.a.b.j.g;
import c.e.a.b.j.h;
import com.google.android.gms.common.api.GoogleApiActivity;

public class c<O extends a.d> {

    /* renamed from: a  reason: collision with root package name */
    public final Context f9918a;

    /* renamed from: b  reason: collision with root package name */
    public final a<O> f9919b;

    /* renamed from: c  reason: collision with root package name */
    public final O f9920c;

    /* renamed from: d  reason: collision with root package name */
    public final N<O> f9921d = N.a(this.f9919b, this.f9920c);

    /* renamed from: e  reason: collision with root package name */
    public final Looper f9922e;

    /* renamed from: f  reason: collision with root package name */
    public final int f9923f = this.f9926i.a();

    /* renamed from: g  reason: collision with root package name */
    public final d f9924g = new C0776y(this);

    /* renamed from: h  reason: collision with root package name */
    public final C0761i f9925h;

    /* renamed from: i  reason: collision with root package name */
    public final C0755c f9926i = C0755c.a(this.f9918a);

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f9927a = new C0124a().a();

        /* renamed from: b  reason: collision with root package name */
        public final C0761i f9928b;

        /* renamed from: c  reason: collision with root package name */
        public final Looper f9929c;

        /* renamed from: c.e.a.b.d.a.c$a$a  reason: collision with other inner class name */
        public static class C0124a {

            /* renamed from: a  reason: collision with root package name */
            public C0761i f9930a;

            /* renamed from: b  reason: collision with root package name */
            public Looper f9931b;

            public a a() {
                if (this.f9930a == null) {
                    this.f9930a = new C0753a();
                }
                if (this.f9931b == null) {
                    this.f9931b = Looper.getMainLooper();
                }
                return new a(this.f9930a, this.f9931b);
            }
        }

        public a(C0761i iVar, Account account, Looper looper) {
            this.f9928b = iVar;
            this.f9929c = looper;
        }
    }

    public c(Activity activity, a<O> aVar, O o, a aVar2) {
        r.a(activity, (Object) "Null activity is not permitted.");
        r.a(aVar, (Object) "Api must not be null.");
        r.a(aVar2, (Object) "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        this.f9918a = activity.getApplicationContext();
        this.f9919b = aVar;
        this.f9920c = o;
        this.f9922e = aVar2.f9929c;
        this.f9925h = aVar2.f9928b;
        if (!(activity instanceof GoogleApiActivity)) {
            C0767o.a(activity, this.f9926i, this.f9921d);
        }
        this.f9926i.a((c<?>) this);
    }

    public final <TResult, A extends a.b> g<TResult> a(int i2, C0762j<A, TResult> jVar) {
        h hVar = new h();
        this.f9926i.a(this, i2, jVar, hVar, this.f9925h);
        return hVar.a();
    }

    public final int b() {
        return this.f9923f;
    }

    public final N<O> c() {
        return this.f9921d;
    }

    public <TResult, A extends a.b> g<TResult> a(C0762j<A, TResult> jVar) {
        return a(1, jVar);
    }

    public a.f a(Looper looper, C0755c.a<O> aVar) {
        return this.f9919b.b().a(this.f9918a, looper, a().a(), this.f9920c, aVar, aVar);
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x002f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public c.e.a.b.d.d.C0782e.a a() {
        /*
            r3 = this;
            c.e.a.b.d.d.e$a r0 = new c.e.a.b.d.d.e$a
            r0.<init>()
            O r1 = r3.f9920c
            boolean r2 = r1 instanceof c.e.a.b.d.a.a.d.b
            if (r2 == 0) goto L_0x0018
            c.e.a.b.d.a.a$d$b r1 = (c.e.a.b.d.a.a.d.b) r1
            com.google.android.gms.auth.api.signin.GoogleSignInAccount r1 = r1.a()
            if (r1 == 0) goto L_0x0018
            android.accounts.Account r1 = r1.x()
            goto L_0x0026
        L_0x0018:
            O r1 = r3.f9920c
            boolean r2 = r1 instanceof c.e.a.b.d.a.a.d.C0122a
            if (r2 == 0) goto L_0x0025
            c.e.a.b.d.a.a$d$a r1 = (c.e.a.b.d.a.a.d.C0122a) r1
            android.accounts.Account r1 = r1.e()
            goto L_0x0026
        L_0x0025:
            r1 = 0
        L_0x0026:
            r0.a((android.accounts.Account) r1)
            O r1 = r3.f9920c
            boolean r2 = r1 instanceof c.e.a.b.d.a.a.d.b
            if (r2 == 0) goto L_0x003c
            c.e.a.b.d.a.a$d$b r1 = (c.e.a.b.d.a.a.d.b) r1
            com.google.android.gms.auth.api.signin.GoogleSignInAccount r1 = r1.a()
            if (r1 == 0) goto L_0x003c
            java.util.Set r1 = r1.F()
            goto L_0x0040
        L_0x003c:
            java.util.Set r1 = java.util.Collections.emptySet()
        L_0x0040:
            r0.a((java.util.Collection<com.google.android.gms.common.api.Scope>) r1)
            android.content.Context r1 = r3.f9918a
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r0.a((java.lang.String) r1)
            android.content.Context r1 = r3.f9918a
            java.lang.String r1 = r1.getPackageName()
            r0.b(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.d.a.c.a():c.e.a.b.d.d.e$a");
    }

    public E a(Context context, Handler handler) {
        return new E(context, handler, a().a());
    }
}
