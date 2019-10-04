package c.e.a.a;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import c.e.a.a.C0747u;
import c.e.a.a.O;
import c.e.a.a.Z;
import c.e.a.a.j.C;
import c.e.a.a.j.u;
import c.e.a.a.j.v;
import c.e.a.a.l.n;
import c.e.a.a.l.r;
import c.e.a.a.l.s;
import c.e.a.a.n.f;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.C0738f;
import c.e.a.a.o.G;
import c.e.a.a.o.I;
import c.e.a.a.o.o;
import c.e.a.a.o.p;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroupArray;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: ExoPlayerImplInternal */
public final class B implements Handler.Callback, u.a, r.a, v.b, C0747u.a, O.a {
    public boolean A;
    public boolean B;
    public int C;
    public d D;
    public long E;
    public int F;

    /* renamed from: a  reason: collision with root package name */
    public final Q[] f7227a;

    /* renamed from: b  reason: collision with root package name */
    public final S[] f7228b;

    /* renamed from: c  reason: collision with root package name */
    public final r f7229c;

    /* renamed from: d  reason: collision with root package name */
    public final s f7230d;

    /* renamed from: e  reason: collision with root package name */
    public final F f7231e;

    /* renamed from: f  reason: collision with root package name */
    public final f f7232f;

    /* renamed from: g  reason: collision with root package name */
    public final o f7233g;

    /* renamed from: h  reason: collision with root package name */
    public final HandlerThread f7234h;

    /* renamed from: i  reason: collision with root package name */
    public final Handler f7235i;

    /* renamed from: j  reason: collision with root package name */
    public final Z.b f7236j;

    /* renamed from: k  reason: collision with root package name */
    public final Z.a f7237k;

    /* renamed from: l  reason: collision with root package name */
    public final long f7238l;
    public final boolean m;
    public final C0747u n;
    public final c o;
    public final ArrayList<b> p;
    public final C0738f q;
    public final I r = new I();
    public V s;
    public J t;
    public v u;
    public Q[] v;
    public boolean w;
    public boolean x;
    public boolean y;
    public int z;

    /* compiled from: ExoPlayerImplInternal */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final v f7239a;

        /* renamed from: b  reason: collision with root package name */
        public final Z f7240b;

        /* renamed from: c  reason: collision with root package name */
        public final Object f7241c;

