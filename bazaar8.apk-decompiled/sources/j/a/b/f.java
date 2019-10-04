package j.a.b;

import j.C1134a;
import j.C1142i;
import j.C1147n;
import j.C1149p;
import j.E;
import j.I;
import j.T;
import j.a.b.e;
import j.a.c.c;
import j.z;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.Socket;
import okhttp3.internal.connection.RouteException;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.StreamResetException;

/* compiled from: StreamAllocation */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final C1134a f15338a;

    /* renamed from: b  reason: collision with root package name */
    public e.a f15339b;

    /* renamed from: c  reason: collision with root package name */
    public T f15340c;

    /* renamed from: d  reason: collision with root package name */
    public final C1149p f15341d;

    /* renamed from: e  reason: collision with root package name */
    public final C1142i f15342e;

    /* renamed from: f  reason: collision with root package name */
    public final z f15343f;

    /* renamed from: g  reason: collision with root package name */
    public final Object f15344g;

    /* renamed from: h  reason: collision with root package name */
    public final e f15345h;

    /* renamed from: i  reason: collision with root package name */
    public int f15346i;

    /* renamed from: j  reason: collision with root package name */
    public c f15347j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f15348k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f15349l;
    public boolean m;
    public c n;

    /* compiled from: StreamAllocation */
    public static final class a extends WeakReference<f> {

        /* renamed from: a  reason: collision with root package name */
        public final Object f15350a;

        public a(f fVar, Object obj) {
            super(fVar);
            this.f15350a = obj;
        }
    }

    public f(C1149p pVar, C1134a aVar, C1142i iVar, z zVar, Object obj) {
        this.f15341d = pVar;
        this.f15338a = aVar;
        this.f15342e = iVar;
        this.f15343f = zVar;
        this.f15345h = new e(aVar, i(), iVar, zVar);
        this.f15344g = obj;
    }

    public c a(I i2, E.a aVar, boolean z) {
        try {
            c a2 = a(aVar.d(), aVar.a(), aVar.b(), i2.v(), i2.B(), z).a(i2, aVar, this);
            synchronized (this.f15341d) {
                this.n = a2;
            }
            return a2;
        } catch (IOException e2) {
            throw new RouteException(e2);
        }
    }

    public c b() {
        c cVar;
        synchronized (this.f15341d) {
            cVar = this.n;
        }
        return cVar;
    }

    public synchronized c c() {
        return this.f15347j;
    }

    public boolean d() {
        if (this.f15340c == null) {
            e.a aVar = this.f15339b;
            if ((aVar == null || !aVar.b()) && !this.f15345h.a()) {
                return false;
            }
        }
        return true;
    }

    public void e() {
        c cVar;
        Socket a2;
        synchronized (this.f15341d) {
            cVar = this.f15347j;
            a2 = a(true, false, false);
            if (this.f15347j != null) {
                cVar = null;
            }
        }
        j.a.e.a(a2);
        if (cVar != null) {
            this.f15343f.b(this.f15342e, (C1147n) cVar);
        }
    }

    public void f() {
        c cVar;
        Socket a2;
        synchronized (this.f15341d) {
            cVar = this.f15347j;
            a2 = a(false, true, false);
            if (this.f15347j != null) {
                cVar = null;
            }
        }
        j.a.e.a(a2);
        if (cVar != null) {
            j.a.a.f15256a.a(this.f15342e, (IOException) null);
            this.f15343f.b(this.f15342e, (C1147n) cVar);
            this.f15343f.a(this.f15342e);
        }
    }

    public final Socket g() {
        c cVar = this.f15347j;
        if (cVar == null || !cVar.f15325k) {
            return null;
        }
        return a(false, false, true);
    }

    public T h() {
        return this.f15340c;
    }

    public final d i() {
        return j.a.a.f15256a.a(this.f15341d);
    }

    public String toString() {
        c c2 = c();
        return c2 != null ? c2.toString() : this.f15338a.toString();
    }

    public Socket b(c cVar) {
        if (this.n == null && this.f15347j.n.size() == 1) {
            Socket a2 = a(true, false, false);
            this.f15347j = cVar;
            cVar.n.add(this.f15347j.n.get(0));
            return a2;
        }
        throw new IllegalStateException();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0018, code lost:
        return r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0012, code lost:
        if (r0.a(r9) != false) goto L_0x0018;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final j.a.b.c a(int r4, int r5, int r6, int r7, boolean r8, boolean r9) {
        /*
            r3 = this;
        L_0x0000:
            j.a.b.c r0 = r3.a(r4, r5, r6, r7, r8)
            j.p r1 = r3.f15341d
            monitor-enter(r1)
            int r2 = r0.f15326l     // Catch:{ all -> 0x0019 }
            if (r2 != 0) goto L_0x000d
            monitor-exit(r1)     // Catch:{ all -> 0x0019 }
            return r0
        L_0x000d:
            monitor-exit(r1)     // Catch:{ all -> 0x0019 }
            boolean r1 = r0.a((boolean) r9)
            if (r1 != 0) goto L_0x0018
            r3.e()
            goto L_0x0000
        L_0x0018:
            return r0
        L_0x0019:
            r4 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0019 }
            goto L_0x001d
        L_0x001c:
            throw r4
        L_0x001d:
            goto L_0x001c
        */
        throw new UnsupportedOperationException("Method not decompiled: j.a.b.f.a(int, int, int, int, boolean, boolean):j.a.b.c");
    }

    /* JADX WARNING: Removed duplicated region for block: B:42:0x0081 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x00cb  */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00d3  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final j.a.b.c a(int r19, int r20, int r21, int r22, boolean r23) {
        /*
            r18 = this;
            r1 = r18
            j.p r2 = r1.f15341d
            monitor-enter(r2)
            boolean r0 = r1.f15349l     // Catch:{ all -> 0x0144 }
            if (r0 != 0) goto L_0x013c
            j.a.c.c r0 = r1.n     // Catch:{ all -> 0x0144 }
            if (r0 != 0) goto L_0x0134
            boolean r0 = r1.m     // Catch:{ all -> 0x0144 }
            if (r0 != 0) goto L_0x012c
            j.a.b.c r0 = r1.f15347j     // Catch:{ all -> 0x0144 }
            java.net.Socket r3 = r18.g()     // Catch:{ all -> 0x0144 }
            j.a.b.c r4 = r1.f15347j     // Catch:{ all -> 0x0144 }
            r5 = 0
            if (r4 == 0) goto L_0x0020
            j.a.b.c r0 = r1.f15347j     // Catch:{ all -> 0x0144 }
            r4 = r5
            goto L_0x0022
        L_0x0020:
            r4 = r0
            r0 = r5
        L_0x0022:
            boolean r6 = r1.f15348k     // Catch:{ all -> 0x0144 }
            if (r6 != 0) goto L_0x0027
            r4 = r5
        L_0x0027:
            r6 = 1
            r7 = 0
            if (r0 != 0) goto L_0x0043
            j.a.a r8 = j.a.a.f15256a     // Catch:{ all -> 0x0144 }
            j.p r9 = r1.f15341d     // Catch:{ all -> 0x0144 }
            j.a r10 = r1.f15338a     // Catch:{ all -> 0x0144 }
            r8.a(r9, r10, r1, r5)     // Catch:{ all -> 0x0144 }
            j.a.b.c r8 = r1.f15347j     // Catch:{ all -> 0x0144 }
            if (r8 == 0) goto L_0x003e
            j.a.b.c r0 = r1.f15347j     // Catch:{ all -> 0x0144 }
            r8 = r0
            r9 = r5
            r0 = 1
            goto L_0x0046
        L_0x003e:
            j.T r8 = r1.f15340c     // Catch:{ all -> 0x0144 }
            r9 = r8
            r8 = r0
            goto L_0x0045
        L_0x0043:
            r8 = r0
            r9 = r5
        L_0x0045:
            r0 = 0
        L_0x0046:
            monitor-exit(r2)     // Catch:{ all -> 0x0144 }
            j.a.e.a((java.net.Socket) r3)
            if (r4 == 0) goto L_0x0053
            j.z r2 = r1.f15343f
            j.i r3 = r1.f15342e
            r2.b((j.C1142i) r3, (j.C1147n) r4)
        L_0x0053:
            if (r0 == 0) goto L_0x005c
            j.z r2 = r1.f15343f
            j.i r3 = r1.f15342e
            r2.a((j.C1142i) r3, (j.C1147n) r8)
        L_0x005c:
            if (r8 == 0) goto L_0x0067
            j.a.b.c r0 = r1.f15347j
            j.T r0 = r0.f()
            r1.f15340c = r0
            return r8
        L_0x0067:
            if (r9 != 0) goto L_0x007d
            j.a.b.e$a r2 = r1.f15339b
            if (r2 == 0) goto L_0x0073
            boolean r2 = r2.b()
            if (r2 != 0) goto L_0x007d
        L_0x0073:
            j.a.b.e r2 = r1.f15345h
            j.a.b.e$a r2 = r2.c()
            r1.f15339b = r2
            r2 = 1
            goto L_0x007e
        L_0x007d:
            r2 = 0
        L_0x007e:
            j.p r3 = r1.f15341d
            monitor-enter(r3)
            boolean r4 = r1.m     // Catch:{ all -> 0x0129 }
            if (r4 != 0) goto L_0x0121
            if (r2 == 0) goto L_0x00b0
            j.a.b.e$a r2 = r1.f15339b     // Catch:{ all -> 0x0129 }
            java.util.List r2 = r2.a()     // Catch:{ all -> 0x0129 }
            int r4 = r2.size()     // Catch:{ all -> 0x0129 }
            r10 = 0
        L_0x0092:
            if (r10 >= r4) goto L_0x00b0
            java.lang.Object r11 = r2.get(r10)     // Catch:{ all -> 0x0129 }
            j.T r11 = (j.T) r11     // Catch:{ all -> 0x0129 }
            j.a.a r12 = j.a.a.f15256a     // Catch:{ all -> 0x0129 }
            j.p r13 = r1.f15341d     // Catch:{ all -> 0x0129 }
            j.a r14 = r1.f15338a     // Catch:{ all -> 0x0129 }
            r12.a(r13, r14, r1, r11)     // Catch:{ all -> 0x0129 }
            j.a.b.c r12 = r1.f15347j     // Catch:{ all -> 0x0129 }
            if (r12 == 0) goto L_0x00ad
            j.a.b.c r8 = r1.f15347j     // Catch:{ all -> 0x0129 }
            r1.f15340c = r11     // Catch:{ all -> 0x0129 }
            r0 = 1
            goto L_0x00b0
        L_0x00ad:
            int r10 = r10 + 1
            goto L_0x0092
        L_0x00b0:
            if (r0 != 0) goto L_0x00c8
            if (r9 != 0) goto L_0x00ba
            j.a.b.e$a r2 = r1.f15339b     // Catch:{ all -> 0x0129 }
            j.T r9 = r2.c()     // Catch:{ all -> 0x0129 }
        L_0x00ba:
            r1.f15340c = r9     // Catch:{ all -> 0x0129 }
            r1.f15346i = r7     // Catch:{ all -> 0x0129 }
            j.a.b.c r8 = new j.a.b.c     // Catch:{ all -> 0x0129 }
            j.p r2 = r1.f15341d     // Catch:{ all -> 0x0129 }
            r8.<init>(r2, r9)     // Catch:{ all -> 0x0129 }
            r1.a(r8, r7)     // Catch:{ all -> 0x0129 }
        L_0x00c8:
            monitor-exit(r3)     // Catch:{ all -> 0x0129 }
            if (r0 == 0) goto L_0x00d3
            j.z r0 = r1.f15343f
            j.i r2 = r1.f15342e
            r0.a((j.C1142i) r2, (j.C1147n) r8)
            return r8
        L_0x00d3:
            j.i r0 = r1.f15342e
            j.z r2 = r1.f15343f
            r10 = r8
            r11 = r19
            r12 = r20
            r13 = r21
            r14 = r22
            r15 = r23
            r16 = r0
            r17 = r2
            r10.a(r11, r12, r13, r14, r15, r16, r17)
            j.a.b.d r0 = r18.i()
            j.T r2 = r8.f()
            r0.a(r2)
            j.p r2 = r1.f15341d
            monitor-enter(r2)
            r1.f15348k = r6     // Catch:{ all -> 0x011e }
            j.a.a r0 = j.a.a.f15256a     // Catch:{ all -> 0x011e }
            j.p r3 = r1.f15341d     // Catch:{ all -> 0x011e }
            r0.b(r3, r8)     // Catch:{ all -> 0x011e }
            boolean r0 = r8.e()     // Catch:{ all -> 0x011e }
            if (r0 == 0) goto L_0x0112
            j.a.a r0 = j.a.a.f15256a     // Catch:{ all -> 0x011e }
            j.p r3 = r1.f15341d     // Catch:{ all -> 0x011e }
            j.a r4 = r1.f15338a     // Catch:{ all -> 0x011e }
            java.net.Socket r5 = r0.a((j.C1149p) r3, (j.C1134a) r4, (j.a.b.f) r1)     // Catch:{ all -> 0x011e }
            j.a.b.c r8 = r1.f15347j     // Catch:{ all -> 0x011e }
        L_0x0112:
            monitor-exit(r2)     // Catch:{ all -> 0x011e }
            j.a.e.a((java.net.Socket) r5)
            j.z r0 = r1.f15343f
            j.i r2 = r1.f15342e
            r0.a((j.C1142i) r2, (j.C1147n) r8)
            return r8
        L_0x011e:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x011e }
            throw r0
        L_0x0121:
            java.io.IOException r0 = new java.io.IOException     // Catch:{ all -> 0x0129 }
            java.lang.String r2 = "Canceled"
            r0.<init>(r2)     // Catch:{ all -> 0x0129 }
            throw r0     // Catch:{ all -> 0x0129 }
        L_0x0129:
            r0 = move-exception
            monitor-exit(r3)     // Catch:{ all -> 0x0129 }
            throw r0
        L_0x012c:
            java.io.IOException r0 = new java.io.IOException     // Catch:{ all -> 0x0144 }
            java.lang.String r3 = "Canceled"
            r0.<init>(r3)     // Catch:{ all -> 0x0144 }
            throw r0     // Catch:{ all -> 0x0144 }
        L_0x0134:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch:{ all -> 0x0144 }
            java.lang.String r3 = "codec != null"
            r0.<init>(r3)     // Catch:{ all -> 0x0144 }
            throw r0     // Catch:{ all -> 0x0144 }
        L_0x013c:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch:{ all -> 0x0144 }
            java.lang.String r3 = "released"
            r0.<init>(r3)     // Catch:{ all -> 0x0144 }
            throw r0     // Catch:{ all -> 0x0144 }
        L_0x0144:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0144 }
            goto L_0x0148
        L_0x0147:
            throw r0
        L_0x0148:
            goto L_0x0147
        */
        throw new UnsupportedOperationException("Method not decompiled: j.a.b.f.a(int, int, int, int, boolean):j.a.b.c");
    }

    public void a(boolean z, c cVar, long j2, IOException iOException) {
        c cVar2;
        Socket a2;
        boolean z2;
        this.f15343f.b(this.f15342e, j2);
        synchronized (this.f15341d) {
            if (cVar != null) {
                if (cVar == this.n) {
                    if (!z) {
                        this.f15347j.f15326l++;
                    }
                    cVar2 = this.f15347j;
                    a2 = a(z, false, true);
                    if (this.f15347j != null) {
                        cVar2 = null;
                    }
                    z2 = this.f15349l;
                }
            }
            throw new IllegalStateException("expected " + this.n + " but was " + cVar);
        }
        j.a.e.a(a2);
        if (cVar2 != null) {
            this.f15343f.b(this.f15342e, (C1147n) cVar2);
        }
        if (iOException != null) {
            this.f15343f.a(this.f15342e, j.a.a.f15256a.a(this.f15342e, iOException));
        } else if (z2) {
            j.a.a.f15256a.a(this.f15342e, (IOException) null);
            this.f15343f.a(this.f15342e);
        }
    }

    public final Socket a(boolean z, boolean z2, boolean z3) {
        Socket socket;
        if (z3) {
            this.n = null;
        }
        if (z2) {
            this.f15349l = true;
        }
        c cVar = this.f15347j;
        if (cVar != null) {
            if (z) {
                cVar.f15325k = true;
            }
            if (this.n == null && (this.f15349l || this.f15347j.f15325k)) {
                a(this.f15347j);
                if (this.f15347j.n.isEmpty()) {
                    this.f15347j.o = System.nanoTime();
                    if (j.a.a.f15256a.a(this.f15341d, this.f15347j)) {
                        socket = this.f15347j.g();
                        this.f15347j = null;
                        return socket;
                    }
                }
                socket = null;
                this.f15347j = null;
                return socket;
            }
        }
        return null;
    }

    public void a() {
        c cVar;
        c cVar2;
        synchronized (this.f15341d) {
            this.m = true;
            cVar = this.n;
            cVar2 = this.f15347j;
        }
        if (cVar != null) {
            cVar.cancel();
        } else if (cVar2 != null) {
            cVar2.b();
        }
    }

    public void a(IOException iOException) {
        boolean z;
        c cVar;
        Socket a2;
        synchronized (this.f15341d) {
            if (iOException instanceof StreamResetException) {
                ErrorCode errorCode = ((StreamResetException) iOException).errorCode;
                if (errorCode == ErrorCode.REFUSED_STREAM) {
                    this.f15346i++;
                    if (this.f15346i > 1) {
                        this.f15340c = null;
                    }
                    z = false;
                    cVar = this.f15347j;
                    a2 = a(z, false, true);
                    if (this.f15347j != null || !this.f15348k) {
                        cVar = null;
                    }
                } else {
                    if (errorCode != ErrorCode.CANCEL) {
                        this.f15340c = null;
                    }
                    z = false;
                    cVar = this.f15347j;
                    a2 = a(z, false, true);
                    cVar = null;
                }
            } else {
                if (this.f15347j != null && (!this.f15347j.e() || (iOException instanceof ConnectionShutdownException))) {
                    if (this.f15347j.f15326l == 0) {
                        if (!(this.f15340c == null || iOException == null)) {
                            this.f15345h.a(this.f15340c, iOException);
                        }
                        this.f15340c = null;
                    }
                }
                z = false;
                cVar = this.f15347j;
                a2 = a(z, false, true);
                cVar = null;
            }
            z = true;
            cVar = this.f15347j;
            a2 = a(z, false, true);
            cVar = null;
        }
        j.a.e.a(a2);
        if (cVar != null) {
            this.f15343f.b(this.f15342e, (C1147n) cVar);
        }
    }

    public void a(c cVar, boolean z) {
        if (this.f15347j == null) {
            this.f15347j = cVar;
            this.f15348k = z;
            cVar.n.add(new a(this, this.f15344g));
            return;
        }
        throw new IllegalStateException();
    }

    public final void a(c cVar) {
        int size = cVar.n.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (cVar.n.get(i2).get() == this) {
                cVar.n.remove(i2);
                return;
            }
        }
        throw new IllegalStateException();
    }
}
