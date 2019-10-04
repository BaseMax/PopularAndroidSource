package c.e.a.b.d.d;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import c.e.a.b.d.d;
import c.e.a.b.d.d.C0787j;
import c.e.a.b.d.d.C0791n;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.GetServiceRequest;
import com.google.android.gms.common.internal.zzb;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: c.e.a.b.d.d.d  reason: case insensitive filesystem */
public abstract class C0781d<T extends IInterface> {

    /* renamed from: a  reason: collision with root package name */
    public static final Feature[] f9969a = new Feature[0];

    /* renamed from: b  reason: collision with root package name */
    public static final String[] f9970b = {"service_esmobile", "service_googleme"};
    public boolean A;
    public volatile zzb B;
    public AtomicInteger C;

    /* renamed from: c  reason: collision with root package name */
    public int f9971c;

    /* renamed from: d  reason: collision with root package name */
    public long f9972d;

    /* renamed from: e  reason: collision with root package name */
    public long f9973e;

    /* renamed from: f  reason: collision with root package name */
    public int f9974f;

    /* renamed from: g  reason: collision with root package name */
    public long f9975g;

    /* renamed from: h  reason: collision with root package name */
    public K f9976h;

    /* renamed from: i  reason: collision with root package name */
    public final Context f9977i;

    /* renamed from: j  reason: collision with root package name */
    public final Looper f9978j;

    /* renamed from: k  reason: collision with root package name */
    public final C0787j f9979k;

    /* renamed from: l  reason: collision with root package name */
    public final d f9980l;
    public final Handler m;
    public final Object n;
    public final Object o;
    public C0793p p;
    public c q;
    public T r;
    public final ArrayList<h<?>> s;
    public j t;
    public int u;
    public final a v;
    public final b w;
    public final int x;
    public final String y;
    public ConnectionResult z;

    /* renamed from: c.e.a.b.d.d.d$a */
    public interface a {
        void d(Bundle bundle);

        void f(int i2);
    }

    /* renamed from: c.e.a.b.d.d.d$b */
    public interface b {
        void a(ConnectionResult connectionResult);
    }

    /* renamed from: c.e.a.b.d.d.d$c */
    public interface c {
        void a(ConnectionResult connectionResult);
    }

    /* renamed from: c.e.a.b.d.d.d$d  reason: collision with other inner class name */
    protected class C0125d implements c {
        public C0125d() {
        }

        public void a(ConnectionResult connectionResult) {
            if (connectionResult.B()) {
                C0781d dVar = C0781d.this;
                dVar.a((C0789l) null, dVar.q());
                return;
            }
            if (C0781d.this.w != null) {
                C0781d.this.w.a(connectionResult);
            }
        }
    }

    /* renamed from: c.e.a.b.d.d.d$e */
    public interface e {
        void a();
    }

    /* renamed from: c.e.a.b.d.d.d$f */
    private abstract class f extends h<Boolean> {

        /* renamed from: d  reason: collision with root package name */
        public final int f9982d;

        /* renamed from: e  reason: collision with root package name */
        public final Bundle f9983e;

        public f(int i2, Bundle bundle) {
            super(true);
            this.f9982d = i2;
            this.f9983e = bundle;
        }

        public abstract void a(ConnectionResult connectionResult);

