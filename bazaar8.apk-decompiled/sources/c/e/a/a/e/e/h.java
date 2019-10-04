package c.e.a.a.e.e;

import android.util.Pair;
import android.util.SparseArray;
import c.e.a.a.C0744q;
import c.e.a.a.e.e.c;
import c.e.a.a.e.g;
import c.e.a.a.e.i;
import c.e.a.a.e.j;
import c.e.a.a.e.n;
import c.e.a.a.e.o;
import c.e.a.a.e.q;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.F;
import c.e.a.a.o.I;
import c.e.a.a.o.p;
import c.e.a.a.o.t;
import c.e.a.a.o.v;
import com.crashlytics.android.answers.RetryManager;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/* compiled from: FragmentedMp4Extractor */
public class h implements g {

    /* renamed from: a  reason: collision with root package name */
    public static final j f7808a = a.f7751a;

    /* renamed from: b  reason: collision with root package name */
    public static final int f7809b = I.b("seig");

    /* renamed from: c  reason: collision with root package name */
    public static final byte[] f7810c = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};

    /* renamed from: d  reason: collision with root package name */
    public static final Format f7811d = Format.a(null, "application/x-emsg", Long.MAX_VALUE);
    public long A;
    public long B;
    public long C;
    public b D;
    public int E;
    public int F;
    public int G;
    public boolean H;
    public boolean I;
    public i J;
    public q[] K;
    public q[] L;
    public boolean M;

    /* renamed from: e  reason: collision with root package name */
    public final int f7812e;

    /* renamed from: f  reason: collision with root package name */
    public final n f7813f;

    /* renamed from: g  reason: collision with root package name */
    public final List<Format> f7814g;

    /* renamed from: h  reason: collision with root package name */
    public final DrmInitData f7815h;

    /* renamed from: i  reason: collision with root package name */
    public final SparseArray<b> f7816i;

    /* renamed from: j  reason: collision with root package name */
    public final v f7817j;

    /* renamed from: k  reason: collision with root package name */
    public final v f7818k;

    /* renamed from: l  reason: collision with root package name */
    public final v f7819l;
    public final byte[] m;
    public final v n;
    public final F o;
    public final v p;
    public final ArrayDeque<c.a> q;
    public final ArrayDeque<a> r;
    public final q s;
    public int t;
    public int u;
    public long v;
    public int w;
    public v x;
    public long y;
    public int z;

    /* compiled from: FragmentedMp4Extractor */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f7820a;

        /* renamed from: b  reason: collision with root package name */
        public final int f7821b;

        public a(long j2, int i2) {
            this.f7820a = j2;
            this.f7821b = i2;
        }
    }

    /* compiled from: FragmentedMp4Extractor */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final q f7822a;

        /* renamed from: b  reason: collision with root package name */
        public final p f7823b = new p();

        /* renamed from: c  reason: collision with root package name */
        public n f7824c;

        /* renamed from: d  reason: collision with root package name */
        public e f7825d;

        /* renamed from: e  reason: collision with root package name */
        public int f7826e;

        /* renamed from: f  reason: collision with root package name */
        public int f7827f;

        /* renamed from: g  reason: collision with root package name */
        public int f7828g;

        /* renamed from: h  reason: collision with root package name */
        public int f7829h;

        /* renamed from: i  reason: collision with root package name */
        public final v f7830i = new v(1);

        /* renamed from: j  reason: collision with root package name */
        public final v f7831j = new v();

        public b(q qVar) {
            this.f7822a = qVar;
        }

        public int c() {
            v vVar;
            int i2;
            o a2 = a();
            if (a2 == null) {
                return 0;
            }
            int i3 = a2.f7878d;
            if (i3 != 0) {
                int i4 = i3;
                vVar = this.f7823b.q;
                i2 = i4;
            } else {
                byte[] bArr = a2.f7879e;
                this.f7831j.a(bArr, bArr.length);
                vVar = this.f7831j;
                i2 = bArr.length;
            }
            boolean c2 = this.f7823b.c(this.f7826e);
            this.f7830i.f9634a[0] = (byte) ((c2 ? 128 : 0) | i2);
            this.f7830i.e(0);
            this.f7822a.a(this.f7830i, 1);
            this.f7822a.a(vVar, i2);
            if (!c2) {
                return i2 + 1;
            }
            v vVar2 = this.f7823b.q;
            int A = vVar2.A();
            vVar2.f(-2);
            int i5 = (A * 6) + 2;
            this.f7822a.a(vVar2, i5);
            return i2 + 1 + i5;
        }

        public void d() {
            this.f7823b.a();
            this.f7826e = 0;
            this.f7828g = 0;
            this.f7827f = 0;
            this.f7829h = 0;
        }

        public final void e() {
            o a2 = a();
            if (a2 != null) {
                v vVar = this.f7823b.q;
                int i2 = a2.f7878d;
                if (i2 != 0) {
                    vVar.f(i2);
                }
                if (this.f7823b.c(this.f7826e)) {
                    vVar.f(vVar.A() * 6);
                }
            }
        }

        public void a(n nVar, e eVar) {
            C0737e.a(nVar);
            this.f7824c = nVar;
            C0737e.a(eVar);
            this.f7825d = eVar;
            this.f7822a.a(nVar.f7869f);
            d();
        }

        public boolean b() {
            this.f7826e++;
            this.f7827f++;
            int i2 = this.f7827f;
            int[] iArr = this.f7823b.f7887h;
            int i3 = this.f7828g;
            if (i2 != iArr[i3]) {
                return true;
            }
            this.f7828g = i3 + 1;
            this.f7827f = 0;
            return false;
        }

        public void a(DrmInitData drmInitData) {
            o a2 = this.f7824c.a(this.f7823b.f7880a.f7798a);
            this.f7822a.a(this.f7824c.f7869f.a(drmInitData.a(a2 != null ? a2.f7876b : null)));
        }

        public void a(long j2) {
            long b2 = C0744q.b(j2);
            int i2 = this.f7826e;
            while (true) {
                p pVar = this.f7823b;
                if (i2 < pVar.f7885f && pVar.a(i2) < b2) {
                    if (this.f7823b.f7891l[i2]) {
                        this.f7829h = i2;
                    }
                    i2++;
                } else {
                    return;
                }
            }
        }

        public final o a() {
            p pVar = this.f7823b;
            int i2 = pVar.f7880a.f7798a;
            o oVar = pVar.o;
            if (oVar == null) {
                oVar = this.f7824c.a(i2);
            }
            if (oVar == null || !oVar.f7875a) {
                return null;
            }
            return oVar;
        }
    }

    public h() {
        this(0);
    }

    public static /* synthetic */ g[] c() {
        return new g[]{new h()};
    }

    public n a(n nVar) {
        return nVar;
    }

    public void a() {
    }

    public boolean a(c.e.a.a.e.h hVar) {
        return m.a(hVar);
    }

    public final void b() {
        this.t = 0;
        this.w = 0;
    }

    public final void d() {
        int i2;
        if (this.K == null) {
            this.K = new q[2];
            q qVar = this.s;
            if (qVar != null) {
                this.K[0] = qVar;
                i2 = 1;
            } else {
                i2 = 0;
            }
            if ((this.f7812e & 4) != 0) {
                this.K[i2] = this.J.a(this.f7816i.size(), 4);
                i2++;
            }
            this.K = (q[]) Arrays.copyOf(this.K, i2);
            for (q a2 : this.K) {
                a2.a(f7811d);
            }
        }
        if (this.L == null) {
            this.L = new q[this.f7814g.size()];
            for (int i3 = 0; i3 < this.L.length; i3++) {
                q a3 = this.J.a(this.f7816i.size() + 1 + i3, 3);
                a3.a(this.f7814g.get(i3));
                this.L[i3] = a3;
            }
        }
    }

    public final boolean e(c.e.a.a.e.h hVar) {
        q.a aVar;
        boolean z2;
        boolean z3;
        int i2;
        c.e.a.a.e.h hVar2 = hVar;
        int i3 = 4;
        int i4 = 1;
        int i5 = 0;
        if (this.t == 3) {
            if (this.D == null) {
                b a2 = a(this.f7816i);
                if (a2 == null) {
                    int position = (int) (this.y - hVar.getPosition());
                    if (position >= 0) {
                        hVar2.c(position);
                        b();
                        return false;
                    }
                    throw new ParserException("Offset to end of mdat was negative.");
                }
                int position2 = (int) (a2.f7823b.f7886g[a2.f7828g] - hVar.getPosition());
                if (position2 < 0) {
                    p.d("FragmentedMp4Extractor", "Ignoring negative offset to sample data.");
                    position2 = 0;
                }
                hVar2.c(position2);
                this.D = a2;
            }
            b bVar = this.D;
            int[] iArr = bVar.f7823b.f7888i;
            int i6 = bVar.f7826e;
            this.E = iArr[i6];
            if (i6 < bVar.f7829h) {
                hVar2.c(this.E);
                this.D.e();
                if (!this.D.b()) {
                    this.D = null;
                }
                this.t = 3;
                return true;
            }
            if (bVar.f7824c.f7870g == 1) {
                this.E -= 8;
                hVar2.c(8);
            }
            this.F = this.D.c();
            this.E += this.F;
            this.t = 4;
            this.G = 0;
            this.I = "audio/ac4".equals(this.D.f7824c.f7869f.f12514i);
        }
        b bVar2 = this.D;
        p pVar = bVar2.f7823b;
        n nVar = bVar2.f7824c;
        q qVar = bVar2.f7822a;
        int i7 = bVar2.f7826e;
        long a3 = pVar.a(i7) * 1000;
        F f2 = this.o;
        if (f2 != null) {
            a3 = f2.a(a3);
        }
        long j2 = a3;
        int i8 = nVar.f7873j;
        if (i8 == 0) {
            if (this.I) {
                c.e.a.a.b.j.a(this.E, this.n);
                int d2 = this.n.d();
                qVar.a(this.n, d2);
                this.E += d2;
                this.F += d2;
                z3 = false;
                this.I = false;
            } else {
                z3 = false;
            }
            while (true) {
                int i9 = this.F;
                int i10 = this.E;
                if (i9 >= i10) {
                    break;
                }
                this.F += qVar.a(hVar2, i10 - i9, z3);
            }
        } else {
            byte[] bArr = this.f7818k.f9634a;
            bArr[0] = 0;
            bArr[1] = 0;
            bArr[2] = 0;
            int i11 = i8 + 1;
            int i12 = 4 - i8;
            while (this.F < this.E) {
                int i13 = this.G;
                if (i13 == 0) {
                    hVar2.readFully(bArr, i12, i11);
                    this.f7818k.e(i5);
                    if (this.f7818k.i() >= i4) {
                        this.G = r3 - 1;
                        this.f7817j.e(i5);
                        qVar.a(this.f7817j, i3);
                        qVar.a(this.f7818k, i4);
                        this.H = this.L.length > 0 && t.a(nVar.f7869f.f12514i, bArr[i3]);
                        this.F += 5;
                        this.E += i12;
                    } else {
                        throw new ParserException("Invalid NAL length");
                    }
                } else {
                    if (this.H) {
                        this.f7819l.c(i13);
                        hVar2.readFully(this.f7819l.f9634a, i5, this.G);
                        qVar.a(this.f7819l, this.G);
                        i2 = this.G;
                        v vVar = this.f7819l;
                        int c2 = t.c(vVar.f9634a, vVar.d());
                        this.f7819l.e("video/hevc".equals(nVar.f7869f.f12514i) ? 1 : 0);
                        this.f7819l.d(c2);
                        c.e.a.a.k.a.h.a(j2, this.f7819l, this.L);
                    } else {
                        i2 = qVar.a(hVar2, i13, false);
                    }
                    this.F += i2;
                    this.G -= i2;
                    i3 = 4;
                    i4 = 1;
                    i5 = 0;
                }
            }
        }
        boolean z4 = pVar.f7891l[i7];
        o b2 = this.D.a();
        if (b2 != null) {
            z2 = z4 | true;
            aVar = b2.f7877c;
        } else {
            z2 = z4;
            aVar = null;
        }
        qVar.a(j2, z2 ? 1 : 0, this.E, 0, aVar);
        a(j2);
        if (!this.D.b()) {
            this.D = null;
        }
        this.t = 3;
        return true;
    }

    public h(int i2) {
        this(i2, null);
    }

    public void a(i iVar) {
        this.J = iVar;
        n nVar = this.f7813f;
        if (nVar != null) {
            b bVar = new b(iVar.a(0, nVar.f7865b));
            bVar.a(this.f7813f, new e(0, 0, 0, 0));
            this.f7816i.put(0, bVar);
            d();
            this.J.a();
        }
    }

    public final void c(c.e.a.a.e.h hVar) {
        int i2 = ((int) this.v) - this.w;
        v vVar = this.x;
        if (vVar != null) {
            hVar.readFully(vVar.f9634a, 8, i2);
            a(new c.b(this.u, this.x), hVar.getPosition());
        } else {
            hVar.c(i2);
        }
        b(hVar.getPosition());
    }

    public h(int i2, F f2) {
        this(i2, f2, null, null);
    }

    public final boolean b(c.e.a.a.e.h hVar) {
        if (this.w == 0) {
            if (!hVar.a(this.p.f9634a, 0, 8, true)) {
                return false;
            }
            this.w = 8;
            this.p.e(0);
            this.v = this.p.w();
            this.u = this.p.i();
        }
        long j2 = this.v;
        if (j2 == 1) {
            hVar.readFully(this.p.f9634a, 8, 8);
            this.w += 8;
            this.v = this.p.z();
        } else if (j2 == 0) {
            long length = hVar.getLength();
            if (length == -1 && !this.q.isEmpty()) {
                length = this.q.peek().gb;
            }
            if (length != -1) {
                this.v = (length - hVar.getPosition()) + ((long) this.w);
            }
        }
        if (this.v >= ((long) this.w)) {
            long position = hVar.getPosition() - ((long) this.w);
            if (this.u == c.X) {
                int size = this.f7816i.size();
                for (int i2 = 0; i2 < size; i2++) {
                    p pVar = this.f7816i.valueAt(i2).f7823b;
                    pVar.f7881b = position;
                    pVar.f7883d = position;
                    pVar.f7882c = position;
                }
            }
            int i3 = this.u;
            if (i3 == c.u) {
                this.D = null;
                this.y = this.v + position;
                if (!this.M) {
                    this.J.a(new o.b(this.B, position));
                    this.M = true;
                }
                this.t = 2;
                return true;
            }
            if (a(i3)) {
                long position2 = (hVar.getPosition() + this.v) - 8;
                this.q.push(new c.a(this.u, position2));
                if (this.v == ((long) this.w)) {
                    b(position2);
                } else {
                    b();
                }
            } else if (b(this.u)) {
                if (this.w == 8) {
                    long j3 = this.v;
                    if (j3 <= 2147483647L) {
                        this.x = new v((int) j3);
                        System.arraycopy(this.p.f9634a, 0, this.x.f9634a, 0, 8);
                        this.t = 1;
                    } else {
                        throw new ParserException("Leaf atom with length > 2147483647 (unsupported).");
                    }
                } else {
                    throw new ParserException("Leaf atom defines extended atom size (unsupported).");
                }
            } else if (this.v <= 2147483647L) {
                this.x = null;
                this.t = 1;
            } else {
                throw new ParserException("Skipping atom with length > 2147483647 (unsupported).");
            }
            return true;
        }
        throw new ParserException("Atom size less than header length (unsupported).");
    }

    public h(int i2, F f2, n nVar, DrmInitData drmInitData) {
        this(i2, f2, nVar, drmInitData, Collections.emptyList());
    }

    public h(int i2, F f2, n nVar, DrmInitData drmInitData, List<Format> list) {
        this(i2, f2, nVar, drmInitData, list, null);
    }

    public h(int i2, F f2, n nVar, DrmInitData drmInitData, List<Format> list, q qVar) {
        this.f7812e = i2 | (nVar != null ? 8 : 0);
        this.o = f2;
        this.f7813f = nVar;
        this.f7815h = drmInitData;
        this.f7814g = Collections.unmodifiableList(list);
        this.s = qVar;
        this.p = new v(16);
        this.f7817j = new v(t.f9611a);
        this.f7818k = new v(5);
        this.f7819l = new v();
        this.m = new byte[16];
        this.n = new v(this.m);
        this.q = new ArrayDeque<>();
        this.r = new ArrayDeque<>();
        this.f7816i = new SparseArray<>();
        this.B = -9223372036854775807L;
        this.A = -9223372036854775807L;
        this.C = -9223372036854775807L;
        b();
    }

    public final void c(c.a aVar) {
        int i2;
        int i3;
        c.a aVar2 = aVar;
        boolean z2 = true;
        int i4 = 0;
        C0737e.b(this.f7813f == null, "Unexpected moov box.");
        DrmInitData drmInitData = this.f7815h;
        if (drmInitData == null) {
            drmInitData = a(aVar2.hb);
        }
        c.a d2 = aVar2.d(c.Z);
        SparseArray sparseArray = new SparseArray();
        int size = d2.hb.size();
        long j2 = -9223372036854775807L;
        for (int i5 = 0; i5 < size; i5++) {
            c.b bVar = d2.hb.get(i5);
            int i6 = bVar.fb;
            if (i6 == c.N) {
                Pair<Integer, e> d3 = d(bVar.gb);
                sparseArray.put(((Integer) d3.first).intValue(), d3.second);
            } else if (i6 == c.aa) {
                j2 = b(bVar.gb);
            }
        }
        SparseArray sparseArray2 = new SparseArray();
        int size2 = aVar2.ib.size();
        int i7 = 0;
        while (i7 < size2) {
            c.a aVar3 = aVar2.ib.get(i7);
            if (aVar3.fb == c.S) {
                i2 = i7;
                i3 = size2;
                n a2 = d.a(aVar3, aVar2.e(c.R), j2, drmInitData, (this.f7812e & 16) != 0, false);
                a(a2);
                if (a2 != null) {
                    sparseArray2.put(a2.f7864a, a2);
                }
            } else {
                i2 = i7;
                i3 = size2;
            }
            i7 = i2 + 1;
            size2 = i3;
        }
        int size3 = sparseArray2.size();
        if (this.f7816i.size() == 0) {
            while (i4 < size3) {
                n nVar = (n) sparseArray2.valueAt(i4);
                b bVar2 = new b(this.J.a(i4, nVar.f7865b));
                bVar2.a(nVar, a((SparseArray<e>) sparseArray, nVar.f7864a));
                this.f7816i.put(nVar.f7864a, bVar2);
                this.B = Math.max(this.B, nVar.f7868e);
                i4++;
            }
            d();
            this.J.a();
            return;
        }
        if (this.f7816i.size() != size3) {
            z2 = false;
        }
        C0737e.b(z2);
        while (i4 < size3) {
            n nVar2 = (n) sparseArray2.valueAt(i4);
            this.f7816i.get(nVar2.f7864a).a(nVar2, a((SparseArray<e>) sparseArray, nVar2.f7864a));
            i4++;
        }
    }

    public void a(long j2, long j3) {
        int size = this.f7816i.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f7816i.valueAt(i2).d();
        }
        this.r.clear();
        this.z = 0;
        this.A = j3;
        this.q.clear();
        this.I = false;
        b();
    }

    public static Pair<Integer, e> d(v vVar) {
        vVar.e(12);
        return Pair.create(Integer.valueOf(vVar.i()), new e(vVar.y() - 1, vVar.y(), vVar.y(), vVar.i()));
    }

    public int a(c.e.a.a.e.h hVar, n nVar) {
        while (true) {
            int i2 = this.t;
            if (i2 != 0) {
                if (i2 == 1) {
                    c(hVar);
                } else if (i2 == 2) {
                    d(hVar);
                } else if (e(hVar)) {
                    return 0;
                }
            } else if (!b(hVar)) {
                return -1;
            }
        }
    }

    public final void a(c.b bVar, long j2) {
        if (!this.q.isEmpty()) {
            this.q.peek().a(bVar);
            return;
        }
        int i2 = bVar.fb;
        if (i2 == c.P) {
            Pair<Long, c.e.a.a.e.b> a2 = a(bVar.gb, j2);
            this.C = ((Long) a2.first).longValue();
            this.J.a((o) a2.second);
            this.M = true;
        } else if (i2 == c.Ua) {
            a(bVar.gb);
        }
    }

    public final void d(c.e.a.a.e.h hVar) {
        int size = this.f7816i.size();
        b bVar = null;
        long j2 = Long.MAX_VALUE;
        for (int i2 = 0; i2 < size; i2++) {
            p pVar = this.f7816i.valueAt(i2).f7823b;
            if (pVar.r) {
                long j3 = pVar.f7883d;
                if (j3 < j2) {
                    bVar = this.f7816i.valueAt(i2);
                    j2 = j3;
                }
            }
        }
        if (bVar == null) {
            this.t = 3;
            return;
        }
        int position = (int) (j2 - hVar.getPosition());
        if (position >= 0) {
            hVar.c(position);
            bVar.f7823b.a(hVar);
            return;
        }
        throw new ParserException("Offset to encryption data was negative.");
    }

    public final void a(c.a aVar) {
        int i2 = aVar.fb;
        if (i2 == c.Q) {
            c(aVar);
        } else if (i2 == c.X) {
            b(aVar);
        } else if (!this.q.isEmpty()) {
            this.q.peek().a(aVar);
        }
    }

    public final e a(SparseArray<e> sparseArray, int i2) {
        if (sparseArray.size() == 1) {
            return sparseArray.valueAt(0);
        }
        e eVar = sparseArray.get(i2);
        C0737e.a(eVar);
        return eVar;
    }

    public final void a(v vVar) {
        q[] qVarArr = this.K;
        if (qVarArr != null && qVarArr.length != 0) {
            vVar.e(12);
            int a2 = vVar.a();
            vVar.r();
            vVar.r();
            long c2 = I.c(vVar.w(), RetryManager.NANOSECONDS_IN_MS, vVar.w());
            int c3 = vVar.c();
            byte[] bArr = vVar.f9634a;
            bArr[c3 - 4] = 0;
            bArr[c3 - 3] = 0;
            bArr[c3 - 2] = 0;
            bArr[c3 - 1] = 0;
            for (q a3 : this.K) {
                vVar.e(12);
                a3.a(vVar, a2);
            }
            long j2 = this.C;
            if (j2 != -9223372036854775807L) {
                long j3 = j2 + c2;
                F f2 = this.o;
                long a4 = f2 != null ? f2.a(j3) : j3;
                for (q a5 : this.K) {
                    a5.a(a4, 1, a2, 0, null);
                }
                return;
            }
            this.r.addLast(new a(c2, a2));
            this.z += a2;
        }
    }

    public static long c(v vVar) {
        vVar.e(8);
        return c.c(vVar.i()) == 1 ? vVar.z() : vVar.w();
    }

    public final void b(long j2) {
        while (!this.q.isEmpty() && this.q.peek().gb == j2) {
            a(this.q.pop());
        }
        b();
    }

    public final void b(c.a aVar) {
        DrmInitData drmInitData;
        a(aVar, this.f7816i, this.f7812e, this.m);
        if (this.f7815h != null) {
            drmInitData = null;
        } else {
            drmInitData = a(aVar.hb);
        }
        if (drmInitData != null) {
            int size = this.f7816i.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f7816i.valueAt(i2).a(drmInitData);
            }
        }
        if (this.A != -9223372036854775807L) {
            int size2 = this.f7816i.size();
            for (int i3 = 0; i3 < size2; i3++) {
                this.f7816i.valueAt(i3).a(this.A);
            }
            this.A = -9223372036854775807L;
        }
    }

    public static void a(c.a aVar, SparseArray<b> sparseArray, int i2, byte[] bArr) {
        int size = aVar.ib.size();
        for (int i3 = 0; i3 < size; i3++) {
            c.a aVar2 = aVar.ib.get(i3);
            if (aVar2.fb == c.Y) {
                b(aVar2, sparseArray, i2, bArr);
            }
        }
    }

    public static long b(v vVar) {
        vVar.e(8);
        return c.c(vVar.i()) == 0 ? vVar.w() : vVar.z();
    }

    public static void a(c.a aVar, b bVar, long j2, int i2) {
        List<c.b> list = aVar.hb;
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            c.b bVar2 = list.get(i5);
            if (bVar2.fb == c.O) {
                v vVar = bVar2.gb;
                vVar.e(12);
                int y2 = vVar.y();
                if (y2 > 0) {
                    i4 += y2;
                    i3++;
                }
            }
        }
        bVar.f7828g = 0;
        bVar.f7827f = 0;
        bVar.f7826e = 0;
        bVar.f7823b.a(i3, i4);
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < size; i8++) {
            c.b bVar3 = list.get(i8);
            if (bVar3.fb == c.O) {
                i7 = a(bVar, i6, j2, i2, bVar3.gb, i7);
                i6++;
            }
        }
    }

    public static void b(c.a aVar, SparseArray<b> sparseArray, int i2, byte[] bArr) {
        b a2 = a(aVar.e(c.M).gb, sparseArray);
        if (a2 != null) {
            p pVar = a2.f7823b;
            long j2 = pVar.s;
            a2.d();
            if (aVar.e(c.L) != null && (i2 & 2) == 0) {
                j2 = c(aVar.e(c.L).gb);
            }
            a(aVar, a2, j2, i2);
            o a3 = a2.f7824c.a(pVar.f7880a.f7798a);
            c.b e2 = aVar.e(c.pa);
            if (e2 != null) {
                a(a3, e2.gb, pVar);
            }
            c.b e3 = aVar.e(c.qa);
            if (e3 != null) {
                a(e3.gb, pVar);
            }
            c.b e4 = aVar.e(c.ua);
            if (e4 != null) {
                b(e4.gb, pVar);
            }
            c.b e5 = aVar.e(c.ra);
            c.b e6 = aVar.e(c.sa);
            if (!(e5 == null || e6 == null)) {
                a(e5.gb, e6.gb, a3 != null ? a3.f7876b : null, pVar);
            }
            int size = aVar.hb.size();
            for (int i3 = 0; i3 < size; i3++) {
                c.b bVar = aVar.hb.get(i3);
                if (bVar.fb == c.ta) {
                    a(bVar.gb, pVar, bArr);
                }
            }
        }
    }

    public static void a(o oVar, v vVar, p pVar) {
        int i2;
        int i3 = oVar.f7878d;
        vVar.e(8);
        boolean z2 = true;
        if ((c.b(vVar.i()) & 1) == 1) {
            vVar.f(8);
        }
        int u2 = vVar.u();
        int y2 = vVar.y();
        if (y2 == pVar.f7885f) {
            if (u2 == 0) {
                boolean[] zArr = pVar.n;
                i2 = 0;
                for (int i4 = 0; i4 < y2; i4++) {
                    int u3 = vVar.u();
                    i2 += u3;
                    zArr[i4] = u3 > i3;
                }
            } else {
                if (u2 <= i3) {
                    z2 = false;
                }
                i2 = (u2 * y2) + 0;
                Arrays.fill(pVar.n, 0, y2, z2);
            }
            pVar.b(i2);
            return;
        }
        throw new ParserException("Length mismatch: " + y2 + ", " + pVar.f7885f);
    }

    public static b b(SparseArray<b> sparseArray, int i2) {
        if (sparseArray.size() == 1) {
            return sparseArray.valueAt(0);
        }
        return sparseArray.get(i2);
    }

    public static void b(v vVar, p pVar) {
        a(vVar, 0, pVar);
    }

    public static void a(v vVar, p pVar) {
        vVar.e(8);
        int i2 = vVar.i();
        if ((c.b(i2) & 1) == 1) {
            vVar.f(8);
        }
        if (vVar.y() == 1) {
            pVar.f7883d += c.c(i2) == 0 ? vVar.w() : vVar.z();
            return;
        }
        throw new ParserException("Unexpected saio entry count: " + r0);
    }

    public static boolean b(int i2) {
        return i2 == c.fa || i2 == c.ea || i2 == c.R || i2 == c.P || i2 == c.ga || i2 == c.L || i2 == c.M || i2 == c.ba || i2 == c.N || i2 == c.O || i2 == c.ha || i2 == c.pa || i2 == c.qa || i2 == c.ua || i2 == c.ta || i2 == c.ra || i2 == c.sa || i2 == c.da || i2 == c.aa || i2 == c.Ua;
    }

    public static b a(v vVar, SparseArray<b> sparseArray) {
        vVar.e(8);
        int b2 = c.b(vVar.i());
        b b3 = b(sparseArray, vVar.i());
        if (b3 == null) {
            return null;
        }
        if ((b2 & 1) != 0) {
            long z2 = vVar.z();
            p pVar = b3.f7823b;
            pVar.f7882c = z2;
            pVar.f7883d = z2;
        }
        e eVar = b3.f7825d;
        b3.f7823b.f7880a = new e((b2 & 2) != 0 ? vVar.y() - 1 : eVar.f7798a, (b2 & 8) != 0 ? vVar.y() : eVar.f7799b, (b2 & 16) != 0 ? vVar.y() : eVar.f7800c, (b2 & 32) != 0 ? vVar.y() : eVar.f7801d);
        return b3;
    }

    public static int a(b bVar, int i2, long j2, int i3, v vVar, int i4) {
        boolean[] zArr;
        long j3;
        long[] jArr;
        boolean z2;
        int i5;
        boolean z3;
        int i6;
        boolean z4;
        boolean z5;
        boolean z6;
        b bVar2 = bVar;
        vVar.e(8);
        int b2 = c.b(vVar.i());
        n nVar = bVar2.f7824c;
        p pVar = bVar2.f7823b;
        e eVar = pVar.f7880a;
        pVar.f7887h[i2] = vVar.y();
        long[] jArr2 = pVar.f7886g;
        jArr2[i2] = pVar.f7882c;
        if ((b2 & 1) != 0) {
            jArr2[i2] = jArr2[i2] + ((long) vVar.i());
        }
        boolean z7 = (b2 & 4) != 0;
        int i7 = eVar.f7801d;
        if (z7) {
            i7 = vVar.y();
        }
        boolean z8 = (b2 & 256) != 0;
        boolean z9 = (b2 & 512) != 0;
        boolean z10 = (b2 & 1024) != 0;
        boolean z11 = (b2 & 2048) != 0;
        long[] jArr3 = nVar.f7871h;
        long j4 = 0;
        if (jArr3 != null && jArr3.length == 1 && jArr3[0] == 0) {
            j4 = I.c(nVar.f7872i[0], 1000, nVar.f7866c);
        }
        int[] iArr = pVar.f7888i;
        int[] iArr2 = pVar.f7889j;
        long[] jArr4 = pVar.f7890k;
        boolean[] zArr2 = pVar.f7891l;
        int i8 = i7;
        boolean z12 = nVar.f7865b == 2 && (i3 & 1) != 0;
        int i9 = i4 + pVar.f7887h[i2];
        long j5 = j4;
        boolean[] zArr3 = zArr2;
        long j6 = nVar.f7866c;
        if (i2 > 0) {
            zArr = zArr3;
            jArr = jArr4;
            j3 = pVar.s;
        } else {
            zArr = zArr3;
            jArr = jArr4;
            j3 = j2;
        }
        long j7 = j3;
        int i10 = i4;
        while (i10 < i9) {
            int y2 = z8 ? vVar.y() : eVar.f7799b;
            if (z9) {
                z2 = z8;
                i5 = vVar.y();
            } else {
                z2 = z8;
                i5 = eVar.f7800c;
            }
            if (i10 == 0 && z7) {
                z3 = z7;
                i6 = i8;
            } else if (z10) {
                z3 = z7;
                i6 = vVar.i();
            } else {
                z3 = z7;
                i6 = eVar.f7801d;
            }
            if (z11) {
                z6 = z11;
                z5 = z9;
                z4 = z10;
                iArr2[i10] = (int) ((((long) vVar.i()) * 1000) / j6);
            } else {
                z6 = z11;
                z5 = z9;
                z4 = z10;
                iArr2[i10] = 0;
            }
            jArr[i10] = I.c(j7, 1000, j6) - j5;
            iArr[i10] = i5;
            zArr[i10] = ((i6 >> 16) & 1) == 0 && (!z12 || i10 == 0);
            i10++;
            j7 += (long) y2;
            z8 = z2;
            z7 = z3;
            z11 = z6;
            z9 = z5;
            z10 = z4;
            i9 = i9;
        }
        int i11 = i9;
        pVar.s = j7;
        return i11;
    }

    public static void a(v vVar, p pVar, byte[] bArr) {
        vVar.e(8);
        vVar.a(bArr, 0, 16);
        if (Arrays.equals(bArr, f7810c)) {
            a(vVar, 16, pVar);
        }
    }

    public static void a(v vVar, int i2, p pVar) {
        vVar.e(i2 + 8);
        int b2 = c.b(vVar.i());
        if ((b2 & 1) == 0) {
            boolean z2 = (b2 & 2) != 0;
            int y2 = vVar.y();
            if (y2 == pVar.f7885f) {
                Arrays.fill(pVar.n, 0, y2, z2);
                pVar.b(vVar.a());
                pVar.a(vVar);
                return;
            }
            throw new ParserException("Length mismatch: " + y2 + ", " + pVar.f7885f);
        }
        throw new ParserException("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    public static void a(v vVar, v vVar2, String str, p pVar) {
        byte[] bArr;
        vVar.e(8);
        int i2 = vVar.i();
        if (vVar.i() == f7809b) {
            if (c.c(i2) == 1) {
                vVar.f(4);
            }
            if (vVar.i() == 1) {
                vVar2.e(8);
                int i3 = vVar2.i();
                if (vVar2.i() == f7809b) {
                    int c2 = c.c(i3);
                    if (c2 == 1) {
                        if (vVar2.w() == 0) {
                            throw new ParserException("Variable length description in sgpd found (unsupported)");
                        }
                    } else if (c2 >= 2) {
                        vVar2.f(4);
                    }
                    if (vVar2.w() == 1) {
                        vVar2.f(1);
                        int u2 = vVar2.u();
                        int i4 = (u2 & 240) >> 4;
                        int i5 = u2 & 15;
                        boolean z2 = vVar2.u() == 1;
                        if (z2) {
                            int u3 = vVar2.u();
                            byte[] bArr2 = new byte[16];
                            vVar2.a(bArr2, 0, bArr2.length);
                            if (u3 == 0) {
                                int u4 = vVar2.u();
                                byte[] bArr3 = new byte[u4];
                                vVar2.a(bArr3, 0, u4);
                                bArr = bArr3;
                            } else {
                                bArr = null;
                            }
                            pVar.m = true;
                            o oVar = new o(z2, str, u3, bArr2, i4, i5, bArr);
                            pVar.o = oVar;
                            return;
                        }
                        return;
                    }
                    throw new ParserException("Entry count in sgpd != 1 (unsupported).");
                }
                return;
            }
            throw new ParserException("Entry count in sbgp != 1 (unsupported).");
        }
    }

    public static Pair<Long, c.e.a.a.e.b> a(v vVar, long j2) {
        long j3;
        long j4;
        v vVar2 = vVar;
        vVar2.e(8);
        int c2 = c.c(vVar.i());
        vVar2.f(4);
        long w2 = vVar.w();
        if (c2 == 0) {
            j4 = vVar.w();
            j3 = vVar.w();
        } else {
            j4 = vVar.z();
            j3 = vVar.z();
        }
        long j5 = j4;
        long j6 = j2 + j3;
        long c3 = I.c(j5, RetryManager.NANOSECONDS_IN_MS, w2);
        vVar2.f(2);
        int A2 = vVar.A();
        int[] iArr = new int[A2];
        long[] jArr = new long[A2];
        long[] jArr2 = new long[A2];
        long[] jArr3 = new long[A2];
        long j7 = j5;
        long j8 = c3;
        int i2 = 0;
        while (i2 < A2) {
            int i3 = vVar.i();
            if ((i3 & Integer.MIN_VALUE) == 0) {
                long w3 = vVar.w();
                iArr[i2] = i3 & Integer.MAX_VALUE;
                jArr[i2] = j6;
                jArr3[i2] = j8;
                j7 += w3;
                long[] jArr4 = jArr2;
                long[] jArr5 = jArr3;
                int i4 = A2;
                int[] iArr2 = iArr;
                j8 = I.c(j7, RetryManager.NANOSECONDS_IN_MS, w2);
                jArr4[i2] = j8 - jArr5[i2];
                vVar2.f(4);
                j6 += (long) iArr2[i2];
                i2++;
                iArr = iArr2;
                jArr3 = jArr5;
                jArr2 = jArr4;
                jArr = jArr;
                A2 = i4;
            } else {
                throw new ParserException("Unhandled indirect reference");
            }
        }
        return Pair.create(Long.valueOf(c3), new c.e.a.a.e.b(iArr, jArr, jArr2, jArr3));
    }

    public final void a(long j2) {
        while (!this.r.isEmpty()) {
            a removeFirst = this.r.removeFirst();
            this.z -= removeFirst.f7821b;
            long j3 = removeFirst.f7820a + j2;
            F f2 = this.o;
            if (f2 != null) {
                j3 = f2.a(j3);
            }
            for (q a2 : this.K) {
                a2.a(j3, 1, removeFirst.f7821b, this.z, null);
            }
        }
    }

    public static b a(SparseArray<b> sparseArray) {
        int size = sparseArray.size();
        b bVar = null;
        long j2 = Long.MAX_VALUE;
        for (int i2 = 0; i2 < size; i2++) {
            b valueAt = sparseArray.valueAt(i2);
            int i3 = valueAt.f7828g;
            p pVar = valueAt.f7823b;
            if (i3 != pVar.f7884e) {
                long j3 = pVar.f7886g[i3];
                if (j3 < j2) {
                    bVar = valueAt;
                    j2 = j3;
                }
            }
        }
        return bVar;
    }

    public static DrmInitData a(List<c.b> list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < size; i2++) {
            c.b bVar = list.get(i2);
            if (bVar.fb == c.ha) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArr = bVar.gb.f9634a;
                UUID b2 = l.b(bArr);
                if (b2 == null) {
                    p.d("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList.add(new DrmInitData.SchemeData(b2, "video/mp4", bArr));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData((List<DrmInitData.SchemeData>) arrayList);
    }

    public static boolean a(int i2) {
        return i2 == c.Q || i2 == c.S || i2 == c.T || i2 == c.U || i2 == c.V || i2 == c.X || i2 == c.Y || i2 == c.Z || i2 == c.ca;
    }
}
