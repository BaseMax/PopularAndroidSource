package c.e.a.a;

import android.util.Pair;
import c.e.a.a.Z;
import c.e.a.a.j.u;
import c.e.a.a.j.v;
import c.e.a.a.l.r;
import c.e.a.a.n.e;
import c.e.a.a.o.C0737e;

/* compiled from: MediaPeriodQueue */
public final class I {

    /* renamed from: a  reason: collision with root package name */
    public final Z.a f7275a = new Z.a();

    /* renamed from: b  reason: collision with root package name */
    public final Z.b f7276b = new Z.b();

    /* renamed from: c  reason: collision with root package name */
    public long f7277c;

    /* renamed from: d  reason: collision with root package name */
    public Z f7278d = Z.f7337a;

    /* renamed from: e  reason: collision with root package name */
    public int f7279e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f7280f;

    /* renamed from: g  reason: collision with root package name */
    public G f7281g;

    /* renamed from: h  reason: collision with root package name */
    public G f7282h;

    /* renamed from: i  reason: collision with root package name */
    public G f7283i;

    /* renamed from: j  reason: collision with root package name */
    public int f7284j;

    /* renamed from: k  reason: collision with root package name */
    public Object f7285k;

    /* renamed from: l  reason: collision with root package name */
    public long f7286l;

    public void a(Z z) {
        this.f7278d = z;
    }

    public final boolean a(long j2, long j3) {
        return j2 == -9223372036854775807L || j2 == j3;
    }

    public boolean b(boolean z) {
        this.f7280f = z;
        return i();
    }

    public G c() {
        return g() ? this.f7281g : this.f7283i;
    }

    public G d() {
        return this.f7283i;
    }

    public G e() {
        return this.f7281g;
    }

    public G f() {
        return this.f7282h;
    }

    public boolean g() {
        return this.f7281g != null;
    }

    public boolean h() {
        G g2 = this.f7283i;
        return g2 == null || (!g2.f7261f.f7274g && g2.j() && this.f7283i.f7261f.f7272e != -9223372036854775807L && this.f7284j < 100);
    }

    public final boolean i() {
        G c2 = c();
        boolean z = true;
        if (c2 == null) {
            return true;
        }
        int a2 = this.f7278d.a(c2.f7257b);
        while (true) {
            a2 = this.f7278d.a(a2, this.f7275a, this.f7276b, this.f7279e, this.f7280f);
            while (c2.d() != null && !c2.f7261f.f7273f) {
                c2 = c2.d();
            }
            G d2 = c2.d();
            if (a2 == -1 || d2 == null || this.f7278d.a(d2.f7257b) != a2) {
                boolean a3 = a(c2);
                c2.f7261f = a(c2.f7261f);
            } else {
                c2 = d2;
            }
        }
        boolean a32 = a(c2);
        c2.f7261f = a(c2.f7261f);
        if (a32 && g()) {
            z = false;
        }
        return z;
    }

    public boolean a(int i2) {
        this.f7279e = i2;
        return i();
    }

    public G b() {
        G g2 = this.f7282h;
        C0737e.b((g2 == null || g2.d() == null) ? false : true);
        this.f7282h = this.f7282h.d();
        return this.f7282h;
    }

    public boolean a(u uVar) {
        G g2 = this.f7283i;
        return g2 != null && g2.f7256a == uVar;
    }

    public void a(long j2) {
        G g2 = this.f7283i;
        if (g2 != null) {
            g2.b(j2);
        }
    }

    public boolean b(long j2, long j3) {
        H h2;
        long j4;
        G c2 = c();
        G g2 = null;
        while (true) {
            G g3 = g2;
            g2 = c2;
            G g4 = g3;
            boolean z = true;
            if (g2 == null) {
                return true;
            }
            H h3 = g2.f7261f;
            if (g4 == null) {
                h2 = a(h3);
            } else {
                H a2 = a(g4, j2);
                if (a2 == null) {
                    return !a(g4);
                }
                if (!a(h3, a2)) {
                    return !a(g4);
                }
                h2 = a2;
            }
            g2.f7261f = h2.a(h3.f7270c);
            if (!a(h3.f7272e, h2.f7272e)) {
                long j5 = h2.f7272e;
                if (j5 == -9223372036854775807L) {
                    j4 = Long.MAX_VALUE;
                } else {
                    j4 = g2.d(j5);
                }
                boolean z2 = g2 == this.f7282h && (j3 == Long.MIN_VALUE || j3 >= j4);
                if (a(g2) || z2) {
                    z = false;
                }
                return z;
            }
            c2 = g2.d();
        }
    }

    public H a(long j2, J j3) {
        G g2 = this.f7283i;
        if (g2 == null) {
            return a(j3);
        }
        return a(g2, j2);
    }

