package c.e.a.a.j;

import c.e.a.a.E;
import c.e.a.a.V;
import c.e.a.a.c.f;
import c.e.a.a.j.u;
import c.e.a.a.j.w;
import c.e.a.a.l.n;
import c.e.a.a.n.A;
import c.e.a.a.n.j;
import c.e.a.a.n.l;
import c.e.a.a.n.v;
import c.e.a.a.n.z;
import c.e.a.a.o.I;
import c.e.a.a.o.s;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.upstream.Loader;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: SingleSampleMediaPeriod */
public final class G implements u, Loader.a<b> {

    /* renamed from: a  reason: collision with root package name */
    public final l f8408a;

    /* renamed from: b  reason: collision with root package name */
    public final j.a f8409b;

    /* renamed from: c  reason: collision with root package name */
    public final A f8410c;

    /* renamed from: d  reason: collision with root package name */
    public final v f8411d;

    /* renamed from: e  reason: collision with root package name */
    public final w.a f8412e;

    /* renamed from: f  reason: collision with root package name */
    public final TrackGroupArray f8413f;

    /* renamed from: g  reason: collision with root package name */
    public final ArrayList<a> f8414g = new ArrayList<>();

    /* renamed from: h  reason: collision with root package name */
    public final long f8415h;

    /* renamed from: i  reason: collision with root package name */
    public final Loader f8416i = new Loader("Loader:SingleSampleMediaPeriod");

    /* renamed from: j  reason: collision with root package name */
    public final Format f8417j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f8418k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f8419l;
    public boolean m;
    public boolean n;
    public byte[] o;
    public int p;

    /* compiled from: SingleSampleMediaPeriod */
    private final class a implements C {

        /* renamed from: a  reason: collision with root package name */
        public int f8420a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f8421b;

        public a() {
        }

        public void a() {
            G g2 = G.this;
            if (!g2.f8418k) {
                g2.f8416i.a();
            }
        }

        public final void b() {
            if (!this.f8421b) {
                G.this.f8412e.a(s.f(G.this.f8417j.f12514i), G.this.f8417j, 0, (Object) null, 0);
                this.f8421b = true;
            }
        }

        public boolean c() {
            return G.this.m;
        }

        public void d() {
            if (this.f8420a == 2) {
                this.f8420a = 1;
            }
        }

        public int a(E e2, f fVar, boolean z) {
            b();
            int i2 = this.f8420a;
            if (i2 == 2) {
                fVar.b(4);
                return -4;
            } else if (z || i2 == 0) {
                e2.f7255a = G.this.f8417j;
                this.f8420a = 1;
                return -5;
            } else {
                G g2 = G.this;
                if (!g2.m) {
                    return -3;
                }
                if (g2.n) {
                    fVar.b(1);
                    fVar.f7546d = 0;
                    if (fVar.m()) {
                        return -4;
                    }
                    fVar.g(G.this.p);
                    ByteBuffer byteBuffer = fVar.f7545c;
                    G g3 = G.this;
                    byteBuffer.put(g3.o, 0, g3.p);
                } else {
                    fVar.b(4);
                }
                this.f8420a = 2;
                return -4;
            }
        }

        public int d(long j2) {
            b();
            if (j2 <= 0 || this.f8420a == 2) {
                return 0;
            }
            this.f8420a = 2;
            return 1;
        }
    }

    /* compiled from: SingleSampleMediaPeriod */
    static final class b implements Loader.d {

        /* renamed from: a  reason: collision with root package name */
        public final l f8423a;

        /* renamed from: b  reason: collision with root package name */
        public final z f8424b;

        /* renamed from: c  reason: collision with root package name */
        public byte[] f8425c;

        public b(l lVar, j jVar) {
            this.f8423a = lVar;
            this.f8424b = new z(jVar);
        }

        public void b() {
        }

        public void a() {
            this.f8424b.e();
            try {
                this.f8424b.a(this.f8423a);
                int i2 = 0;
                while (i2 != -1) {
                    int b2 = (int) this.f8424b.b();
                    if (this.f8425c == null) {
                        this.f8425c = new byte[1024];
                    } else if (b2 == this.f8425c.length) {
                        this.f8425c = Arrays.copyOf(this.f8425c, this.f8425c.length * 2);
                    }
                    i2 = this.f8424b.read(this.f8425c, b2, this.f8425c.length - b2);
                }
            } finally {
                I.a((j) this.f8424b);
            }
        }
    }

