package c.e.a.a.e.h;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import c.e.a.a.e.a;
import c.e.a.a.e.g;
import c.e.a.a.e.h;
import c.e.a.a.e.h.J;
import c.e.a.a.e.i;
import c.e.a.a.e.j;
import c.e.a.a.e.n;
import c.e.a.a.e.o;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.F;
import c.e.a.a.o.u;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.ParserException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: TsExtractor */
public final class I implements g {

    /* renamed from: a  reason: collision with root package name */
    public static final j f8044a = C0703e.f8081a;

    /* renamed from: b  reason: collision with root package name */
    public static final long f8045b = ((long) c.e.a.a.o.I.b("AC-3"));

    /* renamed from: c  reason: collision with root package name */
    public static final long f8046c = ((long) c.e.a.a.o.I.b("EAC3"));

    /* renamed from: d  reason: collision with root package name */
    public static final long f8047d = ((long) c.e.a.a.o.I.b("AC-4"));

    /* renamed from: e  reason: collision with root package name */
    public static final long f8048e = ((long) c.e.a.a.o.I.b("HEVC"));

    /* renamed from: f  reason: collision with root package name */
    public final int f8049f;

    /* renamed from: g  reason: collision with root package name */
    public final List<F> f8050g;

    /* renamed from: h  reason: collision with root package name */
    public final v f8051h;

    /* renamed from: i  reason: collision with root package name */
    public final SparseIntArray f8052i;

    /* renamed from: j  reason: collision with root package name */
    public final J.c f8053j;

    /* renamed from: k  reason: collision with root package name */
    public final SparseArray<J> f8054k;

    /* renamed from: l  reason: collision with root package name */
    public final SparseBooleanArray f8055l;
    public final SparseBooleanArray m;
    public final H n;
    public G o;
    public i p;
    public int q;
    public boolean r;
    public boolean s;
    public boolean t;
    public J u;
    public int v;
    public int w;

    /* compiled from: TsExtractor */
    private class a implements C {

        /* renamed from: a  reason: collision with root package name */
        public final u f8056a = new u(new byte[4]);

        public a() {
        }

        public void a(F f2, i iVar, J.d dVar) {
        }

        public void a(v vVar) {
            if (vVar.u() == 0) {
                vVar.f(7);
                int a2 = vVar.a() / 4;
                for (int i2 = 0; i2 < a2; i2++) {
                    vVar.a(this.f8056a, 4);
                    int a3 = this.f8056a.a(16);
                    this.f8056a.c(3);
                    if (a3 == 0) {
                        this.f8056a.c(13);
                    } else {
                        int a4 = this.f8056a.a(13);
                        I.this.f8054k.put(a4, new D(new b(a4)));
                        int unused = I.this.q = I.this.q + 1;
                    }
                }
                if (I.this.f8049f != 2) {
                    I.this.f8054k.remove(0);
                }
            }
        }
    }

    /* compiled from: TsExtractor */
    private class b implements C {

        /* renamed from: a  reason: collision with root package name */
        public final u f8058a = new u(new byte[5]);

        /* renamed from: b  reason: collision with root package name */
        public final SparseArray<J> f8059b = new SparseArray<>();

        /* renamed from: c  reason: collision with root package name */
        public final SparseIntArray f8060c = new SparseIntArray();

        /* renamed from: d  reason: collision with root package name */
        public final int f8061d;

        public b(int i2) {
            this.f8061d = i2;
        }

        public void a(F f2, i iVar, J.d dVar) {
        }

