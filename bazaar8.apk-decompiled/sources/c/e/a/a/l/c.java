package c.e.a.a.l;

import c.e.a.a.j.b.l;
import c.e.a.a.l.n;
import c.e.a.a.n.f;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.C0738f;
import c.e.a.a.o.I;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import e.a.a.a.a.b.C1046a;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

/* compiled from: AdaptiveTrackSelection */
public class c extends e {

    /* renamed from: g  reason: collision with root package name */
    public final a f9295g;

    /* renamed from: h  reason: collision with root package name */
    public final long f9296h;

    /* renamed from: i  reason: collision with root package name */
    public final long f9297i;

    /* renamed from: j  reason: collision with root package name */
    public final long f9298j;

    /* renamed from: k  reason: collision with root package name */
    public final float f9299k;

    /* renamed from: l  reason: collision with root package name */
    public final long f9300l;
    public final C0738f m;
    public final Format[] n;
    public final int[] o;
    public final int[] p;
    public l q;
    public float r;
    public int s;
    public int t;
    public long u;

    /* compiled from: AdaptiveTrackSelection */
    private interface a {
        long a();
    }

    /* compiled from: AdaptiveTrackSelection */
    private static final class b implements a {

        /* renamed from: a  reason: collision with root package name */
        public final f f9301a;

        /* renamed from: b  reason: collision with root package name */
        public final float f9302b;

        /* renamed from: c  reason: collision with root package name */
        public long f9303c;

        /* renamed from: d  reason: collision with root package name */
        public long[][] f9304d;

        public b(f fVar, float f2) {
            this.f9301a = fVar;
            this.f9302b = f2;
        }

        public long a() {
            long max = Math.max(0, ((long) (((float) this.f9301a.b()) * this.f9302b)) - this.f9303c);
            if (this.f9304d == null) {
                return max;
            }
            int i2 = 1;
            while (true) {
                long[][] jArr = this.f9304d;
                if (i2 >= jArr.length - 1 || jArr[i2][0] >= max) {
                    long[][] jArr2 = this.f9304d;
                    long[] jArr3 = jArr2[i2 - 1];
                    long[] jArr4 = jArr2[i2];
                } else {
                    i2++;
                }
            }
            long[][] jArr22 = this.f9304d;
            long[] jArr32 = jArr22[i2 - 1];
            long[] jArr42 = jArr22[i2];
            return jArr32[1] + ((long) ((((float) (max - jArr32[0])) / ((float) (jArr42[0] - jArr32[0]))) * ((float) (jArr42[1] - jArr32[1]))));
        }

        public void a(long j2) {
            this.f9303c = j2;
        }

        public void a(long[][] jArr) {
            C0737e.a(jArr.length >= 2);
            this.f9304d = jArr;
        }
    }

    /* renamed from: c.e.a.a.l.c$c  reason: collision with other inner class name */
    /* compiled from: AdaptiveTrackSelection */
    public static class C0119c implements n.b {

        /* renamed from: a  reason: collision with root package name */
        public final f f9305a;

        /* renamed from: b  reason: collision with root package name */
        public final int f9306b;

        /* renamed from: c  reason: collision with root package name */
        public final int f9307c;

        /* renamed from: d  reason: collision with root package name */
        public final int f9308d;

        /* renamed from: e  reason: collision with root package name */
        public final float f9309e;

        /* renamed from: f  reason: collision with root package name */
        public final float f9310f;

        /* renamed from: g  reason: collision with root package name */
        public final long f9311g;

        /* renamed from: h  reason: collision with root package name */
        public final C0738f f9312h;

        /* renamed from: i  reason: collision with root package name */
        public l f9313i;

        /* renamed from: j  reason: collision with root package name */
        public boolean f9314j;

        public C0119c() {
            this(C1046a.DEFAULT_TIMEOUT, 25000, 25000, 0.75f, 0.75f, 2000, C0738f.f9582a);
        }

