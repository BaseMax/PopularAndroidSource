package c.e.a.a.j;

import c.e.a.a.E;
import c.e.a.a.V;
import c.e.a.a.c.f;
import c.e.a.a.j.u;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import c.e.a.a.o.s;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroupArray;

/* compiled from: ClippingMediaPeriod */
public final class n implements u, u.a {

    /* renamed from: a  reason: collision with root package name */
    public final u f8952a;

    /* renamed from: b  reason: collision with root package name */
    public u.a f8953b;

    /* renamed from: c  reason: collision with root package name */
    public a[] f8954c = new a[0];

    /* renamed from: d  reason: collision with root package name */
    public long f8955d;

    /* renamed from: e  reason: collision with root package name */
    public long f8956e;

    /* renamed from: f  reason: collision with root package name */
    public long f8957f;

    /* compiled from: ClippingMediaPeriod */
    private final class a implements C {

        /* renamed from: a  reason: collision with root package name */
        public final C f8958a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f8959b;

        public a(C c2) {
            this.f8958a = c2;
        }

        public void a() {
            this.f8958a.a();
        }

        public void b() {
            this.f8959b = false;
        }

        public boolean c() {
            return !n.this.a() && this.f8958a.c();
        }

        public int d(long j2) {
            if (n.this.a()) {
                return -3;
            }
            return this.f8958a.d(j2);
        }

        public int a(E e2, f fVar, boolean z) {
            if (n.this.a()) {
                return -3;
            }
            if (this.f8959b) {
                fVar.e(4);
                return -4;
            }
            int a2 = this.f8958a.a(e2, fVar, z);
            if (a2 == -5) {
                Format format = e2.f7255a;
                if (!(format.y == 0 && format.z == 0)) {
                    int i2 = 0;
                    int i3 = n.this.f8956e != 0 ? 0 : format.y;
                    if (n.this.f8957f == Long.MIN_VALUE) {
                        i2 = format.z;
                    }
                    e2.f7255a = format.a(i3, i2);
                }
                return -5;
            }
            long j2 = n.this.f8957f;
            if (j2 == Long.MIN_VALUE || ((a2 != -4 || fVar.f7546d < j2) && (a2 != -3 || n.this.g() != Long.MIN_VALUE))) {
                return a2;
            }
            fVar.g();
            fVar.e(4);
            this.f8959b = true;
            return -4;
        }
    }

    public n(u uVar, boolean z, long j2, long j3) {
        this.f8952a = uVar;
        this.f8955d = z ? j2 : -9223372036854775807L;
        this.f8956e = j2;
        this.f8957f = j3;
    }

    public long b() {
        long b2 = this.f8952a.b();
        if (b2 != Long.MIN_VALUE) {
            long j2 = this.f8957f;
            if (j2 == Long.MIN_VALUE || b2 < j2) {
                return b2;
            }
        }
        return Long.MIN_VALUE;
    }

    public void c(long j2) {
        this.f8952a.c(j2);
    }

    public void d() {
        this.f8952a.d();
    }

