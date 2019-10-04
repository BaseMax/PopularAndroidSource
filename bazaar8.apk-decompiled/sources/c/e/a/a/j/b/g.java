package c.e.a.a.j.b;

import c.e.a.a.E;
import c.e.a.a.V;
import c.e.a.a.c.f;
import c.e.a.a.j.B;
import c.e.a.a.j.C;
import c.e.a.a.j.D;
import c.e.a.a.j.b.h;
import c.e.a.a.j.w;
import c.e.a.a.n.e;
import c.e.a.a.n.v;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import c.e.a.a.o.p;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.upstream.Loader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: ChunkSampleStream */
public class g<T extends h> implements C, D, Loader.a<d>, Loader.e {

    /* renamed from: a  reason: collision with root package name */
    public final int f8485a;

    /* renamed from: b  reason: collision with root package name */
    public final int[] f8486b;

    /* renamed from: c  reason: collision with root package name */
    public final Format[] f8487c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean[] f8488d;

    /* renamed from: e  reason: collision with root package name */
    public final T f8489e;

    /* renamed from: f  reason: collision with root package name */
    public final D.a<g<T>> f8490f;

    /* renamed from: g  reason: collision with root package name */
    public final w.a f8491g;

    /* renamed from: h  reason: collision with root package name */
    public final v f8492h;

    /* renamed from: i  reason: collision with root package name */
    public final Loader f8493i = new Loader("Loader:ChunkSampleStream");

    /* renamed from: j  reason: collision with root package name */
    public final f f8494j = new f();

    /* renamed from: k  reason: collision with root package name */
    public final ArrayList<a> f8495k = new ArrayList<>();

    /* renamed from: l  reason: collision with root package name */
    public final List<a> f8496l = Collections.unmodifiableList(this.f8495k);
    public final B m;
    public final B[] n;
    public final c o;
    public Format p;
    public b<T> q;
    public long r;
    public long s;
    public int t;
    public long u;
    public boolean v;

    /* compiled from: ChunkSampleStream */
    public final class a implements C {

        /* renamed from: a  reason: collision with root package name */
        public final g<T> f8497a;

        /* renamed from: b  reason: collision with root package name */
        public final B f8498b;

        /* renamed from: c  reason: collision with root package name */
        public final int f8499c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f8500d;

        public a(g<T> gVar, B b2, int i2) {
            this.f8497a = gVar;
            this.f8498b = b2;
            this.f8499c = i2;
        }

        public int a(E e2, f fVar, boolean z) {
            if (g.this.k()) {
                return -3;
            }
            b();
            B b2 = this.f8498b;
            g gVar = g.this;
            return b2.a(e2, fVar, z, gVar.v, gVar.u);
        }

        public void a() {
        }

        public final void b() {
            if (!this.f8500d) {
                g.this.f8491g.a(g.this.f8486b[this.f8499c], g.this.f8487c[this.f8499c], 0, (Object) null, g.this.s);
                this.f8500d = true;
            }
        }

        public boolean c() {
            g gVar = g.this;
            return gVar.v || (!gVar.k() && this.f8498b.j());
        }

        public int d(long j2) {
            int i2 = 0;
            if (g.this.k()) {
                return 0;
            }
            b();
            if (!g.this.v || j2 <= this.f8498b.f()) {
                int a2 = this.f8498b.a(j2, true, true);
                if (a2 != -1) {
                    i2 = a2;
                }
            } else {
                i2 = this.f8498b.a();
            }
            return i2;
        }

        public void d() {
            C0737e.b(g.this.f8488d[this.f8499c]);
            g.this.f8488d[this.f8499c] = false;
        }
    }

    /* compiled from: ChunkSampleStream */
    public interface b<T extends h> {
        void a(g<T> gVar);
    }