    public u a(S[] sArr, r rVar, e eVar, v vVar, H h2) {
        long j2;
        G g2 = this.f7283i;
        if (g2 == null) {
            j2 = h2.f7269b;
        } else {
            j2 = g2.f() + this.f7283i.f7261f.f7272e;
        }
        G g3 = new G(sArr, j2, rVar, eVar, vVar, h2);
        if (this.f7283i != null) {
            C0737e.b(g());
            this.f7283i.a(g3);
        }
        this.f7285k = null;
        this.f7283i = g3;
        this.f7284j++;
        return g3.f7256a;
    }

    public G a() {
        G g2 = this.f7281g;
        if (g2 != null) {
            if (g2 == this.f7282h) {
                this.f7282h = g2.d();
            }
            this.f7281g.l();
            this.f7284j--;
            if (this.f7284j == 0) {
                this.f7283i = null;
                G g3 = this.f7281g;
                this.f7285k = g3.f7257b;
                this.f7286l = g3.f7261f.f7268a.f8979d;
            }
            this.f7281g = this.f7281g.d();
        } else {
            G g4 = this.f7283i;
            this.f7281g = g4;
            this.f7282h = g4;
        }
        return this.f7281g;
    }

    public final v.a b(Object obj, long j2, long j3) {
        this.f7278d.a(obj, this.f7275a);
        int b2 = this.f7275a.b(j2);
        if (b2 == -1) {
            return new v.a(obj, j3, this.f7275a.a(j2));
        }
        v.a aVar = new v.a(obj, b2, this.f7275a.c(b2), j3);
        return aVar;
    }

    public boolean a(G g2) {
        boolean z = false;
        C0737e.b(g2 != null);
        this.f7283i = g2;
        while (g2.d() != null) {
            g2 = g2.d();
            if (g2 == this.f7282h) {
                this.f7282h = this.f7281g;
                z = true;
            }
            g2.l();
            this.f7284j--;
        }
        this.f7283i.a((G) null);
        return z;
    }

    public void a(boolean z) {
        G c2 = c();
        if (c2 != null) {
            this.f7285k = z ? c2.f7257b : null;
            this.f7286l = c2.f7261f.f7268a.f8979d;
            c2.l();
            a(c2);
        } else if (!z) {
            this.f7285k = null;
        }
        this.f7281g = null;
        this.f7283i = null;
        this.f7282h = null;
        this.f7284j = 0;
    }

    public H a(H h2) {
        long j2;
        v.a aVar = h2.f7268a;
        boolean a2 = a(aVar);
        boolean a3 = a(aVar, a2);
        this.f7278d.a(h2.f7268a.f8976a, this.f7275a);
        if (aVar.a()) {
            j2 = this.f7275a.a(aVar.f8977b, aVar.f8978c);
        } else {
            j2 = h2.f7271d;
            if (j2 == -9223372036854775807L || j2 == Long.MIN_VALUE) {
                j2 = this.f7275a.c();
            }
        }
        H h3 = new H(aVar, h2.f7269b, h2.f7270c, h2.f7271d, j2, a2, a3);
        return h3;
    }

    public v.a a(Object obj, long j2) {
        return b(obj, j2, a(obj));
    }

    public final long a(Object obj) {
        int i2 = this.f7278d.a(obj, this.f7275a).f7340c;
        Object obj2 = this.f7285k;
        if (obj2 != null) {
            int a2 = this.f7278d.a(obj2);
            if (a2 != -1 && this.f7278d.a(a2, this.f7275a).f7340c == i2) {
                return this.f7286l;
            }
        }
        for (G c2 = c(); c2 != null; c2 = c2.d()) {
            if (c2.f7257b.equals(obj)) {
                return c2.f7261f.f7268a.f8979d;
            }
        }
        for (G c3 = c(); c3 != null; c3 = c3.d()) {
            int a3 = this.f7278d.a(c3.f7257b);
            if (a3 != -1 && this.f7278d.a(a3, this.f7275a).f7340c == i2) {
                return c3.f7261f.f7268a.f8979d;
            }
        }
        long j2 = this.f7277c;
        this.f7277c = 1 + j2;
        return j2;
    }

    public final boolean a(H h2, H h3) {
        return h2.f7269b == h3.f7269b && h2.f7268a.equals(h3.f7268a);
    }

    public final H a(J j2) {
        return a(j2.f7290d, j2.f7292f, j2.f7291e);
    }

