package j;

import j.a.b;
import j.a.c.h;
import j.a.c.k;
import j.a.e;
import j.a.g.f;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import k.C1156c;

/* compiled from: RealCall */
public final class K implements C1142i {

    /* renamed from: a  reason: collision with root package name */
    public final I f15184a;

    /* renamed from: b  reason: collision with root package name */
    public final k f15185b;

    /* renamed from: c  reason: collision with root package name */
    public final C1156c f15186c = new J(this);

    /* renamed from: d  reason: collision with root package name */
    public z f15187d;

    /* renamed from: e  reason: collision with root package name */
    public final L f15188e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f15189f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f15190g;

    /* compiled from: RealCall */
    final class a extends b {

        /* renamed from: b  reason: collision with root package name */
        public final C1143j f15191b;

        public a(C1143j jVar) {
            super("OkHttp %s", K.this.c());
            this.f15191b = jVar;
        }

        public void a(ExecutorService executorService) {
            try {
                executorService.execute(this);
            } catch (RejectedExecutionException e2) {
                InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                interruptedIOException.initCause(e2);
                K.this.f15187d.a((C1142i) K.this, (IOException) interruptedIOException);
                this.f15191b.a((C1142i) K.this, (IOException) interruptedIOException);
                K.this.f15184a.i().b(this);
            } catch (Throwable th) {
                K.this.f15184a.i().b(this);
                throw th;
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:14:0x0031 A[Catch:{ all -> 0x0024 }] */
        /* JADX WARNING: Removed duplicated region for block: B:15:0x0051 A[Catch:{ all -> 0x0024 }] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void b() {
            /*
                r5 = this;
                j.K r0 = j.K.this
                k.c r0 = r0.f15186c
                r0.h()
                r0 = 0
                j.K r1 = j.K.this     // Catch:{ IOException -> 0x0026 }
                j.P r0 = r1.b()     // Catch:{ IOException -> 0x0026 }
                r1 = 1
                j.j r2 = r5.f15191b     // Catch:{ IOException -> 0x0022 }
                j.K r3 = j.K.this     // Catch:{ IOException -> 0x0022 }
                r2.a((j.C1142i) r3, (j.P) r0)     // Catch:{ IOException -> 0x0022 }
            L_0x0016:
                j.K r0 = j.K.this
                j.I r0 = r0.f15184a
                j.u r0 = r0.i()
                r0.b((j.K.a) r5)
                goto L_0x0064
            L_0x0022:
                r0 = move-exception
                goto L_0x0029
            L_0x0024:
                r0 = move-exception
                goto L_0x0065
            L_0x0026:
                r1 = move-exception
                r0 = r1
                r1 = 0
            L_0x0029:
                j.K r2 = j.K.this     // Catch:{ all -> 0x0024 }
                java.io.IOException r0 = r2.a((java.io.IOException) r0)     // Catch:{ all -> 0x0024 }
                if (r1 == 0) goto L_0x0051
                j.a.g.f r1 = j.a.g.f.b()     // Catch:{ all -> 0x0024 }
                r2 = 4
                java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x0024 }
                r3.<init>()     // Catch:{ all -> 0x0024 }
                java.lang.String r4 = "Callback failure for "
                r3.append(r4)     // Catch:{ all -> 0x0024 }
                j.K r4 = j.K.this     // Catch:{ all -> 0x0024 }
                java.lang.String r4 = r4.d()     // Catch:{ all -> 0x0024 }
                r3.append(r4)     // Catch:{ all -> 0x0024 }
                java.lang.String r3 = r3.toString()     // Catch:{ all -> 0x0024 }
                r1.a((int) r2, (java.lang.String) r3, (java.lang.Throwable) r0)     // Catch:{ all -> 0x0024 }
                goto L_0x0016
            L_0x0051:
                j.K r1 = j.K.this     // Catch:{ all -> 0x0024 }
                j.z r1 = r1.f15187d     // Catch:{ all -> 0x0024 }
                j.K r2 = j.K.this     // Catch:{ all -> 0x0024 }
                r1.a((j.C1142i) r2, (java.io.IOException) r0)     // Catch:{ all -> 0x0024 }
                j.j r1 = r5.f15191b     // Catch:{ all -> 0x0024 }
                j.K r2 = j.K.this     // Catch:{ all -> 0x0024 }
                r1.a((j.C1142i) r2, (java.io.IOException) r0)     // Catch:{ all -> 0x0024 }
                goto L_0x0016
            L_0x0064:
                return
            L_0x0065:
                j.K r1 = j.K.this
                j.I r1 = r1.f15184a
                j.u r1 = r1.i()
                r1.b((j.K.a) r5)
                goto L_0x0072
            L_0x0071:
                throw r0
            L_0x0072:
                goto L_0x0071
            */
            throw new UnsupportedOperationException("Method not decompiled: j.K.a.b():void");
        }

        public K c() {
            return K.this;
        }

        public String d() {
            return K.this.f15188e.g().g();
        }
    }

