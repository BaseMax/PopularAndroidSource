package c.e.a.a;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import c.e.a.a.C0732o;
import c.e.a.a.M;
import c.e.a.a.O;
import c.e.a.a.Z;
import c.e.a.a.j.v;
import c.e.a.a.l.n;
import c.e.a.a.l.o;
import c.e.a.a.l.r;
import c.e.a.a.l.s;
import c.e.a.a.n.f;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.C0738f;
import c.e.a.a.o.I;
import c.e.a.a.o.p;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.IllegalSeekPositionException;
import com.google.android.exoplayer2.source.TrackGroupArray;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* renamed from: c.e.a.a.z  reason: case insensitive filesystem */
/* compiled from: ExoPlayerImpl */
public final class C0752z extends C0732o implements C0749w {

    /* renamed from: b  reason: collision with root package name */
    public final s f9757b;

    /* renamed from: c  reason: collision with root package name */
    public final Q[] f9758c;

    /* renamed from: d  reason: collision with root package name */
    public final r f9759d;

    /* renamed from: e  reason: collision with root package name */
    public final Handler f9760e;

    /* renamed from: f  reason: collision with root package name */
    public final B f9761f;

    /* renamed from: g  reason: collision with root package name */
    public final Handler f9762g;

    /* renamed from: h  reason: collision with root package name */
    public final CopyOnWriteArrayList<C0732o.a> f9763h;

    /* renamed from: i  reason: collision with root package name */
    public final Z.a f9764i;

    /* renamed from: j  reason: collision with root package name */
    public final ArrayDeque<Runnable> f9765j;

    /* renamed from: k  reason: collision with root package name */
    public v f9766k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f9767l;
    public boolean m;
    public int n;
    public boolean o;
    public int p;
    public boolean q;
    public boolean r;
    public K s;
    public V t;
    public ExoPlaybackException u;
    public J v;
    public int w;
    public int x;
    public long y;

    /* renamed from: c.e.a.a.z$a */
    /* compiled from: ExoPlayerImpl */
    private static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final J f9768a;

        /* renamed from: b  reason: collision with root package name */
        public final CopyOnWriteArrayList<C0732o.a> f9769b;

        /* renamed from: c  reason: collision with root package name */
        public final r f9770c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f9771d;

        /* renamed from: e  reason: collision with root package name */
        public final int f9772e;

        /* renamed from: f  reason: collision with root package name */
        public final int f9773f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f9774g;

        /* renamed from: h  reason: collision with root package name */
        public final boolean f9775h;

        /* renamed from: i  reason: collision with root package name */
        public final boolean f9776i;

        /* renamed from: j  reason: collision with root package name */
        public final boolean f9777j;

        /* renamed from: k  reason: collision with root package name */
        public final boolean f9778k;

        /* renamed from: l  reason: collision with root package name */
        public final boolean f9779l;

        public a(J j2, J j3, CopyOnWriteArrayList<C0732o.a> copyOnWriteArrayList, r rVar, boolean z, int i2, int i3, boolean z2, boolean z3) {
            this.f9768a = j2;
            this.f9769b = new CopyOnWriteArrayList<>(copyOnWriteArrayList);
            this.f9770c = rVar;
            this.f9771d = z;
            this.f9772e = i2;
            this.f9773f = i3;
            this.f9774g = z2;
            this.f9779l = z3;
            boolean z4 = true;
            this.f9775h = j3.f7293g != j2.f7293g;
            this.f9776i = (j3.f7288b == j2.f7288b && j3.f7289c == j2.f7289c) ? false : true;
            this.f9777j = j3.f7294h != j2.f7294h;
            this.f9778k = j3.f7296j == j2.f7296j ? false : z4;
        }

        public /* synthetic */ void a(M.b bVar) {
            J j2 = this.f9768a;
            bVar.a(j2.f7288b, j2.f7289c, this.f9773f);
        }

        public /* synthetic */ void b(M.b bVar) {
            bVar.b(this.f9772e);
        }

