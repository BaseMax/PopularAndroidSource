package c.e.a.a.e.f;

import c.e.a.a.o.p;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.ParserException;
import java.util.Arrays;

/* compiled from: VorbisUtil */
public final class n {

    /* compiled from: VorbisUtil */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f7963a;

        /* renamed from: b  reason: collision with root package name */
        public final int f7964b;

        /* renamed from: c  reason: collision with root package name */
        public final long[] f7965c;

        /* renamed from: d  reason: collision with root package name */
        public final int f7966d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f7967e;

        public a(int i2, int i3, long[] jArr, int i4, boolean z) {
            this.f7963a = i2;
            this.f7964b = i3;
            this.f7965c = jArr;
            this.f7966d = i4;
            this.f7967e = z;
        }
    }

    /* compiled from: VorbisUtil */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f7968a;

        /* renamed from: b  reason: collision with root package name */
        public final String[] f7969b;

        /* renamed from: c  reason: collision with root package name */
        public final int f7970c;

        public b(String str, String[] strArr, int i2) {
            this.f7968a = str;
            this.f7969b = strArr;
            this.f7970c = i2;
        }
    }

    /* compiled from: VorbisUtil */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f7971a;

        /* renamed from: b  reason: collision with root package name */
        public final int f7972b;

        /* renamed from: c  reason: collision with root package name */
        public final int f7973c;

        /* renamed from: d  reason: collision with root package name */
        public final int f7974d;

        public c(boolean z, int i2, int i3, int i4) {
            this.f7971a = z;
            this.f7972b = i2;
            this.f7973c = i3;
            this.f7974d = i4;
        }
    }

    /* compiled from: VorbisUtil */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final long f7975a;

        /* renamed from: b  reason: collision with root package name */
        public final int f7976b;

        /* renamed from: c  reason: collision with root package name */
        public final long f7977c;

        /* renamed from: d  reason: collision with root package name */
        public final int f7978d;

        /* renamed from: e  reason: collision with root package name */
        public final int f7979e;

        /* renamed from: f  reason: collision with root package name */
        public final int f7980f;

        /* renamed from: g  reason: collision with root package name */
        public final int f7981g;

        /* renamed from: h  reason: collision with root package name */
        public final int f7982h;

        /* renamed from: i  reason: collision with root package name */
        public final boolean f7983i;

        /* renamed from: j  reason: collision with root package name */
        public final byte[] f7984j;

        public d(long j2, int i2, long j3, int i3, int i4, int i5, int i6, int i7, boolean z, byte[] bArr) {
            this.f7975a = j2;
            this.f7976b = i2;
            this.f7977c = j3;
            this.f7978d = i3;
            this.f7979e = i4;
            this.f7980f = i5;
            this.f7981g = i6;
            this.f7982h = i7;
            this.f7983i = z;
            this.f7984j = bArr;
        }
    }

    public static int a(int i2) {
        int i3 = 0;
        while (i2 > 0) {
            i3++;
            i2 >>>= 1;
        }
        return i3;
    }

    public static b a(v vVar) {
        a(3, vVar, false);
        String b2 = vVar.b((int) vVar.n());
        int length = 11 + b2.length();
        long n = vVar.n();
        String[] strArr = new String[((int) n)];
        int i2 = length + 4;
        for (int i3 = 0; ((long) i3) < n; i3++) {
            strArr[i3] = vVar.b((int) vVar.n());
            i2 = i2 + 4 + strArr[i3].length();
        }
        if ((vVar.u() & 1) != 0) {
            return new b(b2, strArr, i2 + 1);
        }
        throw new ParserException("framing bit expected to be set");
    }

    public static d b(v vVar) {
        v vVar2 = vVar;
        a(1, vVar2, false);
        long n = vVar.n();
        int u = vVar.u();
        long n2 = vVar.n();
        int l2 = vVar.l();
        int l3 = vVar.l();
        int l4 = vVar.l();
        int u2 = vVar.u();
        d dVar = new d(n, u, n2, l2, l3, l4, (int) Math.pow(2.0d, (double) (u2 & 15)), (int) Math.pow(2.0d, (double) ((u2 & 240) >> 4)), (vVar.u() & 1) > 0, Arrays.copyOf(vVar2.f9634a, vVar.d()));
        return dVar;
    }

    public static c[] c(l lVar) {
        int a2 = lVar.a(6) + 1;
        c[] cVarArr = new c[a2];
        for (int i2 = 0; i2 < a2; i2++) {
            cVarArr[i2] = new c(lVar.c(), lVar.a(16), lVar.a(16), lVar.a(8));
        }
        return cVarArr;
    }

    public static void d(l lVar) {
        int a2 = lVar.a(6) + 1;
        int i2 = 0;
        while (i2 < a2) {
            if (lVar.a(16) <= 2) {
                lVar.b(24);
                lVar.b(24);
                lVar.b(24);
                int a3 = lVar.a(6) + 1;
                lVar.b(8);
                int[] iArr = new int[a3];
                for (int i3 = 0; i3 < a3; i3++) {
                    iArr[i3] = ((lVar.c() ? lVar.a(5) : 0) * 8) + lVar.a(3);
                }
                for (int i4 = 0; i4 < a3; i4++) {
                    for (int i5 = 0; i5 < 8; i5++) {
                        if ((iArr[i4] & (1 << i5)) != 0) {
                            lVar.b(8);
                        }
                    }
                }
                i2++;
            } else {
                throw new ParserException("residueType greater than 2 is not decodable");
            }
        }
    }

    public static boolean a(int i2, v vVar, boolean z) {
        if (vVar.a() < 7) {
            if (z) {
                return false;
            }
            throw new ParserException("too short header: " + vVar.a());
        } else if (vVar.u() != i2) {
            if (z) {
                return false;
            }
            throw new ParserException("expected header type " + Integer.toHexString(i2));
        } else if (vVar.u() == 118 && vVar.u() == 111 && vVar.u() == 114 && vVar.u() == 98 && vVar.u() == 105 && vVar.u() == 115) {
            return true;
        } else {
            if (z) {
                return false;
            }
            throw new ParserException("expected characters 'vorbis'");
        }
    }

    public static void b(l lVar) {
        int a2 = lVar.a(6) + 1;
        for (int i2 = 0; i2 < a2; i2++) {
            int a3 = lVar.a(16);
            if (a3 == 0) {
                lVar.b(8);
                lVar.b(16);
                lVar.b(16);
                lVar.b(6);
                lVar.b(8);
                int a4 = lVar.a(4) + 1;
                for (int i3 = 0; i3 < a4; i3++) {
                    lVar.b(8);
                }
            } else if (a3 == 1) {
                int a5 = lVar.a(5);
                int[] iArr = new int[a5];
                int i4 = -1;
                for (int i5 = 0; i5 < a5; i5++) {
                    iArr[i5] = lVar.a(4);
                    if (iArr[i5] > i4) {
                        i4 = iArr[i5];
                    }
                }
                int[] iArr2 = new int[(i4 + 1)];
                for (int i6 = 0; i6 < iArr2.length; i6++) {
                    iArr2[i6] = lVar.a(3) + 1;
                    int a6 = lVar.a(2);
                    if (a6 > 0) {
                        lVar.b(8);
                    }
                    for (int i7 = 0; i7 < (1 << a6); i7++) {
                        lVar.b(8);
                    }
                }
                lVar.b(2);
                int a7 = lVar.a(4);
                int i8 = 0;
                int i9 = 0;
                for (int i10 = 0; i10 < a5; i10++) {
                    i8 += iArr2[iArr[i10]];
                    while (i9 < i8) {
                        lVar.b(a7);
                        i9++;
                    }
                }
            } else {
                throw new ParserException("floor type greater than 1 not decodable: " + a3);
            }
        }
    }

    public static c[] a(v vVar, int i2) {
        int i3 = 0;
        a(5, vVar, false);
        int u = vVar.u() + 1;
        l lVar = new l(vVar.f9634a);
        lVar.b(vVar.c() * 8);
        for (int i4 = 0; i4 < u; i4++) {
            a(lVar);
        }
        int a2 = lVar.a(6) + 1;
        while (i3 < a2) {
            if (lVar.a(16) == 0) {
                i3++;
            } else {
                throw new ParserException("placeholder of time domain transforms not zeroed out");
            }
        }
        b(lVar);
        d(lVar);
        a(i2, lVar);
        c[] c2 = c(lVar);
        if (lVar.c()) {
            return c2;
        }
        throw new ParserException("framing bit after modes not set as expected");
    }

    public static void a(int i2, l lVar) {
        int a2 = lVar.a(6) + 1;
        for (int i3 = 0; i3 < a2; i3++) {
            if (lVar.a(16) != 0) {
                p.b("VorbisUtil", "mapping type other than 0 not supported: " + r4);
            } else {
                int a3 = lVar.c() ? lVar.a(4) + 1 : 1;
                if (lVar.c()) {
                    int a4 = lVar.a(8) + 1;
                    for (int i4 = 0; i4 < a4; i4++) {
                        int i5 = i2 - 1;
                        lVar.b(a(i5));
                        lVar.b(a(i5));
                    }
                }
                if (lVar.a(2) == 0) {
                    if (a3 > 1) {
                        for (int i6 = 0; i6 < i2; i6++) {
                            lVar.b(4);
                        }
                    }
                    for (int i7 = 0; i7 < a3; i7++) {
                        lVar.b(8);
                        lVar.b(8);
                        lVar.b(8);
                    }
                } else {
                    throw new ParserException("to reserved bits must be zero after mapping coupling steps");
                }
            }
        }
    }

    public static a a(l lVar) {
        if (lVar.a(24) == 5653314) {
            int a2 = lVar.a(16);
            int a3 = lVar.a(24);
            long[] jArr = new long[a3];
            boolean c2 = lVar.c();
            long j2 = 0;
            if (!c2) {
                boolean c3 = lVar.c();
                for (int i2 = 0; i2 < jArr.length; i2++) {
                    if (!c3) {
                        jArr[i2] = (long) (lVar.a(5) + 1);
                    } else if (lVar.c()) {
                        jArr[i2] = (long) (lVar.a(5) + 1);
                    } else {
                        jArr[i2] = 0;
                    }
                }
            } else {
                int a4 = lVar.a(5) + 1;
                int i3 = 0;
                while (i3 < jArr.length) {
                    int a5 = lVar.a(a(a3 - i3));
                    int i4 = i3;
                    for (int i5 = 0; i5 < a5 && i4 < jArr.length; i5++) {
                        jArr[i4] = (long) a4;
                        i4++;
                    }
                    a4++;
                    i3 = i4;
                }
            }
            int a6 = lVar.a(4);
            if (a6 <= 2) {
                if (a6 == 1 || a6 == 2) {
                    lVar.b(32);
                    lVar.b(32);
                    int a7 = lVar.a(4) + 1;
                    lVar.b(1);
                    if (a6 != 1) {
                        j2 = ((long) a3) * ((long) a2);
                    } else if (a2 != 0) {
                        j2 = a((long) a3, (long) a2);
                    }
                    lVar.b((int) (j2 * ((long) a7)));
                }
                a aVar = new a(a2, a3, jArr, a6, c2);
                return aVar;
            }
            throw new ParserException("lookup type greater than 2 not decodable: " + a6);
        }
        throw new ParserException("expected code book to start with [0x56, 0x43, 0x42] at " + lVar.b());
    }

    public static long a(long j2, long j3) {
        double d2 = (double) j3;
        Double.isNaN(d2);
        return (long) Math.floor(Math.pow((double) j2, 1.0d / d2));
    }
}
