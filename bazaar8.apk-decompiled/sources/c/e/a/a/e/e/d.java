package c.e.a.a.e.e;

import android.util.Pair;
import c.e.a.a.e.e.c;
import c.e.a.a.e.e.g;
import c.e.a.a.e.k;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import c.e.a.a.o.p;
import c.e.a.a.o.s;
import c.e.a.a.o.v;
import com.crashlytics.android.answers.RetryManager;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.metadata.Metadata;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: AtomParsers */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final int f7765a = I.b("vide");

    /* renamed from: b  reason: collision with root package name */
    public static final int f7766b = I.b("soun");

    /* renamed from: c  reason: collision with root package name */
    public static final int f7767c = I.b("text");

    /* renamed from: d  reason: collision with root package name */
    public static final int f7768d = I.b("sbtl");

    /* renamed from: e  reason: collision with root package name */
    public static final int f7769e = I.b("subt");

    /* renamed from: f  reason: collision with root package name */
    public static final int f7770f = I.b("clcp");

    /* renamed from: g  reason: collision with root package name */
    public static final int f7771g = I.b("meta");

    /* renamed from: h  reason: collision with root package name */
    public static final int f7772h = I.b("mdta");

    /* renamed from: i  reason: collision with root package name */
    public static final byte[] f7773i = I.e("OpusHead");

    /* compiled from: AtomParsers */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f7774a;

        /* renamed from: b  reason: collision with root package name */
        public int f7775b;

        /* renamed from: c  reason: collision with root package name */
        public int f7776c;

        /* renamed from: d  reason: collision with root package name */
        public long f7777d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f7778e;

        /* renamed from: f  reason: collision with root package name */
        public final v f7779f;

        /* renamed from: g  reason: collision with root package name */
        public final v f7780g;

        /* renamed from: h  reason: collision with root package name */
        public int f7781h;

        /* renamed from: i  reason: collision with root package name */
        public int f7782i;

        public a(v vVar, v vVar2, boolean z) {
            this.f7780g = vVar;
            this.f7779f = vVar2;
            this.f7778e = z;
            vVar2.e(12);
            this.f7774a = vVar2.y();
            vVar.e(12);
            this.f7782i = vVar.y();
            C0737e.b(vVar.i() != 1 ? false : true, "first_chunk must be 1");
            this.f7775b = -1;
        }

        public boolean a() {
            long j2;
            int i2 = this.f7775b + 1;
            this.f7775b = i2;
            if (i2 == this.f7774a) {
                return false;
            }
            if (this.f7778e) {
                j2 = this.f7779f.z();
            } else {
                j2 = this.f7779f.w();
            }
            this.f7777d = j2;
            if (this.f7775b == this.f7781h) {
                this.f7776c = this.f7780g.y();
                this.f7780g.f(4);
                int i3 = this.f7782i - 1;
                this.f7782i = i3;
                this.f7781h = i3 > 0 ? this.f7780g.y() - 1 : -1;
            }
            return true;
        }
    }

    /* compiled from: AtomParsers */
    private interface b {
        boolean a();

        int b();

        int c();
    }

    /* compiled from: AtomParsers */
    private static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final o[] f7783a;

        /* renamed from: b  reason: collision with root package name */
        public Format f7784b;

        /* renamed from: c  reason: collision with root package name */
        public int f7785c;

        /* renamed from: d  reason: collision with root package name */
        public int f7786d = 0;

        public c(int i2) {
            this.f7783a = new o[i2];
        }
    }

    /* renamed from: c.e.a.a.e.e.d$d  reason: collision with other inner class name */
    /* compiled from: AtomParsers */
    static final class C0107d implements b {

        /* renamed from: a  reason: collision with root package name */
        public final int f7787a = this.f7789c.y();

        /* renamed from: b  reason: collision with root package name */
        public final int f7788b = this.f7789c.y();

        /* renamed from: c  reason: collision with root package name */
        public final v f7789c;

        public C0107d(c.b bVar) {
            this.f7789c = bVar.gb;
            this.f7789c.e(12);
        }

        public boolean a() {
            return this.f7787a != 0;
        }

        public int b() {
            return this.f7788b;
        }

        public int c() {
            int i2 = this.f7787a;
            return i2 == 0 ? this.f7789c.y() : i2;
        }
    }

    /* compiled from: AtomParsers */
    static final class e implements b {

        /* renamed from: a  reason: collision with root package name */
        public final v f7790a;

        /* renamed from: b  reason: collision with root package name */
        public final int f7791b = this.f7790a.y();

        /* renamed from: c  reason: collision with root package name */
        public final int f7792c = (this.f7790a.y() & 255);

        /* renamed from: d  reason: collision with root package name */
        public int f7793d;

        /* renamed from: e  reason: collision with root package name */
        public int f7794e;

        public e(c.b bVar) {
            this.f7790a = bVar.gb;
            this.f7790a.e(12);
        }

        public boolean a() {
            return false;
        }

        public int b() {
            return this.f7791b;
        }

        public int c() {
            int i2 = this.f7792c;
            if (i2 == 8) {
                return this.f7790a.u();
            }
            if (i2 == 16) {
                return this.f7790a.A();
            }
            int i3 = this.f7793d;
            this.f7793d = i3 + 1;
            if (i3 % 2 != 0) {
                return this.f7794e & 15;
            }
            this.f7794e = this.f7790a.u();
            return (this.f7794e & 240) >> 4;
        }
    }

    /* compiled from: AtomParsers */
    private static final class f {

        /* renamed from: a  reason: collision with root package name */
        public final int f7795a;

        /* renamed from: b  reason: collision with root package name */
        public final long f7796b;

        /* renamed from: c  reason: collision with root package name */
        public final int f7797c;

        public f(int i2, long j2, int i3) {
            this.f7795a = i2;
            this.f7796b = j2;
            this.f7797c = i3;
        }
    }

    public static n a(c.a aVar, c.b bVar, long j2, DrmInitData drmInitData, boolean z, boolean z2) {
        long j3;
        c.b bVar2;
        long[] jArr;
        long[] jArr2;
        n nVar;
        c.a aVar2 = aVar;
        c.a d2 = aVar2.d(c.T);
        int a2 = a(b(d2.e(c.fa).gb));
        if (a2 == -1) {
            return null;
        }
        f e2 = e(aVar2.e(c.ba).gb);
        long j4 = -9223372036854775807L;
        if (j2 == -9223372036854775807L) {
            j3 = e2.f7796b;
            bVar2 = bVar;
        } else {
            bVar2 = bVar;
            j3 = j2;
        }
        long d3 = d(bVar2.gb);
        if (j3 != -9223372036854775807L) {
            j4 = I.c(j3, RetryManager.NANOSECONDS_IN_MS, d3);
        }
        long j5 = j4;
        c.a d4 = d2.d(c.U).d(c.V);
        Pair<Long, String> c2 = c(d2.e(c.ea).gb);
        c a3 = a(d4.e(c.ga).gb, e2.f7795a, e2.f7797c, (String) c2.second, drmInitData, z2);
        if (!z) {
            Pair<long[], long[]> a4 = a(aVar2.d(c.ca));
            jArr = (long[]) a4.second;
            jArr2 = (long[]) a4.first;
        } else {
            jArr2 = null;
            jArr = null;
        }
        if (a3.f7784b == null) {
            nVar = null;
        } else {
            nVar = new n(e2.f7795a, a2, ((Long) c2.first).longValue(), d3, j5, a3.f7784b, a3.f7786d, a3.f7783a, a3.f7785c, jArr2, jArr);
        }
        return nVar;
    }

    public static Metadata b(c.a aVar) {
        c.b e2 = aVar.e(c.fa);
        c.b e3 = aVar.e(c.Pa);
        c.b e4 = aVar.e(c.Qa);
        if (e2 == null || e3 == null || e4 == null || b(e2.gb) != f7772h) {
            return null;
        }
        v vVar = e3.gb;
        vVar.e(12);
        int i2 = vVar.i();
        String[] strArr = new String[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = vVar.i();
            vVar.f(4);
            strArr[i3] = vVar.b(i4 - 8);
        }
        v vVar2 = e4.gb;
        vVar2.e(8);
        ArrayList arrayList = new ArrayList();
        while (vVar2.a() > 8) {
            int c2 = vVar2.c();
            int i5 = vVar2.i();
            int i6 = vVar2.i() - 1;
            if (i6 < 0 || i6 >= strArr.length) {
                p.d("AtomParsers", "Skipped metadata with unknown key index: " + i6);
            } else {
                MdtaMetadataEntry a2 = j.a(vVar2, c2 + i5, strArr[i6]);
                if (a2 != null) {
                    arrayList.add(a2);
                }
            }
            vVar2.e(c2 + i5);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata((List<? extends Metadata.Entry>) arrayList);
    }

    public static Pair<Long, String> c(v vVar) {
        int i2 = 8;
        vVar.e(8);
        int c2 = c.c(vVar.i());
        vVar.f(c2 == 0 ? 8 : 16);
        long w = vVar.w();
        if (c2 == 0) {
            i2 = 4;
        }
        vVar.f(i2);
        int A = vVar.A();
        return Pair.create(Long.valueOf(w), "" + ((char) (((A >> 10) & 31) + 96)) + ((char) (((A >> 5) & 31) + 96)) + ((char) ((A & 31) + 96)));
    }

    public static Metadata d(v vVar, int i2) {
        vVar.f(12);
        while (vVar.c() < i2) {
            int c2 = vVar.c();
            int i3 = vVar.i();
            if (vVar.i() == c.Qa) {
                vVar.e(c2);
                return b(vVar, c2 + i3);
            }
            vVar.e(c2 + i3);
        }
        return null;
    }

    public static f e(v vVar) {
        boolean z;
        int i2 = 8;
        vVar.e(8);
        int c2 = c.c(vVar.i());
        vVar.f(c2 == 0 ? 8 : 16);
        int i3 = vVar.i();
        vVar.f(4);
        int c3 = vVar.c();
        if (c2 == 0) {
            i2 = 4;
        }
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (i5 >= i2) {
                z = true;
                break;
            } else if (vVar.f9634a[c3 + i5] != -1) {
                z = false;
                break;
            } else {
                i5++;
            }
        }
        long j2 = -9223372036854775807L;
        if (z) {
            vVar.f(i2);
        } else {
            long w = c2 == 0 ? vVar.w() : vVar.z();
            if (w != 0) {
                j2 = w;
            }
        }
        vVar.f(16);
        int i6 = vVar.i();
        int i7 = vVar.i();
        vVar.f(4);
        int i8 = vVar.i();
        int i9 = vVar.i();
        if (i6 == 0 && i7 == 65536 && i8 == -65536 && i9 == 0) {
            i4 = 90;
        } else if (i6 == 0 && i7 == -65536 && i8 == 65536 && i9 == 0) {
            i4 = 270;
        } else if (i6 == -65536 && i7 == 0 && i8 == 0 && i9 == -65536) {
            i4 = 180;
        }
        return new f(i3, j2, i4);
    }

    public static float c(v vVar, int i2) {
        vVar.e(i2 + 8);
        return ((float) vVar.y()) / ((float) vVar.y());
    }

    public static long d(v vVar) {
        int i2 = 8;
        vVar.e(8);
        if (c.c(vVar.i()) != 0) {
            i2 = 16;
        }
        vVar.f(i2);
        return vVar.w();
    }

    public static byte[] c(v vVar, int i2, int i3) {
        int i4 = i2 + 8;
        while (i4 - i2 < i3) {
            vVar.e(i4);
            int i5 = vVar.i();
            if (vVar.i() == c.Xa) {
                return Arrays.copyOfRange(vVar.f9634a, i4, i5 + i4);
            }
            i4 += i5;
        }
        return null;
    }

    public static Pair<Integer, o> d(v vVar, int i2, int i3) {
        int c2 = vVar.c();
        while (c2 - i2 < i3) {
            vVar.e(c2);
            int i4 = vVar.i();
            C0737e.a(i4 > 0, (Object) "childAtomSize should be positive");
            if (vVar.i() == c.ia) {
                Pair<Integer, o> b2 = b(vVar, c2, i4);
                if (b2 != null) {
                    return b2;
                }
            }
            c2 += i4;
        }
        return null;
    }

    public static q a(n nVar, c.a aVar, k kVar) {
        b bVar;
        boolean z;
        int i2;
        int i3;
        int i4;
        long j2;
        int[] iArr;
        long[] jArr;
        int i5;
        int[] iArr2;
        long[] jArr2;
        int i6;
        int[] iArr3;
        long[] jArr3;
        int[] iArr4;
        int[] iArr5;
        int i7;
        boolean z2;
        int i8;
        int i9;
        boolean z3;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        n nVar2 = nVar;
        c.a aVar2 = aVar;
        k kVar2 = kVar;
        c.b e2 = aVar2.e(c.Da);
        if (e2 != null) {
            bVar = new C0107d(e2);
        } else {
            c.b e3 = aVar2.e(c.Ea);
            if (e3 != null) {
                bVar = new e(e3);
            } else {
                throw new ParserException("Track has no sample table size information");
            }
        }
        int b2 = bVar.b();
        if (b2 == 0) {
            q qVar = new q(nVar, new long[0], new int[0], 0, new long[0], new int[0], -9223372036854775807L);
            return qVar;
        }
        c.b e4 = aVar2.e(c.Fa);
        if (e4 == null) {
            e4 = aVar2.e(c.Ga);
            z = true;
        } else {
            z = false;
        }
        v vVar = e4.gb;
        v vVar2 = aVar2.e(c.Ca).gb;
        v vVar3 = aVar2.e(c.za).gb;
        c.b e5 = aVar2.e(c.Aa);
        v vVar4 = e5 != null ? e5.gb : null;
        c.b e6 = aVar2.e(c.Ba);
        v vVar5 = e6 != null ? e6.gb : null;
        a aVar3 = new a(vVar2, vVar, z);
        vVar3.e(12);
        int y = vVar3.y() - 1;
        int y2 = vVar3.y();
        int y3 = vVar3.y();
        if (vVar5 != null) {
            vVar5.e(12);
            i2 = vVar5.y();
        } else {
            i2 = 0;
        }
        int i15 = -1;
        if (vVar4 != null) {
            vVar4.e(12);
            i3 = vVar4.y();
            if (i3 > 0) {
                i15 = vVar4.y() - 1;
            } else {
                vVar4 = null;
            }
        } else {
            i3 = 0;
        }
        if (!(bVar.a() && "audio/raw".equals(nVar2.f7869f.f12514i) && y == 0 && i2 == 0 && i3 == 0)) {
            long[] jArr4 = new long[b2];
            int[] iArr6 = new int[b2];
            long[] jArr5 = new long[b2];
            int i16 = i3;
            iArr = new int[b2];
            int i17 = y;
            v vVar6 = vVar3;
            int i18 = y3;
            long j3 = 0;
            long j4 = 0;
            int i19 = 0;
            int i20 = 0;
            int i21 = 0;
            int i22 = 0;
            int i23 = i16;
            int i24 = i2;
            int i25 = y2;
            int i26 = i15;
            int i27 = 0;
            while (true) {
                if (i20 >= b2) {
                    i4 = b2;
                    i8 = i23;
                    i9 = i25;
                    break;
                }
                long j5 = j4;
                boolean z4 = true;
                while (i27 == 0) {
                    z4 = aVar3.a();
                    if (!z4) {
                        break;
                    }
                    int i28 = i23;
                    long j6 = aVar3.f7777d;
                    i27 = aVar3.f7776c;
                    j5 = j6;
                    i23 = i28;
                    i25 = i25;
                    b2 = b2;
                }
                int i29 = b2;
                i8 = i23;
                i9 = i25;
                if (!z4) {
                    p.d("AtomParsers", "Unexpected end of chunk data");
                    jArr4 = Arrays.copyOf(jArr4, i20);
                    iArr6 = Arrays.copyOf(iArr6, i20);
                    jArr5 = Arrays.copyOf(jArr5, i20);
                    iArr = Arrays.copyOf(iArr, i20);
                    i4 = i20;
                    break;
                }
                if (vVar5 != null) {
                    int i30 = i24;
                    while (i21 == 0 && i30 > 0) {
                        i21 = vVar5.y();
                        i22 = vVar5.i();
                        i30--;
                    }
                    i21--;
                    i12 = i30;
                } else {
                    i12 = i24;
                }
                int i31 = i22;
                jArr4[i20] = j5;
                iArr6[i20] = bVar.c();
                if (iArr6[i20] > i19) {
                    i19 = iArr6[i20];
                }
                jArr5[i20] = j3 + ((long) i31);
                iArr[i20] = vVar4 == null ? 1 : 0;
                if (i20 == i26) {
                    iArr[i20] = 1;
                    int i32 = i8 - 1;
                    if (i32 > 0) {
                        i26 = vVar4.y() - 1;
                    }
                    i13 = i19;
                    i23 = i32;
                    i14 = i31;
                } else {
                    i13 = i19;
                    i14 = i31;
                    i23 = i8;
                }
                j3 += (long) i18;
                int i33 = i9 - 1;
                if (i33 == 0 && i17 > 0) {
                    i33 = vVar6.y();
                    i17--;
                    i18 = vVar6.i();
                }
                i27--;
                i20++;
                i22 = i14;
                i25 = i33;
                j4 = j5 + ((long) iArr6[i20]);
                i19 = i13;
                i24 = i12;
                b2 = i29;
            }
            int i34 = i27;
            j2 = j3 + ((long) i22);
            int i35 = i24;
            while (true) {
                if (i35 <= 0) {
                    z3 = true;
                    break;
                } else if (vVar5.y() != 0) {
                    z3 = false;
                    break;
                } else {
                    vVar5.i();
                    i35--;
                }
            }
            if (i8 == 0 && i9 == 0 && i34 == 0 && i17 == 0) {
                i11 = i21;
                if (i11 == 0 && z3) {
                    i10 = i19;
                    nVar2 = nVar;
                    jArr2 = jArr4;
                    jArr = jArr5;
                    i5 = i10;
                    iArr2 = iArr6;
                }
            } else {
                i11 = i21;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Inconsistent stbl box for track ");
            i10 = i19;
            nVar2 = nVar;
            sb.append(nVar2.f7864a);
            sb.append(": remainingSynchronizationSamples ");
            sb.append(i8);
            sb.append(", remainingSamplesAtTimestampDelta ");
            sb.append(i9);
            sb.append(", remainingSamplesInChunk ");
            sb.append(i34);
            sb.append(", remainingTimestampDeltaChanges ");
            sb.append(i17);
            sb.append(", remainingSamplesAtTimestampOffset ");
            sb.append(i11);
            sb.append(!z3 ? ", ctts invalid" : "");
            p.d("AtomParsers", sb.toString());
            jArr2 = jArr4;
            jArr = jArr5;
            i5 = i10;
            iArr2 = iArr6;
        } else {
            i4 = b2;
            int i36 = aVar3.f7774a;
            long[] jArr6 = new long[i36];
            int[] iArr7 = new int[i36];
            while (aVar3.a()) {
                int i37 = aVar3.f7775b;
                jArr6[i37] = aVar3.f7777d;
                iArr7[i37] = aVar3.f7776c;
            }
            Format format = nVar2.f7869f;
            g.a a2 = g.a(I.b(format.x, format.v), jArr6, iArr7, (long) y3);
            jArr2 = a2.f7802a;
            iArr2 = a2.f7803b;
            i5 = a2.f7804c;
            jArr = a2.f7805d;
            iArr = a2.f7806e;
            j2 = a2.f7807f;
        }
        int i38 = i4;
        long c2 = I.c(j2, RetryManager.NANOSECONDS_IN_MS, nVar2.f7866c);
        if (nVar2.f7871h == null || kVar.a()) {
            I.a(jArr, (long) RetryManager.NANOSECONDS_IN_MS, nVar2.f7866c);
            q qVar2 = new q(nVar, jArr2, iArr2, i5, jArr, iArr, c2);
            return qVar2;
        }
        long[] jArr7 = nVar2.f7871h;
        if (jArr7.length == 1 && nVar2.f7865b == 1 && jArr.length >= 2) {
            long j7 = nVar2.f7872i[0];
            long c3 = j7 + I.c(jArr7[0], nVar2.f7866c, nVar2.f7867d);
            iArr3 = iArr2;
            i6 = i5;
            if (a(jArr, j2, j7, c3)) {
                long j8 = j2 - c3;
                long c4 = I.c(j7 - jArr[0], (long) nVar2.f7869f.w, nVar2.f7866c);
                long c5 = I.c(j8, (long) nVar2.f7869f.w, nVar2.f7866c);
                if (!(c4 == 0 && c5 == 0) && c4 <= 2147483647L && c5 <= 2147483647L) {
                    int i39 = (int) c4;
                    k kVar3 = kVar;
                    kVar3.f8305b = i39;
                    kVar3.f8306c = (int) c5;
                    I.a(jArr, (long) RetryManager.NANOSECONDS_IN_MS, nVar2.f7866c);
                    q qVar3 = new q(nVar, jArr2, iArr3, i6, jArr, iArr, I.c(nVar2.f7871h[0], RetryManager.NANOSECONDS_IN_MS, nVar2.f7867d));
                    return qVar3;
                }
            }
        } else {
            iArr3 = iArr2;
            i6 = i5;
        }
        long[] jArr8 = nVar2.f7871h;
        if (jArr8.length == 1 && jArr8[0] == 0) {
            long j9 = nVar2.f7872i[0];
            for (int i40 = 0; i40 < jArr.length; i40++) {
                jArr[i40] = I.c(jArr[i40] - j9, RetryManager.NANOSECONDS_IN_MS, nVar2.f7866c);
            }
            q qVar4 = new q(nVar, jArr2, iArr3, i6, jArr, iArr, I.c(j2 - j9, RetryManager.NANOSECONDS_IN_MS, nVar2.f7866c));
            return qVar4;
        }
        boolean z5 = nVar2.f7865b == 1;
        long[] jArr9 = nVar2.f7871h;
        int[] iArr8 = new int[jArr9.length];
        int[] iArr9 = new int[jArr9.length];
        int i41 = 0;
        boolean z6 = false;
        int i42 = 0;
        int i43 = 0;
        while (true) {
            long[] jArr10 = nVar2.f7871h;
            if (i41 >= jArr10.length) {
                break;
            }
            long j10 = nVar2.f7872i[i41];
            if (j10 != -1) {
                boolean z7 = z6;
                int i44 = i42;
                long c6 = I.c(jArr10[i41], nVar2.f7866c, nVar2.f7867d);
                iArr8[i41] = I.a(jArr, j10, true, true);
                iArr9[i41] = I.a(jArr, j10 + c6, z5, false);
                while (iArr8[i41] < iArr9[i41] && (iArr[iArr8[i41]] & 1) == 0) {
                    iArr8[i41] = iArr8[i41] + 1;
                }
                i42 = i44 + (iArr9[i41] - iArr8[i41]);
                z2 = z7 | (i43 != iArr8[i41]);
                i7 = iArr9[i41];
            } else {
                int i45 = i42;
                i7 = i43;
                z2 = z6;
            }
            i41++;
            z6 = z2;
            i43 = i7;
        }
        boolean z8 = z6;
        int i46 = 0;
        boolean z9 = true;
        if (i42 == i38) {
            z9 = false;
        }
        boolean z10 = z8 | z9;
        long[] jArr11 = z10 ? new long[i42] : jArr2;
        int[] iArr10 = z10 ? new int[i42] : iArr3;
        int i47 = z10 ? 0 : i6;
        int[] iArr11 = z10 ? new int[i42] : iArr;
        long[] jArr12 = new long[i42];
        int i48 = i47;
        long j11 = 0;
        int i49 = 0;
        while (i46 < nVar2.f7871h.length) {
            long j12 = nVar2.f7872i[i46];
            int i50 = iArr8[i46];
            int[] iArr12 = iArr8;
            int i51 = iArr9[i46];
            if (z10) {
                iArr4 = iArr9;
                int i52 = i51 - i50;
                System.arraycopy(jArr2, i50, jArr11, i49, i52);
                jArr3 = jArr2;
                iArr5 = iArr3;
                System.arraycopy(iArr5, i50, iArr10, i49, i52);
                System.arraycopy(iArr, i50, iArr11, i49, i52);
            } else {
                jArr3 = jArr2;
                iArr4 = iArr9;
                iArr5 = iArr3;
            }
            int i53 = i48;
            while (i50 < i51) {
                int[] iArr13 = iArr;
                int i54 = i51;
                int[] iArr14 = iArr11;
                long j13 = j11;
                jArr12[i49] = I.c(j11, RetryManager.NANOSECONDS_IN_MS, nVar2.f7867d) + I.c(jArr[i50] - j12, RetryManager.NANOSECONDS_IN_MS, nVar2.f7866c);
                if (z10 && iArr10[i49] > i53) {
                    i53 = iArr5[i50];
                }
                i49++;
                i50++;
                i51 = i54;
                iArr = iArr13;
                j11 = j13;
                iArr11 = iArr14;
            }
            j11 += nVar2.f7871h[i46];
            i46++;
            i48 = i53;
            iArr = iArr;
            iArr8 = iArr12;
            iArr9 = iArr4;
            iArr11 = iArr11;
            iArr3 = iArr5;
            jArr2 = jArr3;
        }
        q qVar5 = new q(nVar, jArr11, iArr10, i48, jArr12, iArr11, I.c(j11, RetryManager.NANOSECONDS_IN_MS, nVar2.f7867d));
        return qVar5;
    }

    public static Metadata b(v vVar, int i2) {
        vVar.f(8);
        ArrayList arrayList = new ArrayList();
        while (vVar.c() < i2) {
            Metadata.Entry b2 = j.b(vVar);
            if (b2 != null) {
                arrayList.add(b2);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata((List<? extends Metadata.Entry>) arrayList);
    }

    public static int b(v vVar) {
        vVar.e(16);
        return vVar.i();
    }

    public static Pair<Integer, o> b(v vVar, int i2, int i3) {
        int i4 = i2 + 8;
        String str = null;
        Integer num = null;
        int i5 = -1;
        int i6 = 0;
        while (i4 - i2 < i3) {
            vVar.e(i4);
            int i7 = vVar.i();
            int i8 = vVar.i();
            if (i8 == c.oa) {
                num = Integer.valueOf(vVar.i());
            } else if (i8 == c.ja) {
                vVar.f(4);
                str = vVar.b(4);
            } else if (i8 == c.ka) {
                i5 = i4;
                i6 = i7;
            }
            i4 += i7;
        }
        if (!"cenc".equals(str) && !"cbc1".equals(str) && !"cens".equals(str) && !"cbcs".equals(str)) {
            return null;
        }
        boolean z = true;
        C0737e.a(num != null, (Object) "frma atom is mandatory");
        C0737e.a(i5 != -1, (Object) "schi atom is mandatory");
        o a2 = a(vVar, i5, i6, str);
        if (a2 == null) {
            z = false;
        }
        C0737e.a(z, (Object) "tenc atom is mandatory");
        return Pair.create(num, a2);
    }

    public static Metadata a(c.b bVar, boolean z) {
        if (z) {
            return null;
        }
        v vVar = bVar.gb;
        vVar.e(8);
        while (vVar.a() >= 8) {
            int c2 = vVar.c();
            int i2 = vVar.i();
            if (vVar.i() == c.Oa) {
                vVar.e(c2);
                return d(vVar, c2 + i2);
            }
            vVar.e(c2 + i2);
        }
        return null;
    }

    public static int a(int i2) {
        if (i2 == f7766b) {
            return 1;
        }
        if (i2 == f7765a) {
            return 2;
        }
        if (i2 == f7767c || i2 == f7768d || i2 == f7769e || i2 == f7770f) {
            return 3;
        }
        return i2 == f7771g ? 4 : -1;
    }

    public static c a(v vVar, int i2, int i3, String str, DrmInitData drmInitData, boolean z) {
        v vVar2 = vVar;
        vVar2.e(12);
        int i4 = vVar.i();
        c cVar = new c(i4);
        for (int i5 = 0; i5 < i4; i5++) {
            int c2 = vVar.c();
            int i6 = vVar.i();
            C0737e.a(i6 > 0, (Object) "childAtomSize should be positive");
            int i7 = vVar.i();
            if (i7 == c.f7754b || i7 == c.f7755c || i7 == c.ma || i7 == c.ya || i7 == c.f7757e || i7 == c.f7758f || i7 == c.s || i7 == c.f7760h || i7 == c.f7761i || i7 == c.f7763k || i7 == c.m || i7 == c.n || i7 == c.o || i7 == c.p) {
                a(vVar, i7, c2, i6, i2, i3, drmInitData, cVar, i5);
            } else if (i7 == c.v || i7 == c.na || i7 == c.A || i7 == c.C || i7 == c.E || i7 == c.G || i7 == c.J || i7 == c.H || i7 == c.I || i7 == c.La || i7 == c.Ma || i7 == c.y || i7 == c.z || i7 == c.w || i7 == c.Za || i7 == c._a || i7 == c.ab || i7 == c.bb || i7 == c.db) {
                a(vVar, i7, c2, i6, i2, str, z, drmInitData, cVar, i5);
            } else if (i7 == c.wa || i7 == c.Ha || i7 == c.Ia || i7 == c.Ja || i7 == c.Ka) {
                a(vVar, i7, c2, i6, i2, str, cVar);
            } else if (i7 == c.Ya) {
                cVar.f7784b = Format.a(Integer.toString(i2), "application/x-camera-motion", (String) null, -1, (DrmInitData) null);
            }
            vVar2.e(c2 + i6);
        }
        return cVar;
    }

    public static void a(v vVar, int i2, int i3, int i4, int i5, String str, c cVar) {
        v vVar2 = vVar;
        int i6 = i2;
        c cVar2 = cVar;
        vVar2.e(i3 + 8 + 8);
        String str2 = "application/ttml+xml";
        List list = null;
        long j2 = Long.MAX_VALUE;
        if (i6 != c.wa) {
            if (i6 == c.Ha) {
                int i7 = (i4 - 8) - 8;
                byte[] bArr = new byte[i7];
                vVar2.a(bArr, 0, i7);
                list = Collections.singletonList(bArr);
                str2 = "application/x-quicktime-tx3g";
            } else if (i6 == c.Ia) {
                str2 = "application/x-mp4-vtt";
            } else if (i6 == c.Ja) {
                j2 = 0;
            } else if (i6 == c.Ka) {
                cVar2.f7786d = 1;
                str2 = "application/x-mp4-cea-608";
            } else {
                throw new IllegalStateException();
            }
        }
        cVar2.f7784b = Format.a(Integer.toString(i5), str2, (String) null, -1, 0, str, -1, (DrmInitData) null, j2, (List<byte[]>) list);
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v7, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v4, resolved type: java.lang.String} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(c.e.a.a.o.v r21, int r22, int r23, int r24, int r25, int r26, com.google.android.exoplayer2.drm.DrmInitData r27, c.e.a.a.e.e.d.c r28, int r29) {
        /*
            r0 = r21
            r1 = r23
            r2 = r24
            r3 = r27
            r4 = r28
            int r5 = r1 + 8
            int r5 = r5 + 8
            r0.e(r5)
            r5 = 16
            r0.f(r5)
            int r11 = r21.A()
            int r12 = r21.A()
            r5 = 50
            r0.f(r5)
            int r5 = r21.c()
            int r6 = c.e.a.a.e.e.c.ma
            r7 = 0
            r8 = r22
            if (r8 != r6) goto L_0x0055
            android.util.Pair r6 = d(r0, r1, r2)
            if (r6 == 0) goto L_0x0052
            java.lang.Object r8 = r6.first
            java.lang.Integer r8 = (java.lang.Integer) r8
            int r8 = r8.intValue()
            if (r3 != 0) goto L_0x0040
            r3 = r7
            goto L_0x004a
        L_0x0040:
            java.lang.Object r9 = r6.second
            c.e.a.a.e.e.o r9 = (c.e.a.a.e.e.o) r9
            java.lang.String r9 = r9.f7876b
            com.google.android.exoplayer2.drm.DrmInitData r3 = r3.a((java.lang.String) r9)
        L_0x004a:
            c.e.a.a.e.e.o[] r9 = r4.f7783a
            java.lang.Object r6 = r6.second
            c.e.a.a.e.e.o r6 = (c.e.a.a.e.e.o) r6
            r9[r29] = r6
        L_0x0052:
            r0.e(r5)
        L_0x0055:
            r20 = r3
            r3 = -1
            r9 = 1065353216(0x3f800000, float:1.0)
            r3 = r7
            r14 = r3
            r17 = r14
            r9 = 0
            r16 = 1065353216(0x3f800000, float:1.0)
            r18 = -1
        L_0x0063:
            int r10 = r5 - r1
            if (r10 >= r2) goto L_0x017d
            r0.e(r5)
            int r10 = r21.c()
            int r13 = r21.i()
            if (r13 != 0) goto L_0x007d
            int r15 = r21.c()
            int r15 = r15 - r1
            if (r15 != r2) goto L_0x007d
            goto L_0x017d
        L_0x007d:
            if (r13 <= 0) goto L_0x0081
            r6 = 1
            goto L_0x0082
        L_0x0081:
            r6 = 0
        L_0x0082:
            java.lang.String r15 = "childAtomSize should be positive"
            c.e.a.a.o.C0737e.a((boolean) r6, (java.lang.Object) r15)
            int r6 = r21.i()
            int r15 = c.e.a.a.e.e.c.f7756d
            r1 = 3
            if (r6 != r15) goto L_0x00b1
            if (r7 != 0) goto L_0x0094
            r1 = 1
            goto L_0x0095
        L_0x0094:
            r1 = 0
        L_0x0095:
            c.e.a.a.o.C0737e.b(r1)
            int r10 = r10 + 8
            r0.e(r10)
            c.e.a.a.p.h r1 = c.e.a.a.p.h.b(r21)
            java.util.List<byte[]> r14 = r1.f9692a
            int r6 = r1.f9693b
            r4.f7785c = r6
            if (r9 != 0) goto L_0x00ad
            float r1 = r1.f9696e
            r16 = r1
        L_0x00ad:
            java.lang.String r7 = "video/avc"
            goto L_0x0178
        L_0x00b1:
            int r15 = c.e.a.a.e.e.c.f7759g
            if (r6 != r15) goto L_0x00d0
            if (r7 != 0) goto L_0x00b9
            r1 = 1
            goto L_0x00ba
        L_0x00b9:
            r1 = 0
        L_0x00ba:
            c.e.a.a.o.C0737e.b(r1)
            int r10 = r10 + 8
            r0.e(r10)
            c.e.a.a.p.l r1 = c.e.a.a.p.l.a(r21)
            java.util.List<byte[]> r14 = r1.f9700a
            int r1 = r1.f9701b
            r4.f7785c = r1
            java.lang.String r7 = "video/hevc"
            goto L_0x0178
        L_0x00d0:
            int r15 = c.e.a.a.e.e.c.q
            if (r6 == r15) goto L_0x0169
            int r15 = c.e.a.a.e.e.c.r
            if (r6 != r15) goto L_0x00da
            goto L_0x0169
        L_0x00da:
            int r15 = c.e.a.a.e.e.c.f7762j
            if (r6 != r15) goto L_0x00f2
            if (r7 != 0) goto L_0x00e2
            r1 = 1
            goto L_0x00e3
        L_0x00e2:
            r1 = 0
        L_0x00e3:
            c.e.a.a.o.C0737e.b(r1)
            int r1 = c.e.a.a.e.e.c.f7760h
            if (r8 != r1) goto L_0x00ed
            java.lang.String r1 = "video/x-vnd.on2.vp8"
            goto L_0x00ef
        L_0x00ed:
            java.lang.String r1 = "video/x-vnd.on2.vp9"
        L_0x00ef:
            r7 = r1
            goto L_0x0178
        L_0x00f2:
            int r15 = c.e.a.a.e.e.c.f7764l
            if (r6 != r15) goto L_0x0102
            if (r7 != 0) goto L_0x00fa
            r1 = 1
            goto L_0x00fb
        L_0x00fa:
            r1 = 0
        L_0x00fb:
            c.e.a.a.o.C0737e.b(r1)
            java.lang.String r7 = "video/av01"
            goto L_0x0178
        L_0x0102:
            int r15 = c.e.a.a.e.e.c.t
            if (r6 != r15) goto L_0x0112
            if (r7 != 0) goto L_0x010a
            r1 = 1
            goto L_0x010b
        L_0x010a:
            r1 = 0
        L_0x010b:
            c.e.a.a.o.C0737e.b(r1)
            java.lang.String r7 = "video/3gpp"
            goto L_0x0178
        L_0x0112:
            int r15 = c.e.a.a.e.e.c.W
            if (r6 != r15) goto L_0x012e
            if (r7 != 0) goto L_0x011a
            r1 = 1
            goto L_0x011b
        L_0x011a:
            r1 = 0
        L_0x011b:
            c.e.a.a.o.C0737e.b(r1)
            android.util.Pair r1 = a((c.e.a.a.o.v) r0, (int) r10)
            java.lang.Object r6 = r1.first
            r7 = r6
            java.lang.String r7 = (java.lang.String) r7
            java.lang.Object r1 = r1.second
            java.util.List r14 = java.util.Collections.singletonList(r1)
            goto L_0x0178
        L_0x012e:
            int r15 = c.e.a.a.e.e.c.va
            if (r6 != r15) goto L_0x0138
            float r16 = c(r0, r10)
            r9 = 1
            goto L_0x0178
        L_0x0138:
            int r15 = c.e.a.a.e.e.c.Wa
            if (r6 != r15) goto L_0x0141
            byte[] r17 = c(r0, r10, r13)
            goto L_0x0178
        L_0x0141:
            int r10 = c.e.a.a.e.e.c.Va
            if (r6 != r10) goto L_0x0178
            int r6 = r21.u()
            r0.f(r1)
            if (r6 != 0) goto L_0x0178
            int r6 = r21.u()
            if (r6 == 0) goto L_0x0166
            r10 = 1
            if (r6 == r10) goto L_0x0163
            r15 = 2
            if (r6 == r15) goto L_0x0160
            if (r6 == r1) goto L_0x015d
            goto L_0x0178
        L_0x015d:
            r18 = 3
            goto L_0x0178
        L_0x0160:
            r18 = 2
            goto L_0x0178
        L_0x0163:
            r18 = 1
            goto L_0x0178
        L_0x0166:
            r18 = 0
            goto L_0x0178
        L_0x0169:
            c.e.a.a.p.j r1 = c.e.a.a.p.j.a(r21)
            if (r1 == 0) goto L_0x0178
            int r6 = r1.f9697a
            r10 = 5
            if (r6 != r10) goto L_0x0178
            java.lang.String r3 = r1.f9699c
            java.lang.String r7 = "video/dolby-vision"
        L_0x0178:
            int r5 = r5 + r13
            r1 = r23
            goto L_0x0063
        L_0x017d:
            if (r7 != 0) goto L_0x0180
            return
        L_0x0180:
            java.lang.String r6 = java.lang.Integer.toString(r25)
            r9 = -1
            r10 = -1
            r13 = -1082130432(0xffffffffbf800000, float:-1.0)
            r19 = 0
            r8 = r3
            r15 = r26
            com.google.android.exoplayer2.Format r0 = com.google.android.exoplayer2.Format.a((java.lang.String) r6, (java.lang.String) r7, (java.lang.String) r8, (int) r9, (int) r10, (int) r11, (int) r12, (float) r13, (java.util.List<byte[]>) r14, (int) r15, (float) r16, (byte[]) r17, (int) r18, (com.google.android.exoplayer2.video.ColorInfo) r19, (com.google.android.exoplayer2.drm.DrmInitData) r20)
            r4.f7784b = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.e.e.d.a(c.e.a.a.o.v, int, int, int, int, int, com.google.android.exoplayer2.drm.DrmInitData, c.e.a.a.e.e.d$c, int):void");
    }

    public static Pair<long[], long[]> a(c.a aVar) {
        if (aVar != null) {
            c.b e2 = aVar.e(c.da);
            if (e2 != null) {
                v vVar = e2.gb;
                vVar.e(8);
                int c2 = c.c(vVar.i());
                int y = vVar.y();
                long[] jArr = new long[y];
                long[] jArr2 = new long[y];
                int i2 = 0;
                while (i2 < y) {
                    jArr[i2] = c2 == 1 ? vVar.z() : vVar.w();
                    jArr2[i2] = c2 == 1 ? vVar.q() : (long) vVar.i();
                    if (vVar.s() == 1) {
                        vVar.f(2);
                        i2++;
                    } else {
                        throw new IllegalArgumentException("Unsupported media rate.");
                    }
                }
                return Pair.create(jArr, jArr2);
            }
        }
        return Pair.create(null, null);
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v6, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v7, resolved type: java.lang.String} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(c.e.a.a.o.v r28, int r29, int r30, int r31, int r32, java.lang.String r33, boolean r34, com.google.android.exoplayer2.drm.DrmInitData r35, c.e.a.a.e.e.d.c r36, int r37) {
        /*
            r0 = r28
            r1 = r30
            r2 = r31
            r14 = r33
            r3 = r35
            r15 = r36
            int r4 = r1 + 8
            r5 = 8
            int r4 = r4 + r5
            r0.e(r4)
            r4 = 6
            r13 = 0
            if (r34 == 0) goto L_0x0020
            int r5 = r28.A()
            r0.f(r4)
            goto L_0x0024
        L_0x0020:
            r0.f(r5)
            r5 = 0
        L_0x0024:
            r12 = 2
            r6 = 16
            r11 = 1
            if (r5 == 0) goto L_0x0048
            if (r5 != r11) goto L_0x002d
            goto L_0x0048
        L_0x002d:
            if (r5 != r12) goto L_0x0047
            r0.f(r6)
            double r4 = r28.g()
            long r4 = java.lang.Math.round(r4)
            int r5 = (int) r4
            int r4 = r28.y()
            r6 = 20
            r0.f(r6)
            r7 = r4
            r4 = r5
            goto L_0x0058
        L_0x0047:
            return
        L_0x0048:
            int r7 = r28.A()
            r0.f(r4)
            int r4 = r28.v()
            if (r5 != r11) goto L_0x0058
            r0.f(r6)
        L_0x0058:
            int r5 = r28.c()
            int r6 = c.e.a.a.e.e.c.na
            r16 = 0
            r8 = r29
            if (r8 != r6) goto L_0x008c
            android.util.Pair r6 = d(r0, r1, r2)
            if (r6 == 0) goto L_0x0089
            java.lang.Object r8 = r6.first
            java.lang.Integer r8 = (java.lang.Integer) r8
            int r8 = r8.intValue()
            if (r3 != 0) goto L_0x0077
            r3 = r16
            goto L_0x0081
        L_0x0077:
            java.lang.Object r9 = r6.second
            c.e.a.a.e.e.o r9 = (c.e.a.a.e.e.o) r9
            java.lang.String r9 = r9.f7876b
            com.google.android.exoplayer2.drm.DrmInitData r3 = r3.a((java.lang.String) r9)
        L_0x0081:
            c.e.a.a.e.e.o[] r9 = r15.f7783a
            java.lang.Object r6 = r6.second
            c.e.a.a.e.e.o r6 = (c.e.a.a.e.e.o) r6
            r9[r37] = r6
        L_0x0089:
            r0.e(r5)
        L_0x008c:
            r10 = r3
            int r3 = c.e.a.a.e.e.c.A
            java.lang.String r9 = "audio/raw"
            if (r8 != r3) goto L_0x0097
            java.lang.String r3 = "audio/ac3"
            goto L_0x0107
        L_0x0097:
            int r3 = c.e.a.a.e.e.c.C
            if (r8 != r3) goto L_0x009f
            java.lang.String r3 = "audio/eac3"
            goto L_0x0107
        L_0x009f:
            int r3 = c.e.a.a.e.e.c.E
            if (r8 != r3) goto L_0x00a7
            java.lang.String r3 = "audio/ac4"
            goto L_0x0107
        L_0x00a7:
            int r3 = c.e.a.a.e.e.c.G
            if (r8 != r3) goto L_0x00af
            java.lang.String r3 = "audio/vnd.dts"
            goto L_0x0107
        L_0x00af:
            int r3 = c.e.a.a.e.e.c.H
            if (r8 == r3) goto L_0x0105
            int r3 = c.e.a.a.e.e.c.I
            if (r8 != r3) goto L_0x00b8
            goto L_0x0105
        L_0x00b8:
            int r3 = c.e.a.a.e.e.c.J
            if (r8 != r3) goto L_0x00bf
            java.lang.String r3 = "audio/vnd.dts.hd;profile=lbr"
            goto L_0x0107
        L_0x00bf:
            int r3 = c.e.a.a.e.e.c.La
            if (r8 != r3) goto L_0x00c6
            java.lang.String r3 = "audio/3gpp"
            goto L_0x0107
        L_0x00c6:
            int r3 = c.e.a.a.e.e.c.Ma
            if (r8 != r3) goto L_0x00cd
            java.lang.String r3 = "audio/amr-wb"
            goto L_0x0107
        L_0x00cd:
            int r3 = c.e.a.a.e.e.c.y
            if (r8 == r3) goto L_0x0103
            int r3 = c.e.a.a.e.e.c.z
            if (r8 != r3) goto L_0x00d6
            goto L_0x0103
        L_0x00d6:
            int r3 = c.e.a.a.e.e.c.w
            if (r8 != r3) goto L_0x00dd
            java.lang.String r3 = "audio/mpeg"
            goto L_0x0107
        L_0x00dd:
            int r3 = c.e.a.a.e.e.c.Za
            if (r8 != r3) goto L_0x00e4
            java.lang.String r3 = "audio/alac"
            goto L_0x0107
        L_0x00e4:
            int r3 = c.e.a.a.e.e.c._a
            if (r8 != r3) goto L_0x00eb
            java.lang.String r3 = "audio/g711-alaw"
            goto L_0x0107
        L_0x00eb:
            int r3 = c.e.a.a.e.e.c.ab
            if (r8 != r3) goto L_0x00f2
            java.lang.String r3 = "audio/g711-mlaw"
            goto L_0x0107
        L_0x00f2:
            int r3 = c.e.a.a.e.e.c.bb
            if (r8 != r3) goto L_0x00f9
            java.lang.String r3 = "audio/opus"
            goto L_0x0107
        L_0x00f9:
            int r3 = c.e.a.a.e.e.c.db
            if (r8 != r3) goto L_0x0100
            java.lang.String r3 = "audio/flac"
            goto L_0x0107
        L_0x0100:
            r3 = r16
            goto L_0x0107
        L_0x0103:
            r3 = r9
            goto L_0x0107
        L_0x0105:
            java.lang.String r3 = "audio/vnd.dts.hd"
        L_0x0107:
            r18 = r4
            r8 = r5
            r17 = r7
            r19 = r16
            r7 = r3
        L_0x010f:
            int r3 = r8 - r1
            r4 = -1
            if (r3 >= r2) goto L_0x0265
            r0.e(r8)
            int r6 = r28.i()
            if (r6 <= 0) goto L_0x011f
            r3 = 1
            goto L_0x0120
        L_0x011f:
            r3 = 0
        L_0x0120:
            java.lang.String r5 = "childAtomSize should be positive"
            c.e.a.a.o.C0737e.a((boolean) r3, (java.lang.Object) r5)
            int r3 = r28.i()
            int r5 = c.e.a.a.e.e.c.W
            if (r3 == r5) goto L_0x0214
            if (r34 == 0) goto L_0x0135
            int r5 = c.e.a.a.e.e.c.x
            if (r3 != r5) goto L_0x0135
            goto L_0x0214
        L_0x0135:
            int r4 = c.e.a.a.e.e.c.B
            if (r3 != r4) goto L_0x0157
            int r3 = r8 + 8
            r0.e(r3)
            java.lang.String r3 = java.lang.Integer.toString(r32)
            com.google.android.exoplayer2.Format r3 = c.e.a.a.b.C0695h.a(r0, r3, r14, r10)
            r15.f7784b = r3
        L_0x0148:
            r5 = r6
            r25 = r7
            r6 = r8
            r27 = r9
            r20 = r10
            r1 = 0
            r21 = 1
            r22 = 2
            goto L_0x0211
        L_0x0157:
            int r4 = c.e.a.a.e.e.c.D
            if (r3 != r4) goto L_0x016b
            int r3 = r8 + 8
            r0.e(r3)
            java.lang.String r3 = java.lang.Integer.toString(r32)
            com.google.android.exoplayer2.Format r3 = c.e.a.a.b.C0695h.b(r0, r3, r14, r10)
            r15.f7784b = r3
            goto L_0x0148
        L_0x016b:
            int r4 = c.e.a.a.e.e.c.F
            if (r3 != r4) goto L_0x017f
            int r3 = r8 + 8
            r0.e(r3)
            java.lang.String r3 = java.lang.Integer.toString(r32)
            com.google.android.exoplayer2.Format r3 = c.e.a.a.b.j.a(r0, r3, r14, r10)
            r15.f7784b = r3
            goto L_0x0148
        L_0x017f:
            int r4 = c.e.a.a.e.e.c.K
            if (r3 != r4) goto L_0x01bb
            java.lang.String r3 = java.lang.Integer.toString(r32)
            r5 = 0
            r20 = -1
            r21 = -1
            r22 = 0
            r23 = 0
            r4 = r7
            r24 = r6
            r6 = r20
            r25 = r7
            r7 = r21
            r26 = r8
            r8 = r17
            r27 = r9
            r9 = r18
            r20 = r10
            r10 = r22
            r21 = 1
            r11 = r20
            r22 = 2
            r12 = r23
            r1 = 0
            r13 = r33
            com.google.android.exoplayer2.Format r3 = com.google.android.exoplayer2.Format.a((java.lang.String) r3, (java.lang.String) r4, (java.lang.String) r5, (int) r6, (int) r7, (int) r8, (int) r9, (java.util.List<byte[]>) r10, (com.google.android.exoplayer2.drm.DrmInitData) r11, (int) r12, (java.lang.String) r13)
            r15.f7784b = r3
            r5 = r24
            r6 = r26
            goto L_0x0211
        L_0x01bb:
            r24 = r6
            r25 = r7
            r26 = r8
            r27 = r9
            r20 = r10
            r1 = 0
            r21 = 1
            r22 = 2
            int r4 = c.e.a.a.e.e.c.Za
            if (r3 != r4) goto L_0x01dd
            r5 = r24
            byte[] r3 = new byte[r5]
            r6 = r26
            r0.e(r6)
            r0.a(r3, r1, r5)
            r19 = r3
            goto L_0x0211
        L_0x01dd:
            r5 = r24
            r6 = r26
            int r4 = c.e.a.a.e.e.c.cb
            if (r3 != r4) goto L_0x01ff
            int r3 = r5 + -8
            byte[] r4 = f7773i
            int r7 = r4.length
            int r7 = r7 + r3
            byte[] r7 = new byte[r7]
            int r8 = r4.length
            java.lang.System.arraycopy(r4, r1, r7, r1, r8)
            int r8 = r6 + 8
            r0.e(r8)
            byte[] r4 = f7773i
            int r4 = r4.length
            r0.a(r7, r4, r3)
            r19 = r7
            goto L_0x0211
        L_0x01ff:
            int r3 = c.e.a.a.e.e.c.eb
            if (r5 != r3) goto L_0x0211
            int r3 = r5 + -12
            byte[] r4 = new byte[r3]
            int r8 = r6 + 12
            r0.e(r8)
            r0.a(r4, r1, r3)
            r19 = r4
        L_0x0211:
            r7 = r25
            goto L_0x0258
        L_0x0214:
            r5 = r6
            r25 = r7
            r6 = r8
            r27 = r9
            r20 = r10
            r1 = 0
            r21 = 1
            r22 = 2
            int r7 = c.e.a.a.e.e.c.W
            if (r3 != r7) goto L_0x0227
            r8 = r6
            goto L_0x022b
        L_0x0227:
            int r8 = a((c.e.a.a.o.v) r0, (int) r6, (int) r5)
        L_0x022b:
            if (r8 == r4) goto L_0x0211
            android.util.Pair r3 = a((c.e.a.a.o.v) r0, (int) r8)
            java.lang.Object r4 = r3.first
            r7 = r4
            java.lang.String r7 = (java.lang.String) r7
            java.lang.Object r3 = r3.second
            r19 = r3
            byte[] r19 = (byte[]) r19
            java.lang.String r3 = "audio/mp4a-latm"
            boolean r3 = r3.equals(r7)
            if (r3 == 0) goto L_0x0258
            android.util.Pair r3 = c.e.a.a.o.C0739g.a((byte[]) r19)
            java.lang.Object r4 = r3.first
            java.lang.Integer r4 = (java.lang.Integer) r4
            int r18 = r4.intValue()
            java.lang.Object r3 = r3.second
            java.lang.Integer r3 = (java.lang.Integer) r3
            int r17 = r3.intValue()
        L_0x0258:
            int r8 = r6 + r5
            r1 = r30
            r10 = r20
            r9 = r27
            r11 = 1
            r12 = 2
            r13 = 0
            goto L_0x010f
        L_0x0265:
            r25 = r7
            r27 = r9
            r20 = r10
            r22 = 2
            com.google.android.exoplayer2.Format r0 = r15.f7784b
            if (r0 != 0) goto L_0x02a3
            r7 = r25
            if (r7 == 0) goto L_0x02a3
            r0 = r27
            boolean r0 = r0.equals(r7)
            if (r0 == 0) goto L_0x027e
            goto L_0x0280
        L_0x027e:
            r22 = -1
        L_0x0280:
            java.lang.String r0 = java.lang.Integer.toString(r32)
            r2 = 0
            r3 = -1
            r4 = -1
            if (r19 != 0) goto L_0x028c
            r8 = r16
            goto L_0x0291
        L_0x028c:
            java.util.List r1 = java.util.Collections.singletonList(r19)
            r8 = r1
        L_0x0291:
            r10 = 0
            r1 = r7
            r5 = r17
            r6 = r18
            r7 = r22
            r9 = r20
            r11 = r33
            com.google.android.exoplayer2.Format r0 = com.google.android.exoplayer2.Format.a((java.lang.String) r0, (java.lang.String) r1, (java.lang.String) r2, (int) r3, (int) r4, (int) r5, (int) r6, (int) r7, (java.util.List<byte[]>) r8, (com.google.android.exoplayer2.drm.DrmInitData) r9, (int) r10, (java.lang.String) r11)
            r15.f7784b = r0
        L_0x02a3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.e.e.d.a(c.e.a.a.o.v, int, int, int, int, java.lang.String, boolean, com.google.android.exoplayer2.drm.DrmInitData, c.e.a.a.e.e.d$c, int):void");
    }

    public static int a(v vVar, int i2, int i3) {
        int c2 = vVar.c();
        while (c2 - i2 < i3) {
            vVar.e(c2);
            int i4 = vVar.i();
            C0737e.a(i4 > 0, (Object) "childAtomSize should be positive");
            if (vVar.i() == c.W) {
                return c2;
            }
            c2 += i4;
        }
        return -1;
    }

    public static Pair<String, byte[]> a(v vVar, int i2) {
        vVar.e(i2 + 8 + 4);
        vVar.f(1);
        a(vVar);
        vVar.f(2);
        int u = vVar.u();
        if ((u & 128) != 0) {
            vVar.f(2);
        }
        if ((u & 64) != 0) {
            vVar.f(vVar.A());
        }
        if ((u & 32) != 0) {
            vVar.f(2);
        }
        vVar.f(1);
        a(vVar);
        String a2 = s.a(vVar.u());
        if ("audio/mpeg".equals(a2) || "audio/vnd.dts".equals(a2) || "audio/vnd.dts.hd".equals(a2)) {
            return Pair.create(a2, null);
        }
        vVar.f(12);
        vVar.f(1);
        int a3 = a(vVar);
        byte[] bArr = new byte[a3];
        vVar.a(bArr, 0, a3);
        return Pair.create(a2, bArr);
    }

    public static o a(v vVar, int i2, int i3, String str) {
        int i4;
        int i5;
        int i6 = i2 + 8;
        while (true) {
            byte[] bArr = null;
            if (i6 - i2 >= i3) {
                return null;
            }
            vVar.e(i6);
            int i7 = vVar.i();
            if (vVar.i() == c.la) {
                int c2 = c.c(vVar.i());
                vVar.f(1);
                if (c2 == 0) {
                    vVar.f(1);
                    i5 = 0;
                    i4 = 0;
                } else {
                    int u = vVar.u();
                    i4 = u & 15;
                    i5 = (u & 240) >> 4;
                }
                boolean z = vVar.u() == 1;
                int u2 = vVar.u();
                byte[] bArr2 = new byte[16];
                vVar.a(bArr2, 0, bArr2.length);
                if (z && u2 == 0) {
                    int u3 = vVar.u();
                    bArr = new byte[u3];
                    vVar.a(bArr, 0, u3);
                }
                o oVar = new o(z, str, u2, bArr2, i5, i4, bArr);
                return oVar;
            }
            i6 += i7;
        }
    }

    public static int a(v vVar) {
        int u = vVar.u();
        int i2 = u & 127;
        while ((u & 128) == 128) {
            u = vVar.u();
            i2 = (i2 << 7) | (u & 127);
        }
        return i2;
    }

    public static boolean a(long[] jArr, long j2, long j3, long j4) {
        int length = jArr.length - 1;
        int a2 = I.a(3, 0, length);
        int a3 = I.a(jArr.length - 3, 0, length);
        if (jArr[0] > j3 || j3 >= jArr[a2] || jArr[a3] >= j4 || j4 > j2) {
            return false;
        }
        return true;
    }
}