    public g(int i2, int[] iArr, Format[] formatArr, T t2, D.a<g<T>> aVar, e eVar, long j2, v vVar, w.a aVar2) {
        int i3;
        this.f8485a = i2;
        this.f8486b = iArr;
        this.f8487c = formatArr;
        this.f8489e = t2;
        this.f8490f = aVar;
        this.f8491g = aVar2;
        this.f8492h = vVar;
        int i4 = 0;
        if (iArr == null) {
            i3 = 0;
        } else {
            i3 = iArr.length;
        }
        this.n = new B[i3];
        this.f8488d = new boolean[i3];
        int i5 = i3 + 1;
        int[] iArr2 = new int[i5];
        B[] bArr = new B[i5];
        this.m = new B(eVar);
        iArr2[0] = i2;
        bArr[0] = this.m;
        while (i4 < i3) {
            B b2 = new B(eVar);
            this.n[i4] = b2;
            int i6 = i4 + 1;
            bArr[i6] = b2;
            iArr2[i6] = iArr[i4];
            i4 = i6;
        }
        this.o = new c(iArr2, bArr);
        this.r = j2;
        this.s = j2;
    }

    public long g() {
        if (this.v) {
            return Long.MIN_VALUE;
        }
        if (k()) {
            return this.r;
        }
        long j2 = this.s;
        a j3 = j();
        if (!j3.h()) {
            if (this.f8495k.size() > 1) {
                ArrayList<a> arrayList = this.f8495k;
                j3 = arrayList.get(arrayList.size() - 2);
            } else {
                j3 = null;
            }
        }
        if (j3 != null) {
            j2 = Math.max(j2, j3.f8465g);
        }
        return Math.max(j2, this.m.f());
    }

    public void h() {
        this.m.m();
        for (B m2 : this.n) {
            m2.m();
        }
        b<T> bVar = this.q;
        if (bVar != null) {
            bVar.a(this);
        }
    }

    public T i() {
        return this.f8489e;
    }

    public final a j() {
        ArrayList<a> arrayList = this.f8495k;
        return arrayList.get(arrayList.size() - 1);
    }

    public boolean k() {
        return this.r != -9223372036854775807L;
    }

    public final void l() {
        int a2 = a(this.m.g(), this.t - 1);
        while (true) {
            int i2 = this.t;
            if (i2 <= a2) {
                this.t = i2 + 1;
                d(i2);
            } else {
                return;
            }
        }
    }

    public void m() {
        a((b) null);
    }

    public boolean b(long j2) {
        long j3;
        List<a> list;
        long j4;
        boolean z = false;
        if (this.v || this.f8493i.c()) {
            return false;
        }
        boolean k2 = k();
        if (k2) {
            list = Collections.emptyList();
            j3 = this.r;
        } else {
            list = this.f8496l;
            j3 = j().f8465g;
        }
        T t2 = this.f8489e;
        long j5 = j2;
        t2.a(j5, j3, (List<? extends l>) list, this.f8494j);
        f fVar = this.f8494j;
        boolean z2 = fVar.f8484b;
        d dVar = fVar.f8483a;
        fVar.a();
        if (z2) {
            this.r = -9223372036854775807L;
            this.v = true;
            return true;
        } else if (dVar == null) {
            return false;
        } else {
            if (a(dVar)) {
                a aVar = (a) dVar;
                if (k2) {
                    if (aVar.f8464f == this.r) {
                        z = true;
                    }
                    if (z) {
                        j4 = 0;
                    } else {
                        j4 = this.r;
                    }
                    this.u = j4;
                    this.r = -9223372036854775807L;
                }
                aVar.a(this.o);
                this.f8495k.add(aVar);
            }
            this.f8491g.a(dVar.f8459a, dVar.f8460b, this.f8485a, dVar.f8461c, dVar.f8462d, dVar.f8463e, dVar.f8464f, dVar.f8465g, this.f8493i.a(dVar, this, this.f8492h.a(dVar.f8460b)));
            return true;
        }
    }

    public boolean c() {
        return this.v || (!k() && this.m.j());
    }

    public int d(long j2) {
        int i2 = 0;
        if (k()) {
            return 0;
        }
        if (!this.v || j2 <= this.m.f()) {
            int a2 = this.m.a(j2, true, true);
            if (a2 != -1) {
                i2 = a2;
            }
        } else {
            i2 = this.m.a();
        }
        l();
        return i2;
    }

