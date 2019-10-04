package c.e.a.a.j;

import c.e.a.a.Z;
import c.e.a.a.o.C0737e;

/* compiled from: SinglePeriodTimeline */
public final class E extends Z {

    /* renamed from: b  reason: collision with root package name */
    public static final Object f8398b = new Object();

    /* renamed from: c  reason: collision with root package name */
    public final long f8399c;

    /* renamed from: d  reason: collision with root package name */
    public final long f8400d;

    /* renamed from: e  reason: collision with root package name */
    public final long f8401e;

    /* renamed from: f  reason: collision with root package name */
    public final long f8402f;

    /* renamed from: g  reason: collision with root package name */
    public final long f8403g;

    /* renamed from: h  reason: collision with root package name */
    public final long f8404h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f8405i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f8406j;

    /* renamed from: k  reason: collision with root package name */
    public final Object f8407k;

    public E(long j2, boolean z, boolean z2, Object obj) {
        this(j2, j2, 0, 0, z, z2, obj);
    }

    public int a() {
        return 1;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x002d, code lost:
        if (r1 > r7) goto L_0x0027;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public c.e.a.a.Z.b a(int r19, c.e.a.a.Z.b r20, boolean r21, long r22) {
        /*
            r18 = this;
            r0 = r18
            r1 = 0
            r2 = 1
            r3 = r19
            c.e.a.a.o.C0737e.a(r3, r1, r2)
            if (r21 == 0) goto L_0x000e
            java.lang.Object r1 = r0.f8407k
            goto L_0x000f
        L_0x000e:
            r1 = 0
        L_0x000f:
            r3 = r1
            long r1 = r0.f8404h
            boolean r4 = r0.f8406j
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 == 0) goto L_0x0030
            r7 = 0
            int r4 = (r22 > r7 ? 1 : (r22 == r7 ? 0 : -1))
            if (r4 == 0) goto L_0x0030
            long r7 = r0.f8402f
            int r4 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r4 != 0) goto L_0x0029
        L_0x0027:
            r10 = r5
            goto L_0x0031
        L_0x0029:
            long r1 = r1 + r22
            int r4 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
            if (r4 <= 0) goto L_0x0030
            goto L_0x0027
        L_0x0030:
            r10 = r1
        L_0x0031:
            long r4 = r0.f8399c
            long r6 = r0.f8400d
            boolean r8 = r0.f8405i
            boolean r9 = r0.f8406j
            long r12 = r0.f8402f
            r14 = 0
            r15 = 0
            long r1 = r0.f8403g
            r16 = r1
            r2 = r20
            r2.a(r3, r4, r6, r8, r9, r10, r12, r14, r15, r16)
            return r20
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.j.E.a(int, c.e.a.a.Z$b, boolean, long):c.e.a.a.Z$b");
    }

    public int b() {
        return 1;
    }

    public E(long j2, long j3, long j4, long j5, boolean z, boolean z2, Object obj) {
        this(-9223372036854775807L, -9223372036854775807L, j2, j3, j4, j5, z, z2, obj);
    }

    public E(long j2, long j3, long j4, long j5, long j6, long j7, boolean z, boolean z2, Object obj) {
        this.f8399c = j2;
        this.f8400d = j3;
        this.f8401e = j4;
        this.f8402f = j5;
        this.f8403g = j6;
        this.f8404h = j7;
        this.f8405i = z;
        this.f8406j = z2;
        this.f8407k = obj;
    }

    public Z.a a(int i2, Z.a aVar, boolean z) {
        C0737e.a(i2, 0, 1);
        aVar.a(null, z ? f8398b : null, 0, this.f8401e, -this.f8403g);
        return aVar;
    }

    public int a(Object obj) {
        return f8398b.equals(obj) ? 0 : -1;
    }

    public Object a(int i2) {
        C0737e.a(i2, 0, 1);
        return f8398b;
    }
}
