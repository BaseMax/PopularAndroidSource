package c.e.a.a.o;

import java.nio.ByteBuffer;
import java.util.Arrays;

/* compiled from: NalUnitUtil */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f9611a = {0, 0, 0, 1};

    /* renamed from: b  reason: collision with root package name */
    public static final float[] f9612b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* renamed from: c  reason: collision with root package name */
    public static final Object f9613c = new Object();

    /* renamed from: d  reason: collision with root package name */
    public static int[] f9614d = new int[10];

    /* compiled from: NalUnitUtil */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f9615a;

        /* renamed from: b  reason: collision with root package name */
        public final int f9616b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f9617c;

        public a(int i2, int i3, boolean z) {
            this.f9615a = i2;
            this.f9616b = i3;
            this.f9617c = z;
        }
    }

    /* compiled from: NalUnitUtil */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f9618a;

        /* renamed from: b  reason: collision with root package name */
        public final int f9619b;

        /* renamed from: c  reason: collision with root package name */
        public final int f9620c;

        /* renamed from: d  reason: collision with root package name */
        public final int f9621d;

        /* renamed from: e  reason: collision with root package name */
        public final int f9622e;

        /* renamed from: f  reason: collision with root package name */
        public final int f9623f;

        /* renamed from: g  reason: collision with root package name */
        public final float f9624g;

        /* renamed from: h  reason: collision with root package name */
        public final boolean f9625h;

        /* renamed from: i  reason: collision with root package name */
        public final boolean f9626i;

        /* renamed from: j  reason: collision with root package name */
        public final int f9627j;

        /* renamed from: k  reason: collision with root package name */
        public final int f9628k;

        /* renamed from: l  reason: collision with root package name */
        public final int f9629l;
        public final boolean m;

        public b(int i2, int i3, int i4, int i5, int i6, int i7, float f2, boolean z, boolean z2, int i8, int i9, int i10, boolean z3) {
            this.f9618a = i2;
            this.f9619b = i3;
            this.f9620c = i4;
            this.f9621d = i5;
            this.f9622e = i6;
            this.f9623f = i7;
            this.f9624g = f2;
            this.f9625h = z;
            this.f9626i = z2;
            this.f9627j = i8;
            this.f9628k = i9;
            this.f9629l = i10;
            this.m = z3;
        }
    }

    public static void a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i2 + 1;
            if (i4 < position) {
                byte b2 = byteBuffer.get(i2) & 255;
                if (i3 == 3) {
                    if (b2 == 1 && (byteBuffer.get(i4) & 31) == 7) {
                        ByteBuffer duplicate = byteBuffer.duplicate();
                        duplicate.position(i2 - 3);
                        duplicate.limit(position);
                        byteBuffer.position(0);
                        byteBuffer.put(duplicate);
                        return;
                    }
                } else if (b2 == 0) {
                    i3++;
                }
                if (b2 != 0) {
                    i3 = 0;
                }
                i2 = i4;
            } else {
                byteBuffer.clear();
                return;
            }
        }
    }

    public static int b(byte[] bArr, int i2) {
        return bArr[i2 + 3] & 31;
    }

    public static int c(byte[] bArr, int i2) {
        int i3;
        synchronized (f9613c) {
            int i4 = 0;
            int i5 = 0;
            while (i4 < i2) {
                try {
                    i4 = a(bArr, i4, i2);
                    if (i4 < i2) {
                        if (f9614d.length <= i5) {
                            f9614d = Arrays.copyOf(f9614d, f9614d.length * 2);
                        }
                        f9614d[i5] = i4;
                        i4 += 3;
                        i5++;
                    }
                } finally {
                }
            }
            i3 = i2 - i5;
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < i5; i8++) {
                int i9 = f9614d[i8] - i7;
                System.arraycopy(bArr, i7, bArr, i6, i9);
                int i10 = i6 + i9;
                int i11 = i10 + 1;
                bArr[i10] = 0;
                i6 = i11 + 1;
                bArr[i11] = 0;
                i7 += i9 + 3;
            }
            System.arraycopy(bArr, i7, bArr, i6, i3 - i6);
        }
        return i3;
    }

    public static a b(byte[] bArr, int i2, int i3) {
        w wVar = new w(bArr, i2, i3);
        wVar.d(8);
        int f2 = wVar.f();
        int f3 = wVar.f();
        wVar.g();
        return new a(f2, f3, wVar.c());
    }

    public static boolean a(String str, byte b2) {
        if ("video/avc".equals(str) && (b2 & 31) == 6) {
            return true;
        }
        if (!"video/hevc".equals(str) || ((b2 & 126) >> 1) != 39) {
            return false;
        }
        return true;
    }

    public static int a(byte[] bArr, int i2) {
        return (bArr[i2 + 3] & 126) >> 1;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:64:0x0097, code lost:
        r8 = true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int a(byte[] r7, int r8, int r9, boolean[] r10) {
        /*
            int r0 = r9 - r8
            r1 = 0
            r2 = 1
            if (r0 < 0) goto L_0x0008
            r3 = 1
            goto L_0x0009
        L_0x0008:
            r3 = 0
        L_0x0009:
            c.e.a.a.o.C0737e.b(r3)
            if (r0 != 0) goto L_0x000f
            return r9
        L_0x000f:
            r3 = 2
            if (r10 == 0) goto L_0x0040
            boolean r4 = r10[r1]
            if (r4 == 0) goto L_0x001c
            a((boolean[]) r10)
            int r8 = r8 + -3
            return r8
        L_0x001c:
            if (r0 <= r2) goto L_0x002b
            boolean r4 = r10[r2]
            if (r4 == 0) goto L_0x002b
            byte r4 = r7[r8]
            if (r4 != r2) goto L_0x002b
            a((boolean[]) r10)
            int r8 = r8 - r3
            return r8
        L_0x002b:
            if (r0 <= r3) goto L_0x0040
            boolean r4 = r10[r3]
            if (r4 == 0) goto L_0x0040
            byte r4 = r7[r8]
            if (r4 != 0) goto L_0x0040
            int r4 = r8 + 1
            byte r4 = r7[r4]
            if (r4 != r2) goto L_0x0040
            a((boolean[]) r10)
            int r8 = r8 - r2
            return r8
        L_0x0040:
            int r4 = r9 + -1
            int r8 = r8 + r3
        L_0x0043:
            if (r8 >= r4) goto L_0x0067
            byte r5 = r7[r8]
            r5 = r5 & 254(0xfe, float:3.56E-43)
            if (r5 == 0) goto L_0x004c
            goto L_0x0064
        L_0x004c:
            int r5 = r8 + -2
            byte r6 = r7[r5]
            if (r6 != 0) goto L_0x0062
            int r6 = r8 + -1
            byte r6 = r7[r6]
            if (r6 != 0) goto L_0x0062
            byte r6 = r7[r8]
            if (r6 != r2) goto L_0x0062
            if (r10 == 0) goto L_0x0061
            a((boolean[]) r10)
        L_0x0061:
            return r5
        L_0x0062:
            int r8 = r8 + -2
        L_0x0064:
            int r8 = r8 + 3
            goto L_0x0043
        L_0x0067:
            if (r10 == 0) goto L_0x00bb
            if (r0 <= r3) goto L_0x007e
            int r8 = r9 + -3
            byte r8 = r7[r8]
            if (r8 != 0) goto L_0x007c
            int r8 = r9 + -2
            byte r8 = r7[r8]
            if (r8 != 0) goto L_0x007c
            byte r8 = r7[r4]
            if (r8 != r2) goto L_0x007c
            goto L_0x0097
        L_0x007c:
            r8 = 0
            goto L_0x0098
        L_0x007e:
            if (r0 != r3) goto L_0x008f
            boolean r8 = r10[r3]
            if (r8 == 0) goto L_0x007c
            int r8 = r9 + -2
            byte r8 = r7[r8]
            if (r8 != 0) goto L_0x007c
            byte r8 = r7[r4]
            if (r8 != r2) goto L_0x007c
            goto L_0x0097
        L_0x008f:
            boolean r8 = r10[r2]
            if (r8 == 0) goto L_0x007c
            byte r8 = r7[r4]
            if (r8 != r2) goto L_0x007c
        L_0x0097:
            r8 = 1
        L_0x0098:
            r10[r1] = r8
            if (r0 <= r2) goto L_0x00a7
            int r8 = r9 + -2
            byte r8 = r7[r8]
            if (r8 != 0) goto L_0x00b1
            byte r8 = r7[r4]
            if (r8 != 0) goto L_0x00b1
            goto L_0x00af
        L_0x00a7:
            boolean r8 = r10[r3]
            if (r8 == 0) goto L_0x00b1
            byte r8 = r7[r4]
            if (r8 != 0) goto L_0x00b1
        L_0x00af:
            r8 = 1
            goto L_0x00b2
        L_0x00b1:
            r8 = 0
        L_0x00b2:
            r10[r2] = r8
            byte r7 = r7[r4]
            if (r7 != 0) goto L_0x00b9
            r1 = 1
        L_0x00b9:
            r10[r3] = r1
        L_0x00bb:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.o.t.a(byte[], int, int, boolean[]):int");
    }

    /* JADX WARNING: Removed duplicated region for block: B:53:0x00d7  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x00e9  */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x0132  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x0145  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static c.e.a.a.o.t.b c(byte[] r20, int r21, int r22) {
        /*
            c.e.a.a.o.w r0 = new c.e.a.a.o.w
            r1 = r20
            r2 = r21
            r3 = r22
            r0.<init>(r1, r2, r3)
            r1 = 8
            r0.d(r1)
            int r3 = r0.b(r1)
            int r4 = r0.b(r1)
            int r5 = r0.b(r1)
            int r6 = r0.f()
            r2 = 3
            r9 = 1
            r10 = 100
            if (r3 == r10) goto L_0x004e
            r10 = 110(0x6e, float:1.54E-43)
            if (r3 == r10) goto L_0x004e
            r10 = 122(0x7a, float:1.71E-43)
            if (r3 == r10) goto L_0x004e
            r10 = 244(0xf4, float:3.42E-43)
            if (r3 == r10) goto L_0x004e
            r10 = 44
            if (r3 == r10) goto L_0x004e
            r10 = 83
            if (r3 == r10) goto L_0x004e
            r10 = 86
            if (r3 == r10) goto L_0x004e
            r10 = 118(0x76, float:1.65E-43)
            if (r3 == r10) goto L_0x004e
            r10 = 128(0x80, float:1.794E-43)
            if (r3 == r10) goto L_0x004e
            r10 = 138(0x8a, float:1.93E-43)
            if (r3 != r10) goto L_0x004b
            goto L_0x004e
        L_0x004b:
            r10 = 1
            r11 = 0
            goto L_0x0087
        L_0x004e:
            int r10 = r0.f()
            if (r10 != r2) goto L_0x0059
            boolean r11 = r0.c()
            goto L_0x005a
        L_0x0059:
            r11 = 0
        L_0x005a:
            r0.f()
            r0.f()
            r0.g()
            boolean r12 = r0.c()
            if (r12 == 0) goto L_0x0087
            if (r10 == r2) goto L_0x006e
            r12 = 8
            goto L_0x0070
        L_0x006e:
            r12 = 12
        L_0x0070:
            r13 = 0
        L_0x0071:
            if (r13 >= r12) goto L_0x0087
            boolean r14 = r0.c()
            if (r14 == 0) goto L_0x0084
            r14 = 6
            if (r13 >= r14) goto L_0x007f
            r14 = 16
            goto L_0x0081
        L_0x007f:
            r14 = 64
        L_0x0081:
            a((c.e.a.a.o.w) r0, (int) r14)
        L_0x0084:
            int r13 = r13 + 1
            goto L_0x0071
        L_0x0087:
            int r12 = r0.f()
            int r12 = r12 + 4
            int r13 = r0.f()
            if (r13 != 0) goto L_0x009a
            int r14 = r0.f()
            int r14 = r14 + 4
            goto L_0x00bb
        L_0x009a:
            if (r13 != r9) goto L_0x00ba
            boolean r14 = r0.c()
            r0.e()
            r0.e()
            int r15 = r0.f()
            long r1 = (long) r15
            r15 = 0
        L_0x00ac:
            long r7 = (long) r15
            int r17 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r17 >= 0) goto L_0x00b7
            r0.f()
            int r15 = r15 + 1
            goto L_0x00ac
        L_0x00b7:
            r15 = r14
            r14 = 0
            goto L_0x00bc
        L_0x00ba:
            r14 = 0
        L_0x00bb:
            r15 = 0
        L_0x00bc:
            r0.f()
            r0.g()
            int r1 = r0.f()
            int r1 = r1 + r9
            int r2 = r0.f()
            int r2 = r2 + r9
            boolean r16 = r0.c()
            r7 = 2
            int r8 = 2 - r16
            int r8 = r8 * r2
            if (r16 != 0) goto L_0x00da
            r0.g()
        L_0x00da:
            r0.g()
            r2 = 16
            int r1 = r1 * 16
            int r8 = r8 * 16
            boolean r2 = r0.c()
            if (r2 == 0) goto L_0x0119
            int r2 = r0.f()
            int r17 = r0.f()
            int r18 = r0.f()
            int r19 = r0.f()
            if (r10 != 0) goto L_0x0100
            int r7 = 2 - r16
            r9 = r7
            r7 = 1
            goto L_0x010e
        L_0x0100:
            r7 = 3
            if (r10 != r7) goto L_0x0105
            r7 = 1
            goto L_0x0106
        L_0x0105:
            r7 = 2
        L_0x0106:
            if (r10 != r9) goto L_0x0109
            r9 = 2
        L_0x0109:
            r10 = 2
            int r10 = 2 - r16
            int r9 = r9 * r10
        L_0x010e:
            int r2 = r2 + r17
            int r2 = r2 * r7
            int r1 = r1 - r2
            int r18 = r18 + r19
            int r18 = r18 * r9
            int r8 = r8 - r18
        L_0x0119:
            r7 = r1
            r1 = 1065353216(0x3f800000, float:1.0)
            boolean r2 = r0.c()
            if (r2 == 0) goto L_0x0164
            boolean r2 = r0.c()
            if (r2 == 0) goto L_0x0164
            r2 = 8
            int r2 = r0.b(r2)
            r9 = 255(0xff, float:3.57E-43)
            if (r2 != r9) goto L_0x0145
            r9 = 16
            int r2 = r0.b(r9)
            int r0 = r0.b(r9)
            if (r2 == 0) goto L_0x0143
            if (r0 == 0) goto L_0x0143
            float r1 = (float) r2
            float r0 = (float) r0
            float r1 = r1 / r0
        L_0x0143:
            r9 = r1
            goto L_0x0166
        L_0x0145:
            float[] r0 = f9612b
            int r9 = r0.length
            if (r2 >= r9) goto L_0x014e
            r0 = r0[r2]
            r9 = r0
            goto L_0x0166
        L_0x014e:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r9 = "Unexpected aspect_ratio_idc value: "
            r0.append(r9)
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            java.lang.String r2 = "NalUnitUtil"
            c.e.a.a.o.p.d(r2, r0)
        L_0x0164:
            r9 = 1065353216(0x3f800000, float:1.0)
        L_0x0166:
            c.e.a.a.o.t$b r0 = new c.e.a.a.o.t$b
            r2 = r0
            r10 = r11
            r11 = r16
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.o.t.c(byte[], int, int):c.e.a.a.o.t$b");
    }

    public static void a(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static int a(byte[] bArr, int i2, int i3) {
        while (i2 < i3 - 2) {
            if (bArr[i2] == 0 && bArr[i2 + 1] == 0 && bArr[i2 + 2] == 3) {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    public static void a(w wVar, int i2) {
        int i3 = 8;
        int i4 = 8;
        for (int i5 = 0; i5 < i2; i5++) {
            if (i3 != 0) {
                i3 = ((wVar.e() + i4) + 256) % 256;
            }
            if (i3 != 0) {
                i4 = i3;
            }
        }
    }
}
