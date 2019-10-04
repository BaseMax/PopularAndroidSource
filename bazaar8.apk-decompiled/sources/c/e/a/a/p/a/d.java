package c.e.a.a.p.a;

import c.e.a.a.o.C0737e;

/* compiled from: Projection */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final a f9659a;

    /* renamed from: b  reason: collision with root package name */
    public final a f9660b;

    /* renamed from: c  reason: collision with root package name */
    public final int f9661c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f9662d;

    /* compiled from: Projection */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final b[] f9663a;

        public a(b... bVarArr) {
            this.f9663a = bVarArr;
        }

        public int a() {
            return this.f9663a.length;
        }

        public b a(int i2) {
            return this.f9663a[i2];
        }
    }

    /* compiled from: Projection */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f9664a;

        /* renamed from: b  reason: collision with root package name */
        public final int f9665b;

        /* renamed from: c  reason: collision with root package name */
        public final float[] f9666c;

        /* renamed from: d  reason: collision with root package name */
        public final float[] f9667d;

        public b(int i2, float[] fArr, float[] fArr2, int i3) {
            this.f9664a = i2;
            C0737e.a(((long) fArr.length) * 2 == ((long) fArr2.length) * 3);
            this.f9666c = fArr;
            this.f9667d = fArr2;
            this.f9665b = i3;
        }

        public int a() {
            return this.f9666c.length / 3;
        }
    }

    public d(a aVar, int i2) {
        this(aVar, aVar, i2);
    }

    public static d a(int i2) {
        return a(50.0f, 36, 72, 180.0f, 360.0f, i2);
    }

    public d(a aVar, a aVar2, int i2) {
        this.f9659a = aVar;
        this.f9660b = aVar2;
        this.f9661c = i2;
        this.f9662d = aVar == aVar2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:40:0x010d, code lost:
        if (r3 == 1) goto L_0x010f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static c.e.a.a.p.a.d a(float r29, int r30, int r31, float r32, float r33, int r34) {
        /*
            r0 = r29
            r1 = r30
            r2 = r31
            r3 = r32
            r4 = r33
            r5 = 0
            r7 = 1
            int r8 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r8 <= 0) goto L_0x0012
            r8 = 1
            goto L_0x0013
        L_0x0012:
            r8 = 0
        L_0x0013:
            c.e.a.a.o.C0737e.a((boolean) r8)
            if (r1 < r7) goto L_0x001a
            r8 = 1
            goto L_0x001b
        L_0x001a:
            r8 = 0
        L_0x001b:
            c.e.a.a.o.C0737e.a((boolean) r8)
            if (r2 < r7) goto L_0x0022
            r8 = 1
            goto L_0x0023
        L_0x0022:
            r8 = 0
        L_0x0023:
            c.e.a.a.o.C0737e.a((boolean) r8)
            int r8 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r8 <= 0) goto L_0x0032
            r8 = 1127481344(0x43340000, float:180.0)
            int r8 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r8 > 0) goto L_0x0032
            r8 = 1
            goto L_0x0033
        L_0x0032:
            r8 = 0
        L_0x0033:
            c.e.a.a.o.C0737e.a((boolean) r8)
            int r5 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r5 <= 0) goto L_0x0042
            r5 = 1135869952(0x43b40000, float:360.0)
            int r5 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r5 > 0) goto L_0x0042
            r5 = 1
            goto L_0x0043
        L_0x0042:
            r5 = 0
        L_0x0043:
            c.e.a.a.o.C0737e.a((boolean) r5)
            double r8 = (double) r3
            double r8 = java.lang.Math.toRadians(r8)
            float r3 = (float) r8
            double r4 = (double) r4
            double r4 = java.lang.Math.toRadians(r4)
            float r4 = (float) r4
            float r5 = (float) r1
            float r5 = r3 / r5
            float r8 = (float) r2
            float r8 = r4 / r8
            int r9 = r2 + 1
            int r10 = r9 * 2
            r11 = 2
            int r10 = r10 + r11
            int r10 = r10 * r1
            int r12 = r10 * 3
            float[] r12 = new float[r12]
            int r10 = r10 * 2
            float[] r10 = new float[r10]
            r13 = 0
            r14 = 0
            r15 = 0
        L_0x006b:
            if (r13 >= r1) goto L_0x0169
            float r6 = (float) r13
            float r6 = r6 * r5
            r16 = 1073741824(0x40000000, float:2.0)
            float r17 = r3 / r16
            float r6 = r6 - r17
            int r7 = r13 + 1
            float r11 = (float) r7
            float r11 = r11 * r5
            float r11 = r11 - r17
            r17 = r15
            r15 = r14
            r14 = 0
        L_0x0081:
            if (r14 >= r9) goto L_0x015a
            r18 = r17
            r1 = 2
            r17 = r15
            r15 = 0
        L_0x0089:
            if (r15 >= r1) goto L_0x013b
            if (r15 != 0) goto L_0x0092
            r33 = r6
            r1 = r33
            goto L_0x0095
        L_0x0092:
            r33 = r6
            r1 = r11
        L_0x0095:
            float r6 = (float) r14
            float r6 = r6 * r8
            r19 = 1078530011(0x40490fdb, float:3.1415927)
            float r19 = r6 + r19
            float r20 = r4 / r16
            r21 = r7
            float r7 = r19 - r20
            int r19 = r17 + 1
            r20 = r8
            r22 = r9
            double r8 = (double) r0
            r23 = r3
            double r2 = (double) r7
            double r24 = java.lang.Math.sin(r2)
            java.lang.Double.isNaN(r8)
            double r24 = r24 * r8
            double r0 = (double) r1
            double r26 = java.lang.Math.cos(r0)
            r7 = r13
            r28 = r14
            double r13 = r24 * r26
            float r13 = (float) r13
            float r13 = -r13
            r12[r17] = r13
            int r13 = r19 + 1
            double r24 = java.lang.Math.sin(r0)
            java.lang.Double.isNaN(r8)
            r26 = r15
            double r14 = r8 * r24
            float r14 = (float) r14
            r12[r19] = r14
            int r14 = r13 + 1
            double r2 = java.lang.Math.cos(r2)
            java.lang.Double.isNaN(r8)
            double r8 = r8 * r2
            double r0 = java.lang.Math.cos(r0)
            double r8 = r8 * r0
            float r0 = (float) r8
            r12[r13] = r0
            int r0 = r18 + 1
            float r6 = r6 / r4
            r10[r18] = r6
            int r1 = r0 + 1
            int r13 = r7 + r26
            float r2 = (float) r13
            float r2 = r2 * r5
            float r2 = r2 / r23
            r10[r0] = r2
            if (r28 != 0) goto L_0x0104
            if (r26 == 0) goto L_0x00fd
            goto L_0x0104
        L_0x00fd:
            r0 = r31
            r3 = r26
            r2 = r28
            goto L_0x010f
        L_0x0104:
            r0 = r31
            r2 = r28
            if (r2 != r0) goto L_0x0120
            r3 = r26
            r6 = 1
            if (r3 != r6) goto L_0x0122
        L_0x010f:
            int r6 = r14 + -3
            r8 = 3
            java.lang.System.arraycopy(r12, r6, r12, r14, r8)
            int r14 = r14 + 3
            int r6 = r1 + -2
            r8 = 2
            java.lang.System.arraycopy(r10, r6, r10, r1, r8)
            int r1 = r1 + 2
            goto L_0x0123
        L_0x0120:
            r3 = r26
        L_0x0122:
            r8 = 2
        L_0x0123:
            r18 = r1
            r17 = r14
            int r15 = r3 + 1
            r6 = r33
            r14 = r2
            r13 = r7
            r8 = r20
            r7 = r21
            r9 = r22
            r3 = r23
            r1 = 2
            r2 = r0
            r0 = r29
            goto L_0x0089
        L_0x013b:
            r0 = r2
            r23 = r3
            r33 = r6
            r21 = r7
            r20 = r8
            r22 = r9
            r7 = r13
            r2 = r14
            r8 = 2
            int r14 = r2 + 1
            r1 = r30
            r2 = r0
            r15 = r17
            r17 = r18
            r8 = r20
            r7 = r21
            r0 = r29
            goto L_0x0081
        L_0x015a:
            r21 = r7
            r7 = 1
            r11 = 2
            r0 = r29
            r1 = r30
            r14 = r15
            r15 = r17
            r13 = r21
            goto L_0x006b
        L_0x0169:
            c.e.a.a.p.a.d$b r0 = new c.e.a.a.p.a.d$b
            r1 = 0
            r2 = 1
            r0.<init>(r1, r12, r10, r2)
            c.e.a.a.p.a.d r3 = new c.e.a.a.p.a.d
            c.e.a.a.p.a.d$a r4 = new c.e.a.a.p.a.d$a
            c.e.a.a.p.a.d$b[] r2 = new c.e.a.a.p.a.d.b[r2]
            r2[r1] = r0
            r4.<init>(r2)
            r0 = r34
            r3.<init>(r4, r0)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.p.a.d.a(float, int, int, float, float, int):c.e.a.a.p.a.d");
    }
}