        public final n[] a(n.a[] aVarArr, f fVar) {
            f fVar2 = this.f9305a;
            if (fVar2 != null) {
                fVar = fVar2;
            }
            n[] nVarArr = new n[aVarArr.length];
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            for (int i3 = 0; i3 < aVarArr.length; i3++) {
                n.a aVar = aVarArr[i3];
                if (aVar != null) {
                    int[] iArr = aVar.f9333b;
                    if (iArr.length > 1) {
                        c a2 = a(aVar.f9332a, fVar, iArr);
                        a2.a(this.f9313i);
                        arrayList.add(a2);
                        nVarArr[i3] = a2;
                    } else {
                        nVarArr[i3] = new i(aVar.f9332a, iArr[0], aVar.f9334c, aVar.f9335d);
                        int i4 = aVar.f9332a.a(aVar.f9333b[0]).f12510e;
                        if (i4 != -1) {
                            i2 += i4;
                        }
                    }
                }
            }
            if (this.f9314j) {
                for (int i5 = 0; i5 < arrayList.size(); i5++) {
                    ((c) arrayList.get(i5)).a((long) i2);
                }
            }
            if (arrayList.size() > 1) {
                long[][] jArr = new long[arrayList.size()][];
                for (int i6 = 0; i6 < arrayList.size(); i6++) {
                    c cVar = (c) arrayList.get(i6);
                    jArr[i6] = new long[cVar.length()];
                    for (int i7 = 0; i7 < cVar.length(); i7++) {
                        jArr[i6][i7] = (long) cVar.a((cVar.length() - i7) - 1).f12510e;
                    }
                }
                long[][][] a3 = c.c(jArr);
                for (int i8 = 0; i8 < arrayList.size(); i8++) {
                    ((c) arrayList.get(i8)).b(a3[i8]);
                }
            }
            return nVarArr;
        }

        public C0119c(int i2, int i3, int i4, float f2, float f3, long j2, C0738f fVar) {
            this(null, i2, i3, i4, f2, f3, j2, fVar);
        }

        @Deprecated
        public C0119c(f fVar, int i2, int i3, int i4, float f2, float f3, long j2, C0738f fVar2) {
            this.f9305a = fVar;
            this.f9306b = i2;
            this.f9307c = i3;
            this.f9308d = i4;
            this.f9309e = f2;
            this.f9310f = f3;
            this.f9311g = j2;
            this.f9312h = fVar2;
            this.f9313i = l.f9331a;
        }

        public c a(TrackGroup trackGroup, f fVar, int[] iArr) {
            TrackGroup trackGroup2 = trackGroup;
            int[] iArr2 = iArr;
            c cVar = new c(trackGroup2, iArr2, new b(fVar, this.f9309e), (long) this.f9306b, (long) this.f9307c, (long) this.f9308d, this.f9310f, this.f9311g, this.f9312h);
            return cVar;
        }
    }

    public static double[][] d(long[][] jArr) {
        double[][] dArr = new double[jArr.length][];
        for (int i2 = 0; i2 < jArr.length; i2++) {
            dArr[i2] = new double[jArr[i2].length];
            for (int i3 = 0; i3 < jArr[i2].length; i3++) {
                dArr[i2][i3] = Math.log((double) jArr[i2][i3]);
            }
        }
        return dArr;
    }

    public void b(long[][] jArr) {
        ((b) this.f9295g).a(jArr);
    }

    public void c() {
        this.u = -9223372036854775807L;
    }

    public int g() {
        return this.t;
    }

    public Object h() {
        return null;
    }

    public long j() {
        return this.f9298j;
    }

    public c(TrackGroup trackGroup, int[] iArr, a aVar, long j2, long j3, long j4, float f2, long j5, C0738f fVar) {
        super(trackGroup, iArr);
        this.f9295g = aVar;
        this.f9296h = j2 * 1000;
        this.f9297i = j3 * 1000;
        this.f9298j = j4 * 1000;
        this.f9299k = f2;
        this.f9300l = j5;
        this.m = fVar;
        this.r = 1.0f;
        this.t = 0;
        this.u = -9223372036854775807L;
        this.q = l.f9331a;
        int i2 = this.f9316b;
        this.n = new Format[i2];
        this.o = new int[i2];
        this.p = new int[i2];
        for (int i3 = 0; i3 < this.f9316b; i3++) {
            Format a2 = a(i3);
            Format[] formatArr = this.n;
            formatArr[i3] = a2;
            this.o[i3] = formatArr[i3].f12510e;
        }
    }

    public void a(l lVar) {
        this.q = lVar;
    }

    public boolean c(long j2) {
        long j3 = this.u;
        return j3 == -9223372036854775807L || j2 - j3 >= this.f9300l;
    }

    public static long[][][] c(long[][] jArr) {
        int i2;
        double[][] d2 = d(jArr);
        double[][] b2 = b(d2);
        int a2 = a(b2) + 3;
        long[][][] jArr2 = (long[][][]) Array.newInstance(long.class, new int[]{d2.length, a2, 2});
        int[] iArr = new int[d2.length];
        a(jArr2, 1, jArr, iArr);
        int i3 = 2;
        while (true) {
            i2 = a2 - 1;
            if (i3 >= i2) {
                break;
            }
            double d3 = Double.MAX_VALUE;
            int i4 = 0;
            for (int i5 = 0; i5 < d2.length; i5++) {
                if (iArr[i5] + 1 != d2[i5].length) {
                    double d4 = b2[i5][iArr[i5]];
                    if (d4 < d3) {
                        i4 = i5;
                        d3 = d4;
                    }
                }
            }
            iArr[i4] = iArr[i4] + 1;
            a(jArr2, i3, jArr, iArr);
            i3++;
        }
        for (long[][] jArr3 : jArr2) {
            int i6 = a2 - 2;
            jArr3[i2][0] = jArr3[i6][0] * 2;
            jArr3[i2][1] = jArr3[i6][1] * 2;
        }
        return jArr2;
    }