    public void c(long j2) {
        if (!this.f8493i.c() && !k()) {
            int size = this.f8495k.size();
            int a2 = this.f8489e.a(j2, (List<? extends l>) this.f8496l);
            if (size > a2) {
                while (true) {
                    if (a2 >= size) {
                        a2 = size;
                        break;
                    } else if (!c(a2)) {
                        break;
                    } else {
                        a2++;
                    }
                }
                if (a2 != size) {
                    long j3 = j().f8465g;
                    a b2 = b(a2);
                    if (this.f8495k.isEmpty()) {
                        this.r = this.s;
                    }
                    this.v = false;
                    this.f8491g.a(this.f8485a, b2.f8464f, j3);
                }
            }
        }
    }

    public void a(long j2, boolean z) {
        if (!k()) {
            int d2 = this.m.d();
            this.m.b(j2, z, true);
            int d3 = this.m.d();
            if (d3 > d2) {
                long e2 = this.m.e();
                int i2 = 0;
                while (true) {
                    B[] bArr = this.n;
                    if (i2 >= bArr.length) {
                        break;
                    }
                    bArr[i2].b(e2, z, this.f8488d[i2]);
                    i2++;
                }
            }
            a(d3);
        }
    }

    public final void d(int i2) {
        a aVar = this.f8495k.get(i2);
        Format format = aVar.f8461c;
        if (!format.equals(this.p)) {
            this.f8491g.a(this.f8485a, format, aVar.f8462d, aVar.f8463e, aVar.f8464f);
        }
        this.p = format;
    }

    public g<T>.defpackage.a a(long j2, int i2) {
        for (int i3 = 0; i3 < this.n.length; i3++) {
            if (this.f8486b[i3] == i2) {
                C0737e.b(!this.f8488d[i3]);
                this.f8488d[i3] = true;
                this.n[i3].n();
                this.n[i3].a(j2, true, true);
                return new a(this, this.n[i3], i3);
            }
        }
        throw new IllegalStateException();
    }

    public final boolean c(int i2) {
        int g2;
        a aVar = this.f8495k.get(i2);
        if (this.m.g() > aVar.a(0)) {
            return true;
        }
        int i3 = 0;
        do {
            B[] bArr = this.n;
            if (i3 >= bArr.length) {
                return false;
            }
            g2 = bArr[i3].g();
            i3++;
        } while (g2 <= aVar.a(i3));
        return true;
    }

    public long a(long j2, V v2) {
        return this.f8489e.a(j2, v2);
    }

    public void a(long j2) {
        boolean z;
        this.s = j2;
        if (k()) {
            this.r = j2;
            return;
        }
        a aVar = null;
        int i2 = 0;
        while (true) {
            if (i2 >= this.f8495k.size()) {
                break;
            }
            a aVar2 = this.f8495k.get(i2);
            long j3 = aVar2.f8464f;
            if (j3 == j2 && aVar2.f8451j == -9223372036854775807L) {
                aVar = aVar2;
                break;
            } else if (j3 > j2) {
                break;
            } else {
                i2++;
            }
        }
        this.m.n();
        if (aVar != null) {
            z = this.m.d(aVar.a(0));
            this.u = 0;
        } else {
            z = this.m.a(j2, true, (j2 > b() ? 1 : (j2 == b() ? 0 : -1)) < 0) != -1;
            this.u = this.s;
        }
        if (z) {
            this.t = a(this.m.g(), 0);
            for (B b2 : this.n) {
                b2.n();
                b2.a(j2, true, false);
            }
        } else {
            this.r = j2;
            this.v = false;
            this.f8495k.clear();
            this.t = 0;
            if (this.f8493i.c()) {
                this.f8493i.b();
            } else {
                this.m.m();
                for (B m2 : this.n) {
                    m2.m();
                }
            }
        }
    }

    public long b() {
        if (k()) {
            return this.r;
        }
        return this.v ? Long.MIN_VALUE : j().f8465g;
    }

