package c.e.a.a.j;

import android.net.Uri;
import android.os.Handler;
import c.e.a.a.E;
import c.e.a.a.V;
import c.e.a.a.e.g;
import c.e.a.a.e.h;
import c.e.a.a.e.i;
import c.e.a.a.e.n;
import c.e.a.a.e.o;
import c.e.a.a.e.q;
import c.e.a.a.j.B;
import c.e.a.a.j.t;
import c.e.a.a.j.u;
import c.e.a.a.j.w;
import c.e.a.a.n.j;
import c.e.a.a.n.l;
import c.e.a.a.n.v;
import c.e.a.a.n.z;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.C0741i;
import c.e.a.a.o.I;
import c.e.a.a.o.s;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.UnrecognizedInputFormatException;
import com.google.android.exoplayer2.upstream.Loader;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;

/* compiled from: ProgressiveMediaPeriod */
public final class y implements u, i, Loader.a<a>, Loader.e, B.b {

    /* renamed from: a  reason: collision with root package name */
    public static final Format f9008a = Format.a("icy", "application/x-icy", Long.MAX_VALUE);
    public boolean A;
    public boolean B;
    public int C;
    public long D;
    public long E;
    public long F;
    public long G;
    public boolean H;
    public int I;
    public boolean J;
    public boolean K;

    /* renamed from: b  reason: collision with root package name */
    public final Uri f9009b;

    /* renamed from: c  reason: collision with root package name */
    public final j f9010c;

    /* renamed from: d  reason: collision with root package name */
    public final v f9011d;

    /* renamed from: e  reason: collision with root package name */
    public final w.a f9012e;

    /* renamed from: f  reason: collision with root package name */
    public final c f9013f;

    /* renamed from: g  reason: collision with root package name */
    public final c.e.a.a.n.e f9014g;

    /* renamed from: h  reason: collision with root package name */
    public final String f9015h;

    /* renamed from: i  reason: collision with root package name */
    public final long f9016i;

    /* renamed from: j  reason: collision with root package name */
    public final Loader f9017j = new Loader("Loader:ProgressiveMediaPeriod");

    /* renamed from: k  reason: collision with root package name */
    public final b f9018k;

    /* renamed from: l  reason: collision with root package name */
    public final C0741i f9019l;
    public final Runnable m;
    public final Runnable n;
    public final Handler o;
    public u.a p;
    public o q;
    public IcyHeaders r;
    public B[] s;
    public f[] t;
    public boolean u;
    public boolean v;
    public d w;
    public boolean x;
    public int y;
    public boolean z;

    /* compiled from: ProgressiveMediaPeriod */
    final class a implements Loader.d, t.a {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f9020a;

        /* renamed from: b  reason: collision with root package name */
        public final z f9021b;

        /* renamed from: c  reason: collision with root package name */
        public final b f9022c;

        /* renamed from: d  reason: collision with root package name */
        public final i f9023d;

        /* renamed from: e  reason: collision with root package name */
        public final C0741i f9024e;

        /* renamed from: f  reason: collision with root package name */
        public final n f9025f = new n();

        /* renamed from: g  reason: collision with root package name */
        public volatile boolean f9026g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f9027h = true;

        /* renamed from: i  reason: collision with root package name */
        public long f9028i;

        /* renamed from: j  reason: collision with root package name */
        public l f9029j = a(0);

        /* renamed from: k  reason: collision with root package name */
        public long f9030k = -1;

        /* renamed from: l  reason: collision with root package name */
        public q f9031l;
        public boolean m;

        public a(Uri uri, j jVar, b bVar, i iVar, C0741i iVar2) {
            this.f9020a = uri;
            this.f9021b = new z(jVar);
            this.f9022c = bVar;
            this.f9023d = iVar;
            this.f9024e = iVar2;
        }

        public void b() {
            this.f9026g = true;
        }

