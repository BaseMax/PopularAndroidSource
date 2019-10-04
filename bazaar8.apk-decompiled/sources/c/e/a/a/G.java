package c.e.a.a;

import c.e.a.a.j.C;
import c.e.a.a.j.u;
import c.e.a.a.j.v;
import c.e.a.a.l.n;
import c.e.a.a.l.o;
import c.e.a.a.l.r;
import c.e.a.a.l.s;
import c.e.a.a.n.e;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.p;
import com.google.android.exoplayer2.source.TrackGroupArray;

/* compiled from: MediaPeriodHolder */
public final class G {

    /* renamed from: a  reason: collision with root package name */
    public final u f7256a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f7257b;

    /* renamed from: c  reason: collision with root package name */
    public final C[] f7258c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f7259d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f7260e;

    /* renamed from: f  reason: collision with root package name */
    public H f7261f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean[] f7262g;

    /* renamed from: h  reason: collision with root package name */
    public final S[] f7263h;

    /* renamed from: i  reason: collision with root package name */
    public final r f7264i;

    /* renamed from: j  reason: collision with root package name */
    public final v f7265j;

    /* renamed from: k  reason: collision with root package name */
    public G f7266k;

    /* renamed from: l  reason: collision with root package name */
    public TrackGroupArray f7267l;
    public s m;
    public long n;

    public G(S[] sArr, long j2, r rVar, e eVar, v vVar, H h2) {
        this.f7263h = sArr;
        long j3 = h2.f7269b;
        this.n = j2 - j3;
        this.f7264i = rVar;
        this.f7265j = vVar;
        v.a aVar = h2.f7268a;
        this.f7257b = aVar.f8976a;
        this.f7261f = h2;
        this.f7258c = new C[sArr.length];
        this.f7262g = new boolean[sArr.length];
        this.f7256a = a(aVar, vVar, eVar, j3, h2.f7271d);
    }

    public void a(float f2, Z z) {
        this.f7259d = true;
        this.f7267l = this.f7256a.f();
        s b2 = b(f2, z);
        C0737e.a(b2);
        long a2 = a(b2, this.f7261f.f7269b, false);
        long j2 = this.n;
        H h2 = this.f7261f;
        this.n = j2 + (h2.f7269b - a2);
        this.f7261f = h2.b(a2);
    }

    public void b(long j2) {
        C0737e.b(k());
        if (this.f7259d) {
            this.f7256a.c(c(j2));
        }
    }

    public long c(long j2) {
        return j2 - f();
    }

    public long d(long j2) {
        return j2 + f();
    }

    public long e() {
        if (!this.f7259d) {
            return 0;
        }
        return this.f7256a.b();
    }

    public long f() {
        return this.n;
    }

    public long g() {
        return this.f7261f.f7269b + this.n;
    }

    public TrackGroupArray h() {
        TrackGroupArray trackGroupArray = this.f7267l;
        C0737e.a(trackGroupArray);
        return trackGroupArray;
    }

    public s i() {
        s sVar = this.m;
        C0737e.a(sVar);
        return sVar;
    }

    public boolean j() {
        return this.f7259d && (!this.f7260e || this.f7256a.g() == Long.MIN_VALUE);
    }

    public final boolean k() {
        return this.f7266k == null;
    }

    public void l() {
        a();
        this.m = null;
        a(this.f7261f.f7271d, this.f7265j, this.f7256a);
    }

    public long c() {
        if (!this.f7259d) {
            return this.f7261f.f7269b;
        }
        long g2 = this.f7260e ? this.f7256a.g() : Long.MIN_VALUE;
        if (g2 == Long.MIN_VALUE) {
            g2 = this.f7261f.f7272e;
        }
        return g2;
    }

    public G d() {
        return this.f7266k;
    }