    public final a b(int i2) {
        a aVar = this.f8495k.get(i2);
        ArrayList<a> arrayList = this.f8495k;
        I.a(arrayList, i2, arrayList.size());
        this.t = Math.max(this.t, this.f8495k.size());
        int i3 = 0;
        this.m.a(aVar.a(0));
        while (true) {
            B[] bArr = this.n;
            if (i3 >= bArr.length) {
                return aVar;
            }
            B b2 = bArr[i3];
            i3++;
            b2.a(aVar.a(i3));
        }
    }

    public void a(b<T> bVar) {
        this.q = bVar;
        this.m.b();
        for (B b2 : this.n) {
            b2.b();
        }
        this.f8493i.a((Loader.e) this);
    }

    public void a() {
        this.f8493i.a();
        if (!this.f8493i.c()) {
            this.f8489e.a();
        }
    }

    public int a(E e2, f fVar, boolean z) {
        if (k()) {
            return -3;
        }
        l();
        return this.m.a(e2, fVar, z, this.v, this.u);
    }

    public void a(d dVar, long j2, long j3) {
        d dVar2 = dVar;
        this.f8489e.a(dVar2);
        this.f8491g.b(dVar2.f8459a, dVar.f(), dVar.e(), dVar2.f8460b, this.f8485a, dVar2.f8461c, dVar2.f8462d, dVar2.f8463e, dVar2.f8464f, dVar2.f8465g, j2, j3, dVar.c());
        this.f8490f.a(this);
    }

    public void a(d dVar, long j2, long j3, boolean z) {
        d dVar2 = dVar;
        this.f8491g.a(dVar2.f8459a, dVar.f(), dVar.e(), dVar2.f8460b, this.f8485a, dVar2.f8461c, dVar2.f8462d, dVar2.f8463e, dVar2.f8464f, dVar2.f8465g, j2, j3, dVar.c());
        if (!z) {
            this.m.m();
            for (B m2 : this.n) {
                m2.m();
            }
            this.f8490f.a(this);
        }
    }

    public Loader.b a(d dVar, long j2, long j3, IOException iOException, int i2) {
        d dVar2 = dVar;
        long c2 = dVar.c();
        boolean a2 = a(dVar);
        int size = this.f8495k.size() - 1;
        boolean z = c2 == 0 || !a2 || !c(size);
        Loader.b bVar = null;
        if (this.f8489e.a(dVar, z, (Exception) iOException, z ? this.f8492h.b(dVar2.f8460b, j3, iOException, i2) : -9223372036854775807L)) {
            if (z) {
                bVar = Loader.f12876c;
                if (a2) {
                    C0737e.b(b(size) == dVar2);
                    if (this.f8495k.isEmpty()) {
                        this.r = this.s;
                    }
                }
            } else {
                p.d("ChunkSampleStream", "Ignoring attempt to cancel non-cancelable load.");
            }
        }
        if (bVar == null) {
            long a3 = this.f8492h.a(dVar2.f8460b, j3, iOException, i2);
            bVar = a3 != -9223372036854775807L ? Loader.a(false, a3) : Loader.f12877d;
        }
        Loader.b bVar2 = bVar;
        boolean z2 = !bVar2.a();
        this.f8491g.a(dVar2.f8459a, dVar.f(), dVar.e(), dVar2.f8460b, this.f8485a, dVar2.f8461c, dVar2.f8462d, dVar2.f8463e, dVar2.f8464f, dVar2.f8465g, j2, j3, c2, iOException, z2);
        if (z2) {
            this.f8490f.a(this);
        }
        return bVar2;
    }

    public final boolean a(d dVar) {
        return dVar instanceof a;
    }

    public final void a(int i2) {
        int min = Math.min(a(i2, 0), this.t);
        if (min > 0) {
            I.a(this.f8495k, 0, min);
            this.t -= min;
        }
    }

    public final int a(int i2, int i3) {
        do {
            i3++;
            if (i3 >= this.f8495k.size()) {
                return this.f8495k.size() - 1;
            }
        } while (this.f8495k.get(i3).a(0) <= i2);
        return i3 - 1;
    }
}