        public a(v vVar, Z z, Object obj) {
            this.f7239a = vVar;
            this.f7240b = z;
            this.f7241c = obj;
        }
    }

    /* compiled from: ExoPlayerImplInternal */
    private static final class b implements Comparable<b> {

        /* renamed from: a  reason: collision with root package name */
        public final O f7242a;

        /* renamed from: b  reason: collision with root package name */
        public int f7243b;

        /* renamed from: c  reason: collision with root package name */
        public long f7244c;

        /* renamed from: d  reason: collision with root package name */
        public Object f7245d;

        public b(O o) {
            this.f7242a = o;
        }

        public void a(int i2, long j2, Object obj) {
            this.f7243b = i2;
            this.f7244c = j2;
            this.f7245d = obj;
        }

        /* renamed from: a */
        public int compareTo(b bVar) {
            int i2 = 1;
            if ((this.f7245d == null) != (bVar.f7245d == null)) {
                if (this.f7245d != null) {
                    i2 = -1;
                }
                return i2;
            } else if (this.f7245d == null) {
                return 0;
            } else {
                int i3 = this.f7243b - bVar.f7243b;
                if (i3 != 0) {
                    return i3;
                }
                return I.b(this.f7244c, bVar.f7244c);
            }
        }
    }

    /* compiled from: ExoPlayerImplInternal */
    private static final class c {

        /* renamed from: a  reason: collision with root package name */
        public J f7246a;

        /* renamed from: b  reason: collision with root package name */
        public int f7247b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f7248c;

        /* renamed from: d  reason: collision with root package name */
        public int f7249d;

        public c() {
        }

        public boolean a(J j2) {
            return j2 != this.f7246a || this.f7247b > 0 || this.f7248c;
        }

        public void b(J j2) {
            this.f7246a = j2;
            this.f7247b = 0;
            this.f7248c = false;
        }

        public void a(int i2) {
            this.f7247b += i2;
        }

        public void b(int i2) {
            boolean z = true;
            if (!this.f7248c || this.f7249d == 4) {
                this.f7248c = true;
                this.f7249d = i2;
                return;
            }
            if (i2 != 4) {
                z = false;
            }
            C0737e.a(z);
        }
    }

    /* compiled from: ExoPlayerImplInternal */
    private static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final Z f7250a;

        /* renamed from: b  reason: collision with root package name */
        public final int f7251b;

        /* renamed from: c  reason: collision with root package name */
        public final long f7252c;

        public d(Z z, int i2, long j2) {
            this.f7250a = z;
            this.f7251b = i2;
            this.f7252c = j2;
        }
    }

    public B(Q[] qArr, r rVar, s sVar, F f2, f fVar, boolean z2, int i2, boolean z3, Handler handler, C0738f fVar2) {
        this.f7227a = qArr;
        this.f7229c = rVar;
        this.f7230d = sVar;
        this.f7231e = f2;
        this.f7232f = fVar;
        this.x = z2;
        this.z = i2;
        this.A = z3;
        this.f7235i = handler;
        this.q = fVar2;
        this.f7238l = f2.c();
        this.m = f2.b();
        this.s = V.f7322e;
        this.t = J.a(-9223372036854775807L, sVar);
        this.o = new c();
        this.f7228b = new S[qArr.length];
        for (int i3 = 0; i3 < qArr.length; i3++) {
            qArr[i3].setIndex(i3);
            this.f7228b[i3] = qArr[i3].i();
        }
        this.n = new C0747u(this, fVar2);
        this.p = new ArrayList<>();
        this.v = new Q[0];
        this.f7236j = new Z.b();
        this.f7237k = new Z.a();
        rVar.a(this, fVar);
        this.f7234h = new HandlerThread("ExoPlayerImplInternal:Handler", -16);
        this.f7234h.start();
        this.f7233g = fVar2.a(this.f7234h.getLooper(), this);
    }

    public void b(Z z2, int i2, long j2) {
        this.f7233g.a(3, (Object) new d(z2, i2, j2)).sendToTarget();
    }

    public final void c(int i2) {
        J j2 = this.t;
        if (j2.f7293g != i2) {
            this.t = j2.a(i2);
        }
    }

    public void d(boolean z2) {
        this.f7233g.a(1, z2 ? 1 : 0, 0).sendToTarget();
    }

    public final void e(boolean z2) {
        this.y = false;
        this.x = z2;
        if (!z2) {
            s();
            u();
            return;
        }
        int i2 = this.t.f7293g;
        if (i2 == 3) {
            r();
            this.f7233g.a(2);
        } else if (i2 == 2) {
            this.f7233g.a(2);
        }
    }

    public void f(boolean z2) {
        this.f7233g.a(13, z2 ? 1 : 0, 0).sendToTarget();
    }

    public final void g(boolean z2) {
        this.A = z2;
        if (!this.r.b(z2)) {
            b(true);
        }
        a(false);
    }

    public final boolean h(boolean z2) {
        if (this.v.length == 0) {
            return g();
        }
        boolean z3 = false;
        if (!z2) {
            return false;
        }
        if (!this.t.f7294h) {
            return true;
        }
        G d2 = this.r.d();
        if ((d2.j() && d2.f7261f.f7274g) || this.f7231e.a(e(), this.n.a().f7300b, this.y)) {
            z3 = true;
        }
        return z3;
    }

    public boolean handleMessage(Message message) {
        ExoPlaybackException exoPlaybackException;
        try {
            switch (message.what) {
                case 0:
                    b((v) message.obj, message.arg1 != 0, message.arg2 != 0);
                    break;
                case 1:
                    e(message.arg1 != 0);
                    break;
                case 2:
                    b();
                    break;
                case 3:
                    a((d) message.obj);
                    break;
                case 4:
                    c((K) message.obj);
                    break;
                case 5:
                    a((V) message.obj);
                    break;
                case 6:
                    a(false, message.arg1 != 0, true);
                    break;
                case 7:
                    o();
                    return true;
                case 8:
                    a((a) message.obj);
                    break;
                case 9:
                    c((u) message.obj);
                    break;
                case 10:
                    b((u) message.obj);
                    break;
                case 11:
                    p();
                    break;
                case 12:
                    b(message.arg1);
                    break;
                case 13:
                    g(message.arg1 != 0);
                    break;
                case 14:
                    a(message.arg1 != 0, (AtomicBoolean) message.obj);
                    break;
                case 15:
                    d((O) message.obj);
                    break;
                case 16:
                    f((O) message.obj);
                    break;
                case 17:
                    b((K) message.obj);
                    break;
                default:
                    return false;
            }
            i();
        } catch (ExoPlaybackException e2) {
            p.a("ExoPlayerImplInternal", "Playback error.", e2);
            this.f7235i.obtainMessage(2, e2).sendToTarget();
            a(true, false, false);
            i();
        } catch (IOException e3) {
            p.a("ExoPlayerImplInternal", "Source error.", e3);
            this.f7235i.obtainMessage(2, ExoPlaybackException.a(e3)).sendToTarget();
            a(false, false, false);
            i();
        } catch (OutOfMemoryError | RuntimeException e4) {
            p.a("ExoPlayerImplInternal", "Internal runtime error.", e4);
            if (e4 instanceof OutOfMemoryError) {
                exoPlaybackException = ExoPlaybackException.a((OutOfMemoryError) e4);
            } else {
                exoPlaybackException = ExoPlaybackException.a((RuntimeException) e4);
            }
            this.f7235i.obtainMessage(2, exoPlaybackException).sendToTarget();
            a(true, false, false);
            i();
        }
        return true;
    }

    public final void i() {
        if (this.o.a(this.t)) {
            this.f7235i.obtainMessage(0, this.o.f7247b, this.o.f7248c ? this.o.f7249d : -1, this.t).sendToTarget();
            this.o.b(this.t);
        }
    }

    public final void j() {
        G d2 = this.r.d();
        G f2 = this.r.f();
        if (d2 != null && !d2.f7259d && (f2 == null || f2.d() == d2)) {
            Q[] qArr = this.v;
            int length = qArr.length;
            int i2 = 0;
            while (i2 < length) {
                if (qArr[i2].g()) {
                    i2++;
                } else {
                    return;
                }
            }
            d2.f7256a.d();
        }
    }

    public final void k() {
        if (this.r.d() != null) {
            Q[] qArr = this.v;
            int length = qArr.length;
            int i2 = 0;
            while (i2 < length) {
                if (qArr[i2].g()) {
                    i2++;
                } else {
                    return;
                }
            }
        }
        this.u.a();
    }

    public final void l() {
        this.r.a(this.E);
        if (this.r.h()) {
            H a2 = this.r.a(this.E, this.t);
            if (a2 == null) {
                k();
                return;
            }
            this.r.a(this.f7228b, this.f7229c, this.f7231e.e(), this.u, a2).a((u.a) this, a2.f7269b);
            c(true);
            a(false);
        }
    }

    public final void m() {
        for (G c2 = this.r.c(); c2 != null; c2 = c2.d()) {
            s i2 = c2.i();
            if (i2 != null) {
                for (n nVar : i2.f9343c.a()) {
                    if (nVar != null) {
                        nVar.i();
                    }
                }
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0022, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void n() {
        /*
            r2 = this;
            monitor-enter(r2)
            boolean r0 = r2.w     // Catch:{ all -> 0x0023 }
            if (r0 == 0) goto L_0x0007
            monitor-exit(r2)
            return
        L_0x0007:
            c.e.a.a.o.o r0 = r2.f7233g     // Catch:{ all -> 0x0023 }
            r1 = 7
            r0.a(r1)     // Catch:{ all -> 0x0023 }
            r0 = 0
        L_0x000e:
            boolean r1 = r2.w     // Catch:{ all -> 0x0023 }
            if (r1 != 0) goto L_0x0018
            r2.wait()     // Catch:{ InterruptedException -> 0x0016 }
            goto L_0x000e
        L_0x0016:
            r0 = 1
            goto L_0x000e
        L_0x0018:
            if (r0 == 0) goto L_0x0021
            java.lang.Thread r0 = java.lang.Thread.currentThread()     // Catch:{ all -> 0x0023 }
            r0.interrupt()     // Catch:{ all -> 0x0023 }
        L_0x0021:
            monitor-exit(r2)
            return
        L_0x0023:
            r0 = move-exception
            monitor-exit(r2)
            goto L_0x0027
        L_0x0026:
            throw r0
        L_0x0027:
            goto L_0x0026
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.B.n():void");
    }

    public final void o() {
        a(true, true, true, true);
        this.f7231e.d();
        c(1);
        this.f7234h.quit();
        synchronized (this) {
            this.w = true;
            notifyAll();
        }
    }

    public final void p() {
        if (this.r.g()) {
            float f2 = this.n.a().f7300b;
            G e2 = this.r.e();
            G f3 = this.r.f();
            boolean z2 = true;
            while (e2 != null && e2.f7259d) {
                s b2 = e2.b(f2, this.t.f7288b);
                if (b2 != null) {
                    if (z2) {
                        G e3 = this.r.e();
                        boolean a2 = this.r.a(e3);
                        boolean[] zArr = new boolean[this.f7227a.length];
                        long a3 = e3.a(b2, this.t.n, a2, zArr);
                        J j2 = this.t;
                        if (!(j2.f7293g == 4 || a3 == j2.n)) {
                            J j3 = this.t;
                            this.t = j3.a(j3.f7290d, a3, j3.f7292f, e());
                            this.o.b(4);
                            b(a3);
                        }
                        boolean[] zArr2 = new boolean[this.f7227a.length];
                        int i2 = 0;
                        int i3 = 0;
                        while (true) {
                            Q[] qArr = this.f7227a;
                            if (i2 >= qArr.length) {
                                break;
                            }
                            Q q2 = qArr[i2];
                            zArr2[i2] = q2.getState() != 0;
                            C c2 = e3.f7258c[i2];
                            if (c2 != null) {
                                i3++;
                            }
                            if (zArr2[i2]) {
                                if (c2 != q2.j()) {
                                    a(q2);
                                } else if (zArr[i2]) {
                                    q2.a(this.E);
                                }
                            }
                            i2++;
                        }
                        this.t = this.t.a(e3.h(), e3.i());
                        a(zArr2, i3);
                    } else {
                        this.r.a(e2);
                        if (e2.f7259d) {
                            e2.a(b2, Math.max(e2.f7261f.f7269b, e2.c(this.E)), false);
                        }
                    }
                    a(true);
                    if (this.t.f7293g != 4) {
                        h();
                        u();
                        this.f7233g.a(2);
                    }
                    return;
                }
                if (e2 == f3) {
                    z2 = false;
                }
                e2 = e2.d();
            }
        }
    }

    public final void q() {
        for (int size = this.p.size() - 1; size >= 0; size--) {
            if (!a(this.p.get(size))) {
                this.p.get(size).f7242a.a(false);
                this.p.remove(size);
            }
        }
        Collections.sort(this.p);
    }

    public final void r() {
        this.y = false;
        this.n.e();
        for (Q start : this.v) {
            start.start();
        }
    }

    public final void s() {
        this.n.f();
        for (Q b2 : this.v) {
            b(b2);
        }
    }

    public final void t() {
        v vVar = this.u;
        if (vVar != null) {
            if (this.C > 0) {
                vVar.a();
                return;
            }
            l();
            G d2 = this.r.d();
            int i2 = 0;
            if (d2 == null || d2.j()) {
                c(false);
            } else if (!this.t.f7294h) {
                h();
            }
            if (this.r.g()) {
                G e2 = this.r.e();
                G f2 = this.r.f();
                boolean z2 = false;
                while (this.x && e2 != f2 && this.E >= e2.d().g()) {
                    if (z2) {
                        i();
                    }
                    int i3 = e2.f7261f.f7273f ? 0 : 3;
                    G a2 = this.r.a();
                    a(e2);
                    J j2 = this.t;
                    H h2 = a2.f7261f;
                    this.t = j2.a(h2.f7268a, h2.f7269b, h2.f7270c, e());
                    this.o.b(i3);
                    u();
                    e2 = a2;
                    z2 = true;
                }
                if (f2.f7261f.f7274g) {
                    while (true) {
                        Q[] qArr = this.f7227a;
                        if (i2 < qArr.length) {
                            Q q2 = qArr[i2];
                            C c2 = f2.f7258c[i2];
                            if (c2 != null && q2.j() == c2 && q2.g()) {
                                q2.h();
                            }
                            i2++;
                        } else {
                            return;
                        }
                    }
                } else if (f2.d() != null) {
                    int i4 = 0;
                    while (true) {
                        Q[] qArr2 = this.f7227a;
                        if (i4 < qArr2.length) {
                            Q q3 = qArr2[i4];
                            C c3 = f2.f7258c[i4];
                            if (q3.j() == c3 && (c3 == null || q3.g())) {
                                i4++;
                            }
                        } else if (!f2.d().f7259d) {
                            j();
                            return;
                        } else {
                            s i5 = f2.i();
                            G b2 = this.r.b();
                            s i6 = b2.i();
                            boolean z3 = b2.f7256a.e() != -9223372036854775807L;
                            int i7 = 0;
                            while (true) {
                                Q[] qArr3 = this.f7227a;
                                if (i7 < qArr3.length) {
                                    Q q4 = qArr3[i7];
                                    if (i5.a(i7)) {
                                        if (z3) {
                                            q4.h();
                                        } else if (!q4.m()) {
                                            n a3 = i6.f9343c.a(i7);
                                            boolean a4 = i6.a(i7);
                                            boolean z4 = this.f7228b[i7].f() == 6;
                                            T t2 = i5.f9342b[i7];
                                            T t3 = i6.f9342b[i7];
                                            if (!a4 || !t3.equals(t2) || z4) {
                                                q4.h();
                                            } else {
                                                q4.a(a(a3), b2.f7258c[i7], b2.f());
                                            }
                                        }
                                    }
                                    i7++;
                                } else {
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public final void u() {
        if (this.r.g()) {
            G e2 = this.r.e();
            long e3 = e2.f7256a.e();
            if (e3 != -9223372036854775807L) {
                b(e3);
                if (e3 != this.t.n) {
                    J j2 = this.t;
                    this.t = j2.a(j2.f7290d, e3, j2.f7292f, e());
                    this.o.b(4);
                }
            } else {
                this.E = this.n.g();
                long c2 = e2.c(this.E);
                a(this.t.n, c2);
                this.t.n = c2;
            }
            G d2 = this.r.d();
            this.t.f7298l = d2.c();
            this.t.m = e();
        }
    }

    public void a(v vVar, boolean z2, boolean z3) {
        this.f7233g.a(0, z2 ? 1 : 0, z3 ? 1 : 0, vVar).sendToTarget();
    }

    public Looper d() {
        return this.f7234h.getLooper();
    }

    public final void f(O o2) {
        o2.c().post(new C0730n(this, o2));
    }

    public final void b(v vVar, boolean z2, boolean z3) {
        this.C++;
        a(false, true, z2, z3);
        this.f7231e.a();
        this.u = vVar;
        c(2);
        vVar.a((v.b) this, this.f7232f.a());
        this.f7233g.a(2);
    }

    public final void c(boolean z2) {
        J j2 = this.t;
        if (j2.f7294h != z2) {
            this.t = j2.a(z2);
        }
    }

    /* renamed from: d */
    public void a(u uVar) {
        this.f7233g.a(10, (Object) uVar).sendToTarget();
    }

    public final void d(O o2) {
        if (o2.e() == -9223372036854775807L) {
            e(o2);
        } else if (this.u == null || this.C > 0) {
            this.p.add(new b(o2));
        } else {
            b bVar = new b(o2);
            if (a(bVar)) {
                this.p.add(bVar);
                Collections.sort(this.p);
                return;
            }
            o2.a(false);
        }
    }

    public final void f() {
        c(4);
        a(false, false, true, false);
    }

    public void a(int i2) {
        this.f7233g.a(12, i2, 0).sendToTarget();
    }

    public final void c(K k2) {
        this.n.a(k2);
    }

    public final boolean g() {
        G e2 = this.r.e();
        G d2 = e2.d();
        long j2 = e2.f7261f.f7272e;
        return j2 == -9223372036854775807L || this.t.n < j2 || (d2 != null && (d2.f7259d || d2.f7261f.f7268a.a()));
    }

    public synchronized void a(O o2) {
        if (this.w) {
            p.d("ExoPlayerImplInternal", "Ignoring messages sent after release.");
            o2.a(false);
            return;
        }
        this.f7233g.a(15, (Object) o2).sendToTarget();
    }

    public /* synthetic */ void c(O o2) {
        try {
            b(o2);
        } catch (ExoPlaybackException e2) {
            p.a("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e2);
            throw new RuntimeException(e2);
        }
    }

    public final long c() {
        G f2 = this.r.f();
        if (f2 == null) {
            return 0;
        }
        long f3 = f2.f();
        int i2 = 0;
        while (true) {
            Q[] qArr = this.f7227a;
            if (i2 >= qArr.length) {
                return f3;
            }
            if (qArr[i2].getState() != 0 && this.f7227a[i2].j() == f2.f7258c[i2]) {
                long l2 = this.f7227a[i2].l();
                if (l2 == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                f3 = Math.max(l2, f3);
            }
            i2++;
        }
    }

    public final void e(O o2) {
        if (o2.c().getLooper() == this.f7233g.a()) {
            b(o2);
            int i2 = this.t.f7293g;
            if (i2 == 3 || i2 == 2) {
                this.f7233g.a(2);
                return;
            }
            return;
        }
        this.f7233g.a(16, (Object) o2).sendToTarget();
    }

    public final void h() {
        G d2 = this.r.d();
        long e2 = d2.e();
        if (e2 == Long.MIN_VALUE) {
            c(false);
            return;
        }
        boolean a2 = this.f7231e.a(a(e2), this.n.a().f7300b);
        c(a2);
        if (a2) {
            d2.a(this.E);
        }
    }

    public final void b(int i2) {
        this.z = i2;
        if (!this.r.a(i2)) {
            b(true);
        }
        a(false);
    }

    public void a(v vVar, Z z2, Object obj) {
        this.f7233g.a(8, (Object) new a(vVar, z2, obj)).sendToTarget();
    }

    public void a(u uVar) {
        this.f7233g.a(9, (Object) uVar).sendToTarget();
    }

    public final void b(boolean z2) {
        v.a aVar = this.r.e().f7261f.f7268a;
        long a2 = a(aVar, this.t.n, true);
        if (a2 != this.t.n) {
            J j2 = this.t;
            this.t = j2.a(aVar, a2, j2.f7292f, e());
            if (z2) {
                this.o.b(4);
            }
        }
    }

    public final long e() {
        return a(this.t.f7298l);
    }

    public void a() {
        this.f7233g.a(11);
    }

    public void a(K k2) {
        this.f7233g.a(17, (Object) k2).sendToTarget();
    }

    public final void c(u uVar) {
        if (this.r.a(uVar)) {
            G d2 = this.r.d();
            d2.a(this.n.a().f7300b, this.t.f7288b);
            a(d2.h(), d2.i());
            if (!this.r.g()) {
                b(this.r.a().f7261f.f7269b);
                a((G) null);
            }
            h();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x005c A[Catch:{ all -> 0x00de }] */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00d8  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(c.e.a.a.B.d r23) {
        /*
            r22 = this;
            r1 = r22
            r0 = r23
            c.e.a.a.B$c r2 = r1.o
            r3 = 1
            r2.a((int) r3)
            android.util.Pair r2 = r1.a((c.e.a.a.B.d) r0, (boolean) r3)
            r4 = 0
            r6 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r8 = 0
            if (r2 != 0) goto L_0x0028
            c.e.a.a.J r2 = r1.t
            boolean r9 = r1.A
            c.e.a.a.Z$b r10 = r1.f7236j
            c.e.a.a.j.v$a r2 = r2.a((boolean) r9, (c.e.a.a.Z.b) r10)
            r15 = r2
            r12 = r6
            r18 = r12
        L_0x0026:
            r2 = 1
            goto L_0x0057
        L_0x0028:
            java.lang.Object r9 = r2.first
            java.lang.Object r10 = r2.second
            java.lang.Long r10 = (java.lang.Long) r10
            long r10 = r10.longValue()
            c.e.a.a.I r12 = r1.r
            c.e.a.a.j.v$a r9 = r12.a((java.lang.Object) r9, (long) r10)
            boolean r12 = r9.a()
            if (r12 == 0) goto L_0x0043
            r12 = r4
            r15 = r9
            r18 = r10
            goto L_0x0026
        L_0x0043:
            java.lang.Object r2 = r2.second
            java.lang.Long r2 = (java.lang.Long) r2
            long r12 = r2.longValue()
            long r14 = r0.f7252c
            int r2 = (r14 > r6 ? 1 : (r14 == r6 ? 0 : -1))
            if (r2 != 0) goto L_0x0053
            r2 = 1
            goto L_0x0054
        L_0x0053:
            r2 = 0
        L_0x0054:
            r15 = r9
            r18 = r10
        L_0x0057:
            r9 = 2
            c.e.a.a.j.v r10 = r1.u     // Catch:{ all -> 0x00de }
            if (r10 == 0) goto L_0x00c6
            int r10 = r1.C     // Catch:{ all -> 0x00de }
            if (r10 <= 0) goto L_0x0061
            goto L_0x00c6
        L_0x0061:
            int r0 = (r12 > r6 ? 1 : (r12 == r6 ? 0 : -1))
            if (r0 != 0) goto L_0x006d
            r0 = 4
            r1.c((int) r0)     // Catch:{ all -> 0x00de }
            r1.a(r8, r8, r3, r8)     // Catch:{ all -> 0x00de }
            goto L_0x00c8
        L_0x006d:
            c.e.a.a.J r0 = r1.t     // Catch:{ all -> 0x00de }
            c.e.a.a.j.v$a r0 = r0.f7290d     // Catch:{ all -> 0x00de }
            boolean r0 = r15.equals(r0)     // Catch:{ all -> 0x00de }
            if (r0 == 0) goto L_0x00b7
            c.e.a.a.I r0 = r1.r     // Catch:{ all -> 0x00de }
            c.e.a.a.G r0 = r0.e()     // Catch:{ all -> 0x00de }
            if (r0 == 0) goto L_0x008c
            int r6 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1))
            if (r6 == 0) goto L_0x008c
            c.e.a.a.j.u r0 = r0.f7256a     // Catch:{ all -> 0x00de }
            c.e.a.a.V r4 = r1.s     // Catch:{ all -> 0x00de }
            long r4 = r0.a((long) r12, (c.e.a.a.V) r4)     // Catch:{ all -> 0x00de }
            goto L_0x008d
        L_0x008c:
            r4 = r12
        L_0x008d:
            long r6 = c.e.a.a.C0744q.b(r4)     // Catch:{ all -> 0x00de }
            c.e.a.a.J r0 = r1.t     // Catch:{ all -> 0x00de }
            long r10 = r0.n     // Catch:{ all -> 0x00de }
            long r10 = c.e.a.a.C0744q.b(r10)     // Catch:{ all -> 0x00de }
            int r0 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1))
            if (r0 != 0) goto L_0x00b8
            c.e.a.a.J r0 = r1.t     // Catch:{ all -> 0x00de }
            long r3 = r0.n     // Catch:{ all -> 0x00de }
            c.e.a.a.J r14 = r1.t
            long r20 = r22.e()
            r16 = r3
            c.e.a.a.J r0 = r14.a(r15, r16, r18, r20)
            r1.t = r0
            if (r2 == 0) goto L_0x00b6
            c.e.a.a.B$c r0 = r1.o
            r0.b((int) r9)
        L_0x00b6:
            return
        L_0x00b7:
            r4 = r12
        L_0x00b8:
            long r4 = r1.a((c.e.a.a.j.v.a) r15, (long) r4)     // Catch:{ all -> 0x00de }
            int r0 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1))
            if (r0 == 0) goto L_0x00c1
            goto L_0x00c2
        L_0x00c1:
            r3 = 0
        L_0x00c2:
            r2 = r2 | r3
            r16 = r4
            goto L_0x00ca
        L_0x00c6:
            r1.D = r0     // Catch:{ all -> 0x00de }
        L_0x00c8:
            r16 = r12
        L_0x00ca:
            c.e.a.a.J r14 = r1.t
            long r20 = r22.e()
            c.e.a.a.J r0 = r14.a(r15, r16, r18, r20)
            r1.t = r0
            if (r2 == 0) goto L_0x00dd
            c.e.a.a.B$c r0 = r1.o
            r0.b((int) r9)
        L_0x00dd:
            return
        L_0x00de:
            r0 = move-exception
            c.e.a.a.J r14 = r1.t
            long r20 = r22.e()
            r16 = r12
            c.e.a.a.J r3 = r14.a(r15, r16, r18, r20)
            r1.t = r3
            if (r2 == 0) goto L_0x00f4
            c.e.a.a.B$c r2 = r1.o
            r2.b((int) r9)
        L_0x00f4:
            goto L_0x00f6
        L_0x00f5:
            throw r0
        L_0x00f6:
            goto L_0x00f5
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.B.a(c.e.a.a.B$d):void");
    }

    public final void b() {
        long b2 = this.q.b();
        t();
        if (!this.r.g()) {
            j();
            b(b2, 10);
            return;
        }
        G e2 = this.r.e();
        G.a("doSomeWork");
        u();
        long elapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        e2.f7256a.a(this.t.n - this.f7238l, this.m);
        boolean z2 = true;
        boolean z3 = true;
        for (Q q2 : this.v) {
            q2.a(this.E, elapsedRealtime);
            z3 = z3 && q2.d();
            boolean z4 = q2.c() || q2.d() || c(q2);
            if (!z4) {
                q2.k();
            }
            z2 = z2 && z4;
        }
        if (!z2) {
            j();
        }
        long j2 = e2.f7261f.f7272e;
        if (z3 && ((j2 == -9223372036854775807L || j2 <= this.t.n) && e2.f7261f.f7274g)) {
            c(4);
            s();
        } else if (this.t.f7293g == 2 && h(z2)) {
            c(3);
            if (this.x) {
                r();
            }
        } else if (this.t.f7293g == 3 && (this.v.length != 0 ? !z2 : !g())) {
            this.y = this.x;
            c(2);
            s();
        }
        if (this.t.f7293g == 2) {
            for (Q k2 : this.v) {
                k2.k();
            }
        }
        if (!this.x || this.t.f7293g != 3) {
            int i2 = this.t.f7293g;
            if (i2 != 2) {
                if (this.v.length == 0 || i2 == 4) {
                    this.f7233g.b(2);
                } else {
                    b(b2, 1000);
                }
                G.a();
            }
        }
        b(b2, 10);
        G.a();
    }

    public final boolean c(Q q2) {
        G d2 = this.r.f().d();
        return d2 != null && d2.f7259d && q2.g();
    }

    public final long a(v.a aVar, long j2) {
        return a(aVar, j2, this.r.e() != this.r.f());
    }

    public final long a(v.a aVar, long j2, boolean z2) {
        s();
        this.y = false;
        c(2);
        G e2 = this.r.e();
        G g2 = e2;
        while (true) {
            if (g2 != null) {
                if (aVar.equals(g2.f7261f.f7268a) && g2.f7259d) {
                    this.r.a(g2);
                    break;
                }
                g2 = this.r.a();
            } else {
                break;
            }
        }
        if (e2 != g2 || z2) {
            for (Q a2 : this.v) {
                a(a2);
            }
            this.v = new Q[0];
            e2 = null;
        }
        if (g2 != null) {
            a(e2);
            if (g2.f7260e) {
                long a3 = g2.f7256a.a(j2);
                g2.f7256a.a(a3 - this.f7238l, this.m);
                j2 = a3;
            }
            b(j2);
            h();
        } else {
            this.r.a(true);
            this.t = this.t.a(TrackGroupArray.f12698a, this.f7230d);
            b(j2);
        }
        a(false);
        this.f7233g.a(2);
        return j2;
    }

    public final void b(long j2, long j3) {
        this.f7233g.b(2);
        this.f7233g.a(2, j2 + j3);
    }

    public final void b(long j2) {
        if (this.r.g()) {
            j2 = this.r.e().d(j2);
        }
        this.E = j2;
        this.n.a(this.E);
        for (Q a2 : this.v) {
            a2.a(this.E);
        }
        m();
    }

    public final void b(O o2) {
        if (!o2.j()) {
            try {
                o2.f().a(o2.h(), o2.d());
            } finally {
                o2.a(true);
            }
        }
    }

    public final void b(Q q2) {
        if (q2.getState() == 2) {
            q2.stop();
        }
    }

    public final void a(V v2) {
        this.s = v2;
    }

    public final void b(u uVar) {
        if (this.r.a(uVar)) {
            this.r.a(this.E);
            h();
        }
    }

    public final void a(boolean z2, AtomicBoolean atomicBoolean) {
        if (this.B != z2) {
            this.B = z2;
            if (!z2) {
                for (Q q2 : this.f7227a) {
                    if (q2.getState() == 0) {
                        q2.reset();
                    }
                }
            }
        }
        if (atomicBoolean != null) {
            synchronized (this) {
                atomicBoolean.set(true);
                notifyAll();
            }
        }
    }

    public final void b(K k2) {
        this.f7235i.obtainMessage(1, k2).sendToTarget();
        a(k2.f7300b);
        for (Q q2 : this.f7227a) {
            if (q2 != null) {
                q2.a(k2.f7300b);
            }
        }
    }

    public final void a(boolean z2, boolean z3, boolean z4) {
        a(z2 || !this.B, true, z3, z3);
        this.o.a(this.C + (z4 ? 1 : 0));
        this.C = 0;
        this.f7231e.f();
        c(1);
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:0x008e  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0097  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00bf  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00ca  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00d7  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00da  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00e3  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00ec  */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x00ef  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x00f6  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x00f8  */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x0104  */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x0107  */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x010c  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x010f  */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x0125  */
    /* JADX WARNING: Removed duplicated region for block: B:77:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(boolean r25, boolean r26, boolean r27, boolean r28) {
        /*
            r24 = this;
            r1 = r24
            c.e.a.a.o.o r0 = r1.f7233g
            r2 = 2
            r0.b(r2)
            r2 = 0
            r1.y = r2
            c.e.a.a.u r0 = r1.n
            r0.f()
            r3 = 0
            r1.E = r3
            c.e.a.a.Q[] r3 = r1.v
            int r4 = r3.length
            r5 = 0
        L_0x0018:
            java.lang.String r6 = "ExoPlayerImplInternal"
            if (r5 >= r4) goto L_0x002d
            r0 = r3[r5]
            r1.a((c.e.a.a.Q) r0)     // Catch:{ ExoPlaybackException -> 0x0024, RuntimeException -> 0x0022 }
            goto L_0x002a
        L_0x0022:
            r0 = move-exception
            goto L_0x0025
        L_0x0024:
            r0 = move-exception
        L_0x0025:
            java.lang.String r7 = "Disable failed."
            c.e.a.a.o.p.a(r6, r7, r0)
        L_0x002a:
            int r5 = r5 + 1
            goto L_0x0018
        L_0x002d:
            if (r25 == 0) goto L_0x0045
            c.e.a.a.Q[] r3 = r1.f7227a
            int r4 = r3.length
            r5 = 0
        L_0x0033:
            if (r5 >= r4) goto L_0x0045
            r0 = r3[r5]
            r0.reset()     // Catch:{ RuntimeException -> 0x003b }
            goto L_0x0042
        L_0x003b:
            r0 = move-exception
            r7 = r0
            java.lang.String r0 = "Reset failed."
            c.e.a.a.o.p.a(r6, r0, r7)
        L_0x0042:
            int r5 = r5 + 1
            goto L_0x0033
        L_0x0045:
            c.e.a.a.Q[] r0 = new c.e.a.a.Q[r2]
            r1.v = r0
            r0 = 0
            r3 = 1
            if (r27 == 0) goto L_0x0050
            r1.D = r0
            goto L_0x0087
        L_0x0050:
            if (r28 == 0) goto L_0x0087
            c.e.a.a.B$d r4 = r1.D
            if (r4 != 0) goto L_0x0085
            c.e.a.a.J r4 = r1.t
            c.e.a.a.Z r4 = r4.f7288b
            boolean r4 = r4.c()
            if (r4 != 0) goto L_0x0085
            c.e.a.a.J r4 = r1.t
            c.e.a.a.Z r5 = r4.f7288b
            c.e.a.a.j.v$a r4 = r4.f7290d
            java.lang.Object r4 = r4.f8976a
            c.e.a.a.Z$a r6 = r1.f7237k
            r5.a((java.lang.Object) r4, (c.e.a.a.Z.a) r6)
            c.e.a.a.J r4 = r1.t
            long r4 = r4.n
            c.e.a.a.Z$a r6 = r1.f7237k
            long r6 = r6.e()
            long r4 = r4 + r6
            c.e.a.a.B$d r6 = new c.e.a.a.B$d
            c.e.a.a.Z r7 = c.e.a.a.Z.f7337a
            c.e.a.a.Z$a r8 = r1.f7237k
            int r8 = r8.f7340c
            r6.<init>(r7, r8, r4)
            r1.D = r6
        L_0x0085:
            r4 = 1
            goto L_0x0089
        L_0x0087:
            r4 = r27
        L_0x0089:
            c.e.a.a.I r5 = r1.r
            if (r4 != 0) goto L_0x008e
            goto L_0x008f
        L_0x008e:
            r3 = 0
        L_0x008f:
            r5.a((boolean) r3)
            r1.c((boolean) r2)
            if (r28 == 0) goto L_0x00bd
            c.e.a.a.I r3 = r1.r
            c.e.a.a.Z r5 = c.e.a.a.Z.f7337a
            r3.a((c.e.a.a.Z) r5)
            java.util.ArrayList<c.e.a.a.B$b> r3 = r1.p
            java.util.Iterator r3 = r3.iterator()
        L_0x00a4:
            boolean r5 = r3.hasNext()
            if (r5 == 0) goto L_0x00b6
            java.lang.Object r5 = r3.next()
            c.e.a.a.B$b r5 = (c.e.a.a.B.b) r5
            c.e.a.a.O r5 = r5.f7242a
            r5.a((boolean) r2)
            goto L_0x00a4
        L_0x00b6:
            java.util.ArrayList<c.e.a.a.B$b> r3 = r1.p
            r3.clear()
            r1.F = r2
        L_0x00bd:
            if (r4 == 0) goto L_0x00ca
            c.e.a.a.J r2 = r1.t
            boolean r3 = r1.A
            c.e.a.a.Z$b r5 = r1.f7236j
            c.e.a.a.j.v$a r2 = r2.a((boolean) r3, (c.e.a.a.Z.b) r5)
            goto L_0x00ce
        L_0x00ca:
            c.e.a.a.J r2 = r1.t
            c.e.a.a.j.v$a r2 = r2.f7290d
        L_0x00ce:
            r17 = r2
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 == 0) goto L_0x00da
            r22 = r2
            goto L_0x00e0
        L_0x00da:
            c.e.a.a.J r5 = r1.t
            long r5 = r5.n
            r22 = r5
        L_0x00e0:
            if (r4 == 0) goto L_0x00e3
            goto L_0x00e7
        L_0x00e3:
            c.e.a.a.J r2 = r1.t
            long r2 = r2.f7292f
        L_0x00e7:
            r11 = r2
            c.e.a.a.J r2 = new c.e.a.a.J
            if (r28 == 0) goto L_0x00ef
            c.e.a.a.Z r3 = c.e.a.a.Z.f7337a
            goto L_0x00f3
        L_0x00ef:
            c.e.a.a.J r3 = r1.t
            c.e.a.a.Z r3 = r3.f7288b
        L_0x00f3:
            r6 = r3
            if (r28 == 0) goto L_0x00f8
            r7 = r0
            goto L_0x00fd
        L_0x00f8:
            c.e.a.a.J r3 = r1.t
            java.lang.Object r3 = r3.f7289c
            r7 = r3
        L_0x00fd:
            c.e.a.a.J r3 = r1.t
            int r13 = r3.f7293g
            r14 = 0
            if (r28 == 0) goto L_0x0107
            com.google.android.exoplayer2.source.TrackGroupArray r3 = com.google.android.exoplayer2.source.TrackGroupArray.f12698a
            goto L_0x0109
        L_0x0107:
            com.google.android.exoplayer2.source.TrackGroupArray r3 = r3.f7295i
        L_0x0109:
            r15 = r3
            if (r28 == 0) goto L_0x010f
            c.e.a.a.l.s r3 = r1.f7230d
            goto L_0x0113
        L_0x010f:
            c.e.a.a.J r3 = r1.t
            c.e.a.a.l.s r3 = r3.f7296j
        L_0x0113:
            r16 = r3
            r20 = 0
            r5 = r2
            r8 = r17
            r9 = r22
            r18 = r22
            r5.<init>(r6, r7, r8, r9, r11, r13, r14, r15, r16, r17, r18, r20, r22)
            r1.t = r2
            if (r26 == 0) goto L_0x012e
            c.e.a.a.j.v r2 = r1.u
            if (r2 == 0) goto L_0x012e
            r2.a((c.e.a.a.j.v.b) r1)
            r1.u = r0
        L_0x012e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.B.a(boolean, boolean, boolean, boolean):void");
    }

    public final boolean a(b bVar) {
        Object obj = bVar.f7245d;
        if (obj == null) {
            Pair<Object, Long> a2 = a(new d(bVar.f7242a.g(), bVar.f7242a.i(), C0744q.a(bVar.f7242a.e())), false);
            if (a2 == null) {
                return false;
            }
            bVar.a(this.t.f7288b.a(a2.first), ((Long) a2.second).longValue(), a2.first);
        } else {
            int a3 = this.t.f7288b.a(obj);
            if (a3 == -1) {
                return false;
            }
            bVar.f7243b = a3;
        }
        return true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x003e  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0069  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0097 A[LOOP:1: B:24:0x0075->B:34:0x0097, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00a4  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x005f A[EDGE_INSN: B:57:0x005f->B:20:0x005f ?: BREAK  , SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x0074 A[EDGE_INSN: B:60:0x0074->B:23:0x0074 ?: BREAK  , SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(long r7, long r9) {
        /*
            r6 = this;
            java.util.ArrayList<c.e.a.a.B$b> r0 = r6.p
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x00f1
            c.e.a.a.J r0 = r6.t
            c.e.a.a.j.v$a r0 = r0.f7290d
            boolean r0 = r0.a()
            if (r0 == 0) goto L_0x0014
            goto L_0x00f1
        L_0x0014:
            c.e.a.a.J r0 = r6.t
            long r0 = r0.f7291e
            int r2 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r2 != 0) goto L_0x001f
            r0 = 1
            long r7 = r7 - r0
        L_0x001f:
            c.e.a.a.J r0 = r6.t
            c.e.a.a.Z r1 = r0.f7288b
            c.e.a.a.j.v$a r0 = r0.f7290d
            java.lang.Object r0 = r0.f8976a
            int r0 = r1.a((java.lang.Object) r0)
            int r1 = r6.F
            r2 = 0
            if (r1 <= 0) goto L_0x003b
            java.util.ArrayList<c.e.a.a.B$b> r3 = r6.p
            int r1 = r1 + -1
            java.lang.Object r1 = r3.get(r1)
            c.e.a.a.B$b r1 = (c.e.a.a.B.b) r1
            goto L_0x003c
        L_0x003b:
            r1 = r2
        L_0x003c:
            if (r1 == 0) goto L_0x005f
            int r3 = r1.f7243b
            if (r3 > r0) goto L_0x004a
            if (r3 != r0) goto L_0x005f
            long r3 = r1.f7244c
            int r1 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r1 <= 0) goto L_0x005f
        L_0x004a:
            int r1 = r6.F
            int r1 = r1 + -1
            r6.F = r1
            int r1 = r6.F
            if (r1 <= 0) goto L_0x003b
            java.util.ArrayList<c.e.a.a.B$b> r3 = r6.p
            int r1 = r1 + -1
            java.lang.Object r1 = r3.get(r1)
            c.e.a.a.B$b r1 = (c.e.a.a.B.b) r1
            goto L_0x003c
        L_0x005f:
            int r1 = r6.F
            java.util.ArrayList<c.e.a.a.B$b> r3 = r6.p
            int r3 = r3.size()
            if (r1 >= r3) goto L_0x0074
            java.util.ArrayList<c.e.a.a.B$b> r1 = r6.p
            int r3 = r6.F
            java.lang.Object r1 = r1.get(r3)
            c.e.a.a.B$b r1 = (c.e.a.a.B.b) r1
            goto L_0x0075
        L_0x0074:
            r1 = r2
        L_0x0075:
            if (r1 == 0) goto L_0x00a2
            java.lang.Object r3 = r1.f7245d
            if (r3 == 0) goto L_0x00a2
            int r3 = r1.f7243b
            if (r3 < r0) goto L_0x0087
            if (r3 != r0) goto L_0x00a2
            long r3 = r1.f7244c
            int r5 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r5 > 0) goto L_0x00a2
        L_0x0087:
            int r1 = r6.F
            int r1 = r1 + 1
            r6.F = r1
            int r1 = r6.F
            java.util.ArrayList<c.e.a.a.B$b> r3 = r6.p
            int r3 = r3.size()
            if (r1 >= r3) goto L_0x0074
            java.util.ArrayList<c.e.a.a.B$b> r1 = r6.p
            int r3 = r6.F
            java.lang.Object r1 = r1.get(r3)
            c.e.a.a.B$b r1 = (c.e.a.a.B.b) r1
            goto L_0x0075
        L_0x00a2:
            if (r1 == 0) goto L_0x00f1
            java.lang.Object r3 = r1.f7245d
            if (r3 == 0) goto L_0x00f1
            int r3 = r1.f7243b
            if (r3 != r0) goto L_0x00f1
            long r3 = r1.f7244c
            int r5 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r5 <= 0) goto L_0x00f1
            int r5 = (r3 > r9 ? 1 : (r3 == r9 ? 0 : -1))
            if (r5 > 0) goto L_0x00f1
            c.e.a.a.O r3 = r1.f7242a
            r6.e((c.e.a.a.O) r3)
            c.e.a.a.O r3 = r1.f7242a
            boolean r3 = r3.b()
            if (r3 != 0) goto L_0x00d3
            c.e.a.a.O r1 = r1.f7242a
            boolean r1 = r1.j()
            if (r1 == 0) goto L_0x00cc
            goto L_0x00d3
        L_0x00cc:
            int r1 = r6.F
            int r1 = r1 + 1
            r6.F = r1
            goto L_0x00da
        L_0x00d3:
            java.util.ArrayList<c.e.a.a.B$b> r1 = r6.p
            int r3 = r6.F
            r1.remove(r3)
        L_0x00da:
            int r1 = r6.F
            java.util.ArrayList<c.e.a.a.B$b> r3 = r6.p
            int r3 = r3.size()
            if (r1 >= r3) goto L_0x00ef
            java.util.ArrayList<c.e.a.a.B$b> r1 = r6.p
            int r3 = r6.F
            java.lang.Object r1 = r1.get(r3)
            c.e.a.a.B$b r1 = (c.e.a.a.B.b) r1
            goto L_0x00a2
        L_0x00ef:
            r1 = r2
            goto L_0x00a2
        L_0x00f1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.B.a(long, long):void");
    }

    public final void a(Q q2) {
        this.n.a(q2);
        b(q2);
        q2.e();
    }

    public final void a(float f2) {
        G c2 = this.r.c();
        while (c2 != null && c2.f7259d) {
            for (n nVar : c2.i().f9343c.a()) {
                if (nVar != null) {
                    nVar.a(f2);
                }
            }
            c2 = c2.d();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:40:0x00f5 A[LOOP:0: B:40:0x00f5->B:52:0x00f5, LOOP_START, PHI: r14 
  PHI: (r14v12 c.e.a.a.G) = (r14v9 c.e.a.a.G), (r14v13 c.e.a.a.G) binds: [B:39:0x00f3, B:52:0x00f5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x011a  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x011d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(c.e.a.a.B.a r14) {
        /*
            r13 = this;
            c.e.a.a.j.v r0 = r14.f7239a
            c.e.a.a.j.v r1 = r13.u
            if (r0 == r1) goto L_0x0007
            return
        L_0x0007:
            c.e.a.a.B$c r0 = r13.o
            int r1 = r13.C
            r0.a((int) r1)
            r0 = 0
            r13.C = r0
            c.e.a.a.J r1 = r13.t
            c.e.a.a.Z r1 = r1.f7288b
            c.e.a.a.Z r2 = r14.f7240b
            java.lang.Object r14 = r14.f7241c
            c.e.a.a.I r3 = r13.r
            r3.a((c.e.a.a.Z) r2)
            c.e.a.a.J r3 = r13.t
            c.e.a.a.J r14 = r3.a((c.e.a.a.Z) r2, (java.lang.Object) r14)
            r13.t = r14
            r13.q()
            c.e.a.a.J r14 = r13.t
            c.e.a.a.j.v$a r14 = r14.f7290d
            boolean r3 = r14.a()
            if (r3 == 0) goto L_0x0038
            c.e.a.a.J r3 = r13.t
            long r3 = r3.f7292f
            goto L_0x003c
        L_0x0038:
            c.e.a.a.J r3 = r13.t
            long r3 = r3.n
        L_0x003c:
            c.e.a.a.B$d r5 = r13.D
            if (r5 == 0) goto L_0x0061
            r14 = 1
            android.util.Pair r14 = r13.a((c.e.a.a.B.d) r5, (boolean) r14)
            r1 = 0
            r13.D = r1
            if (r14 != 0) goto L_0x004e
            r13.f()
            return
        L_0x004e:
            java.lang.Object r1 = r14.second
            java.lang.Long r1 = (java.lang.Long) r1
            long r1 = r1.longValue()
            c.e.a.a.I r5 = r13.r
            java.lang.Object r14 = r14.first
            c.e.a.a.j.v$a r14 = r5.a((java.lang.Object) r14, (long) r1)
        L_0x005e:
            r6 = r14
            r9 = r1
            goto L_0x00cd
        L_0x0061:
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L_0x008b
            boolean r7 = r2.c()
            if (r7 != 0) goto L_0x008b
            boolean r14 = r13.A
            int r14 = r2.a((boolean) r14)
            android.util.Pair r14 = r13.a((c.e.a.a.Z) r2, (int) r14, (long) r5)
            java.lang.Object r1 = r14.second
            java.lang.Long r1 = (java.lang.Long) r1
            long r1 = r1.longValue()
            c.e.a.a.I r5 = r13.r
            java.lang.Object r14 = r14.first
            c.e.a.a.j.v$a r14 = r5.a((java.lang.Object) r14, (long) r1)
            goto L_0x005e
        L_0x008b:
            java.lang.Object r7 = r14.f8976a
            int r7 = r2.a((java.lang.Object) r7)
            r8 = -1
            if (r7 != r8) goto L_0x00bd
            java.lang.Object r14 = r14.f8976a
            java.lang.Object r14 = r13.a((java.lang.Object) r14, (c.e.a.a.Z) r1, (c.e.a.a.Z) r2)
            if (r14 != 0) goto L_0x00a0
            r13.f()
            return
        L_0x00a0:
            c.e.a.a.Z$a r1 = r13.f7237k
            c.e.a.a.Z$a r14 = r2.a((java.lang.Object) r14, (c.e.a.a.Z.a) r1)
            int r14 = r14.f7340c
            android.util.Pair r14 = r13.a((c.e.a.a.Z) r2, (int) r14, (long) r5)
            java.lang.Object r1 = r14.second
            java.lang.Long r1 = (java.lang.Long) r1
            long r1 = r1.longValue()
            c.e.a.a.I r5 = r13.r
            java.lang.Object r14 = r14.first
            c.e.a.a.j.v$a r14 = r5.a((java.lang.Object) r14, (long) r1)
            goto L_0x005e
        L_0x00bd:
            boolean r1 = r14.a()
            if (r1 == 0) goto L_0x00cb
            c.e.a.a.I r1 = r13.r
            java.lang.Object r14 = r14.f8976a
            c.e.a.a.j.v$a r14 = r1.a((java.lang.Object) r14, (long) r3)
        L_0x00cb:
            r6 = r14
            r9 = r3
        L_0x00cd:
            c.e.a.a.J r14 = r13.t
            c.e.a.a.j.v$a r14 = r14.f7290d
            boolean r14 = r14.equals(r6)
            if (r14 == 0) goto L_0x00ed
            int r14 = (r3 > r9 ? 1 : (r3 == r9 ? 0 : -1))
            if (r14 != 0) goto L_0x00ed
            c.e.a.a.I r14 = r13.r
            long r1 = r13.E
            long r3 = r13.c()
            boolean r14 = r14.b(r1, r3)
            if (r14 != 0) goto L_0x012e
            r13.b((boolean) r0)
            goto L_0x012e
        L_0x00ed:
            c.e.a.a.I r14 = r13.r
            c.e.a.a.G r14 = r14.c()
            if (r14 == 0) goto L_0x0114
        L_0x00f5:
            c.e.a.a.G r1 = r14.d()
            if (r1 == 0) goto L_0x0114
            c.e.a.a.G r14 = r14.d()
            c.e.a.a.H r1 = r14.f7261f
            c.e.a.a.j.v$a r1 = r1.f7268a
            boolean r1 = r1.equals(r6)
            if (r1 == 0) goto L_0x00f5
            c.e.a.a.I r1 = r13.r
            c.e.a.a.H r2 = r14.f7261f
            c.e.a.a.H r1 = r1.a((c.e.a.a.H) r2)
            r14.f7261f = r1
            goto L_0x00f5
        L_0x0114:
            boolean r14 = r6.a()
            if (r14 == 0) goto L_0x011d
            r1 = 0
            goto L_0x011e
        L_0x011d:
            r1 = r9
        L_0x011e:
            long r7 = r13.a((c.e.a.a.j.v.a) r6, (long) r1)
            c.e.a.a.J r5 = r13.t
            long r11 = r13.e()
            c.e.a.a.J r14 = r5.a(r6, r7, r9, r11)
            r13.t = r14
        L_0x012e:
            r13.a((boolean) r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.B.a(c.e.a.a.B$a):void");
    }

    public final Object a(Object obj, Z z2, Z z3) {
        int a2 = z2.a(obj);
        int a3 = z2.a();
        int i2 = a2;
        int i3 = -1;
        for (int i4 = 0; i4 < a3 && i3 == -1; i4++) {
            i2 = z2.a(i2, this.f7237k, this.f7236j, this.z, this.A);
            if (i2 == -1) {
                break;
            }
            i3 = z3.a(z2.a(i2));
        }
        if (i3 == -1) {
            return null;
        }
        return z3.a(i3);
    }

    public final Pair<Object, Long> a(d dVar, boolean z2) {
        Z z3 = this.t.f7288b;
        Z z4 = dVar.f7250a;
        if (z3.c()) {
            return null;
        }
        if (z4.c()) {
            z4 = z3;
        }
        try {
            Pair<Object, Long> a2 = z4.a(this.f7236j, this.f7237k, dVar.f7251b, dVar.f7252c);
            if (z3 == z4) {
                return a2;
            }
            int a3 = z3.a(a2.first);
            if (a3 != -1) {
                return a2;
            }
            if (z2 && a(a2.first, z4, z3) != null) {
                return a(z3, z3.a(a3, this.f7237k).f7340c, -9223372036854775807L);
            }
            return null;
        } catch (IndexOutOfBoundsException unused) {
        }
    }

    public final Pair<Object, Long> a(Z z2, int i2, long j2) {
        return z2.a(this.f7236j, this.f7237k, i2, j2);
    }

    public final void a(G g2) {
        G e2 = this.r.e();
        if (e2 != null && g2 != e2) {
            boolean[] zArr = new boolean[this.f7227a.length];
            int i2 = 0;
            int i3 = 0;
            while (true) {
                Q[] qArr = this.f7227a;
                if (i2 < qArr.length) {
                    Q q2 = qArr[i2];
                    zArr[i2] = q2.getState() != 0;
                    if (e2.i().a(i2)) {
                        i3++;
                    }
                    if (zArr[i2] && (!e2.i().a(i2) || (q2.m() && q2.j() == g2.f7258c[i2]))) {
                        a(q2);
                    }
                    i2++;
                } else {
                    this.t = this.t.a(e2.h(), e2.i());
                    a(zArr, i3);
                    return;
                }
            }
        }
    }

    public final void a(boolean[] zArr, int i2) {
        this.v = new Q[i2];
        s i3 = this.r.e().i();
        for (int i4 = 0; i4 < this.f7227a.length; i4++) {
            if (!i3.a(i4)) {
                this.f7227a[i4].reset();
            }
        }
        int i5 = 0;
        for (int i6 = 0; i6 < this.f7227a.length; i6++) {
            if (i3.a(i6)) {
                a(i6, zArr[i6], i5);
                i5++;
            }
        }
    }

    public final void a(int i2, boolean z2, int i3) {
        G e2 = this.r.e();
        Q q2 = this.f7227a[i2];
        this.v[i3] = q2;
        if (q2.getState() == 0) {
            s i4 = e2.i();
            T t2 = i4.f9342b[i2];
            Format[] a2 = a(i4.f9343c.a(i2));
            boolean z3 = this.x && this.t.f7293g == 3;
            q2.a(t2, a2, e2.f7258c[i2], this.E, !z2 && z3, e2.f());
            this.n.b(q2);
            if (z3) {
                q2.start();
            }
        }
    }

    public final void a(boolean z2) {
        long j2;
        G d2 = this.r.d();
        v.a aVar = d2 == null ? this.t.f7290d : d2.f7261f.f7268a;
        boolean z3 = !this.t.f7297k.equals(aVar);
        if (z3) {
            this.t = this.t.a(aVar);
        }
        J j3 = this.t;
        if (d2 == null) {
            j2 = j3.n;
        } else {
            j2 = d2.c();
        }
        j3.f7298l = j2;
        this.t.m = e();
        if ((z3 || z2) && d2 != null && d2.f7259d) {
            a(d2.h(), d2.i());
        }
    }

    public final long a(long j2) {
        G d2 = this.r.d();
        if (d2 == null) {
            return 0;
        }
        return j2 - d2.c(this.E);
    }

    public final void a(TrackGroupArray trackGroupArray, s sVar) {
        this.f7231e.a(this.f7227a, trackGroupArray, sVar.f9343c);
    }

    public static Format[] a(n nVar) {
        int length = nVar != null ? nVar.length() : 0;
        Format[] formatArr = new Format[length];
        for (int i2 = 0; i2 < length; i2++) {
            formatArr[i2] = nVar.a(i2);
        }
        return formatArr;
    }
}