    public void a(long j2) {
        ((b) this.f9295g).a(j2);
    }

    public int b() {
        return this.s;
    }

    public final long b(long j2) {
        return (j2 > -9223372036854775807L ? 1 : (j2 == -9223372036854775807L ? 0 : -1)) != 0 && (j2 > this.f9296h ? 1 : (j2 == this.f9296h ? 0 : -1)) <= 0 ? (long) (((float) j2) * this.f9299k) : this.f9296h;
    }

    public void a(float f2) {
        this.r = f2;
    }

    public static double[][] b(double[][] dArr) {
        double[][] dArr2 = new double[dArr.length][];
        for (int i2 = 0; i2 < dArr.length; i2++) {
            dArr2[i2] = new double[(dArr[i2].length - 1)];
            if (dArr2[i2].length != 0) {
                double d2 = dArr[i2][dArr[i2].length - 1] - dArr[i2][0];
                int i3 = 0;
                while (i3 < dArr[i2].length - 1) {
                    int i4 = i3 + 1;
                    dArr2[i2][i3] = (((dArr[i2][i3] + dArr[i2][i4]) * 0.5d) - dArr[i2][0]) / d2;
                    i3 = i4;
                }
            }
        }
        return dArr2;
    }

    public void a(long j2, long j3, long j4, List<? extends l> list, c.e.a.a.j.b.n[] nVarArr) {
        long a2 = this.m.a();
        this.q.a(this.n, list, nVarArr, this.p);
        if (this.t == 0) {
            this.t = 1;
            this.s = a(a2, this.p);
            return;
        }
        int i2 = this.s;
        this.s = a(a2, this.p);
        if (this.s != i2) {
            if (!b(i2, a2)) {
                Format a3 = a(i2);
                Format a4 = a(this.s);
                if (a4.f12510e > a3.f12510e && j3 < b(j4)) {
                    this.s = i2;
                } else if (a4.f12510e < a3.f12510e && j3 >= this.f9297i) {
                    this.s = i2;
                }
            }
            if (this.s != i2) {
                this.t = 3;
            }
        }
    }

    public int a(long j2, List<? extends l> list) {
        long a2 = this.m.a();
        if (!c(a2)) {
            return list.size();
        }
        this.u = a2;
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        long b2 = I.b(((l) list.get(size - 1)).f8464f - j2, this.r);
        long j3 = j();
        if (b2 < j3) {
            return size;
        }
        Format a3 = a(a(a2, this.o));
        for (int i2 = 0; i2 < size; i2++) {
            l lVar = (l) list.get(i2);
            Format format = lVar.f8461c;
            if (I.b(lVar.f8464f - j2, this.r) >= j3 && format.f12510e < a3.f12510e) {
                int i3 = format.o;
                if (i3 != -1 && i3 < 720) {
                    int i4 = format.n;
                    if (i4 != -1 && i4 < 1280 && i3 < a3.o) {
                        return i2;
                    }
                }
            }
        }
        return size;
    }

    public boolean a(Format format, int i2, float f2, long j2) {
        return ((long) Math.round(((float) i2) * f2)) <= j2;
    }

    public final int a(long j2, int[] iArr) {
        long a2 = this.f9295g.a();
        int i2 = 0;
        for (int i3 = 0; i3 < this.f9316b; i3++) {
            if (j2 == Long.MIN_VALUE || !b(i3, j2)) {
                if (a(a(i3), iArr[i3], this.r, a2)) {
                    return i3;
                }
                i2 = i3;
            }
        }
        return i2;
    }

    public static int a(double[][] dArr) {
        int i2 = 0;
        for (double[] length : dArr) {
            i2 += length.length;
        }
        return i2;
    }

    public static void a(long[][][] jArr, int i2, long[][] jArr2, int[] iArr) {
        long j2 = 0;
        for (int i3 = 0; i3 < jArr.length; i3++) {
            jArr[i3][i2][1] = jArr2[i3][iArr[i3]];
            j2 += jArr[i3][i2][1];
        }
        for (long[][] jArr3 : jArr) {
            jArr3[i2][0] = j2;
        }
    }
}