        public void a() {
            int i2 = 0;
            while (i2 == 0 && !this.f9026g) {
                c.e.a.a.e.d dVar = null;
                try {
                    long j2 = this.f9025f.f8320a;
                    this.f9029j = a(j2);
                    this.f9030k = this.f9021b.a(this.f9029j);
                    if (this.f9030k != -1) {
                        this.f9030k += j2;
                    }
                    Uri uri = this.f9021b.getUri();
                    C0737e.a(uri);
                    Uri uri2 = uri;
                    IcyHeaders unused = y.this.r = IcyHeaders.a(this.f9021b.a());
                    j jVar = this.f9021b;
                    if (!(y.this.r == null || y.this.r.f12606f == -1)) {
                        jVar = new t(this.f9021b, y.this.r.f12606f, this);
                        this.f9031l = y.this.l();
                        this.f9031l.a(y.f9008a);
                    }
                    c.e.a.a.e.d dVar2 = new c.e.a.a.e.d(jVar, j2, this.f9030k);
                    try {
                        g a2 = this.f9022c.a(dVar2, this.f9023d, uri2);
                        if (this.f9027h) {
                            a2.a(j2, this.f9028i);
                            this.f9027h = false;
                        }
                        while (i2 == 0 && !this.f9026g) {
                            this.f9024e.a();
                            i2 = a2.a((h) dVar2, this.f9025f);
                            if (dVar2.getPosition() > y.this.f9016i + j2) {
                                j2 = dVar2.getPosition();
                                this.f9024e.b();
                                y.this.o.post(y.this.n);
                            }
                        }
                        if (i2 == 1) {
                            i2 = 0;
                        } else {
                            this.f9025f.f8320a = dVar2.getPosition();
                        }
                        I.a((j) this.f9021b);
                    } catch (Throwable th) {
                        th = th;
                        dVar = dVar2;
                        if (!(i2 == 1 || dVar == null)) {
                            this.f9025f.f8320a = dVar.getPosition();
                        }
                        I.a((j) this.f9021b);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    this.f9025f.f8320a = dVar.getPosition();
                    I.a((j) this.f9021b);
                    throw th;
                }
            }
        }

        public void a(c.e.a.a.o.v vVar) {
            long j2;
            if (!this.m) {
                j2 = this.f9028i;
            } else {
                j2 = Math.max(y.this.j(), this.f9028i);
            }
            long j3 = j2;
            int a2 = vVar.a();
            q qVar = this.f9031l;
            C0737e.a(qVar);
            q qVar2 = qVar;
            qVar2.a(vVar, a2);
            qVar2.a(j3, 1, a2, 0, null);
            this.m = true;
        }

        public final l a(long j2) {
            l lVar = new l(this.f9020a, j2, -1, y.this.f9015h, 22);
            return lVar;
        }

        public final void a(long j2, long j3) {
            this.f9025f.f8320a = j2;
            this.f9028i = j3;
            this.f9027h = true;
            this.m = false;
        }
    }

    /* compiled from: ProgressiveMediaPeriod */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final g[] f9032a;

        /* renamed from: b  reason: collision with root package name */
        public g f9033b;

        public b(g[] gVarArr) {
            this.f9032a = gVarArr;
        }

        public g a(h hVar, i iVar, Uri uri) {
            g gVar = this.f9033b;
            if (gVar != null) {
                return gVar;
            }
            g[] gVarArr = this.f9032a;
            int length = gVarArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                g gVar2 = gVarArr[i2];
                try {
                    if (gVar2.a(hVar)) {
                        this.f9033b = gVar2;
                        hVar.b();
                        break;
                    }
                    hVar.b();
                    i2++;
                } catch (EOFException unused) {
                } catch (Throwable th) {
                    hVar.b();
                    throw th;
                }
            }
            g gVar3 = this.f9033b;
            if (gVar3 != null) {
                gVar3.a(iVar);
                return this.f9033b;
            }
            throw new UnrecognizedInputFormatException("None of the available extractors (" + I.b((Object[]) this.f9032a) + ") could read the stream.", uri);
        }

