package c.e.a.a.j.e;

import c.e.a.a.V;
import c.e.a.a.j.C;
import c.e.a.a.j.D;
import c.e.a.a.j.b.g;
import c.e.a.a.j.e.a.a;
import c.e.a.a.j.e.c;
import c.e.a.a.j.q;
import c.e.a.a.j.u;
import c.e.a.a.j.w;
import c.e.a.a.l.n;
import c.e.a.a.n.A;
import c.e.a.a.n.e;
import c.e.a.a.n.v;
import c.e.a.a.n.x;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import java.util.ArrayList;

/* compiled from: SsMediaPeriod */
public final class d implements u, D.a<g<c>> {

    /* renamed from: a  reason: collision with root package name */
    public final c.a f8898a;

    /* renamed from: b  reason: collision with root package name */
    public final A f8899b;

    /* renamed from: c  reason: collision with root package name */
    public final x f8900c;

    /* renamed from: d  reason: collision with root package name */
    public final v f8901d;

    /* renamed from: e  reason: collision with root package name */
    public final w.a f8902e;

    /* renamed from: f  reason: collision with root package name */
    public final e f8903f;

    /* renamed from: g  reason: collision with root package name */
    public final TrackGroupArray f8904g;

    /* renamed from: h  reason: collision with root package name */
    public final q f8905h;

    /* renamed from: i  reason: collision with root package name */
    public u.a f8906i;

    /* renamed from: j  reason: collision with root package name */
    public a f8907j;

    /* renamed from: k  reason: collision with root package name */
    public g<c>[] f8908k = a(0);

    /* renamed from: l  reason: collision with root package name */
    public D f8909l;
    public boolean m;

    public d(a aVar, c.a aVar2, A a2, q qVar, v vVar, w.a aVar3, x xVar, e eVar) {
        this.f8907j = aVar;
        this.f8898a = aVar2;
        this.f8899b = a2;
        this.f8900c = xVar;
        this.f8901d = vVar;
        this.f8902e = aVar3;
        this.f8903f = eVar;
        this.f8905h = qVar;
        this.f8904g = a(aVar);
        this.f8909l = qVar.a(this.f8908k);
        aVar3.a();
    }

    public void b(a aVar) {
        this.f8907j = aVar;
        for (g<c> i2 : this.f8908k) {
            i2.i().a(aVar);
        }
        this.f8906i.a(this);
    }

    public void c() {
        for (g<c> m2 : this.f8908k) {
            m2.m();
        }
        this.f8906i = null;
        this.f8902e.b();
    }

    public void d() {
        this.f8900c.a();
    }

    public long e() {
        if (!this.m) {
            this.f8902e.c();
            this.m = true;
        }
        return -9223372036854775807L;
    }

    public TrackGroupArray f() {
        return this.f8904g;
    }

    public long g() {
        return this.f8909l.g();
    }

    public void a(u.a aVar, long j2) {
        this.f8906i = aVar;
        aVar.a(this);
    }

    public long a(n[] nVarArr, boolean[] zArr, C[] cArr, boolean[] zArr2, long j2) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < nVarArr.length; i2++) {
            if (cArr[i2] != null) {
                g gVar = cArr[i2];
                if (nVarArr[i2] == null || !zArr[i2]) {
                    gVar.m();
                    cArr[i2] = null;
                } else {
                    arrayList.add(gVar);
                }
            }
            if (cArr[i2] == null && nVarArr[i2] != null) {
                g<c> a2 = a(nVarArr[i2], j2);
                arrayList.add(a2);
                cArr[i2] = a2;
                zArr2[i2] = true;
            }
        }
        this.f8908k = a(arrayList.size());
        arrayList.toArray(this.f8908k);
        this.f8909l = this.f8905h.a(this.f8908k);
        return j2;
    }

    public boolean b(long j2) {
        return this.f8909l.b(j2);
    }

    public void c(long j2) {
        this.f8909l.c(j2);
    }

    public long b() {
        return this.f8909l.b();
    }

    public void a(long j2, boolean z) {
        for (g<c> a2 : this.f8908k) {
            a2.a(j2, z);
        }
    }

    public long a(long j2) {
        for (g<c> a2 : this.f8908k) {
            a2.a(j2);
        }
        return j2;
    }

    public long a(long j2, V v) {
        for (g<c> gVar : this.f8908k) {
            if (gVar.f8485a == 2) {
                return gVar.a(j2, v);
            }
        }
        return j2;
    }

    public void a(g<c> gVar) {
        this.f8906i.a(this);
    }

    public final g<c> a(n nVar, long j2) {
        int a2 = this.f8904g.a(nVar.a());
        g gVar = new g(this.f8907j.f8869f[a2].f8875a, null, null, this.f8898a.a(this.f8900c, this.f8907j, a2, nVar, this.f8899b), this, this.f8903f, j2, this.f8901d, this.f8902e);
        return gVar;
    }

    public static TrackGroupArray a(a aVar) {
        TrackGroup[] trackGroupArr = new TrackGroup[aVar.f8869f.length];
        int i2 = 0;
        while (true) {
            a.b[] bVarArr = aVar.f8869f;
            if (i2 >= bVarArr.length) {
                return new TrackGroupArray(trackGroupArr);
            }
            trackGroupArr[i2] = new TrackGroup(bVarArr[i2].f8884j);
            i2++;
        }
    }

    public static g<c>[] a(int i2) {
        return new g[i2];
    }
}
