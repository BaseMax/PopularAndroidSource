package c.e.a.a.e.e;

import c.e.a.a.e.e.c;
import c.e.a.a.e.g;
import c.e.a.a.e.h;
import c.e.a.a.e.i;
import c.e.a.a.e.j;
import c.e.a.a.e.n;
import c.e.a.a.e.o;
import c.e.a.a.e.p;
import c.e.a.a.e.q;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import c.e.a.a.o.t;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.Metadata;
import java.util.ArrayDeque;
import java.util.ArrayList;

/* compiled from: Mp4Extractor */
public final class k implements g, o {

    /* renamed from: a  reason: collision with root package name */
    public static final j f7844a = b.f7752a;

    /* renamed from: b  reason: collision with root package name */
    public static final int f7845b = I.b("qt  ");

    /* renamed from: c  reason: collision with root package name */
    public final int f7846c;

    /* renamed from: d  reason: collision with root package name */
    public final v f7847d;

    /* renamed from: e  reason: collision with root package name */
    public final v f7848e;

    /* renamed from: f  reason: collision with root package name */
    public final v f7849f;

    /* renamed from: g  reason: collision with root package name */
    public final v f7850g;

    /* renamed from: h  reason: collision with root package name */
    public final ArrayDeque<c.a> f7851h;

    /* renamed from: i  reason: collision with root package name */
    public int f7852i;

    /* renamed from: j  reason: collision with root package name */
    public int f7853j;

    /* renamed from: k  reason: collision with root package name */
    public long f7854k;

    /* renamed from: l  reason: collision with root package name */
    public int f7855l;
    public v m;
    public int n;
    public int o;
    public int p;
    public boolean q;
    public i r;
    public a[] s;
    public long[][] t;
    public int u;
    public long v;
    public boolean w;

    /* compiled from: Mp4Extractor */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final n f7856a;

        /* renamed from: b  reason: collision with root package name */
        public final q f7857b;

        /* renamed from: c  reason: collision with root package name */
        public final q f7858c;

        /* renamed from: d  reason: collision with root package name */
        public int f7859d;