        public void a(v vVar) {
            F f2;
            J j2;
            v vVar2 = vVar;
            if (vVar.u() == 2) {
                int i2 = 0;
                if (I.this.f8049f == 1 || I.this.f8049f == 2 || I.this.q == 1) {
                    f2 = (F) I.this.f8050g.get(0);
                } else {
                    f2 = new F(((F) I.this.f8050g.get(0)).a());
                    I.this.f8050g.add(f2);
                }
                vVar2.f(2);
                int A = vVar.A();
                int i3 = 3;
                vVar2.f(3);
                vVar2.a(this.f8058a, 2);
                this.f8058a.c(3);
                int i4 = 13;
                int unused = I.this.w = this.f8058a.a(13);
                vVar2.a(this.f8058a, 2);
                int i5 = 4;
                this.f8058a.c(4);
                vVar2.f(this.f8058a.a(12));
                if (I.this.f8049f == 2 && I.this.u == null) {
                    J.b bVar = new J.b(21, null, null, c.e.a.a.o.I.f9570f);
                    I i6 = I.this;
                    J unused2 = i6.u = i6.f8053j.a(21, bVar);
                    I.this.u.a(f2, I.this.p, new J.d(A, 21, 8192));
                }
                this.f8059b.clear();
                this.f8060c.clear();
                int a2 = vVar.a();
                while (a2 > 0) {
                    vVar2.a(this.f8058a, 5);
                    int a3 = this.f8058a.a(8);
                    this.f8058a.c(i3);
                    int a4 = this.f8058a.a(i4);
                    this.f8058a.c(i5);
                    int a5 = this.f8058a.a(12);
                    J.b a6 = a(vVar2, a5);
                    if (a3 == 6) {
                        a3 = a6.f8066a;
                    }
                    a2 -= a5 + 5;
                    int i7 = I.this.f8049f == 2 ? a3 : a4;
                    if (!I.this.f8055l.get(i7)) {
                        if (I.this.f8049f == 2 && a3 == 21) {
                            j2 = I.this.u;
                        } else {
                            j2 = I.this.f8053j.a(a3, a6);
                        }
                        if (I.this.f8049f != 2 || a4 < this.f8060c.get(i7, 8192)) {
                            this.f8060c.put(i7, a4);
                            this.f8059b.put(i7, j2);
                        }
                    }
                    i3 = 3;
                    i5 = 4;
                    i4 = 13;
                }
                int size = this.f8060c.size();
                for (int i8 = 0; i8 < size; i8++) {
                    int keyAt = this.f8060c.keyAt(i8);
                    int valueAt = this.f8060c.valueAt(i8);
                    I.this.f8055l.put(keyAt, true);
                    I.this.m.put(valueAt, true);
                    J valueAt2 = this.f8059b.valueAt(i8);
                    if (valueAt2 != null) {
                        if (valueAt2 != I.this.u) {
                            valueAt2.a(f2, I.this.p, new J.d(A, keyAt, 8192));
                        }
                        I.this.f8054k.put(valueAt, valueAt2);
                    }
                }
                if (I.this.f8049f != 2) {
                    I.this.f8054k.remove(this.f8061d);
                    I i9 = I.this;
                    if (i9.f8049f != 1) {
                        i2 = I.this.q - 1;
                    }
                    int unused3 = i9.q = i2;
                    if (I.this.q == 0) {
                        I.this.p.a();
                        boolean unused4 = I.this.r = true;
                    }
                } else if (!I.this.r) {
                    I.this.p.a();
                    int unused5 = I.this.q = 0;
                    boolean unused6 = I.this.r = true;
                }
            }
        }

