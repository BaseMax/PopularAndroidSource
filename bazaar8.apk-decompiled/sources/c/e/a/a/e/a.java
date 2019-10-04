package c.e.a.a.e;

import c.e.a.a.e.o;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;

/* compiled from: BinarySearchSeeker */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public final C0106a f7589a;

    /* renamed from: b  reason: collision with root package name */
    public final g f7590b;

    /* renamed from: c  reason: collision with root package name */
    public d f7591c;

    /* renamed from: d  reason: collision with root package name */
    public final int f7592d;

    /* renamed from: c.e.a.a.e.a$a  reason: collision with other inner class name */
    /* compiled from: BinarySearchSeeker */
    public static class C0106a implements o {

        /* renamed from: a  reason: collision with root package name */
        public final e f7593a;

        /* renamed from: b  reason: collision with root package name */
        public final long f7594b;

        /* renamed from: c  reason: collision with root package name */
        public final long f7595c;

        /* renamed from: d  reason: collision with root package name */
        public final long f7596d;

        /* renamed from: e  reason: collision with root package name */
        public final long f7597e;

        /* renamed from: f  reason: collision with root package name */
        public final long f7598f;

        /* renamed from: g  reason: collision with root package name */
        public final long f7599g;

        public C0106a(e eVar, long j2, long j3, long j4, long j5, long j6, long j7) {
            this.f7593a = eVar;
            this.f7594b = j2;
            this.f7595c = j3;
            this.f7596d = j4;
            this.f7597e = j5;
            this.f7598f = j6;
            this.f7599g = j7;
        }

        public boolean c() {
            return true;
        }

        public o.a b(long j2) {
            this.f7593a.a(j2);
            return new o.a(new p(j2, d.a(j2, this.f7595c, this.f7596d, this.f7597e, this.f7598f, this.f7599g)));
        }

        public long c(long j2) {
            this.f7593a.a(j2);
            return j2;
        }

        public long d() {
            return this.f7594b;
        }
    }

    /* compiled from: BinarySearchSeeker */
    public static final class b implements e {
        public long a(long j2) {
            return j2;
        }
    }

    /* compiled from: BinarySearchSeeker */
    public static final class c {
    }

    /* compiled from: BinarySearchSeeker */
    protected static class d {

        /* renamed from: a  reason: collision with root package name */
        public final long f7613a;

        /* renamed from: b  reason: collision with root package name */
        public final long f7614b;

        /* renamed from: c  reason: collision with root package name */
        public final long f7615c;

        /* renamed from: d  reason: collision with root package name */
        public long f7616d;

        /* renamed from: e  reason: collision with root package name */
        public long f7617e;

        /* renamed from: f  reason: collision with root package name */
        public long f7618f;

        /* renamed from: g  reason: collision with root package name */
        public long f7619g;

        /* renamed from: h  reason: collision with root package name */
        public long f7620h;

        public d(long j2, long j3, long j4, long j5, long j6, long j7, long j8) {
            this.f7613a = j2;
            this.f7614b = j3;
            this.f7616d = j4;
            this.f7617e = j5;
            this.f7618f = j6;
            this.f7619g = j7;
            this.f7615c = j8;
            this.f7620h = a(j3, j4, j5, j6, j7, j8);
        }

        public final void f() {
            this.f7620h = a(this.f7614b, this.f7616d, this.f7617e, this.f7618f, this.f7619g, this.f7615c);
        }

        public final long c() {
            return this.f7620h;
        }

        public final long d() {
            return this.f7613a;
        }

        public final long e() {
            return this.f7614b;
        }

        public static long a(long j2, long j3, long j4, long j5, long j6, long j7) {
            if (j5 + 1 >= j6 || j3 + 1 >= j4) {
                return j5;
            }
            long j8 = (long) (((float) (j2 - j3)) * (((float) (j6 - j5)) / ((float) (j4 - j3))));
            return I.b(((j8 + j5) - j7) - (j8 / 20), j5, j6 - 1);
        }

        public final long b() {
            return this.f7618f;
        }

        public final void b(long j2, long j3) {
            this.f7616d = j2;
            this.f7618f = j3;
            f();
        }

        public final long a() {
            return this.f7619g;
        }

        public final void a(long j2, long j3) {
            this.f7617e = j2;
            this.f7619g = j3;
            f();
        }
    }

    /* compiled from: BinarySearchSeeker */
    protected interface e {
        long a(long j2);
    }

    /* compiled from: BinarySearchSeeker */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        public static final f f7621a;

        /* renamed from: b  reason: collision with root package name */
        public final int f7622b;

        /* renamed from: c  reason: collision with root package name */
        public final long f7623c;

        /* renamed from: d  reason: collision with root package name */
        public final long f7624d;

        static {
            f fVar = new f(-3, -9223372036854775807L, -1);
            f7621a = fVar;
        }

        public f(int i2, long j2, long j3) {
            this.f7622b = i2;
            this.f7623c = j2;
            this.f7624d = j3;
        }

        public static f a(long j2, long j3) {
            f fVar = new f(-1, j2, j3);
            return fVar;
        }

        public static f b(long j2, long j3) {
            f fVar = new f(-2, j2, j3);
            return fVar;
        }

        public static f a(long j2) {
            f fVar = new f(0, -9223372036854775807L, j2);
            return fVar;
        }
    }

    /* compiled from: BinarySearchSeeker */
    protected interface g {
        f a(h hVar, long j2, c cVar);

        void a();
    }

    public a(e eVar, g gVar, long j2, long j3, long j4, long j5, long j6, long j7, int i2) {
        this.f7590b = gVar;
        this.f7592d = i2;
        C0106a aVar = new C0106a(eVar, j2, j3, j4, j5, j6, j7);
        this.f7589a = aVar;
    }

    public final o a() {
        return this.f7589a;
    }

    public final void b(long j2) {
        d dVar = this.f7591c;
        if (dVar == null || dVar.d() != j2) {
            this.f7591c = a(j2);
        }
    }

    public void b(boolean z, long j2) {
    }

    public int a(h hVar, n nVar, c cVar) {
        g gVar = this.f7590b;
        C0737e.a(gVar);
        g gVar2 = gVar;
        while (true) {
            d dVar = this.f7591c;
            C0737e.a(dVar);
            d dVar2 = dVar;
            long b2 = dVar2.b();
            long c2 = dVar2.a();
            long d2 = dVar2.c();
            if (c2 - b2 <= ((long) this.f7592d)) {
                a(false, b2);
                return a(hVar, b2, nVar);
            } else if (!a(hVar, d2)) {
                return a(hVar, d2, nVar);
            } else {
                hVar.b();
                f a2 = gVar2.a(hVar, dVar2.e(), cVar);
                int a3 = a2.f7622b;
                if (a3 == -3) {
                    a(false, d2);
                    return a(hVar, d2, nVar);
                } else if (a3 == -2) {
                    dVar2.b(a2.f7623c, a2.f7624d);
                } else if (a3 == -1) {
                    dVar2.a(a2.f7623c, a2.f7624d);
                } else if (a3 == 0) {
                    a(true, a2.f7624d);
                    a(hVar, a2.f7624d);
                    return a(hVar, a2.f7624d, nVar);
                } else {
                    throw new IllegalStateException("Invalid case");
                }
            }
        }
    }

    public final boolean b() {
        return this.f7591c != null;
    }

    public d a(long j2) {
        long j3 = j2;
        this.f7589a.c(j3);
        d dVar = new d(j2, j3, this.f7589a.f7595c, this.f7589a.f7596d, this.f7589a.f7597e, this.f7589a.f7598f, this.f7589a.f7599g);
        return dVar;
    }

    public final void a(boolean z, long j2) {
        this.f7591c = null;
        this.f7590b.a();
        b(z, j2);
    }

    public final boolean a(h hVar, long j2) {
        long position = j2 - hVar.getPosition();
        if (position < 0 || position > 262144) {
            return false;
        }
        hVar.c((int) position);
        return true;
    }

    public final int a(h hVar, long j2, n nVar) {
        if (j2 == hVar.getPosition()) {
            return 0;
        }
        nVar.f8320a = j2;
        return 1;
    }
}
