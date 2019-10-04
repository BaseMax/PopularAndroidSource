package c.e.a.a.e.e;

import c.e.a.a.o.I;

/* compiled from: FixedSampleSizeRechunker */
public final class g {

    /* compiled from: FixedSampleSizeRechunker */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long[] f7802a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f7803b;

        /* renamed from: c  reason: collision with root package name */
        public final int f7804c;

        /* renamed from: d  reason: collision with root package name */
        public final long[] f7805d;

        /* renamed from: e  reason: collision with root package name */
        public final int[] f7806e;

        /* renamed from: f  reason: collision with root package name */
        public final long f7807f;

        public a(long[] jArr, int[] iArr, int i2, long[] jArr2, int[] iArr2, long j2) {
            this.f7802a = jArr;
            this.f7803b = iArr;
            this.f7804c = i2;
            this.f7805d = jArr2;
            this.f7806e = iArr2;
            this.f7807f = j2;
        }
    }

    public static a a(int i2, long[] jArr, int[] iArr, long j2) {
        int[] iArr2 = iArr;
        int i3 = 8192 / i2;
        int i4 = 0;
        for (int a2 : iArr2) {
            i4 += I.a(a2, i3);
        }
        long[] jArr2 = new long[i4];
        int[] iArr3 = new int[i4];
        long[] jArr3 = new long[i4];
        int[] iArr4 = new int[i4];
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < iArr2.length; i8++) {
            int i9 = iArr2[i8];
            long j3 = jArr[i8];
            while (i9 > 0) {
                int min = Math.min(i3, i9);
                jArr2[i6] = j3;
                iArr3[i6] = i2 * min;
                i7 = Math.max(i7, iArr3[i6]);
                jArr3[i6] = ((long) i5) * j2;
                iArr4[i6] = 1;
                j3 += (long) iArr3[i6];
                i5 += min;
                i9 -= min;
                i6++;
            }
        }
        a aVar = new a(jArr2, iArr3, i7, jArr3, iArr4, j2 * ((long) i5));
        return aVar;
    }
}
