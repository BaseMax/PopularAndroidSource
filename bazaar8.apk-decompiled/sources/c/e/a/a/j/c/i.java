package c.e.a.a.j.c;

import android.os.SystemClock;
import c.e.a.a.C0744q;
import c.e.a.a.V;
import c.e.a.a.e.o;
import c.e.a.a.e.q;
import c.e.a.a.j.b.d;
import c.e.a.a.j.b.e;
import c.e.a.a.j.b.f;
import c.e.a.a.j.b.l;
import c.e.a.a.j.c.a.h;
import c.e.a.a.j.c.c;
import c.e.a.a.j.c.k;
import c.e.a.a.l.n;
import c.e.a.a.n.A;
import c.e.a.a.n.j;
import c.e.a.a.n.x;
import c.e.a.a.o.I;
import c.e.a.a.o.s;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.BehindLiveWindowException;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: DefaultDashChunkSource */
public class i implements c {

    /* renamed from: a  reason: collision with root package name */
    public final x f8653a;

    /* renamed from: b  reason: collision with root package name */
    public final int[] f8654b;

    /* renamed from: c  reason: collision with root package name */
    public final n f8655c;

    /* renamed from: d  reason: collision with root package name */
    public final int f8656d;

    /* renamed from: e  reason: collision with root package name */
    public final j f8657e;

    /* renamed from: f  reason: collision with root package name */
    public final long f8658f;

    /* renamed from: g  reason: collision with root package name */
    public final int f8659g;

    /* renamed from: h  reason: collision with root package name */
    public final k.c f8660h;

    /* renamed from: i  reason: collision with root package name */
    public final b[] f8661i;

    /* renamed from: j  reason: collision with root package name */
    public c.e.a.a.j.c.a.b f8662j;

    /* renamed from: k  reason: collision with root package name */
    public int f8663k;

    /* renamed from: l  reason: collision with root package name */
    public IOException f8664l;
    public boolean m;
    public long n = -9223372036854775807L;

    /* compiled from: DefaultDashChunkSource */
    public static final class a implements c.a {

        /* renamed from: a  reason: collision with root package name */
        public final j.a f8665a;

        /* renamed from: b  reason: collision with root package name */
        public final int f8666b;

        public a(j.a aVar) {
            this(aVar, 1);
        }

        public c a(x xVar, c.e.a.a.j.c.a.b bVar, int i2, int[] iArr, n nVar, int i3, long j2, boolean z, List<Format> list, k.c cVar, A a2) {
            A a3 = a2;
            j a4 = this.f8665a.a();
            if (a3 != null) {
                a4.a(a3);
            }
            i iVar = new i(xVar, bVar, i2, iArr, nVar, i3, a4, j2, this.f8666b, z, list, cVar);
            return iVar;
        }

        public a(j.a aVar, int i2) {
            this.f8665a = aVar;
            this.f8666b = i2;
        }
    }

    /* compiled from: DefaultDashChunkSource */
    protected static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final e f8667a;

        /* renamed from: b  reason: collision with root package name */
        public final c.e.a.a.j.c.a.j f8668b;

        /* renamed from: c  reason: collision with root package name */
        public final g f8669c;

        /* renamed from: d  reason: collision with root package name */
        public final long f8670d;

        /* renamed from: e  reason: collision with root package name */
        public final long f8671e;

        public b(long j2, int i2, c.e.a.a.j.c.a.j jVar, boolean z, List<Format> list, q qVar) {
            this(j2, jVar, a(i2, jVar, z, list, qVar), 0, jVar.d());
        }

        public int b() {
            return this.f8669c.c(this.f8670d);
        }

        public long c(long j2) {
            return this.f8669c.a(j2 - this.f8671e);
        }

        public h d(long j2) {
            return this.f8669c.b(j2 - this.f8671e);
        }