        public void a() {
            g gVar = this.f9033b;
            if (gVar != null) {
                gVar.a();
                this.f9033b = null;
            }
        }
    }

    /* compiled from: ProgressiveMediaPeriod */
    interface c {
        void a(long j2, boolean z);
    }

    /* compiled from: ProgressiveMediaPeriod */
    private static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final o f9034a;

        /* renamed from: b  reason: collision with root package name */
        public final TrackGroupArray f9035b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean[] f9036c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean[] f9037d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean[] f9038e;

        public d(o oVar, TrackGroupArray trackGroupArray, boolean[] zArr) {
            this.f9034a = oVar;
            this.f9035b = trackGroupArray;
            this.f9036c = zArr;
            int i2 = trackGroupArray.f12699b;
            this.f9037d = new boolean[i2];
            this.f9038e = new boolean[i2];
        }
    }

    /* compiled from: ProgressiveMediaPeriod */
    private final class e implements C {

        /* renamed from: a  reason: collision with root package name */
        public final int f9039a;

        public e(int i2) {
            this.f9039a = i2;
        }

        public boolean c() {
            return y.this.a(this.f9039a);
        }

        public int d(long j2) {
            return y.this.a(this.f9039a, j2);
        }

        public void a() {
            y.this.p();
        }

        public int a(E e2, c.e.a.a.c.f fVar, boolean z) {
            return y.this.a(this.f9039a, e2, fVar, z);
        }
    }

    /* compiled from: ProgressiveMediaPeriod */
    private static final class f {

        /* renamed from: a  reason: collision with root package name */
        public final int f9041a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f9042b;

        public f(int i2, boolean z) {
            this.f9041a = i2;
            this.f9042b = z;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || f.class != obj.getClass()) {
                return false;
            }
            f fVar = (f) obj;
            if (!(this.f9041a == fVar.f9041a && this.f9042b == fVar.f9042b)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (this.f9041a * 31) + (this.f9042b ? 1 : 0);
        }
    }

    public y(Uri uri, j jVar, g[] gVarArr, v vVar, w.a aVar, c cVar, c.e.a.a.n.e eVar, String str, int i2) {
        this.f9009b = uri;
        this.f9010c = jVar;
        this.f9011d = vVar;
        this.f9012e = aVar;
        this.f9013f = cVar;
        this.f9014g = eVar;
        this.f9015h = str;
        this.f9016i = (long) i2;
        this.f9018k = new b(gVarArr);
        this.f9019l = new C0741i();
        this.m = new C0717b(this);
        this.n = new l(this);
        this.o = new Handler();
        this.t = new f[0];
        this.s = new B[0];
        this.G = -9223372036854775807L;
        this.E = -1;
        this.D = -9223372036854775807L;
        this.y = 1;
        aVar.a();
    }

    public void c(long j2) {
    }

    public long g() {
        long j2;
        boolean[] zArr = k().f9036c;
        if (this.J) {
            return Long.MIN_VALUE;
        }
        if (m()) {
            return this.G;
        }
        if (this.x) {
            int length = this.s.length;
            j2 = Long.MAX_VALUE;
            for (int i2 = 0; i2 < length; i2++) {
                if (zArr[i2] && !this.s[i2].k()) {
                    j2 = Math.min(j2, this.s[i2].f());
                }
            }
        } else {
            j2 = Long.MAX_VALUE;
        }
        if (j2 == Long.MAX_VALUE) {
            j2 = j();
        }
        if (j2 == Long.MIN_VALUE) {
            j2 = this.F;
        }
        return j2;
    }

    public void h() {
        for (B m2 : this.s) {
            m2.m();
        }
        this.f9018k.a();
    }

    public final int i() {
        int i2 = 0;
        for (B i3 : this.s) {
            i2 += i3.i();
        }
        return i2;
    }

    public final long j() {
        long j2 = Long.MIN_VALUE;
        for (B f2 : this.s) {
            j2 = Math.max(j2, f2.f());
        }
        return j2;
    }

    public final d k() {
        d dVar = this.w;
        C0737e.a(dVar);
        return dVar;
    }

    public q l() {
        return a(new f(0, true));
    }

    public final boolean m() {
        return this.G != -9223372036854775807L;
    }

    public /* synthetic */ void n() {
        if (!this.K) {
            u.a aVar = this.p;
            C0737e.a(aVar);
            aVar.a(this);
        }
    }

    public final void o() {
        Metadata metadata;
        o oVar = this.q;
        if (!this.K && !this.v && this.u && oVar != null) {
            B[] bArr = this.s;
            int length = bArr.length;
            int i2 = 0;
            while (i2 < length) {
                if (bArr[i2].h() != null) {
                    i2++;
                } else {
                    return;
                }
            }
            this.f9019l.b();
            int length2 = this.s.length;
            TrackGroup[] trackGroupArr = new TrackGroup[length2];
            boolean[] zArr = new boolean[length2];
            this.D = oVar.d();
            for (int i3 = 0; i3 < length2; i3++) {
                Format h2 = this.s[i3].h();
                String str = h2.f12514i;
                boolean j2 = s.j(str);
                boolean z2 = j2 || s.l(str);
                zArr[i3] = z2;
                this.x = z2 | this.x;
                IcyHeaders icyHeaders = this.r;
                if (icyHeaders != null) {
                    if (j2 || this.t[i3].f9042b) {
                        Metadata metadata2 = h2.f12512g;
                        if (metadata2 == null) {
                            metadata = new Metadata(icyHeaders);
                        } else {
                            metadata = metadata2.a(icyHeaders);
                        }
                        h2 = h2.a(metadata);
                    }
                    if (j2 && h2.f12510e == -1) {
                        int i4 = icyHeaders.f12601a;
                        if (i4 != -1) {
                            h2 = h2.a(i4);
                        }
                    }
                }
                trackGroupArr[i3] = new TrackGroup(h2);
            }
            this.y = (this.E == -1 && oVar.d() == -9223372036854775807L) ? 7 : 1;
            this.w = new d(oVar, new TrackGroupArray(trackGroupArr), zArr);
            this.v = true;
            this.f9013f.a(this.D, oVar.c());
            u.a aVar = this.p;
            C0737e.a(aVar);
            aVar.a(this);
        }
    }

    public void p() {
        this.f9017j.a(this.f9011d.a(this.y));
    }

    public void q() {
        if (this.v) {
            for (B b2 : this.s) {
                b2.b();
            }
        }
        this.f9017j.a((Loader.e) this);
        this.o.removeCallbacksAndMessages(null);
        this.p = null;
        this.K = true;
        this.f9012e.b();
    }

    public final void r() {
        a aVar = new a(this.f9009b, this.f9010c, this.f9018k, this, this.f9019l);
        if (this.v) {
            o oVar = k().f9034a;
            C0737e.b(m());
            long j2 = this.D;
            if (j2 == -9223372036854775807L || this.G < j2) {
                aVar.a(oVar.b(this.G).f8321a.f8327c, this.G);
                this.G = -9223372036854775807L;
            } else {
                this.J = true;
                this.G = -9223372036854775807L;
                return;
            }
        }
        this.I = i();
        this.f9012e.a(aVar.f9029j, 1, -1, (Format) null, 0, (Object) null, aVar.f9028i, this.D, this.f9017j.a(aVar, this, this.f9011d.a(this.y)));
    }

    public final boolean s() {
        return this.A || m();
    }

    public boolean b(long j2) {
        if (this.J || this.H || (this.v && this.C == 0)) {
            return false;
        }
        boolean c2 = this.f9019l.c();
        if (!this.f9017j.c()) {
            r();
            c2 = true;
        }
        return c2;
    }

    public void d() {
        p();
        if (this.J && !this.v) {
            throw new ParserException("Loading finished before preparation is complete.");
        }
    }

    public long e() {
        if (!this.B) {
            this.f9012e.c();
            this.B = true;
        }
        if (!this.A || (!this.J && i() <= this.I)) {
            return -9223372036854775807L;
        }
        this.A = false;
        return this.F;
    }

    public TrackGroupArray f() {
        return k().f9035b;
    }

    public final void c(int i2) {
        boolean[] zArr = k().f9036c;
        if (this.H && zArr[i2] && !this.s[i2].j()) {
            this.G = 0;
            this.H = false;
            this.A = true;
            this.F = 0;
            this.I = 0;
            for (B m2 : this.s) {
                m2.m();
            }
            u.a aVar = this.p;
            C0737e.a(aVar);
            aVar.a(this);
        }
    }

    public void a(u.a aVar, long j2) {
        this.p = aVar;
        this.f9019l.c();
        r();
    }

    public long b() {
        if (this.C == 0) {
            return Long.MIN_VALUE;
        }
        return g();
    }

    public final void b(int i2) {
        d k2 = k();
        boolean[] zArr = k2.f9038e;
        if (!zArr[i2]) {
            Format a2 = k2.f9035b.a(i2).a(0);
            this.f9012e.a(s.f(a2.f12514i), a2, 0, (Object) null, this.F);
            zArr[i2] = true;
        }
    }

    public long a(c.e.a.a.l.n[] nVarArr, boolean[] zArr, C[] cArr, boolean[] zArr2, long j2) {
        d k2 = k();
        TrackGroupArray trackGroupArray = k2.f9035b;
        boolean[] zArr3 = k2.f9037d;
        int i2 = this.C;
        int i3 = 0;
        for (int i4 = 0; i4 < nVarArr.length; i4++) {
            if (cArr[i4] != null && (nVarArr[i4] == null || !zArr[i4])) {
                int a2 = cArr[i4].f9039a;
                C0737e.b(zArr3[a2]);
                this.C--;
                zArr3[a2] = false;
                cArr[i4] = null;
            }
        }
        boolean z2 = !this.z ? j2 != 0 : i2 == 0;
        for (int i5 = 0; i5 < nVarArr.length; i5++) {
            if (cArr[i5] == null && nVarArr[i5] != null) {
                c.e.a.a.l.n nVar = nVarArr[i5];
                C0737e.b(nVar.length() == 1);
                C0737e.b(nVar.b(0) == 0);
                int a3 = trackGroupArray.a(nVar.a());
                C0737e.b(!zArr3[a3]);
                this.C++;
                zArr3[a3] = true;
                cArr[i5] = new e(a3);
                zArr2[i5] = true;
                if (!z2) {
                    B b2 = this.s[a3];
                    b2.n();
                    z2 = b2.a(j2, true, true) == -1 && b2.g() != 0;
                }
            }
        }
        if (this.C == 0) {
            this.H = false;
            this.A = false;
            if (this.f9017j.c()) {
                B[] bArr = this.s;
                int length = bArr.length;
                while (i3 < length) {
                    bArr[i3].b();
                    i3++;
                }
                this.f9017j.b();
            } else {
                B[] bArr2 = this.s;
                int length2 = bArr2.length;
                while (i3 < length2) {
                    bArr2[i3].m();
                    i3++;
                }
            }
        } else if (z2) {
            j2 = a(j2);
            while (i3 < cArr.length) {
                if (cArr[i3] != null) {
                    zArr2[i3] = true;
                }
                i3++;
            }
        }
        this.z = true;
        return j2;
    }

    public void a(long j2, boolean z2) {
        if (!m()) {
            boolean[] zArr = k().f9037d;
            int length = this.s.length;
            for (int i2 = 0; i2 < length; i2++) {
                this.s[i2].b(j2, z2, zArr[i2]);
            }
        }
    }

    public long a(long j2) {
        d k2 = k();
        o oVar = k2.f9034a;
        boolean[] zArr = k2.f9036c;
        if (!oVar.c()) {
            j2 = 0;
        }
        this.A = false;
        this.F = j2;
        if (m()) {
            this.G = j2;
            return j2;
        } else if (this.y != 7 && a(zArr, j2)) {
            return j2;
        } else {
            this.H = false;
            this.G = j2;
            this.J = false;
            if (this.f9017j.c()) {
                this.f9017j.b();
            } else {
                for (B m2 : this.s) {
                    m2.m();
                }
            }
            return j2;
        }
    }

    public long a(long j2, V v2) {
        o oVar = k().f9034a;
        if (!oVar.c()) {
            return 0;
        }
        o.a b2 = oVar.b(j2);
        return I.a(j2, v2, b2.f8321a.f8326b, b2.f8322b.f8326b);
    }

    public boolean a(int i2) {
        return !s() && (this.J || this.s[i2].j());
    }

    public int a(int i2, E e2, c.e.a.a.c.f fVar, boolean z2) {
        if (s()) {
            return -3;
        }
        b(i2);
        int a2 = this.s[i2].a(e2, fVar, z2, this.J, this.F);
        if (a2 == -3) {
            c(i2);
        }
        return a2;
    }

    public int a(int i2, long j2) {
        int i3 = 0;
        if (s()) {
            return 0;
        }
        b(i2);
        B b2 = this.s[i2];
        if (!this.J || j2 <= b2.f()) {
            int a2 = b2.a(j2, true, true);
            if (a2 != -1) {
                i3 = a2;
            }
        } else {
            i3 = b2.a();
        }
        if (i3 == 0) {
            c(i2);
        }
        return i3;
    }

    public void a(a aVar, long j2, long j3) {
        if (this.D == -9223372036854775807L) {
            o oVar = this.q;
            if (oVar != null) {
                boolean c2 = oVar.c();
                long j4 = j();
                this.D = j4 == Long.MIN_VALUE ? 0 : j4 + 10000;
                this.f9013f.a(this.D, c2);
            }
        }
        this.f9012e.b(aVar.f9029j, aVar.f9021b.c(), aVar.f9021b.d(), 1, -1, null, 0, null, aVar.f9028i, this.D, j2, j3, aVar.f9021b.b());
        a(aVar);
        this.J = true;
        u.a aVar2 = this.p;
        C0737e.a(aVar2);
        aVar2.a(this);
    }

    public void a(a aVar, long j2, long j3, boolean z2) {
        this.f9012e.a(aVar.f9029j, aVar.f9021b.c(), aVar.f9021b.d(), 1, -1, null, 0, null, aVar.f9028i, this.D, j2, j3, aVar.f9021b.b());
        if (!z2) {
            a(aVar);
            for (B m2 : this.s) {
                m2.m();
            }
            if (this.C > 0) {
                u.a aVar2 = this.p;
                C0737e.a(aVar2);
                aVar2.a(this);
            }
        }
    }

    public Loader.b a(a aVar, long j2, long j3, IOException iOException, int i2) {
        Loader.b bVar;
        boolean z2;
        a aVar2;
        a(aVar);
        long a2 = this.f9011d.a(this.y, j3, iOException, i2);
        if (a2 == -9223372036854775807L) {
            bVar = Loader.f12877d;
            a aVar3 = aVar;
        } else {
            int i3 = i();
            if (i3 > this.I) {
                aVar2 = aVar;
                z2 = true;
            } else {
                aVar2 = aVar;
                z2 = false;
            }
            bVar = a(aVar2, i3) ? Loader.a(z2, a2) : Loader.f12876c;
        }
        this.f9012e.a(aVar.f9029j, aVar.f9021b.c(), aVar.f9021b.d(), 1, -1, null, 0, null, aVar.f9028i, this.D, j2, j3, aVar.f9021b.b(), iOException, !bVar.a());
        return bVar;
    }

    public q a(int i2, int i3) {
        return a(new f(i2, false));
    }

    public void a() {
        this.u = true;
        this.o.post(this.m);
    }

    public void a(o oVar) {
        if (this.r != null) {
            oVar = new o.b(-9223372036854775807L);
        }
        this.q = oVar;
        this.o.post(this.m);
    }

    public void a(Format format) {
        this.o.post(this.m);
    }

    public final q a(f fVar) {
        int length = this.s.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (fVar.equals(this.t[i2])) {
                return this.s[i2];
            }
        }
        B b2 = new B(this.f9014g);
        b2.a((B.b) this);
        int i3 = length + 1;
        f[] fVarArr = (f[]) Arrays.copyOf(this.t, i3);
        fVarArr[length] = fVar;
        I.a((T[]) fVarArr);
        this.t = fVarArr;
        B[] bArr = (B[]) Arrays.copyOf(this.s, i3);
        bArr[length] = b2;
        I.a((T[]) bArr);
        this.s = bArr;
        return b2;
    }

    public final void a(a aVar) {
        if (this.E == -1) {
            this.E = aVar.f9030k;
        }
    }

    public final boolean a(a aVar, int i2) {
        if (this.E == -1) {
            o oVar = this.q;
            if (oVar == null || oVar.d() == -9223372036854775807L) {
                if (!this.v || s()) {
                    this.A = this.v;
                    this.F = 0;
                    this.I = 0;
                    for (B m2 : this.s) {
                        m2.m();
                    }
                    aVar.a(0, 0);
                    return true;
                }
                this.H = true;
                return false;
            }
        }
        this.I = i2;
        return true;
    }

    public final boolean a(boolean[] zArr, long j2) {
        int length = this.s.length;
        int i2 = 0;
        while (true) {
            boolean z2 = true;
            if (i2 >= length) {
                return true;
            }
            B b2 = this.s[i2];
            b2.n();
            if (b2.a(j2, true, false) == -1) {
                z2 = false;
            }
            if (z2 || (!zArr[i2] && this.x)) {
                i2++;
            }
        }
        return false;
    }
}