        public a(n nVar, q qVar, q qVar2) {
            this.f7856a = nVar;
            this.f7857b = qVar;
            this.f7858c = qVar2;
        }
    }

    public k() {
        this(0);
    }

    public static /* synthetic */ g[] f() {
        return new g[]{new k()};
    }

    public void a() {
    }

    public boolean a(h hVar) {
        return m.b(hVar);
    }

    public o.a b(long j2) {
        long j3;
        long j4;
        long j5;
        long j6;
        a[] aVarArr = this.s;
        if (aVarArr.length == 0) {
            return new o.a(p.f8325a);
        }
        int i2 = this.u;
        if (i2 != -1) {
            q qVar = aVarArr[i2].f7857b;
            int a2 = a(qVar, j2);
            if (a2 == -1) {
                return new o.a(p.f8325a);
            }
            long j7 = qVar.f7897f[a2];
            j3 = qVar.f7894c[a2];
            if (j7 < j2 && a2 < qVar.f7893b - 1) {
                int b2 = qVar.b(j2);
                if (!(b2 == -1 || b2 == a2)) {
                    j5 = qVar.f7897f[b2];
                    j6 = qVar.f7894c[b2];
                    j4 = j6;
                    j2 = j7;
                }
            }
            j6 = -1;
            j5 = -9223372036854775807L;
            j4 = j6;
            j2 = j7;
        } else {
            j3 = Long.MAX_VALUE;
            j4 = -1;
            j5 = -9223372036854775807L;
        }
        int i3 = 0;
        while (true) {
            a[] aVarArr2 = this.s;
            if (i3 >= aVarArr2.length) {
                break;
            }
            if (i3 != this.u) {
                q qVar2 = aVarArr2[i3].f7857b;
                long a3 = a(qVar2, j2, j3);
                if (j5 != -9223372036854775807L) {
                    j4 = a(qVar2, j5, j4);
                }
                j3 = a3;
            }
            i3++;
        }
        p pVar = new p(j2, j3);
        if (j5 == -9223372036854775807L) {
            return new o.a(pVar);
        }
        return new o.a(pVar, new p(j5, j4));
    }

    public boolean c() {
        return true;
    }

    public final boolean c(h hVar) {
        if (this.f7855l == 0) {
            if (!hVar.a(this.f7850g.f9634a, 0, 8, true)) {
                return false;
            }
            this.f7855l = 8;
            this.f7850g.e(0);
            this.f7854k = this.f7850g.w();
            this.f7853j = this.f7850g.i();
        }
        long j2 = this.f7854k;
        if (j2 == 1) {
            hVar.readFully(this.f7850g.f9634a, 8, 8);
            this.f7855l += 8;
            this.f7854k = this.f7850g.z();
        } else if (j2 == 0) {
            long length = hVar.getLength();
            if (length == -1 && !this.f7851h.isEmpty()) {
                length = this.f7851h.peek().gb;
            }
            if (length != -1) {
                this.f7854k = (length - hVar.getPosition()) + ((long) this.f7855l);
            }
        }
        if (this.f7854k >= ((long) this.f7855l)) {
            if (a(this.f7853j)) {
                long position = (hVar.getPosition() + this.f7854k) - ((long) this.f7855l);
                this.f7851h.push(new c.a(this.f7853j, position));
                if (this.f7854k == ((long) this.f7855l)) {
                    d(position);
                } else {
                    if (this.f7853j == c.Oa) {
                        b(hVar);
                    }
                    e();
                }
            } else if (b(this.f7853j)) {
                C0737e.b(this.f7855l == 8);
                C0737e.b(this.f7854k <= 2147483647L);
                this.m = new v((int) this.f7854k);
                System.arraycopy(this.f7850g.f9634a, 0, this.m.f9634a, 0, 8);
                this.f7852i = 1;
            } else {
                this.m = null;
                this.f7852i = 1;
            }
            return true;
        }
        throw new ParserException("Atom size less than header length (unsupported).");
    }

    public long d() {
        return this.v;
    }

    public final void e() {
        this.f7852i = 0;
        this.f7855l = 0;
    }

    public k(int i2) {
        this.f7846c = i2;
        this.f7850g = new v(16);
        this.f7851h = new ArrayDeque<>();
        this.f7847d = new v(t.f9611a);
        this.f7848e = new v(4);
        this.f7849f = new v();
        this.n = -1;
    }

    public void a(i iVar) {
        this.r = iVar;
    }

    public final void d(long j2) {
        while (!this.f7851h.isEmpty() && this.f7851h.peek().gb == j2) {
            c.a pop = this.f7851h.pop();
            if (pop.fb == c.Q) {
                a(pop);
                this.f7851h.clear();
                this.f7852i = 2;
            } else if (!this.f7851h.isEmpty()) {
                this.f7851h.peek().a(pop);
            }
        }
        if (this.f7852i != 2) {
            e();
        }
    }

    public void a(long j2, long j3) {
        this.f7851h.clear();
        this.f7855l = 0;
        this.n = -1;
        this.o = 0;
        this.p = 0;
        this.q = false;
        if (j2 == 0) {
            e();
        } else if (this.s != null) {
            e(j3);
        }
    }

    public final void e(long j2) {
        for (a aVar : this.s) {
            q qVar = aVar.f7857b;
            int a2 = qVar.a(j2);
            if (a2 == -1) {
                a2 = qVar.b(j2);
            }
            aVar.f7859d = a2;
        }
    }

    public int a(h hVar, n nVar) {
        while (true) {
            int i2 = this.f7852i;
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 == 2) {
                        return c(hVar, nVar);
                    }
                    throw new IllegalStateException();
                } else if (b(hVar, nVar)) {
                    return 1;
                }
            } else if (!c(hVar)) {
                return -1;
            }
        }
    }

    public final void a(c.a aVar) {
        Metadata metadata;
        long j2;
        q qVar;
        c.a aVar2 = aVar;
        ArrayList arrayList = new ArrayList();
        c.e.a.a.e.k kVar = new c.e.a.a.e.k();
        c.b e2 = aVar2.e(c.Na);
        Metadata metadata2 = null;
        if (e2 != null) {
            metadata = d.a(e2, this.w);
            if (metadata != null) {
                kVar.a(metadata);
            }
        } else {
            metadata = null;
        }
        c.a d2 = aVar2.d(c.Oa);
        if (d2 != null) {
            metadata2 = d.b(d2);
        }
        ArrayList<q> a2 = a(aVar2, kVar, (this.f7846c & 1) != 0);
        int size = a2.size();
        long j3 = -9223372036854775807L;
        long j4 = -9223372036854775807L;
        int i2 = 0;
        int i3 = -1;
        while (i2 < size) {
            q qVar2 = a2.get(i2);
            n nVar = qVar2.f7892a;
            q qVar3 = qVar2;
            long j5 = nVar.f7868e;
            if (j5 != j3) {
                j2 = j5;
                qVar = qVar3;
            } else {
                qVar = qVar3;
                j2 = qVar.f7899h;
            }
            long max = Math.max(j4, j2);
            ArrayList<q> arrayList2 = a2;
            int i4 = size;
            a aVar3 = new a(nVar, qVar, this.r.a(i2, nVar.f7865b));
            Format b2 = nVar.f7869f.b(qVar.f7896e + 30);
            long j6 = max;
            if (nVar.f7865b == 2 && j2 > 0) {
                int i5 = qVar.f7893b;
                if (i5 > 1) {
                    b2 = b2.a(((float) i5) / (((float) j2) / 1000000.0f));
                }
            }
            aVar3.f7858c.a(j.a(nVar.f7865b, b2, metadata, metadata2, kVar));
            if (nVar.f7865b == 2) {
                if (i3 == -1) {
                    i3 = arrayList.size();
                }
            }
            arrayList.add(aVar3);
            i2++;
            a2 = arrayList2;
            size = i4;
            j4 = j6;
            j3 = -9223372036854775807L;
        }
        this.u = i3;
        this.v = j4;
        this.s = (a[]) arrayList.toArray(new a[0]);
        this.t = a(this.s);
        this.r.a();
        this.r.a(this);
    }

    public final boolean b(h hVar, n nVar) {
        boolean z;
        long j2 = this.f7854k - ((long) this.f7855l);
        long position = hVar.getPosition() + j2;
        v vVar = this.m;
        if (vVar != null) {
            hVar.readFully(vVar.f9634a, this.f7855l, (int) j2);
            if (this.f7853j == c.f7753a) {
                this.w = a(this.m);
            } else if (!this.f7851h.isEmpty()) {
                this.f7851h.peek().a(new c.b(this.f7853j, this.m));
            }
        } else if (j2 < 262144) {
            hVar.c((int) j2);
        } else {
            nVar.f8320a = hVar.getPosition() + j2;
            z = true;
            d(position);
            if (z || this.f7852i == 2) {
                return false;
            }
            return true;
        }
        z = false;
        d(position);
        if (z) {
        }
        return false;
    }

    public final int c(h hVar, n nVar) {
        long position = hVar.getPosition();
        if (this.n == -1) {
            this.n = c(position);
            int i2 = this.n;
            if (i2 == -1) {
                return -1;
            }
            this.q = "audio/ac4".equals(this.s[i2].f7856a.f7869f.f12514i);
        }
        a aVar = this.s[this.n];
        q qVar = aVar.f7858c;
        int i3 = aVar.f7859d;
        q qVar2 = aVar.f7857b;
        long j2 = qVar2.f7894c[i3];
        int i4 = qVar2.f7895d[i3];
        long j3 = (j2 - position) + ((long) this.o);
        if (j3 < 0 || j3 >= 262144) {
            nVar.f8320a = j2;
            return 1;
        }
        if (aVar.f7856a.f7870g == 1) {
            j3 += 8;
            i4 -= 8;
        }
        hVar.c((int) j3);
        int i5 = aVar.f7856a.f7873j;
        if (i5 == 0) {
            if (this.q) {
                c.e.a.a.b.j.a(i4, this.f7849f);
                int d2 = this.f7849f.d();
                qVar.a(this.f7849f, d2);
                i4 += d2;
                this.o += d2;
                this.q = false;
            }
            while (true) {
                int i6 = this.o;
                if (i6 >= i4) {
                    break;
                }
                int a2 = qVar.a(hVar, i4 - i6, false);
                this.o += a2;
                this.p -= a2;
            }
        } else {
            byte[] bArr = this.f7848e.f9634a;
            bArr[0] = 0;
            bArr[1] = 0;
            bArr[2] = 0;
            int i7 = 4 - i5;
            while (this.o < i4) {
                int i8 = this.p;
                if (i8 == 0) {
                    hVar.readFully(bArr, i7, i5);
                    this.f7848e.e(0);
                    int i9 = this.f7848e.i();
                    if (i9 >= 0) {
                        this.p = i9;
                        this.f7847d.e(0);
                        qVar.a(this.f7847d, 4);
                        this.o += 4;
                        i4 += i7;
                    } else {
                        throw new ParserException("Invalid NAL length");
                    }
                } else {
                    int a3 = qVar.a(hVar, i8, false);
                    this.o += a3;
                    this.p -= a3;
                }
            }
        }
        q qVar3 = aVar.f7857b;
        qVar.a(qVar3.f7897f[i3], qVar3.f7898g[i3], i4, 0, null);
        aVar.f7859d++;
        this.n = -1;
        this.o = 0;
        this.p = 0;
        return 0;
    }

    public final void b(h hVar) {
        this.f7849f.c(8);
        hVar.a(this.f7849f.f9634a, 0, 8);
        this.f7849f.f(4);
        if (this.f7849f.i() == c.fa) {
            hVar.b();
        } else {
            hVar.c(4);
        }
    }

    public static boolean b(int i2) {
        return i2 == c.ea || i2 == c.R || i2 == c.fa || i2 == c.ga || i2 == c.za || i2 == c.Aa || i2 == c.Ba || i2 == c.da || i2 == c.Ca || i2 == c.Da || i2 == c.Ea || i2 == c.Fa || i2 == c.Ga || i2 == c.ba || i2 == c.f7753a || i2 == c.Na || i2 == c.Pa || i2 == c.Qa;
    }

    public final ArrayList<q> a(c.a aVar, c.e.a.a.e.k kVar, boolean z) {
        ArrayList<q> arrayList = new ArrayList<>();
        for (int i2 = 0; i2 < aVar.ib.size(); i2++) {
            c.a aVar2 = aVar.ib.get(i2);
            if (aVar2.fb == c.S) {
                n a2 = d.a(aVar2, aVar.e(c.R), -9223372036854775807L, (DrmInitData) null, z, this.w);
                if (a2 != null) {
                    q a3 = d.a(a2, aVar2.d(c.T).d(c.U).d(c.V), kVar);
                    if (a3.f7893b != 0) {
                        arrayList.add(a3);
                    }
                }
            }
        }
        return arrayList;
    }

    public static long[][] a(a[] aVarArr) {
        long[][] jArr = new long[aVarArr.length][];
        int[] iArr = new int[aVarArr.length];
        long[] jArr2 = new long[aVarArr.length];
        boolean[] zArr = new boolean[aVarArr.length];
        for (int i2 = 0; i2 < aVarArr.length; i2++) {
            jArr[i2] = new long[aVarArr[i2].f7857b.f7893b];
            jArr2[i2] = aVarArr[i2].f7857b.f7897f[0];
        }
        long j2 = 0;
        int i3 = 0;
        while (i3 < aVarArr.length) {
            int i4 = -1;
            long j3 = Long.MAX_VALUE;
            for (int i5 = 0; i5 < aVarArr.length; i5++) {
                if (!zArr[i5] && jArr2[i5] <= j3) {
                    j3 = jArr2[i5];
                    i4 = i5;
                }
            }
            int i6 = iArr[i4];
            jArr[i4][i6] = j2;
            j2 += (long) aVarArr[i4].f7857b.f7895d[i6];
            int i7 = i6 + 1;
            iArr[i4] = i7;
            if (i7 < jArr[i4].length) {
                jArr2[i4] = aVarArr[i4].f7857b.f7897f[i7];
            } else {
                zArr[i4] = true;
                i3++;
            }
        }
        return jArr;
    }

    public static long a(q qVar, long j2, long j3) {
        int a2 = a(qVar, j2);
        if (a2 == -1) {
            return j3;
        }
        return Math.min(qVar.f7894c[a2], j3);
    }

    public final int c(long j2) {
        int i2 = 0;
        long j3 = Long.MAX_VALUE;
        boolean z = true;
        long j4 = Long.MAX_VALUE;
        int i3 = -1;
        int i4 = -1;
        boolean z2 = true;
        long j5 = Long.MAX_VALUE;
        while (true) {
            a[] aVarArr = this.s;
            if (i2 >= aVarArr.length) {
                break;
            }
            a aVar = aVarArr[i2];
            int i5 = aVar.f7859d;
            q qVar = aVar.f7857b;
            if (i5 != qVar.f7893b) {
                long j6 = qVar.f7894c[i5];
                long j7 = this.t[i2][i5];
                long j8 = j6 - j2;
                boolean z3 = j8 < 0 || j8 >= 262144;
                if ((!z3 && z2) || (z3 == z2 && j8 < j5)) {
                    z2 = z3;
                    i4 = i2;
                    j5 = j8;
                    j4 = j7;
                }
                if (j7 < j3) {
                    z = z3;
                    i3 = i2;
                    j3 = j7;
                }
            }
            i2++;
        }
        return (j3 == Long.MAX_VALUE || !z || j4 < j3 + 10485760) ? i4 : i3;
    }

    public static int a(q qVar, long j2) {
        int a2 = qVar.a(j2);
        return a2 == -1 ? qVar.b(j2) : a2;
    }

    public static boolean a(v vVar) {
        vVar.e(8);
        if (vVar.i() == f7845b) {
            return true;
        }
        vVar.f(4);
        while (vVar.a() > 0) {
            if (vVar.i() == f7845b) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(int i2) {
        return i2 == c.Q || i2 == c.S || i2 == c.T || i2 == c.U || i2 == c.V || i2 == c.ca || i2 == c.Oa;
    }
}