    public s b(float f2, Z z) {
        s a2 = this.f7264i.a(this.f7263h, h(), this.f7261f.f7268a, z);
        if (a2.a(this.m)) {
            return null;
        }
        for (n nVar : a2.f9343c.a()) {
            if (nVar != null) {
                nVar.a(f2);
            }
        }
        return a2;
    }

    public void a(long j2) {
        C0737e.b(k());
        this.f7256a.b(c(j2));
    }

    public final void b() {
        s sVar = this.m;
        if (k() && sVar != null) {
            for (int i2 = 0; i2 < sVar.f9341a; i2++) {
                boolean a2 = sVar.a(i2);
                n a3 = sVar.f9343c.a(i2);
                if (a2 && a3 != null) {
                    a3.c();
                }
            }
        }
    }

    public long a(s sVar, long j2, boolean z) {
        return a(sVar, j2, z, new boolean[this.f7263h.length]);
    }

    public long a(s sVar, long j2, boolean z, boolean[] zArr) {
        s sVar2 = sVar;
        int i2 = 0;
        while (true) {
            boolean z2 = true;
            if (i2 >= sVar2.f9341a) {
                break;
            }
            boolean[] zArr2 = this.f7262g;
            if (z || !sVar.a(this.m, i2)) {
                z2 = false;
            }
            zArr2[i2] = z2;
            i2++;
        }
        b(this.f7258c);
        a();
        this.m = sVar2;
        b();
        o oVar = sVar2.f9343c;
        long a2 = this.f7256a.a(oVar.a(), this.f7262g, this.f7258c, zArr, j2);
        a(this.f7258c);
        this.f7260e = false;
        int i3 = 0;
        while (true) {
            C[] cArr = this.f7258c;
            if (i3 >= cArr.length) {
                return a2;
            }
            if (cArr[i3] != null) {
                C0737e.b(sVar.a(i3));
                if (this.f7263h[i3].f() != 6) {
                    this.f7260e = true;
                }
            } else {
                C0737e.b(oVar.a(i3) == null);
            }
            i3++;
        }
    }

    public final void b(C[] cArr) {
        int i2 = 0;
        while (true) {
            S[] sArr = this.f7263h;
            if (i2 < sArr.length) {
                if (sArr[i2].f() == 6) {
                    cArr[i2] = null;
                }
                i2++;
            } else {
                return;
            }
        }
    }

    public void a(G g2) {
        if (g2 != this.f7266k) {
            a();
            this.f7266k = g2;
            b();
        }
    }

    public final void a() {
        s sVar = this.m;
        if (k() && sVar != null) {
            for (int i2 = 0; i2 < sVar.f9341a; i2++) {
                boolean a2 = sVar.a(i2);
                n a3 = sVar.f9343c.a(i2);
                if (a2 && a3 != null) {
                    a3.e();
                }
            }
        }
    }

    public final void a(C[] cArr) {
        s sVar = this.m;
        C0737e.a(sVar);
        s sVar2 = sVar;
        int i2 = 0;
        while (true) {
            S[] sArr = this.f7263h;
            if (i2 < sArr.length) {
                if (sArr[i2].f() == 6 && sVar2.a(i2)) {
                    cArr[i2] = new c.e.a.a.j.s();
                }
                i2++;
            } else {
                return;
            }
        }
    }

    public static u a(v.a aVar, v vVar, e eVar, long j2, long j3) {
        u a2 = vVar.a(aVar, eVar, j2);
        if (j3 == -9223372036854775807L || j3 == Long.MIN_VALUE) {
            return a2;
        }
        c.e.a.a.j.n nVar = new c.e.a.a.j.n(a2, true, 0, j3);
        return nVar;
    }

    public static void a(long j2, v vVar, u uVar) {
        if (j2 == -9223372036854775807L || j2 == Long.MIN_VALUE) {
            vVar.a(uVar);
            return;
        }
        try {
            vVar.a(((c.e.a.a.j.n) uVar).f8952a);
        } catch (RuntimeException e2) {
            p.a("MediaPeriodHolder", "Period release failed.", e2);
        }
    }
}