        public final J.b a(v vVar, int i2) {
            int c2 = vVar.c();
            int i3 = i2 + c2;
            String str = null;
            int i4 = -1;
            ArrayList arrayList = null;
            while (vVar.c() < i3) {
                int u = vVar.u();
                int c3 = vVar.c() + vVar.u();
                if (u == 5) {
                    long w = vVar.w();
                    if (w != I.f8045b) {
                        if (w != I.f8046c) {
                            if (w != I.f8047d) {
                                if (w == I.f8048e) {
                                    i4 = 36;
                                }
                                vVar.f(c3 - vVar.c());
                            }
                        }
                        i4 = 135;
                        vVar.f(c3 - vVar.c());
                    }
                    i4 = 129;
                    vVar.f(c3 - vVar.c());
                } else {
                    if (u != 106) {
                        if (u != 122) {
                            if (u == 127) {
                                if (vVar.u() != 21) {
                                }
                            } else if (u == 123) {
                                i4 = 138;
                            } else if (u == 10) {
                                str = vVar.b(3).trim();
                            } else if (u == 89) {
                                ArrayList arrayList2 = new ArrayList();
                                while (vVar.c() < c3) {
                                    String trim = vVar.b(3).trim();
                                    int u2 = vVar.u();
                                    byte[] bArr = new byte[4];
                                    vVar.a(bArr, 0, 4);
                                    arrayList2.add(new J.a(trim, u2, bArr));
                                }
                                arrayList = arrayList2;
                                i4 = 89;
                            }
                            vVar.f(c3 - vVar.c());
                        }
                        i4 = 135;
                        vVar.f(c3 - vVar.c());
                    }
                    i4 = 129;
                    vVar.f(c3 - vVar.c());
                }
                i4 = 172;
                vVar.f(c3 - vVar.c());
            }
            vVar.e(i3);
            return new J.b(i4, str, arrayList, Arrays.copyOfRange(vVar.f9634a, c2, i3));
        }
    }

    public I() {
        this(0);
    }

    public void a() {
    }

    public I(int i2) {
        this(1, i2);
    }

    public static /* synthetic */ g[] g() {
        return new g[]{new I()};
    }

    public final int f() {
        int c2 = this.f8051h.c();
        int d2 = this.f8051h.d();
        int a2 = K.a(this.f8051h.f9634a, c2, d2);
        this.f8051h.e(a2);
        int i2 = a2 + 188;
        if (i2 > d2) {
            this.v += a2 - c2;
            if (this.f8049f == 2 && this.v > 376) {
                throw new ParserException("Cannot find sync byte. Most likely not a Transport Stream.");
            }
        } else {
            this.v = 0;
        }
        return i2;
    }