    public K(I i2, L l2, boolean z) {
        this.f15184a = i2;
        this.f15188e = l2;
        this.f15189f = z;
        this.f15185b = new k(i2, z);
        this.f15186c.a((long) i2.c(), TimeUnit.MILLISECONDS);
    }

    public P b() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f15184a.s());
        arrayList.add(this.f15185b);
        arrayList.add(new j.a.c.a(this.f15184a.h()));
        arrayList.add(new j.a.a.b(this.f15184a.t()));
        arrayList.add(new j.a.b.a(this.f15184a));
        if (!this.f15189f) {
            arrayList.addAll(this.f15184a.u());
        }
        arrayList.add(new j.a.c.b(this.f15189f));
        h hVar = new h(arrayList, null, null, null, 0, this.f15188e, this, this.f15187d, this.f15184a.e(), this.f15184a.A(), this.f15184a.E());
        P a2 = hVar.a(this.f15188e);
        if (!this.f15185b.b()) {
            return a2;
        }
        e.a((Closeable) a2);
        throw new IOException("Canceled");
    }

    public String c() {
        return this.f15188e.g().m();
    }

    public void cancel() {
        this.f15185b.a();
    }

    public String d() {
        StringBuilder sb = new StringBuilder();
        sb.append(m() ? "canceled " : "");
        sb.append(this.f15189f ? "web socket" : "call");
        sb.append(" to ");
        sb.append(c());
        return sb.toString();
    }

    public P execute() {
        synchronized (this) {
            if (!this.f15190g) {
                this.f15190g = true;
            } else {
                throw new IllegalStateException("Already Executed");
            }
        }
        a();
        this.f15186c.h();
        this.f15187d.b(this);
        try {
            this.f15184a.i().a(this);
            P b2 = b();
            if (b2 != null) {
                this.f15184a.i().b(this);
                return b2;
            }
            throw new IOException("Canceled");
        } catch (IOException e2) {
            IOException a2 = a(e2);
            this.f15187d.a((C1142i) this, a2);
            throw a2;
        } catch (Throwable th) {
            this.f15184a.i().b(this);
            throw th;
        }
    }

    public boolean m() {
        return this.f15185b.b();
    }

    public static K a(I i2, L l2, boolean z) {
        K k2 = new K(i2, l2, z);
        k2.f15187d = i2.k().a(k2);
        return k2;
    }

    public K clone() {
        return a(this.f15184a, this.f15188e, this.f15189f);
    }

    public IOException a(IOException iOException) {
        if (!this.f15186c.i()) {
            return iOException;
        }
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final void a() {
        this.f15185b.a(f.b().a("response.body().close()"));
    }

    public void a(C1143j jVar) {
        synchronized (this) {
            if (!this.f15190g) {
                this.f15190g = true;
            } else {
                throw new IllegalStateException("Already Executed");
            }
        }
        a();
        this.f15187d.b(this);
        this.f15184a.i().a(new a(jVar));
    }
}