    public G(l lVar, j.a aVar, A a2, Format format, long j2, v vVar, w.a aVar2, boolean z) {
        this.f8408a = lVar;
        this.f8409b = aVar;
        this.f8410c = a2;
        this.f8417j = format;
        this.f8415h = j2;
        this.f8411d = vVar;
        this.f8412e = aVar2;
        this.f8418k = z;
        this.f8413f = new TrackGroupArray(new TrackGroup(format));
        aVar2.a();
    }

    public long a(long j2, V v) {
        return j2;
    }

    public void a(long j2, boolean z) {
    }

    public boolean b(long j2) {
        if (this.m || this.f8416i.c()) {
            return false;
        }
        j a2 = this.f8409b.a();
        A a3 = this.f8410c;
        if (a3 != null) {
            a2.a(a3);
        }
        this.f8412e.a(this.f8408a, 1, -1, this.f8417j, 0, (Object) null, 0, this.f8415h, this.f8416i.a(new b(this.f8408a, a2), this, this.f8411d.a(1)));
        return true;
    }

    public void c(long j2) {
    }

    public void d() {
    }

    public long e() {
        if (!this.f8419l) {
            this.f8412e.c();
            this.f8419l = true;
        }
        return -9223372036854775807L;
    }

    public TrackGroupArray f() {
        return this.f8413f;
    }

    public long g() {
        return this.m ? Long.MIN_VALUE : 0;
    }

    public void a() {
        this.f8416i.d();
        this.f8412e.b();
    }

    public void a(u.a aVar, long j2) {
        aVar.a(this);
    }

    public long a(n[] nVarArr, boolean[] zArr, C[] cArr, boolean[] zArr2, long j2) {
        for (int i2 = 0; i2 < nVarArr.length; i2++) {
            if (cArr[i2] != null && (nVarArr[i2] == null || !zArr[i2])) {
                this.f8414g.remove(cArr[i2]);
                cArr[i2] = null;
            }
            if (cArr[i2] == null && nVarArr[i2] != null) {
                a aVar = new a();
                this.f8414g.add(aVar);
                cArr[i2] = aVar;
                zArr2[i2] = true;
            }
        }
        return j2;
    }

    public long b() {
        return (this.m || this.f8416i.c()) ? Long.MIN_VALUE : 0;
    }

    public long a(long j2) {
        for (int i2 = 0; i2 < this.f8414g.size(); i2++) {
            this.f8414g.get(i2).d();
        }
        return j2;
    }

    public void a(b bVar, long j2, long j3) {
        this.p = (int) bVar.f8424b.b();
        this.o = bVar.f8425c;
        this.m = true;
        this.n = true;
        this.f8412e.b(bVar.f8423a, bVar.f8424b.c(), bVar.f8424b.d(), 1, -1, this.f8417j, 0, null, 0, this.f8415h, j2, j3, (long) this.p);
    }

    public void a(b bVar, long j2, long j3, boolean z) {
        this.f8412e.a(bVar.f8423a, bVar.f8424b.c(), bVar.f8424b.d(), 1, -1, null, 0, null, 0, this.f8415h, j2, j3, bVar.f8424b.b());
    }

    public Loader.b a(b bVar, long j2, long j3, IOException iOException, int i2) {
        Loader.b bVar2;
        long a2 = this.f8411d.a(1, j3, iOException, i2);
        boolean z = a2 == -9223372036854775807L || i2 >= this.f8411d.a(1);
        if (!this.f8418k || !z) {
            bVar2 = a2 != -9223372036854775807L ? Loader.a(false, a2) : Loader.f12877d;
        } else {
            this.m = true;
            bVar2 = Loader.f12876c;
        }
        this.f8412e.a(bVar.f8423a, bVar.f8424b.c(), bVar.f8424b.d(), 1, -1, this.f8417j, 0, null, 0, this.f8415h, j2, j3, bVar.f8424b.b(), iOException, !bVar2.a());
        return bVar2;
    }
}