        /* JADX WARNING: type inference failed for: r5v11, types: [android.os.Parcelable] */
        /* JADX WARNING: Multi-variable type inference failed */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final /* synthetic */ void a(java.lang.Object r5) {
            /*
                r4 = this;
                java.lang.Boolean r5 = (java.lang.Boolean) r5
                r0 = 1
                r1 = 0
                if (r5 != 0) goto L_0x000c
                c.e.a.b.d.d.d r5 = c.e.a.b.d.d.C0781d.this
                r5.b(r0, null)
                return
            L_0x000c:
                int r5 = r4.f9982d
                if (r5 == 0) goto L_0x0061
                r2 = 10
                if (r5 == r2) goto L_0x0031
                c.e.a.b.d.d.d r5 = c.e.a.b.d.d.C0781d.this
                r5.b(r0, null)
                android.os.Bundle r5 = r4.f9983e
                if (r5 == 0) goto L_0x0026
                java.lang.String r0 = "pendingIntent"
                android.os.Parcelable r5 = r5.getParcelable(r0)
                r1 = r5
                android.app.PendingIntent r1 = (android.app.PendingIntent) r1
            L_0x0026:
                com.google.android.gms.common.ConnectionResult r5 = new com.google.android.gms.common.ConnectionResult
                int r0 = r4.f9982d
                r5.<init>(r0, r1)
                r4.a((com.google.android.gms.common.ConnectionResult) r5)
                goto L_0x0076
            L_0x0031:
                c.e.a.b.d.d.d r5 = c.e.a.b.d.d.C0781d.this
                r5.b(r0, null)
                java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                r1 = 3
                java.lang.Object[] r1 = new java.lang.Object[r1]
                r2 = 0
                java.lang.Class r3 = r4.getClass()
                java.lang.String r3 = r3.getSimpleName()
                r1[r2] = r3
                c.e.a.b.d.d.d r2 = c.e.a.b.d.d.C0781d.this
                java.lang.String r2 = r2.t()
                r1[r0] = r2
                r0 = 2
                c.e.a.b.d.d.d r2 = c.e.a.b.d.d.C0781d.this
                java.lang.String r2 = r2.s()
                r1[r0] = r2
                java.lang.String r0 = "A fatal developer error has occurred. Class name: %s. Start service action: %s. Service Descriptor: %s. "
                java.lang.String r0 = java.lang.String.format(r0, r1)
                r5.<init>(r0)
                throw r5
            L_0x0061:
                boolean r5 = r4.e()
                if (r5 != 0) goto L_0x0076
                c.e.a.b.d.d.d r5 = c.e.a.b.d.d.C0781d.this
                r5.b(r0, null)
                com.google.android.gms.common.ConnectionResult r5 = new com.google.android.gms.common.ConnectionResult
                r0 = 8
                r5.<init>(r0, r1)
                r4.a((com.google.android.gms.common.ConnectionResult) r5)
            L_0x0076:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.d.d.C0781d.f.a(java.lang.Object):void");
        }

        public final void c() {
        }

        public abstract boolean e();
    }

    /* renamed from: c.e.a.b.d.d.d$g */
    final class g extends c.e.a.b.g.d.d {
        public g(Looper looper) {
            super(looper);
        }

        public static void a(Message message) {
            h hVar = (h) message.obj;
            hVar.c();
            hVar.b();
        }

        public static boolean b(Message message) {
            int i2 = message.what;
            return i2 == 2 || i2 == 1 || i2 == 7;
        }

        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v17, resolved type: java.lang.Object} */
        /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v2, resolved type: android.app.PendingIntent} */
        /* JADX WARNING: Multi-variable type inference failed */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void handleMessage(android.os.Message r8) {
            /*
                r7 = this;
                c.e.a.b.d.d.d r0 = c.e.a.b.d.d.C0781d.this
                java.util.concurrent.atomic.AtomicInteger r0 = r0.C
                int r0 = r0.get()
                int r1 = r8.arg1
                if (r0 == r1) goto L_0x0016
                boolean r0 = b(r8)
                if (r0 == 0) goto L_0x0015
                a(r8)
            L_0x0015:
                return
            L_0x0016:
                int r0 = r8.what
                r1 = 4
                r2 = 1
                r3 = 5
                if (r0 == r2) goto L_0x002e
                r4 = 7
                if (r0 == r4) goto L_0x002e
                if (r0 != r1) goto L_0x002a
                c.e.a.b.d.d.d r0 = c.e.a.b.d.d.C0781d.this
                boolean r0 = r0.j()
                if (r0 == 0) goto L_0x002e
            L_0x002a:
                int r0 = r8.what
                if (r0 != r3) goto L_0x003a
            L_0x002e:
                c.e.a.b.d.d.d r0 = c.e.a.b.d.d.C0781d.this
                boolean r0 = r0.b()
                if (r0 != 0) goto L_0x003a
                a(r8)
                return
            L_0x003a:
                int r0 = r8.what
                r4 = 8
                r5 = 3
                r6 = 0
                if (r0 != r1) goto L_0x0085
                c.e.a.b.d.d.d r0 = c.e.a.b.d.d.C0781d.this
                com.google.android.gms.common.ConnectionResult r1 = new com.google.android.gms.common.ConnectionResult
                int r8 = r8.arg2
                r1.<init>(r8)
                com.google.android.gms.common.ConnectionResult unused = r0.z = r1
                c.e.a.b.d.d.d r8 = c.e.a.b.d.d.C0781d.this
                boolean r8 = r8.y()
                if (r8 == 0) goto L_0x0064
                c.e.a.b.d.d.d r8 = c.e.a.b.d.d.C0781d.this
                boolean r8 = r8.A
                if (r8 != 0) goto L_0x0064
                c.e.a.b.d.d.d r8 = c.e.a.b.d.d.C0781d.this
                r8.b(r5, null)
                return
            L_0x0064:
                c.e.a.b.d.d.d r8 = c.e.a.b.d.d.C0781d.this
                com.google.android.gms.common.ConnectionResult r8 = r8.z
                if (r8 == 0) goto L_0x0073
                c.e.a.b.d.d.d r8 = c.e.a.b.d.d.C0781d.this
                com.google.android.gms.common.ConnectionResult r8 = r8.z
                goto L_0x0078
            L_0x0073:
                com.google.android.gms.common.ConnectionResult r8 = new com.google.android.gms.common.ConnectionResult
                r8.<init>(r4)
            L_0x0078:
                c.e.a.b.d.d.d r0 = c.e.a.b.d.d.C0781d.this
                c.e.a.b.d.d.d$c r0 = r0.q
                r0.a(r8)
                c.e.a.b.d.d.d r0 = c.e.a.b.d.d.C0781d.this
                r0.a((com.google.android.gms.common.ConnectionResult) r8)
                return
            L_0x0085:
                if (r0 != r3) goto L_0x00a8
                c.e.a.b.d.d.d r8 = c.e.a.b.d.d.C0781d.this
                com.google.android.gms.common.ConnectionResult r8 = r8.z
                if (r8 == 0) goto L_0x0096
                c.e.a.b.d.d.d r8 = c.e.a.b.d.d.C0781d.this
                com.google.android.gms.common.ConnectionResult r8 = r8.z
                goto L_0x009b
            L_0x0096:
                com.google.android.gms.common.ConnectionResult r8 = new com.google.android.gms.common.ConnectionResult
                r8.<init>(r4)
            L_0x009b:
                c.e.a.b.d.d.d r0 = c.e.a.b.d.d.C0781d.this
                c.e.a.b.d.d.d$c r0 = r0.q
                r0.a(r8)
                c.e.a.b.d.d.d r0 = c.e.a.b.d.d.C0781d.this
                r0.a((com.google.android.gms.common.ConnectionResult) r8)
                return
            L_0x00a8:
                if (r0 != r5) goto L_0x00c7
                java.lang.Object r0 = r8.obj
                boolean r1 = r0 instanceof android.app.PendingIntent
                if (r1 == 0) goto L_0x00b3
                r6 = r0
                android.app.PendingIntent r6 = (android.app.PendingIntent) r6
            L_0x00b3:
                com.google.android.gms.common.ConnectionResult r0 = new com.google.android.gms.common.ConnectionResult
                int r8 = r8.arg2
                r0.<init>(r8, r6)
                c.e.a.b.d.d.d r8 = c.e.a.b.d.d.C0781d.this
                c.e.a.b.d.d.d$c r8 = r8.q
                r8.a(r0)
                c.e.a.b.d.d.d r8 = c.e.a.b.d.d.C0781d.this
                r8.a((com.google.android.gms.common.ConnectionResult) r0)
                return
            L_0x00c7:
                r1 = 6
                if (r0 != r1) goto L_0x00ef
                c.e.a.b.d.d.d r0 = c.e.a.b.d.d.C0781d.this
                r0.b(r3, null)
                c.e.a.b.d.d.d r0 = c.e.a.b.d.d.C0781d.this
                c.e.a.b.d.d.d$a r0 = r0.v
                if (r0 == 0) goto L_0x00e2
                c.e.a.b.d.d.d r0 = c.e.a.b.d.d.C0781d.this
                c.e.a.b.d.d.d$a r0 = r0.v
                int r1 = r8.arg2
                r0.f(r1)
            L_0x00e2:
                c.e.a.b.d.d.d r0 = c.e.a.b.d.d.C0781d.this
                int r8 = r8.arg2
                r0.a((int) r8)
                c.e.a.b.d.d.d r8 = c.e.a.b.d.d.C0781d.this
                boolean unused = r8.a((int) r3, (int) r2, r6)
                return
            L_0x00ef:
                r1 = 2
                if (r0 != r1) goto L_0x00fe
                c.e.a.b.d.d.d r0 = c.e.a.b.d.d.C0781d.this
                boolean r0 = r0.isConnected()
                if (r0 != 0) goto L_0x00fe
                a(r8)
                return
            L_0x00fe:
                boolean r0 = b(r8)
                if (r0 == 0) goto L_0x010c
                java.lang.Object r8 = r8.obj
                c.e.a.b.d.d.d$h r8 = (c.e.a.b.d.d.C0781d.h) r8
                r8.d()
                return
            L_0x010c:
                int r8 = r8.what
                r0 = 45
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>(r0)
                java.lang.String r0 = "Don't know how to handle message: "
                r1.append(r0)
                r1.append(r8)
                java.lang.String r8 = r1.toString()
                java.lang.Exception r0 = new java.lang.Exception
                r0.<init>()
                java.lang.String r1 = "GmsClient"
                android.util.Log.wtf(r1, r8, r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.d.d.C0781d.g.handleMessage(android.os.Message):void");
        }
    }

    /* renamed from: c.e.a.b.d.d.d$h */
    protected abstract class h<TListener> {

        /* renamed from: a  reason: collision with root package name */
        public TListener f9986a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f9987b = false;

        public h(TListener tlistener) {
            this.f9986a = tlistener;
        }

        public final void a() {
            synchronized (this) {
                this.f9986a = null;
            }
        }

        public abstract void a(TListener tlistener);

        public final void b() {
            a();
            synchronized (C0781d.this.s) {
                C0781d.this.s.remove(this);
            }
        }

        public abstract void c();

        public final void d() {
            TListener tlistener;
            synchronized (this) {
                tlistener = this.f9986a;
                if (this.f9987b) {
                    String valueOf = String.valueOf(this);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
                    sb.append("Callback proxy ");
                    sb.append(valueOf);
                    sb.append(" being reused. This is not safe.");
                    Log.w("GmsClient", sb.toString());
                }
            }
            if (tlistener != null) {
                try {
                    a(tlistener);
                } catch (RuntimeException e2) {
                    c();
                    throw e2;
                }
            } else {
                c();
            }
            synchronized (this) {
                this.f9987b = true;
            }
            b();
        }
    }

    /* renamed from: c.e.a.b.d.d.d$i */
    public static final class i extends C0791n.a {

        /* renamed from: a  reason: collision with root package name */
        public C0781d f9989a;

        /* renamed from: b  reason: collision with root package name */
        public final int f9990b;

        public i(C0781d dVar, int i2) {
            this.f9989a = dVar;
            this.f9990b = i2;
        }

        public final void a(int i2, IBinder iBinder, Bundle bundle) {
            r.a(this.f9989a, (Object) "onPostInitComplete can be called only once per call to getRemoteService");
            this.f9989a.a(i2, iBinder, bundle, this.f9990b);
            this.f9989a = null;
        }

        public final void b(int i2, Bundle bundle) {
            Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
        }

        public final void a(int i2, IBinder iBinder, zzb zzb) {
            r.a(this.f9989a, (Object) "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
            r.a(zzb);
            this.f9989a.a(zzb);
            a(i2, iBinder, zzb.f13086a);
        }
    }

    /* renamed from: c.e.a.b.d.d.d$j */
    public final class j implements ServiceConnection {

        /* renamed from: a  reason: collision with root package name */
        public final int f9991a;

        public j(int i2) {
            this.f9991a = i2;
        }

        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C0793p pVar;
            if (iBinder == null) {
                C0781d.this.c(16);
                return;
            }
            synchronized (C0781d.this.o) {
                C0781d dVar = C0781d.this;
                if (iBinder == null) {
                    pVar = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                    if (queryLocalInterface == null || !(queryLocalInterface instanceof C0793p)) {
                        pVar = new C0792o(iBinder);
                    } else {
                        pVar = (C0793p) queryLocalInterface;
                    }
                }
                C0793p unused = dVar.p = pVar;
            }
            C0781d.this.a(0, (Bundle) null, this.f9991a);
        }

        public final void onServiceDisconnected(ComponentName componentName) {
            synchronized (C0781d.this.o) {
                C0793p unused = C0781d.this.p = null;
            }
            Handler handler = C0781d.this.m;
            handler.sendMessage(handler.obtainMessage(6, this.f9991a, 1));
        }
    }

    /* renamed from: c.e.a.b.d.d.d$k */
    protected final class k extends f {

        /* renamed from: g  reason: collision with root package name */
        public final IBinder f9993g;

        public k(int i2, IBinder iBinder, Bundle bundle) {
            super(i2, bundle);
            this.f9993g = iBinder;
        }

        public final void a(ConnectionResult connectionResult) {
            if (C0781d.this.w != null) {
                C0781d.this.w.a(connectionResult);
            }
            C0781d.this.a(connectionResult);
        }

        public final boolean e() {
            try {
                String interfaceDescriptor = this.f9993g.getInterfaceDescriptor();
                if (!C0781d.this.s().equals(interfaceDescriptor)) {
                    String s = C0781d.this.s();
                    StringBuilder sb = new StringBuilder(String.valueOf(s).length() + 34 + String.valueOf(interfaceDescriptor).length());
                    sb.append("service descriptor mismatch: ");
                    sb.append(s);
                    sb.append(" vs. ");
                    sb.append(interfaceDescriptor);
                    Log.e("GmsClient", sb.toString());
                    return false;
                }
                IInterface a2 = C0781d.this.a(this.f9993g);
                if (a2 == null || (!C0781d.this.a(2, 4, a2) && !C0781d.this.a(3, 4, a2))) {
                    return false;
                }
                ConnectionResult unused = C0781d.this.z = null;
                Bundle m = C0781d.this.m();
                if (C0781d.this.v != null) {
                    C0781d.this.v.d(m);
                }
                return true;
            } catch (RemoteException unused2) {
                Log.w("GmsClient", "service probably died");
                return false;
            }
        }
    }

    /* renamed from: c.e.a.b.d.d.d$l */
    protected final class l extends f {
        public l(int i2, Bundle bundle) {
            super(i2, null);
        }

        public final void a(ConnectionResult connectionResult) {
            if (!C0781d.this.j() || !C0781d.this.y()) {
                C0781d.this.q.a(connectionResult);
                C0781d.this.a(connectionResult);
                return;
            }
            C0781d.this.c(16);
        }

        public final boolean e() {
            C0781d.this.q.a(ConnectionResult.f12965a);
            return true;
        }
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public C0781d(android.content.Context r10, android.os.Looper r11, int r12, c.e.a.b.d.d.C0781d.a r13, c.e.a.b.d.d.C0781d.b r14, java.lang.String r15) {
        /*
            r9 = this;
            c.e.a.b.d.d.j r3 = c.e.a.b.d.d.C0787j.a(r10)
            c.e.a.b.d.d r4 = c.e.a.b.d.d.a()
            c.e.a.b.d.d.r.a(r13)
            r6 = r13
            c.e.a.b.d.d.d$a r6 = (c.e.a.b.d.d.C0781d.a) r6
            c.e.a.b.d.d.r.a(r14)
            r7 = r14
            c.e.a.b.d.d.d$b r7 = (c.e.a.b.d.d.C0781d.b) r7
            r0 = r9
            r1 = r10
            r2 = r11
            r5 = r12
            r8 = r15
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.d.d.C0781d.<init>(android.content.Context, android.os.Looper, int, c.e.a.b.d.d.d$a, c.e.a.b.d.d.d$b, java.lang.String):void");
    }

    public abstract T a(IBinder iBinder);

    public void a(int i2, T t2) {
    }

    public final void a(zzb zzb) {
        this.B = zzb;
    }

    public final void b(int i2, T t2) {
        K k2;
        r.a((i2 == 4) == (t2 != null));
        synchronized (this.n) {
            this.u = i2;
            this.r = t2;
            a(i2, t2);
            if (i2 != 1) {
                if (i2 == 2 || i2 == 3) {
                    if (!(this.t == null || this.f9976h == null)) {
                        String c2 = this.f9976h.c();
                        String a2 = this.f9976h.a();
                        StringBuilder sb = new StringBuilder(String.valueOf(c2).length() + 70 + String.valueOf(a2).length());
                        sb.append("Calling connect() while still connected, missing disconnect() for ");
                        sb.append(c2);
                        sb.append(" on ");
                        sb.append(a2);
                        Log.e("GmsClient", sb.toString());
                        this.f9979k.a(this.f9976h.c(), this.f9976h.a(), this.f9976h.b(), this.t, w());
                        this.C.incrementAndGet();
                    }
                    this.t = new j(this.C.get());
                    if (this.u != 3 || p() == null) {
                        k2 = new K(u(), t(), false, 129);
                    } else {
                        k2 = new K(n().getPackageName(), p(), true, 129);
                    }
                    this.f9976h = k2;
                    if (!this.f9979k.a(new C0787j.a(this.f9976h.c(), this.f9976h.a(), this.f9976h.b()), this.t, w())) {
                        String c3 = this.f9976h.c();
                        String a3 = this.f9976h.a();
                        StringBuilder sb2 = new StringBuilder(String.valueOf(c3).length() + 34 + String.valueOf(a3).length());
                        sb2.append("unable to connect to service: ");
                        sb2.append(c3);
                        sb2.append(" on ");
                        sb2.append(a3);
                        Log.e("GmsClient", sb2.toString());
                        a(16, (Bundle) null, this.C.get());
                    }
                } else if (i2 == 4) {
                    a(t2);
                }
            } else if (this.t != null) {
                this.f9979k.a(this.f9976h.c(), this.f9976h.a(), this.f9976h.b(), this.t, w());
                this.t = null;
            }
        }
    }

    public final void c(int i2) {
        int i3;
        if (x()) {
            i3 = 5;
            this.A = true;
        } else {
            i3 = 4;
        }
        Handler handler = this.m;
        handler.sendMessage(handler.obtainMessage(i3, this.C.get(), 16));
    }

    public boolean d() {
        return true;
    }

    public int e() {
        return d.f9943a;
    }

    public final Feature[] f() {
        zzb zzb = this.B;
        if (zzb == null) {
            return null;
        }
        return zzb.f13087b;
    }

    public boolean g() {
        return false;
    }

    public void h() {
        int a2 = this.f9980l.a(this.f9977i, e());
        if (a2 != 0) {
            b(1, null);
            a((c) new C0125d(), a2, (PendingIntent) null);
            return;
        }
        a((c) new C0125d());
    }

    public final void i() {
        if (!isConnected()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    public boolean isConnected() {
        boolean z2;
        synchronized (this.n) {
            z2 = this.u == 4;
        }
        return z2;
    }

    public boolean j() {
        return false;
    }

    public Account k() {
        return null;
    }

    public Feature[] l() {
        return f9969a;
    }

    public Bundle m() {
        return null;
    }

    public final Context n() {
        return this.f9977i;
    }

    public Bundle o() {
        return new Bundle();
    }

    public String p() {
        return null;
    }

    public Set<Scope> q() {
        return Collections.EMPTY_SET;
    }

    public final T r() {
        T t2;
        synchronized (this.n) {
            if (this.u != 5) {
                i();
                r.b(this.r != null, "Client is connected but service is null");
                t2 = this.r;
            } else {
                throw new DeadObjectException();
            }
        }
        return t2;
    }

    public abstract String s();

    public abstract String t();

    public String u() {
        return "com.google.android.gms";
    }

    public boolean v() {
        return false;
    }

    public final String w() {
        String str = this.y;
        return str == null ? this.f9977i.getClass().getName() : str;
    }

    public final boolean x() {
        boolean z2;
        synchronized (this.n) {
            z2 = this.u == 3;
        }
        return z2;
    }

    public final boolean y() {
        if (this.A || TextUtils.isEmpty(s()) || TextUtils.isEmpty(p())) {
            return false;
        }
        try {
            Class.forName(s());
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public void a(T t2) {
        this.f9973e = System.currentTimeMillis();
    }

    public void a(int i2) {
        this.f9971c = i2;
        this.f9972d = System.currentTimeMillis();
    }

    public String c() {
        if (isConnected()) {
            K k2 = this.f9976h;
            if (k2 != null) {
                return k2.a();
            }
        }
        throw new RuntimeException("Failed to connect when checking package");
    }

    public void a(ConnectionResult connectionResult) {
        this.f9974f = connectionResult.x();
        this.f9975g = System.currentTimeMillis();
    }

    public C0781d(Context context, Looper looper, C0787j jVar, d dVar, int i2, a aVar, b bVar, String str) {
        this.n = new Object();
        this.o = new Object();
        this.s = new ArrayList<>();
        this.u = 1;
        this.z = null;
        this.A = false;
        this.B = null;
        this.C = new AtomicInteger(0);
        r.a(context, (Object) "Context must not be null");
        this.f9977i = context;
        r.a(looper, (Object) "Looper must not be null");
        this.f9978j = looper;
        r.a(jVar, (Object) "Supervisor must not be null");
        this.f9979k = jVar;
        r.a(dVar, (Object) "API availability must not be null");
        this.f9980l = dVar;
        this.m = new g(looper);
        this.x = i2;
        this.v = aVar;
        this.w = bVar;
        this.y = str;
    }

    public final boolean a(int i2, int i3, T t2) {
        synchronized (this.n) {
            if (this.u != i2) {
                return false;
            }
            b(i3, t2);
            return true;
        }
    }

    public void a(c cVar) {
        r.a(cVar, (Object) "Connection progress callbacks cannot be null.");
        this.q = cVar;
        b(2, null);
    }

    public void a() {
        this.C.incrementAndGet();
        synchronized (this.s) {
            int size = this.s.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.s.get(i2).a();
            }
            this.s.clear();
        }
        synchronized (this.o) {
            this.p = null;
        }
        b(1, null);
    }

    public void a(c cVar, int i2, PendingIntent pendingIntent) {
        r.a(cVar, (Object) "Connection progress callbacks cannot be null.");
        this.q = cVar;
        Handler handler = this.m;
        handler.sendMessage(handler.obtainMessage(3, this.C.get(), i2, pendingIntent));
    }

    public void a(int i2, IBinder iBinder, Bundle bundle, int i3) {
        Handler handler = this.m;
        handler.sendMessage(handler.obtainMessage(1, i3, -1, new k(i2, iBinder, bundle)));
    }

    public final void a(int i2, Bundle bundle, int i3) {
        Handler handler = this.m;
        handler.sendMessage(handler.obtainMessage(7, i3, -1, new l(i2, null)));
    }

    public void a(C0789l lVar, Set<Scope> set) {
        Bundle o2 = o();
        GetServiceRequest getServiceRequest = new GetServiceRequest(this.x);
        getServiceRequest.f13065d = this.f9977i.getPackageName();
        getServiceRequest.f13068g = o2;
        if (set != null) {
            getServiceRequest.f13067f = (Scope[]) set.toArray(new Scope[set.size()]);
        }
        if (g()) {
            getServiceRequest.f13069h = k() != null ? k() : new Account("<<default account>>", "com.google");
            if (lVar != null) {
                getServiceRequest.f13066e = lVar.asBinder();
            }
        } else if (v()) {
            getServiceRequest.f13069h = k();
        }
        getServiceRequest.f13070i = f9969a;
        getServiceRequest.f13071j = l();
        try {
            synchronized (this.o) {
                if (this.p != null) {
                    this.p.a(new i(this, this.C.get()), getServiceRequest);
                } else {
                    Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                }
            }
        } catch (DeadObjectException e2) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e2);
            b(1);
        } catch (SecurityException e3) {
            throw e3;
        } catch (RemoteException | RuntimeException e4) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e4);
            a(8, (IBinder) null, (Bundle) null, this.C.get());
        }
    }

    public boolean b() {
        boolean z2;
        synchronized (this.n) {
            if (this.u != 2) {
                if (this.u != 3) {
                    z2 = false;
                }
            }
            z2 = true;
        }
        return z2;
    }

    public void b(int i2) {
        Handler handler = this.m;
        handler.sendMessage(handler.obtainMessage(6, this.C.get(), i2));
    }

    public void a(e eVar) {
        eVar.a();
    }
}