        public b a(long j2, c.e.a.a.j.c.a.j jVar) {
            long b2;
            long j3 = j2;
            g d2 = this.f8668b.d();
            g d3 = jVar.d();
            if (d2 == null) {
                b bVar = new b(j2, jVar, this.f8667a, this.f8671e, d2);
                return bVar;
            } else if (!d2.a()) {
                b bVar2 = new b(j2, jVar, this.f8667a, this.f8671e, d3);
                return bVar2;
            } else {
                int c2 = d2.c(j3);
                if (c2 == 0) {
                    b bVar3 = new b(j2, jVar, this.f8667a, this.f8671e, d3);
                    return bVar3;
                }
                long b3 = (d2.b() + ((long) c2)) - 1;
                long a2 = d2.a(b3) + d2.a(b3, j3);
                long b4 = d3.b();
                long a3 = d3.a(b4);
                long j4 = this.f8671e;
                if (a2 == a3) {
                    b2 = b3 + 1;
                } else if (a2 >= a3) {
                    b2 = d2.b(a3, j3);
                } else {
                    throw new BehindLiveWindowException();
                }
                long j5 = j4 + (b2 - b4);
                b bVar4 = new b(j2, jVar, this.f8667a, j5, d3);
                return bVar4;
            }
        }

        public long b(long j2) {
            return this.f8669c.b(j2, this.f8670d) + this.f8671e;
        }

        public long b(c.e.a.a.j.c.a.b bVar, int i2, long j2) {
            long a2;
            int b2 = b();
            if (b2 == -1) {
                a2 = b((j2 - C0744q.a(bVar.f8522a)) - C0744q.a(bVar.a(i2).f8554b));
            } else {
                a2 = a() + ((long) b2);
            }
            return a2 - 1;
        }

        public b(long j2, c.e.a.a.j.c.a.j jVar, e eVar, long j3, g gVar) {
            this.f8670d = j2;
            this.f8668b = jVar;
            this.f8671e = j3;
            this.f8667a = eVar;
            this.f8669c = gVar;
        }

        public static boolean b(String str) {
            return str.startsWith("video/webm") || str.startsWith("audio/webm") || str.startsWith("application/webm");
        }

        public b a(g gVar) {
            b bVar = new b(this.f8670d, this.f8668b, this.f8667a, this.f8671e, gVar);
            return bVar;
        }

        public long a() {
            return this.f8669c.b() + this.f8671e;
        }

        public long a(long j2) {
            return c(j2) + this.f8669c.a(j2 - this.f8671e, this.f8670d);
        }

        public long a(c.e.a.a.j.c.a.b bVar, int i2, long j2) {
            if (b() != -1 || bVar.f8527f == -9223372036854775807L) {
                return a();
            }
            return Math.max(a(), b(((j2 - C0744q.a(bVar.f8522a)) - C0744q.a(bVar.a(i2).f8554b)) - C0744q.a(bVar.f8527f)));
        }

        public static boolean a(String str) {
            return s.k(str) || "application/ttml+xml".equals(str);
        }