    public final H a(G g2, long j2) {
        long j3;
        long j4;
        Object obj;
        long j5;
        H h2 = g2.f7261f;
        long f2 = (g2.f() + h2.f7272e) - j2;
        long j6 = 0;
        H h3 = null;
        if (h2.f7273f) {
            int a2 = this.f7278d.a(h2.f7268a.f8976a);
            int a3 = this.f7278d.a(a2, this.f7275a, this.f7276b, this.f7279e, this.f7280f);
            if (a3 == -1) {
                return null;
            }
            int i2 = this.f7278d.a(a3, this.f7275a, true).f7340c;
            Object obj2 = this.f7275a.f7339b;
            long j7 = h2.f7268a.f8979d;
            if (this.f7278d.a(i2, this.f7276b).f7349f == a3) {
                Pair<Object, Long> a4 = this.f7278d.a(this.f7276b, this.f7275a, i2, -9223372036854775807L, Math.max(0, f2));
                if (a4 == null) {
                    return null;
                }
                Object obj3 = a4.first;
                long longValue = ((Long) a4.second).longValue();
                G d2 = g2.d();
                if (d2 == null || !d2.f7257b.equals(obj3)) {
                    j5 = this.f7277c;
                    this.f7277c = 1 + j5;
                } else {
                    j5 = d2.f7261f.f7268a.f8979d;
                }
                j6 = longValue;
                j4 = j5;
                obj = obj3;
            } else {
                obj = obj2;
                j4 = j7;
            }
            long j8 = j6;
            return a(b(obj, j8, j4), j8, j6);
        }
        v.a aVar = h2.f7268a;
        this.f7278d.a(aVar.f8976a, this.f7275a);
        if (aVar.a()) {
            int i3 = aVar.f8977b;
            int a5 = this.f7275a.a(i3);
            if (a5 == -1) {
                return null;
            }
            int b2 = this.f7275a.b(i3, aVar.f8978c);
            if (b2 < a5) {
                if (this.f7275a.c(i3, b2)) {
                    h3 = a(aVar.f8976a, i3, b2, h2.f7270c, aVar.f8979d);
                }
                return h3;
            }
            long j9 = h2.f7270c;
            if (this.f7275a.a() == 1 && this.f7275a.b(0) == 0) {
                Z z = this.f7278d;
                Z.b bVar = this.f7276b;
                Z.a aVar2 = this.f7275a;
                Pair<Object, Long> a6 = z.a(bVar, aVar2, aVar2.f7340c, -9223372036854775807L, Math.max(0, f2));
                if (a6 == null) {
                    return null;
                }
                j3 = ((Long) a6.second).longValue();
            } else {
                j3 = j9;
            }
            return a(aVar.f8976a, j3, aVar.f8979d);
        }
        int b3 = this.f7275a.b(h2.f7271d);
        if (b3 == -1) {
            return a(aVar.f8976a, h2.f7272e, aVar.f8979d);
        }
        int c2 = this.f7275a.c(b3);
        if (this.f7275a.c(b3, c2)) {
            h3 = a(aVar.f8976a, b3, c2, h2.f7272e, aVar.f8979d);
        }
        return h3;
    }

    public final H a(v.a aVar, long j2, long j3) {
        this.f7278d.a(aVar.f8976a, this.f7275a);
        if (!aVar.a()) {
            return a(aVar.f8976a, j3, aVar.f8979d);
        } else if (!this.f7275a.c(aVar.f8977b, aVar.f8978c)) {
            return null;
        } else {
            return a(aVar.f8976a, aVar.f8977b, aVar.f8978c, j2, aVar.f8979d);
        }
    }

    public final H a(Object obj, int i2, int i3, long j2, long j3) {
        v.a aVar = new v.a(obj, i2, i3, j3);
        H h2 = new H(aVar, i3 == this.f7275a.c(i2) ? this.f7275a.b() : 0, j2, -9223372036854775807L, this.f7278d.a(aVar.f8976a, this.f7275a).a(aVar.f8977b, aVar.f8978c), false, false);
        return h2;
    }

    public final H a(Object obj, long j2, long j3) {
        long j4;
        int a2 = this.f7275a.a(j2);
        Object obj2 = obj;
        v.a aVar = new v.a(obj, j3, a2);
        boolean a3 = a(aVar);
        boolean a4 = a(aVar, a3);
        long b2 = a2 != -1 ? this.f7275a.b(a2) : -9223372036854775807L;
        if (b2 == -9223372036854775807L || b2 == Long.MIN_VALUE) {
            j4 = this.f7275a.f7341d;
        } else {
            j4 = b2;
        }
        H h2 = new H(aVar, j2, -9223372036854775807L, b2, j4, a3, a4);
        return h2;
    }

    public final boolean a(v.a aVar) {
        return !aVar.a() && aVar.f8980e == -1;
    }

    public final boolean a(v.a aVar, boolean z) {
        int a2 = this.f7278d.a(aVar.f8976a);
        return !this.f7278d.a(this.f7278d.a(a2, this.f7275a).f7340c, this.f7276b).f7348e && this.f7278d.b(a2, this.f7275a, this.f7276b, this.f7279e, this.f7280f) && z;
    }
}
