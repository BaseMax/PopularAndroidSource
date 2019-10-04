package c.e.a.a;

import android.util.Pair;
import c.e.a.a.j.a.a;
import c.e.a.a.o.C0737e;

/* compiled from: Timeline */
public abstract class Z {

    /* renamed from: a  reason: collision with root package name */
    public static final Z f7337a = new Y();

    /* compiled from: Timeline */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public Object f7338a;

        /* renamed from: b  reason: collision with root package name */
        public Object f7339b;

        /* renamed from: c  reason: collision with root package name */
        public int f7340c;

        /* renamed from: d  reason: collision with root package name */
        public long f7341d;

        /* renamed from: e  reason: collision with root package name */
        public long f7342e;

        /* renamed from: f  reason: collision with root package name */
        public c.e.a.a.j.a.a f7343f = c.e.a.a.j.a.a.f8440a;

        public a a(Object obj, Object obj2, int i2, long j2, long j3) {
            a(obj, obj2, i2, j2, j3, c.e.a.a.j.a.a.f8440a);
            return this;
        }

        public long b(int i2) {
            return this.f7343f.f8442c[i2];
        }

        public long c() {
            return this.f7341d;
        }

        public long d() {
            return C0744q.b(this.f7342e);
        }

        public long e() {
            return this.f7342e;
        }

        public a a(Object obj, Object obj2, int i2, long j2, long j3, c.e.a.a.j.a.a aVar) {
            this.f7338a = obj;
            this.f7339b = obj2;
            this.f7340c = i2;
            this.f7341d = j2;
            this.f7342e = j3;
            this.f7343f = aVar;
            return this;
        }

        public int b(int i2, int i3) {
            return this.f7343f.f8443d[i2].a(i3);
        }

        public int c(int i2) {
            return this.f7343f.f8443d[i2].a();
        }

        public boolean d(int i2) {
            return !this.f7343f.f8443d[i2].b();
        }

        public int b(long j2) {
            return this.f7343f.a(j2);
        }

        public boolean c(int i2, int i3) {
            a.C0109a aVar = this.f7343f.f8443d[i2];
            return (aVar.f8446a == -1 || aVar.f8448c[i3] == 0) ? false : true;
        }

        public long b() {
            return this.f7343f.f8444e;
        }

        public int a() {
            return this.f7343f.f8441b;
        }

        public int a(long j2) {
            return this.f7343f.a(j2, this.f7341d);
        }

        public int a(int i2) {
            return this.f7343f.f8443d[i2].f8446a;
        }

        public long a(int i2, int i3) {
            a.C0109a aVar = this.f7343f.f8443d[i2];
            if (aVar.f8446a != -1) {
                return aVar.f8449d[i3];
            }
            return -9223372036854775807L;
        }
    }

    /* compiled from: Timeline */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public Object f7344a;

        /* renamed from: b  reason: collision with root package name */
        public long f7345b;

        /* renamed from: c  reason: collision with root package name */
        public long f7346c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f7347d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f7348e;

        /* renamed from: f  reason: collision with root package name */
        public int f7349f;

        /* renamed from: g  reason: collision with root package name */
        public int f7350g;

        /* renamed from: h  reason: collision with root package name */
        public long f7351h;

        /* renamed from: i  reason: collision with root package name */
        public long f7352i;

        /* renamed from: j  reason: collision with root package name */
        public long f7353j;

        public b a(Object obj, long j2, long j3, boolean z, boolean z2, long j4, long j5, int i2, int i3, long j6) {
            this.f7344a = obj;
            this.f7345b = j2;
            this.f7346c = j3;
            this.f7347d = z;
            this.f7348e = z2;
            this.f7351h = j4;
            this.f7352i = j5;
            this.f7349f = i2;
            this.f7350g = i3;
            this.f7353j = j6;
            return this;
        }

        public long b() {
            return this.f7351h;
        }

        public long c() {
            return C0744q.b(this.f7352i);
        }

        public long d() {
            return this.f7353j;
        }

        public long a() {
            return C0744q.b(this.f7351h);
        }
    }

    public abstract int a();

    public int a(int i2, int i3, boolean z) {
        if (i3 == 0) {
            return i2 == b(z) ? -1 : i2 + 1;
        } else if (i3 == 1) {
            return i2;
        } else {
            if (i3 == 2) {
                return i2 == b(z) ? a(z) : i2 + 1;
            }
            throw new IllegalStateException();
        }
    }

    public abstract int a(Object obj);

    public abstract a a(int i2, a aVar, boolean z);

    public abstract b a(int i2, b bVar, boolean z, long j2);

    public abstract Object a(int i2);

    public abstract int b();

    public int b(int i2, int i3, boolean z) {
        if (i3 == 0) {
            return i2 == a(z) ? -1 : i2 - 1;
        } else if (i3 == 1) {
            return i2;
        } else {
            if (i3 == 2) {
                return i2 == a(z) ? b(z) : i2 - 1;
            }
            throw new IllegalStateException();
        }
    }

    public final boolean c() {
        return b() == 0;
    }

    public int a(boolean z) {
        return c() ? -1 : 0;
    }

    public int b(boolean z) {
        if (c()) {
            return -1;
        }
        return b() - 1;
    }

    public final b a(int i2, b bVar) {
        return a(i2, bVar, false);
    }

    public final boolean b(int i2, a aVar, b bVar, int i3, boolean z) {
        return a(i2, aVar, bVar, i3, z) == -1;
    }

    public final b a(int i2, b bVar, boolean z) {
        return a(i2, bVar, z, 0);
    }

    public final int a(int i2, a aVar, b bVar, int i3, boolean z) {
        int i4 = a(i2, aVar).f7340c;
        if (a(i4, bVar).f7350g != i2) {
            return i2 + 1;
        }
        int a2 = a(i4, i3, z);
        if (a2 == -1) {
            return -1;
        }
        return a(a2, bVar).f7349f;
    }

    public final Pair<Object, Long> a(b bVar, a aVar, int i2, long j2) {
        Pair<Object, Long> a2 = a(bVar, aVar, i2, j2, 0);
        C0737e.a(a2);
        return a2;
    }

    public final Pair<Object, Long> a(b bVar, a aVar, int i2, long j2, long j3) {
        C0737e.a(i2, 0, b());
        a(i2, bVar, false, j3);
        if (j2 == -9223372036854775807L) {
            j2 = bVar.b();
            if (j2 == -9223372036854775807L) {
                return null;
            }
        }
        int i3 = bVar.f7349f;
        long d2 = bVar.d() + j2;
        long c2 = a(i3, aVar, true).c();
        while (c2 != -9223372036854775807L && d2 >= c2 && i3 < bVar.f7350g) {
            d2 -= c2;
            i3++;
            c2 = a(i3, aVar, true).c();
        }
        Object obj = aVar.f7339b;
        C0737e.a(obj);
        return Pair.create(obj, Long.valueOf(d2));
    }

    public a a(Object obj, a aVar) {
        return a(a(obj), aVar, true);
    }

    public final a a(int i2, a aVar) {
        return a(i2, aVar, false);
    }
}