        /* JADX WARNING: type inference failed for: r10v3, types: [c.e.a.a.e.c.g] */
        /* JADX WARNING: type inference failed for: r10v4, types: [c.e.a.a.e.g.a] */
        /* JADX WARNING: Multi-variable type inference failed */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public static c.e.a.a.j.b.e a(int r8, c.e.a.a.j.c.a.j r9, boolean r10, java.util.List<com.google.android.exoplayer2.Format> r11, c.e.a.a.e.q r12) {
            /*
                com.google.android.exoplayer2.Format r0 = r9.f8567b
                java.lang.String r0 = r0.f12513h
                boolean r1 = a((java.lang.String) r0)
                if (r1 == 0) goto L_0x000c
                r8 = 0
                return r8
            L_0x000c:
                java.lang.String r1 = "application/x-rawcc"
                boolean r1 = r1.equals(r0)
                if (r1 == 0) goto L_0x001c
                c.e.a.a.e.g.a r10 = new c.e.a.a.e.g.a
                com.google.android.exoplayer2.Format r11 = r9.f8567b
                r10.<init>(r11)
                goto L_0x003b
            L_0x001c:
                boolean r0 = b((java.lang.String) r0)
                if (r0 == 0) goto L_0x0029
                c.e.a.a.e.c.g r10 = new c.e.a.a.e.c.g
                r11 = 1
                r10.<init>(r11)
                goto L_0x003b
            L_0x0029:
                r0 = 0
                if (r10 == 0) goto L_0x002f
                r0 = 4
                r2 = 4
                goto L_0x0030
            L_0x002f:
                r2 = 0
            L_0x0030:
                c.e.a.a.e.e.h r10 = new c.e.a.a.e.e.h
                r3 = 0
                r4 = 0
                r5 = 0
                r1 = r10
                r6 = r11
                r7 = r12
                r1.<init>(r2, r3, r4, r5, r6, r7)
            L_0x003b:
                c.e.a.a.j.b.e r11 = new c.e.a.a.j.b.e
                com.google.android.exoplayer2.Format r9 = r9.f8567b
                r11.<init>(r10, r8, r9)
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.j.c.i.b.a(int, c.e.a.a.j.c.a.j, boolean, java.util.List, c.e.a.a.e.q):c.e.a.a.j.b.e");
        }
    }

    /* compiled from: DefaultDashChunkSource */
    protected static final class c extends c.e.a.a.j.b.b {

        /* renamed from: d  reason: collision with root package name */
        public final b f8672d;

        public c(b bVar, long j2, long j3) {
            super(j2, j3);
            this.f8672d = bVar;
        }
    }

    public i(x xVar, c.e.a.a.j.c.a.b bVar, int i2, int[] iArr, n nVar, int i3, j jVar, long j2, int i4, boolean z, List<Format> list, k.c cVar) {
        n nVar2 = nVar;
        this.f8653a = xVar;
        this.f8662j = bVar;
        this.f8654b = iArr;
        this.f8655c = nVar2;
        this.f8656d = i3;
        this.f8657e = jVar;
        this.f8663k = i2;
        this.f8658f = j2;
        this.f8659g = i4;
        this.f8660h = cVar;
        long c2 = bVar.c(i2);
        ArrayList<c.e.a.a.j.c.a.j> c3 = c();
        this.f8661i = new b[nVar.length()];
        for (int i5 = 0; i5 < this.f8661i.length; i5++) {
            b[] bVarArr = this.f8661i;
            b bVar2 = new b(c2, i3, c3.get(nVar2.b(i5)), z, list, cVar);
            bVarArr[i5] = bVar2;
        }
    }

    public long a(long j2, V v) {
        for (b bVar : this.f8661i) {
            if (bVar.f8669c != null) {
                long b2 = bVar.b(j2);
                long c2 = bVar.c(b2);
                return I.a(j2, v, c2, (c2 >= j2 || b2 >= ((long) (bVar.b() + -1))) ? c2 : bVar.c(b2 + 1));
            }
        }
        return j2;
    }

    public final long b() {
        long currentTimeMillis;
        if (this.f8658f != 0) {
            currentTimeMillis = SystemClock.elapsedRealtime() + this.f8658f;
        } else {
            currentTimeMillis = System.currentTimeMillis();
        }
        return currentTimeMillis * 1000;
    }

    public final ArrayList<c.e.a.a.j.c.a.j> c() {
        List<c.e.a.a.j.c.a.a> list = this.f8662j.a(this.f8663k).f8555c;
        ArrayList<c.e.a.a.j.c.a.j> arrayList = new ArrayList<>();
        for (int i2 : this.f8654b) {
            arrayList.addAll(list.get(i2).f8519c);
        }
        return arrayList;
    }

    public void a(c.e.a.a.j.c.a.b bVar, int i2) {
        try {
            this.f8662j = bVar;
            this.f8663k = i2;
            long c2 = this.f8662j.c(this.f8663k);
            ArrayList<c.e.a.a.j.c.a.j> c3 = c();
            for (int i3 = 0; i3 < this.f8661i.length; i3++) {
                this.f8661i[i3] = this.f8661i[i3].a(c2, c3.get(this.f8655c.b(i3)));
            }
        } catch (BehindLiveWindowException e2) {
            this.f8664l = e2;
        }
    }

    public void a() {
        IOException iOException = this.f8664l;
        if (iOException == null) {
            this.f8653a.a();
            return;
        }
        throw iOException;
    }

    public int a(long j2, List<? extends l> list) {
        if (this.f8664l != null || this.f8655c.length() < 2) {
            return list.size();
        }
        return this.f8655c.a(j2, list);
    }

    public void a(long j2, long j3, List<? extends l> list, f fVar) {
        l lVar;
        long j4;
        int i2;
        c.e.a.a.j.b.n[] nVarArr;
        f fVar2 = fVar;
        if (this.f8664l == null) {
            long j5 = j3 - j2;
            long a2 = a(j2);
            long a3 = C0744q.a(this.f8662j.f8522a) + C0744q.a(this.f8662j.a(this.f8663k).f8554b) + j3;
            k.c cVar = this.f8660h;
            if (cVar == null || !cVar.a(a3)) {
                long b2 = b();
                if (list.isEmpty()) {
                    List<? extends l> list2 = list;
                    lVar = null;
                } else {
                    lVar = (l) list.get(list.size() - 1);
                }
                c.e.a.a.j.b.n[] nVarArr2 = new c.e.a.a.j.b.n[this.f8655c.length()];
                int i3 = 0;
                while (i3 < nVarArr2.length) {
                    b bVar = this.f8661i[i3];
                    if (bVar.f8669c == null) {
                        nVarArr2[i3] = c.e.a.a.j.b.n.f8509a;
                        nVarArr = nVarArr2;
                        i2 = i3;
                        j4 = b2;
                    } else {
                        long a4 = bVar.a(this.f8662j, this.f8663k, b2);
                        long b3 = bVar.b(this.f8662j, this.f8663k, b2);
                        b bVar2 = bVar;
                        nVarArr = nVarArr2;
                        i2 = i3;
                        j4 = b2;
                        long a5 = a(bVar, lVar, j3, a4, b3);
                        if (a5 < a4) {
                            nVarArr[i2] = c.e.a.a.j.b.n.f8509a;
                        } else {
                            c cVar2 = new c(bVar2, a5, b3);
                            nVarArr[i2] = cVar2;
                        }
                    }
                    i3 = i2 + 1;
                    List<? extends l> list3 = list;
                    nVarArr2 = nVarArr;
                    b2 = j4;
                }
                long j6 = b2;
                this.f8655c.a(j2, j5, a2, list, nVarArr2);
                b bVar3 = this.f8661i[this.f8655c.b()];
                e eVar = bVar3.f8667a;
                if (eVar != null) {
                    c.e.a.a.j.c.a.j jVar = bVar3.f8668b;
                    h f2 = eVar.b() == null ? jVar.f() : null;
                    h e2 = bVar3.f8669c == null ? jVar.e() : null;
                    if (!(f2 == null && e2 == null)) {
                        fVar2.f8483a = a(bVar3, this.f8657e, this.f8655c.f(), this.f8655c.g(), this.f8655c.h(), f2, e2);
                        return;
                    }
                }
                long a6 = bVar3.f8670d;
                long j7 = -9223372036854775807L;
                boolean z = a6 != -9223372036854775807L;
                if (bVar3.b() == 0) {
                    fVar2.f8484b = z;
                    return;
                }
                long j8 = j6;
                long a7 = bVar3.a(this.f8662j, this.f8663k, j8);
                long b4 = bVar3.b(this.f8662j, this.f8663k, j8);
                a(bVar3, b4);
                long j9 = b4;
                long a8 = a(bVar3, lVar, j3, a7, b4);
                if (a8 < a7) {
                    this.f8664l = new BehindLiveWindowException();
                } else if (a8 > j9 || (this.m && a8 >= j9)) {
                    fVar2.f8484b = z;
                } else if (!z || bVar3.c(a8) < a6) {
                    int min = (int) Math.min((long) this.f8659g, (j9 - a8) + 1);
                    if (a6 != -9223372036854775807L) {
                        while (min > 1 && bVar3.c((((long) min) + a8) - 1) >= a6) {
                            min--;
                        }
                    }
                    int i4 = min;
                    if (list.isEmpty()) {
                        j7 = j3;
                    }
                    fVar2.f8483a = a(bVar3, this.f8657e, this.f8656d, this.f8655c.f(), this.f8655c.g(), this.f8655c.h(), a8, i4, j7);
                } else {
                    fVar2.f8484b = true;
                }
            }
        }
    }

    public void a(d dVar) {
        if (dVar instanceof c.e.a.a.j.b.k) {
            int a2 = this.f8655c.a(((c.e.a.a.j.b.k) dVar).f8461c);
            b bVar = this.f8661i[a2];
            if (bVar.f8669c == null) {
                o c2 = bVar.f8667a.c();
                if (c2 != null) {
                    this.f8661i[a2] = bVar.a((g) new h((c.e.a.a.e.b) c2, bVar.f8668b.f8569d));
                }
            }
        }
        k.c cVar = this.f8660h;
        if (cVar != null) {
            cVar.b(dVar);
        }
    }

    public boolean a(d dVar, boolean z, Exception exc, long j2) {
        boolean z2 = false;
        if (!z) {
            return false;
        }
        k.c cVar = this.f8660h;
        if (cVar != null && cVar.a(dVar)) {
            return true;
        }
        if (!this.f8662j.f8525d && (dVar instanceof l) && (exc instanceof HttpDataSource.InvalidResponseCodeException) && ((HttpDataSource.InvalidResponseCodeException) exc).responseCode == 404) {
            b bVar = this.f8661i[this.f8655c.a(dVar.f8461c)];
            int b2 = bVar.b();
            if (!(b2 == -1 || b2 == 0)) {
                if (((l) dVar).g() > (bVar.a() + ((long) b2)) - 1) {
                    this.m = true;
                    return true;
                }
            }
        }
        if (j2 != -9223372036854775807L) {
            n nVar = this.f8655c;
            if (nVar.a(nVar.a(dVar.f8461c), j2)) {
                z2 = true;
            }
        }
        return z2;
    }

    public final long a(b bVar, l lVar, long j2, long j3, long j4) {
        if (lVar != null) {
            return lVar.g();
        }
        return I.b(bVar.b(j2), j3, j4);
    }

    public final void a(b bVar, long j2) {
        this.n = this.f8662j.f8525d ? bVar.a(j2) : -9223372036854775807L;
    }

    public final long a(long j2) {
        if (this.f8662j.f8525d && this.n != -9223372036854775807L) {
            return this.n - j2;
        }
        return -9223372036854775807L;
    }

    public d a(b bVar, j jVar, Format format, int i2, Object obj, h hVar, h hVar2) {
        String str = bVar.f8668b.f8568c;
        if (hVar != null) {
            hVar2 = hVar.a(hVar2, str);
            if (hVar2 == null) {
                hVar2 = hVar;
            }
        }
        c.e.a.a.n.l lVar = new c.e.a.a.n.l(hVar2.a(str), hVar2.f8562a, hVar2.f8563b, bVar.f8668b.c());
        c.e.a.a.j.b.k kVar = new c.e.a.a.j.b.k(jVar, lVar, format, i2, obj, bVar.f8667a);
        return kVar;
    }

    public d a(b bVar, j jVar, int i2, Format format, int i3, Object obj, long j2, int i4, long j3) {
        b bVar2 = bVar;
        long j4 = j2;
        c.e.a.a.j.c.a.j jVar2 = bVar2.f8668b;
        long c2 = bVar2.c(j4);
        h d2 = bVar2.d(j4);
        String str = jVar2.f8568c;
        if (bVar2.f8667a == null) {
            long a2 = bVar2.a(j4);
            c.e.a.a.n.l lVar = new c.e.a.a.n.l(d2.a(str), d2.f8562a, d2.f8563b, jVar2.c());
            c.e.a.a.j.b.o oVar = new c.e.a.a.j.b.o(jVar, lVar, format, i3, obj, c2, a2, j2, i2, format);
            return oVar;
        }
        int i5 = 1;
        h hVar = d2;
        int i6 = 1;
        int i7 = i4;
        while (i5 < i7) {
            h a3 = hVar.a(bVar2.d(((long) i5) + j4), str);
            if (a3 == null) {
                break;
            }
            i6++;
            i5++;
            hVar = a3;
        }
        long a4 = bVar2.a((((long) i6) + j4) - 1);
        long a5 = bVar.f8670d;
        long j5 = (a5 == -9223372036854775807L || a5 > a4) ? -9223372036854775807L : a5;
        c.e.a.a.n.l lVar2 = r18;
        c.e.a.a.n.l lVar3 = new c.e.a.a.n.l(hVar.a(str), hVar.f8562a, hVar.f8563b, jVar2.c());
        e eVar = bVar2.f8667a;
        c.e.a.a.j.b.i iVar = new c.e.a.a.j.b.i(jVar, lVar2, format, i3, obj, c2, a4, j3, j5, j2, i6, -jVar2.f8569d, eVar);
        return iVar;
    }
}