    public long e() {
        if (a()) {
            long j2 = this.f8955d;
            this.f8955d = -9223372036854775807L;
            long e2 = e();
            if (e2 != -9223372036854775807L) {
                j2 = e2;
            }
            return j2;
        }
        long e3 = this.f8952a.e();
        if (e3 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        boolean z = true;
        C0737e.b(e3 >= this.f8956e);
        long j3 = this.f8957f;
        if (j3 != Long.MIN_VALUE && e3 > j3) {
            z = false;
        }
        C0737e.b(z);
        return e3;
    }

    public TrackGroupArray f() {
        return this.f8952a.f();
    }

    public long g() {
        long g2 = this.f8952a.g();
        if (g2 != Long.MIN_VALUE) {
            long j2 = this.f8957f;
            if (j2 == Long.MIN_VALUE || g2 < j2) {
                return g2;
            }
        }
        return Long.MIN_VALUE;
    }

    public void a(u.a aVar, long j2) {
        this.f8953b = aVar;
        this.f8952a.a((u.a) this, j2);
    }

    public boolean b(long j2) {
        return this.f8952a.b(j2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0062, code lost:
        if (r2 > r4) goto L_0x0065;
     */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0052  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x006e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long a(c.e.a.a.l.n[] r13, boolean[] r14, c.e.a.a.j.C[] r15, boolean[] r16, long r17) {
        /*
            r12 = this;
            r0 = r12
            r1 = r15
            int r2 = r1.length
            c.e.a.a.j.n$a[] r2 = new c.e.a.a.j.n.a[r2]
            r0.f8954c = r2
            int r2 = r1.length
            c.e.a.a.j.C[] r9 = new c.e.a.a.j.C[r2]
            r10 = 0
            r2 = 0
        L_0x000c:
            int r3 = r1.length
            r11 = 0
            if (r2 >= r3) goto L_0x0025
            c.e.a.a.j.n$a[] r3 = r0.f8954c
            r4 = r1[r2]
            c.e.a.a.j.n$a r4 = (c.e.a.a.j.n.a) r4
            r3[r2] = r4
            r4 = r3[r2]
            if (r4 == 0) goto L_0x0020
            r3 = r3[r2]
            c.e.a.a.j.C r11 = r3.f8958a
        L_0x0020:
            r9[r2] = r11
            int r2 = r2 + 1
            goto L_0x000c
        L_0x0025:
            c.e.a.a.j.u r2 = r0.f8952a
            r3 = r13
            r4 = r14
            r5 = r9
            r6 = r16
            r7 = r17
            long r2 = r2.a(r3, r4, r5, r6, r7)
            boolean r4 = r12.a()
            if (r4 == 0) goto L_0x0047
            long r4 = r0.f8956e
            int r6 = (r17 > r4 ? 1 : (r17 == r4 ? 0 : -1))
            if (r6 != 0) goto L_0x0047
            r6 = r13
            boolean r4 = a((long) r4, (c.e.a.a.l.n[]) r13)
            if (r4 == 0) goto L_0x0047
            r4 = r2
            goto L_0x004c
        L_0x0047:
            r4 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
        L_0x004c:
            r0.f8955d = r4
            int r4 = (r2 > r17 ? 1 : (r2 == r17 ? 0 : -1))
            if (r4 == 0) goto L_0x0067
            long r4 = r0.f8956e
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 < 0) goto L_0x0065
            long r4 = r0.f8957f
            r6 = -9223372036854775808
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 == 0) goto L_0x0067
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 > 0) goto L_0x0065
            goto L_0x0067
        L_0x0065:
            r4 = 0
            goto L_0x0068
        L_0x0067:
            r4 = 1
        L_0x0068:
            c.e.a.a.o.C0737e.b(r4)
        L_0x006b:
            int r4 = r1.length
            if (r10 >= r4) goto L_0x0099
            r4 = r9[r10]
            if (r4 != 0) goto L_0x0077
            c.e.a.a.j.n$a[] r4 = r0.f8954c
            r4[r10] = r11
            goto L_0x0090
        L_0x0077:
            r4 = r1[r10]
            if (r4 == 0) goto L_0x0085
            c.e.a.a.j.n$a[] r4 = r0.f8954c
            r4 = r4[r10]
            c.e.a.a.j.C r4 = r4.f8958a
            r5 = r9[r10]
            if (r4 == r5) goto L_0x0090
        L_0x0085:
            c.e.a.a.j.n$a[] r4 = r0.f8954c
            c.e.a.a.j.n$a r5 = new c.e.a.a.j.n$a
            r6 = r9[r10]
            r5.<init>(r6)
            r4[r10] = r5
        L_0x0090:
            c.e.a.a.j.n$a[] r4 = r0.f8954c
            r4 = r4[r10]
            r1[r10] = r4
            int r10 = r10 + 1
            goto L_0x006b
        L_0x0099:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.j.n.a(c.e.a.a.l.n[], boolean[], c.e.a.a.j.C[], boolean[], long):long");
    }

    /* renamed from: b */
    public void a(u uVar) {
        this.f8953b.a(this);
    }

    public final V b(long j2, V v) {
        long b2 = I.b(v.f7323f, 0, j2 - this.f8956e);
        long j3 = v.f7324g;
        long j4 = this.f8957f;
        long b3 = I.b(j3, 0, j4 == Long.MIN_VALUE ? Long.MAX_VALUE : j4 - j2);
        if (b2 == v.f7323f && b3 == v.f7324g) {
            return v;
        }
        return new V(b2, b3);
    }

    public void a(long j2, boolean z) {
        this.f8952a.a(j2, z);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0032, code lost:
        if (r0 > r7) goto L_0x0035;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long a(long r7) {
        /*
            r6 = this;
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r6.f8955d = r0
            c.e.a.a.j.n$a[] r0 = r6.f8954c
            int r1 = r0.length
            r2 = 0
            r3 = 0
        L_0x000c:
            if (r3 >= r1) goto L_0x0018
            r4 = r0[r3]
            if (r4 == 0) goto L_0x0015
            r4.b()
        L_0x0015:
            int r3 = r3 + 1
            goto L_0x000c
        L_0x0018:
            c.e.a.a.j.u r0 = r6.f8952a
            long r0 = r0.a(r7)
            int r3 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r3 == 0) goto L_0x0034
            long r7 = r6.f8956e
            int r3 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r3 < 0) goto L_0x0035
            long r7 = r6.f8957f
            r3 = -9223372036854775808
            int r5 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r5 == 0) goto L_0x0034
            int r3 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r3 > 0) goto L_0x0035
        L_0x0034:
            r2 = 1
        L_0x0035:
            c.e.a.a.o.C0737e.b(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.j.n.a(long):long");
    }

    public long a(long j2, V v) {
        long j3 = this.f8956e;
        if (j2 == j3) {
            return j3;
        }
        return this.f8952a.a(j2, b(j2, v));
    }

    public void a(u uVar) {
        this.f8953b.a(this);
    }

    public boolean a() {
        return this.f8955d != -9223372036854775807L;
    }

    public static boolean a(long j2, c.e.a.a.l.n[] nVarArr) {
        if (j2 != 0) {
            for (c.e.a.a.l.n nVar : nVarArr) {
                if (nVar != null && !s.j(nVar.f().f12514i)) {
                    return true;
                }
            }
        }
        return false;
    }
}