    public final void h() {
        this.f8055l.clear();
        this.f8054k.clear();
        SparseArray<J> a2 = this.f8053j.a();
        int size = a2.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f8054k.put(a2.keyAt(i2), a2.valueAt(i2));
        }
        this.f8054k.put(0, new D(new a()));
        this.u = null;
    }

    public I(int i2, int i3) {
        this(i2, new F(0), new C0710l(i3));
    }

    public I(int i2, F f2, J.c cVar) {
        C0737e.a(cVar);
        this.f8053j = cVar;
        this.f8049f = i2;
        if (i2 == 1 || i2 == 2) {
            this.f8050g = Collections.singletonList(f2);
        } else {
            this.f8050g = new ArrayList();
            this.f8050g.add(f2);
        }
        this.f8051h = new v(new byte[9400], 0);
        this.f8055l = new SparseBooleanArray();
        this.m = new SparseBooleanArray();
        this.f8054k = new SparseArray<>();
        this.f8052i = new SparseIntArray();
        this.n = new H();
        this.w = -1;
        h();
    }

    public final boolean b(h hVar) {
        v vVar = this.f8051h;
        byte[] bArr = vVar.f9634a;
        if (9400 - vVar.c() < 188) {
            int a2 = this.f8051h.a();
            if (a2 > 0) {
                System.arraycopy(bArr, this.f8051h.c(), bArr, 0, a2);
            }
            this.f8051h.a(bArr, a2);
        }
        while (this.f8051h.a() < 188) {
            int d2 = this.f8051h.d();
            int read = hVar.read(bArr, d2, 9400 - d2);
            if (read == -1) {
                return false;
            }
            this.f8051h.d(d2 + read);
        }
        return true;
    }

    public boolean a(h hVar) {
        boolean z;
        byte[] bArr = this.f8051h.f9634a;
        hVar.a(bArr, 0, 940);
        for (int i2 = 0; i2 < 188; i2++) {
            int i3 = 0;
            while (true) {
                if (i3 >= 5) {
                    z = true;
                    break;
                } else if (bArr[(i3 * 188) + i2] != 71) {
                    z = false;
                    break;
                } else {
                    i3++;
                }
            }
            if (z) {
                hVar.c(i2);
                return true;
            }
        }
        return false;
    }

    public void a(i iVar) {
        this.p = iVar;
    }

    public void a(long j2, long j3) {
        C0737e.b(this.f8049f != 2);
        int size = this.f8050g.size();
        for (int i2 = 0; i2 < size; i2++) {
            F f2 = this.f8050g.get(i2);
            if ((f2.c() == -9223372036854775807L) || !(f2.c() == 0 || f2.a() == j3)) {
                f2.d();
                f2.d(j3);
            }
        }
        if (j3 != 0) {
            G g2 = this.o;
            if (g2 != null) {
                g2.b(j3);
            }
        }
        this.f8051h.C();
        this.f8052i.clear();
        for (int i3 = 0; i3 < this.f8054k.size(); i3++) {
            this.f8054k.valueAt(i3).a();
        }
        this.v = 0;
    }

    public int a(h hVar, n nVar) {
        h hVar2 = hVar;
        n nVar2 = nVar;
        long length = hVar.getLength();
        J j2 = null;
        if (this.r) {
            if (((length == -1 || this.f8049f == 2) ? false : true) && !this.n.c()) {
                return this.n.a(hVar2, nVar2, this.w);
            }
            a(length);
            if (this.t) {
                this.t = false;
                a(0, 0);
                if (hVar.getPosition() != 0) {
                    nVar2.f8320a = 0;
                    return 1;
                }
            }
            G g2 = this.o;
            if (g2 != null && g2.b()) {
                return this.o.a(hVar2, nVar2, (a.c) null);
            }
        }
        if (!b(hVar)) {
            return -1;
        }
        int f2 = f();
        int d2 = this.f8051h.d();
        if (f2 > d2) {
            return 0;
        }
        int i2 = this.f8051h.i();
        if ((8388608 & i2) != 0) {
            this.f8051h.e(f2);
            return 0;
        }
        int i3 = ((4194304 & i2) != 0 ? 1 : 0) | 0;
        int i4 = (2096896 & i2) >> 8;
        boolean z = (i2 & 32) != 0;
        if ((i2 & 16) != 0) {
            j2 = this.f8054k.get(i4);
        }
        if (j2 == null) {
            this.f8051h.e(f2);
            return 0;
        }
        if (this.f8049f != 2) {
            int i5 = i2 & 15;
            int i6 = this.f8052i.get(i4, i5 - 1);
            this.f8052i.put(i4, i5);
            if (i6 == i5) {
                this.f8051h.e(f2);
                return 0;
            } else if (i5 != ((i6 + 1) & 15)) {
                j2.a();
            }
        }
        if (z) {
            int u2 = this.f8051h.u();
            i3 |= (this.f8051h.u() & 64) != 0 ? 2 : 0;
            this.f8051h.f(u2 - 1);
        }
        boolean z2 = this.r;
        if (a(i4)) {
            this.f8051h.d(f2);
            j2.a(this.f8051h, i3);
            this.f8051h.d(d2);
        }
        if (this.f8049f != 2 && !z2 && this.r && length != -1) {
            this.t = true;
        }
        this.f8051h.e(f2);
        return 0;
    }

    public final void a(long j2) {
        if (!this.s) {
            this.s = true;
            if (this.n.a() != -9223372036854775807L) {
                G g2 = new G(this.n.b(), this.n.a(), j2, this.w);
                this.o = g2;
                this.p.a(this.o.a());
                return;
            }
            this.p.a(new o.b(this.n.a()));
        }
    }

    public final boolean a(int i2) {
        if (this.f8049f == 2 || this.r || !this.m.get(i2, false)) {
            return true;
        }
        return false;
    }
}