        public /* synthetic */ void c(M.b bVar) {
            J j2 = this.f9768a;
            bVar.a(j2.f7295i, j2.f7296j.f9343c);
        }

        public /* synthetic */ void d(M.b bVar) {
            bVar.a(this.f9768a.f7294h);
        }

        public /* synthetic */ void e(M.b bVar) {
            bVar.a(this.f9779l, this.f9768a.f7293g);
        }

        public void run() {
            if (this.f9776i || this.f9773f == 0) {
                C0752z.b(this.f9769b, new C0712g(this));
            }
            if (this.f9771d) {
                C0752z.b(this.f9769b, new C0711f(this));
            }
            if (this.f9778k) {
                this.f9770c.a(this.f9768a.f7296j.f9344d);
                C0752z.b(this.f9769b, new C0714i(this));
            }
            if (this.f9777j) {
                C0752z.b(this.f9769b, new C0713h(this));
            }
            if (this.f9775h) {
                C0752z.b(this.f9769b, new C0715j(this));
            }
            if (this.f9774g) {
                C0752z.b(this.f9769b, C0686a.f7354a);
            }
        }
    }

    @SuppressLint({"HandlerLeak"})
    public C0752z(Q[] qArr, r rVar, F f2, f fVar, C0738f fVar2, Looper looper) {
        Q[] qArr2 = qArr;
        p.c("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [" + "ExoPlayerLib/2.10.0" + "] [" + I.f9569e + "]");
        C0737e.b(qArr2.length > 0);
        C0737e.a(qArr);
        this.f9758c = qArr2;
        C0737e.a(rVar);
        this.f9759d = rVar;
        this.f9767l = false;
        this.n = 0;
        this.o = false;
        this.f9763h = new CopyOnWriteArrayList<>();
        this.f9757b = new s(new T[qArr2.length], new n[qArr2.length], null);
        this.f9764i = new Z.a();
        this.s = K.f7299a;
        this.t = V.f7322e;
        this.f9760e = new C0751y(this, looper);
        this.v = J.a(0, this.f9757b);
        this.f9765j = new ArrayDeque<>();
        B b2 = new B(qArr, rVar, this.f9757b, f2, fVar, this.f9767l, this.n, this.o, this.f9760e, fVar2);
        this.f9761f = b2;
        this.f9762g = new Handler(this.f9761f.d());
    }

    public void A() {
        p.c("ExoPlayerImpl", "Release " + Integer.toHexString(System.identityHashCode(this)) + " [" + "ExoPlayerLib/2.10.0" + "] [" + I.f9569e + "] [" + C.a() + "]");
        this.f9766k = null;
        this.f9761f.n();
        this.f9760e.removeCallbacksAndMessages(null);
        this.v = a(false, false, 1);
    }

    public final boolean B() {
        return this.v.f7288b.c() || this.p > 0;
    }

    public void b(M.b bVar) {
        Iterator<C0732o.a> it = this.f9763h.iterator();
        while (it.hasNext()) {
            C0732o.a next = it.next();
            if (next.f9575a.equals(bVar)) {
                next.a();
                this.f9763h.remove(next);
            }
        }
    }

    public int d() {
        return this.n;
    }

    public long e() {
        return Math.max(0, C0744q.b(this.v.m));
    }

    public boolean f() {
        return this.f9767l;
    }

    public ExoPlaybackException g() {
        return this.u;
    }

    public long getCurrentPosition() {
        if (B()) {
            return this.y;
        }
        if (this.v.f7290d.a()) {
            return C0744q.b(this.v.n);
        }
        J j2 = this.v;
        return a(j2.f7290d, j2.n);
    }

    public long getDuration() {
        if (!c()) {
            return w();
        }
        J j2 = this.v;
        v.a aVar = j2.f7290d;
        j2.f7288b.a(aVar.f8976a, this.f9764i);
        return C0744q.b(this.f9764i.a(aVar.f8977b, aVar.f8978c));
    }

    public int i() {
        if (c()) {
            return this.v.f7290d.f8978c;
        }
        return -1;
    }

    public int j() {
        if (B()) {
            return this.w;
        }
        J j2 = this.v;
        return j2.f7288b.a(j2.f7290d.f8976a, this.f9764i).f7340c;
    }

    public M.e k() {
        return null;
    }

    public long l() {
        if (!c()) {
            return getCurrentPosition();
        }
        J j2 = this.v;
        j2.f7288b.a(j2.f7290d.f8976a, this.f9764i);
        return this.f9764i.d() + C0744q.b(this.v.f7292f);
    }

    public int n() {
        if (c()) {
            return this.v.f7290d.f8977b;
        }
        return -1;
    }

    public TrackGroupArray p() {
        return this.v.f7295i;
    }

    public Z q() {
        return this.v.f7288b;
    }

    public Looper r() {
        return this.f9760e.getLooper();
    }

    public boolean s() {
        return this.o;
    }

    public long t() {
        if (B()) {
            return this.y;
        }
        J j2 = this.v;
        if (j2.f7297k.f8979d != j2.f7290d.f8979d) {
            return j2.f7288b.a(j(), this.f9539a).c();
        }
        long j3 = j2.f7298l;
        if (this.v.f7297k.a()) {
            J j4 = this.v;
            Z.a a2 = j4.f7288b.a(j4.f7297k.f8976a, this.f9764i);
            long b2 = a2.b(this.v.f7297k.f8977b);
            j3 = b2 == Long.MIN_VALUE ? a2.f7341d : b2;
        }
        return a(this.v.f7297k, j3);
    }

    public o u() {
        return this.v.f7296j.f9343c;
    }

    public M.d v() {
        return null;
    }

    public int z() {
        if (B()) {
            return this.x;
        }
        J j2 = this.v;
        return j2.f7288b.a(j2.f7290d.f8976a);
    }

    public void a(M.b bVar) {
        this.f9763h.addIfAbsent(new C0732o.a(bVar));
    }

    public boolean c() {
        return !B() && this.v.f7290d.a();
    }

    public void a(v vVar, boolean z, boolean z2) {
        this.u = null;
        this.f9766k = vVar;
        J a2 = a(z, z2, 2);
        this.q = true;
        this.p++;
        this.f9761f.a(vVar, z, z2);
        a(a2, false, 4, 1, false);
    }

    public int b() {
        return this.v.f7293g;
    }

    public void b(boolean z) {
        a(z, false);
    }

    public void b(int i2) {
        if (this.n != i2) {
            this.n = i2;
            this.f9761f.a(i2);
            a((C0732o.b) new C0729m(i2));
        }
    }

    public void a(boolean z, boolean z2) {
        boolean z3 = z && !z2;
        if (this.m != z3) {
            this.m = z3;
            this.f9761f.d(z3);
        }
        if (this.f9767l != z) {
            this.f9767l = z;
            a((C0732o.b) new C0696c(z, this.v.f7293g));
        }
    }

    public static void b(CopyOnWriteArrayList<C0732o.a> copyOnWriteArrayList, C0732o.b bVar) {
        Iterator<C0732o.a> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            it.next().a(bVar);
        }
    }

    public void a(boolean z) {
        if (this.o != z) {
            this.o = z;
            this.f9761f.f(z);
            a((C0732o.b) new C0727k(z));
        }
    }

    public void a(int i2, long j2) {
        Z z = this.v.f7288b;
        if (i2 < 0 || (!z.c() && i2 >= z.b())) {
            throw new IllegalSeekPositionException(z, i2, j2);
        }
        this.r = true;
        this.p++;
        if (c()) {
            p.d("ExoPlayerImpl", "seekTo ignored because an ad is playing");
            this.f9760e.obtainMessage(0, 1, -1, this.v).sendToTarget();
            return;
        }
        this.w = i2;
        if (z.c()) {
            this.y = j2 == -9223372036854775807L ? 0 : j2;
            this.x = 0;
        } else {
            long b2 = j2 == -9223372036854775807L ? z.a(i2, this.f9539a).b() : C0744q.a(j2);
            Pair<Object, Long> a2 = z.a(this.f9539a, this.f9764i, i2, b2);
            this.y = C0744q.b(b2);
            this.x = z.a(a2.first);
        }
        this.f9761f.b(z, i2, C0744q.a(j2));
        a((C0732o.b) C0697d.f7563a);
    }

    public K a() {
        return this.s;
    }

    public O a(O.b bVar) {
        O o2 = new O(this.f9761f, bVar, this.v.f7288b, j(), this.f9762g);
        return o2;
    }

    public int a(int i2) {
        return this.f9758c[i2].f();
    }

    public void a(Message message) {
        int i2 = message.what;
        boolean z = true;
        if (i2 == 0) {
            J j2 = (J) message.obj;
            int i3 = message.arg1;
            if (message.arg2 == -1) {
                z = false;
            }
            a(j2, i3, z, message.arg2);
        } else if (i2 == 1) {
            K k2 = (K) message.obj;
            if (!this.s.equals(k2)) {
                this.s = k2;
                a((C0732o.b) new C0698e(k2));
            }
        } else if (i2 == 2) {
            ExoPlaybackException exoPlaybackException = (ExoPlaybackException) message.obj;
            this.u = exoPlaybackException;
            a((C0732o.b) new C0728l(exoPlaybackException));
        } else {
            throw new IllegalStateException();
        }
    }

    public final void a(J j2, int i2, boolean z, int i3) {
        this.p -= i2;
        if (this.p == 0) {
            if (j2.f7291e == -9223372036854775807L) {
                j2 = j2.a(j2.f7290d, 0, j2.f7292f);
            }
            J j3 = j2;
            if (!this.v.f7288b.c() && j3.f7288b.c()) {
                this.x = 0;
                this.w = 0;
                this.y = 0;
            }
            int i4 = this.q ? 0 : 2;
            boolean z2 = this.r;
            this.q = false;
            this.r = false;
            a(j3, z, i3, i4, z2);
        }
    }

    public final J a(boolean z, boolean z2, int i2) {
        long j2;
        long j3 = 0;
        boolean z3 = false;
        if (z) {
            this.w = 0;
            this.x = 0;
            this.y = 0;
        } else {
            this.w = j();
            this.x = z();
            this.y = getCurrentPosition();
        }
        if (z || z2) {
            z3 = true;
        }
        v.a a2 = z3 ? this.v.a(this.o, this.f9539a) : this.v.f7290d;
        if (!z3) {
            j3 = this.v.n;
        }
        long j4 = j3;
        if (z3) {
            j2 = -9223372036854775807L;
        } else {
            j2 = this.v.f7292f;
        }
        J j5 = new J(z2 ? Z.f7337a : this.v.f7288b, z2 ? null : this.v.f7289c, a2, j4, j2, i2, false, z2 ? TrackGroupArray.f12698a : this.v.f7295i, z2 ? this.f9757b : this.v.f7296j, a2, j4, 0, j4);
        return j5;
    }

    public final void a(J j2, boolean z, int i2, int i3, boolean z2) {
        J j3 = this.v;
        J j4 = j2;
        this.v = j4;
        a aVar = new a(j4, j3, this.f9763h, this.f9759d, z, i2, i3, z2, this.f9767l);
        a((Runnable) aVar);
    }

    public final void a(C0732o.b bVar) {
        a((Runnable) new C0687b(new CopyOnWriteArrayList(this.f9763h), bVar));
    }

    public final void a(Runnable runnable) {
        boolean z = !this.f9765j.isEmpty();
        this.f9765j.addLast(runnable);
        if (!z) {
            while (!this.f9765j.isEmpty()) {
                this.f9765j.peekFirst().run();
                this.f9765j.removeFirst();
            }
        }
    }

    public final long a(v.a aVar, long j2) {
        long b2 = C0744q.b(j2);
        this.v.f7288b.a(aVar.f8976a, this.f9764i);
        return b2 + this.f9764i.d();
    }
}
