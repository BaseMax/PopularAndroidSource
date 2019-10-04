package c.e.a.a.j;

import c.e.a.a.E;
import c.e.a.a.c.f;
import c.e.a.a.e.q;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import com.crashlytics.android.answers.AnswersRetryFilesSender;
import com.google.android.exoplayer2.Format;

/* compiled from: SampleMetadataQueue */
public final class A {

    /* renamed from: a  reason: collision with root package name */
    public int f8366a = AnswersRetryFilesSender.BACKOFF_MS;

    /* renamed from: b  reason: collision with root package name */
    public int[] f8367b;

    /* renamed from: c  reason: collision with root package name */
    public long[] f8368c;

    /* renamed from: d  reason: collision with root package name */
    public int[] f8369d;

    /* renamed from: e  reason: collision with root package name */
    public int[] f8370e;

    /* renamed from: f  reason: collision with root package name */
    public long[] f8371f;

    /* renamed from: g  reason: collision with root package name */
    public q.a[] f8372g;

    /* renamed from: h  reason: collision with root package name */
    public Format[] f8373h;

    /* renamed from: i  reason: collision with root package name */
    public int f8374i;

    /* renamed from: j  reason: collision with root package name */
    public int f8375j;

    /* renamed from: k  reason: collision with root package name */
    public int f8376k;

    /* renamed from: l  reason: collision with root package name */
    public int f8377l;
    public long m;
    public long n;
    public boolean o;
    public boolean p;
    public boolean q;
    public Format r;
    public int s;

    /* compiled from: SampleMetadataQueue */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public int f8378a;

        /* renamed from: b  reason: collision with root package name */
        public long f8379b;

        /* renamed from: c  reason: collision with root package name */
        public q.a f8380c;
    }

    public A() {
        int i2 = this.f8366a;
        this.f8367b = new int[i2];
        this.f8368c = new long[i2];
        this.f8371f = new long[i2];
        this.f8370e = new int[i2];
        this.f8369d = new int[i2];
        this.f8372g = new q.a[i2];
        this.f8373h = new Format[i2];
        this.m = Long.MIN_VALUE;
        this.n = Long.MIN_VALUE;
        this.q = true;
        this.p = true;
    }

    public void a(boolean z) {
        this.f8374i = 0;
        this.f8375j = 0;
        this.f8376k = 0;
        this.f8377l = 0;
        this.p = true;
        this.m = Long.MIN_VALUE;
        this.n = Long.MIN_VALUE;
        this.o = false;
        if (z) {
            this.r = null;
            this.q = true;
        }
    }

    public long b(int i2) {
        int i3 = i() - i2;
        boolean z = false;
        C0737e.a(i3 >= 0 && i3 <= this.f8374i - this.f8377l);
        this.f8374i -= i3;
        this.n = Math.max(this.m, c(this.f8374i));
        if (i3 == 0 && this.o) {
            z = true;
        }
        this.o = z;
        int i4 = this.f8374i;
        if (i4 == 0) {
            return 0;
        }
        int d2 = d(i4 - 1);
        return this.f8368c[d2] + ((long) this.f8369d[d2]);
    }

    public synchronized long c() {
        if (this.f8377l == 0) {
            return -1;
        }
        return a(this.f8377l);
    }

    public int d() {
        return this.f8375j;
    }

    public synchronized long e() {
        return this.f8374i == 0 ? Long.MIN_VALUE : this.f8371f[this.f8376k];
    }

    public void f(int i2) {
        this.s = i2;
    }

    public int g() {
        return this.f8375j + this.f8377l;
    }

    public synchronized Format h() {
        return this.q ? null : this.r;
    }

    public int i() {
        return this.f8375j + this.f8374i;
    }

    public synchronized boolean j() {
        return this.f8377l != this.f8374i;
    }

    public synchronized boolean k() {
        return this.o;
    }

    public int l() {
        return j() ? this.f8367b[d(this.f8377l)] : this.s;
    }

    public synchronized void m() {
        this.f8377l = 0;
    }

    public final int d(int i2) {
        int i3 = this.f8376k + i2;
        int i4 = this.f8366a;
        return i3 < i4 ? i3 : i3 - i4;
    }

    public synchronized boolean e(int i2) {
        if (this.f8375j > i2 || i2 > this.f8375j + this.f8374i) {
            return false;
        }
        this.f8377l = i2 - this.f8375j;
        return true;
    }

    public synchronized long f() {
        return this.n;
    }

    public final long c(int i2) {
        long j2 = Long.MIN_VALUE;
        if (i2 == 0) {
            return Long.MIN_VALUE;
        }
        int d2 = d(i2 - 1);
        for (int i3 = 0; i3 < i2; i3++) {
            j2 = Math.max(j2, this.f8371f[d2]);
            if ((this.f8370e[d2] & 1) != 0) {
                break;
            }
            d2--;
            if (d2 == -1) {
                d2 = this.f8366a - 1;
            }
        }
        return j2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0037, code lost:
        return -1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized long b(long r10, boolean r12, boolean r13) {
        /*
            r9 = this;
            monitor-enter(r9)
            int r0 = r9.f8374i     // Catch:{ all -> 0x0038 }
            r1 = -1
            if (r0 == 0) goto L_0x0036
            long[] r0 = r9.f8371f     // Catch:{ all -> 0x0038 }
            int r3 = r9.f8376k     // Catch:{ all -> 0x0038 }
            r3 = r0[r3]     // Catch:{ all -> 0x0038 }
            int r0 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
            if (r0 >= 0) goto L_0x0012
            goto L_0x0036
        L_0x0012:
            if (r13 == 0) goto L_0x001f
            int r13 = r9.f8377l     // Catch:{ all -> 0x0038 }
            int r0 = r9.f8374i     // Catch:{ all -> 0x0038 }
            if (r13 == r0) goto L_0x001f
            int r13 = r9.f8377l     // Catch:{ all -> 0x0038 }
            int r13 = r13 + 1
            goto L_0x0021
        L_0x001f:
            int r13 = r9.f8374i     // Catch:{ all -> 0x0038 }
        L_0x0021:
            r5 = r13
            int r4 = r9.f8376k     // Catch:{ all -> 0x0038 }
            r3 = r9
            r6 = r10
            r8 = r12
            int r10 = r3.a(r4, r5, r6, r8)     // Catch:{ all -> 0x0038 }
            r11 = -1
            if (r10 != r11) goto L_0x0030
            monitor-exit(r9)
            return r1
        L_0x0030:
            long r10 = r9.a((int) r10)     // Catch:{ all -> 0x0038 }
            monitor-exit(r9)
            return r10
        L_0x0036:
            monitor-exit(r9)
            return r1
        L_0x0038:
            r10 = move-exception
            monitor-exit(r9)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.j.A.b(long, boolean, boolean):long");
    }

    public synchronized int a(E e2, f fVar, boolean z, boolean z2, Format format, a aVar) {
        if (!j()) {
            if (!z2) {
                if (!this.o) {
                    if (this.r == null || (!z && this.r == format)) {
                        return -3;
                    }
                    e2.f7255a = this.r;
                    return -5;
                }
            }
            fVar.e(4);
            return -4;
        }
        int d2 = d(this.f8377l);
        if (!z) {
            if (this.f8373h[d2] == format) {
                fVar.e(this.f8370e[d2]);
                fVar.f7546d = this.f8371f[d2];
                if (fVar.m()) {
                    return -4;
                }
                aVar.f8378a = this.f8369d[d2];
                aVar.f8379b = this.f8368c[d2];
                aVar.f8380c = this.f8372g[d2];
                this.f8377l++;
                return -4;
            }
        }
        e2.f7255a = this.f8373h[d2];
        return -5;
    }

    public synchronized long b() {
        if (this.f8374i == 0) {
            return -1;
        }
        return a(this.f8374i);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0038, code lost:
        return -1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized int a(long r9, boolean r11, boolean r12) {
        /*
            r8 = this;
            monitor-enter(r8)
            int r0 = r8.f8377l     // Catch:{ all -> 0x0039 }
            int r2 = r8.d(r0)     // Catch:{ all -> 0x0039 }
            boolean r0 = r8.j()     // Catch:{ all -> 0x0039 }
            r7 = -1
            if (r0 == 0) goto L_0x0037
            long[] r0 = r8.f8371f     // Catch:{ all -> 0x0039 }
            r3 = r0[r2]     // Catch:{ all -> 0x0039 }
            int r0 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1))
            if (r0 < 0) goto L_0x0037
            long r0 = r8.n     // Catch:{ all -> 0x0039 }
            int r3 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r3 <= 0) goto L_0x001f
            if (r12 != 0) goto L_0x001f
            goto L_0x0037
        L_0x001f:
            int r12 = r8.f8374i     // Catch:{ all -> 0x0039 }
            int r0 = r8.f8377l     // Catch:{ all -> 0x0039 }
            int r3 = r12 - r0
            r1 = r8
            r4 = r9
            r6 = r11
            int r9 = r1.a(r2, r3, r4, r6)     // Catch:{ all -> 0x0039 }
            if (r9 != r7) goto L_0x0030
            monitor-exit(r8)
            return r7
        L_0x0030:
            int r10 = r8.f8377l     // Catch:{ all -> 0x0039 }
            int r10 = r10 + r9
            r8.f8377l = r10     // Catch:{ all -> 0x0039 }
            monitor-exit(r8)
            return r9
        L_0x0037:
            monitor-exit(r8)
            return r7
        L_0x0039:
            r9 = move-exception
            monitor-exit(r8)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.j.A.a(long, boolean, boolean):int");
    }

    public synchronized int a() {
        int i2;
        i2 = this.f8374i - this.f8377l;
        this.f8377l = this.f8374i;
        return i2;
    }

    public synchronized boolean a(Format format) {
        if (format == null) {
            this.q = true;
            return false;
        }
        this.q = false;
        if (I.a((Object) format, (Object) this.r)) {
            return false;
        }
        this.r = format;
        return true;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:23:0x00e0, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void a(long r6, int r8, long r9, int r11, c.e.a.a.e.q.a r12) {
        /*
            r5 = this;
            monitor-enter(r5)
            boolean r0 = r5.p     // Catch:{ all -> 0x00e1 }
            r1 = 0
            if (r0 == 0) goto L_0x000e
            r0 = r8 & 1
            if (r0 != 0) goto L_0x000c
            monitor-exit(r5)
            return
        L_0x000c:
            r5.p = r1     // Catch:{ all -> 0x00e1 }
        L_0x000e:
            boolean r0 = r5.q     // Catch:{ all -> 0x00e1 }
            r2 = 1
            if (r0 != 0) goto L_0x0015
            r0 = 1
            goto L_0x0016
        L_0x0015:
            r0 = 0
        L_0x0016:
            c.e.a.a.o.C0737e.b(r0)     // Catch:{ all -> 0x00e1 }
            r0 = 536870912(0x20000000, float:1.0842022E-19)
            r0 = r0 & r8
            if (r0 == 0) goto L_0x0020
            r0 = 1
            goto L_0x0021
        L_0x0020:
            r0 = 0
        L_0x0021:
            r5.o = r0     // Catch:{ all -> 0x00e1 }
            long r3 = r5.n     // Catch:{ all -> 0x00e1 }
            long r3 = java.lang.Math.max(r3, r6)     // Catch:{ all -> 0x00e1 }
            r5.n = r3     // Catch:{ all -> 0x00e1 }
            int r0 = r5.f8374i     // Catch:{ all -> 0x00e1 }
            int r0 = r5.d(r0)     // Catch:{ all -> 0x00e1 }
            long[] r3 = r5.f8371f     // Catch:{ all -> 0x00e1 }
            r3[r0] = r6     // Catch:{ all -> 0x00e1 }
            long[] r6 = r5.f8368c     // Catch:{ all -> 0x00e1 }
            r6[r0] = r9     // Catch:{ all -> 0x00e1 }
            int[] r6 = r5.f8369d     // Catch:{ all -> 0x00e1 }
            r6[r0] = r11     // Catch:{ all -> 0x00e1 }
            int[] r6 = r5.f8370e     // Catch:{ all -> 0x00e1 }
            r6[r0] = r8     // Catch:{ all -> 0x00e1 }
            c.e.a.a.e.q$a[] r6 = r5.f8372g     // Catch:{ all -> 0x00e1 }
            r6[r0] = r12     // Catch:{ all -> 0x00e1 }
            com.google.android.exoplayer2.Format[] r6 = r5.f8373h     // Catch:{ all -> 0x00e1 }
            com.google.android.exoplayer2.Format r7 = r5.r     // Catch:{ all -> 0x00e1 }
            r6[r0] = r7     // Catch:{ all -> 0x00e1 }
            int[] r6 = r5.f8367b     // Catch:{ all -> 0x00e1 }
            int r7 = r5.s     // Catch:{ all -> 0x00e1 }
            r6[r0] = r7     // Catch:{ all -> 0x00e1 }
            int r6 = r5.f8374i     // Catch:{ all -> 0x00e1 }
            int r6 = r6 + r2
            r5.f8374i = r6     // Catch:{ all -> 0x00e1 }
            int r6 = r5.f8374i     // Catch:{ all -> 0x00e1 }
            int r7 = r5.f8366a     // Catch:{ all -> 0x00e1 }
            if (r6 != r7) goto L_0x00df
            int r6 = r5.f8366a     // Catch:{ all -> 0x00e1 }
            int r6 = r6 + 1000
            int[] r7 = new int[r6]     // Catch:{ all -> 0x00e1 }
            long[] r8 = new long[r6]     // Catch:{ all -> 0x00e1 }
            long[] r9 = new long[r6]     // Catch:{ all -> 0x00e1 }
            int[] r10 = new int[r6]     // Catch:{ all -> 0x00e1 }
            int[] r11 = new int[r6]     // Catch:{ all -> 0x00e1 }
            c.e.a.a.e.q$a[] r12 = new c.e.a.a.e.q.a[r6]     // Catch:{ all -> 0x00e1 }
            com.google.android.exoplayer2.Format[] r0 = new com.google.android.exoplayer2.Format[r6]     // Catch:{ all -> 0x00e1 }
            int r2 = r5.f8366a     // Catch:{ all -> 0x00e1 }
            int r3 = r5.f8376k     // Catch:{ all -> 0x00e1 }
            int r2 = r2 - r3
            long[] r3 = r5.f8368c     // Catch:{ all -> 0x00e1 }
            int r4 = r5.f8376k     // Catch:{ all -> 0x00e1 }
            java.lang.System.arraycopy(r3, r4, r8, r1, r2)     // Catch:{ all -> 0x00e1 }
            long[] r3 = r5.f8371f     // Catch:{ all -> 0x00e1 }
            int r4 = r5.f8376k     // Catch:{ all -> 0x00e1 }
            java.lang.System.arraycopy(r3, r4, r9, r1, r2)     // Catch:{ all -> 0x00e1 }
            int[] r3 = r5.f8370e     // Catch:{ all -> 0x00e1 }
            int r4 = r5.f8376k     // Catch:{ all -> 0x00e1 }
            java.lang.System.arraycopy(r3, r4, r10, r1, r2)     // Catch:{ all -> 0x00e1 }
            int[] r3 = r5.f8369d     // Catch:{ all -> 0x00e1 }
            int r4 = r5.f8376k     // Catch:{ all -> 0x00e1 }
            java.lang.System.arraycopy(r3, r4, r11, r1, r2)     // Catch:{ all -> 0x00e1 }
            c.e.a.a.e.q$a[] r3 = r5.f8372g     // Catch:{ all -> 0x00e1 }
            int r4 = r5.f8376k     // Catch:{ all -> 0x00e1 }
            java.lang.System.arraycopy(r3, r4, r12, r1, r2)     // Catch:{ all -> 0x00e1 }
            com.google.android.exoplayer2.Format[] r3 = r5.f8373h     // Catch:{ all -> 0x00e1 }
            int r4 = r5.f8376k     // Catch:{ all -> 0x00e1 }
            java.lang.System.arraycopy(r3, r4, r0, r1, r2)     // Catch:{ all -> 0x00e1 }
            int[] r3 = r5.f8367b     // Catch:{ all -> 0x00e1 }
            int r4 = r5.f8376k     // Catch:{ all -> 0x00e1 }
            java.lang.System.arraycopy(r3, r4, r7, r1, r2)     // Catch:{ all -> 0x00e1 }
            int r3 = r5.f8376k     // Catch:{ all -> 0x00e1 }
            long[] r4 = r5.f8368c     // Catch:{ all -> 0x00e1 }
            java.lang.System.arraycopy(r4, r1, r8, r2, r3)     // Catch:{ all -> 0x00e1 }
            long[] r4 = r5.f8371f     // Catch:{ all -> 0x00e1 }
            java.lang.System.arraycopy(r4, r1, r9, r2, r3)     // Catch:{ all -> 0x00e1 }
            int[] r4 = r5.f8370e     // Catch:{ all -> 0x00e1 }
            java.lang.System.arraycopy(r4, r1, r10, r2, r3)     // Catch:{ all -> 0x00e1 }
            int[] r4 = r5.f8369d     // Catch:{ all -> 0x00e1 }
            java.lang.System.arraycopy(r4, r1, r11, r2, r3)     // Catch:{ all -> 0x00e1 }
            c.e.a.a.e.q$a[] r4 = r5.f8372g     // Catch:{ all -> 0x00e1 }
            java.lang.System.arraycopy(r4, r1, r12, r2, r3)     // Catch:{ all -> 0x00e1 }
            com.google.android.exoplayer2.Format[] r4 = r5.f8373h     // Catch:{ all -> 0x00e1 }
            java.lang.System.arraycopy(r4, r1, r0, r2, r3)     // Catch:{ all -> 0x00e1 }
            int[] r4 = r5.f8367b     // Catch:{ all -> 0x00e1 }
            java.lang.System.arraycopy(r4, r1, r7, r2, r3)     // Catch:{ all -> 0x00e1 }
            r5.f8368c = r8     // Catch:{ all -> 0x00e1 }
            r5.f8371f = r9     // Catch:{ all -> 0x00e1 }
            r5.f8370e = r10     // Catch:{ all -> 0x00e1 }
            r5.f8369d = r11     // Catch:{ all -> 0x00e1 }
            r5.f8372g = r12     // Catch:{ all -> 0x00e1 }
            r5.f8373h = r0     // Catch:{ all -> 0x00e1 }
            r5.f8367b = r7     // Catch:{ all -> 0x00e1 }
            r5.f8376k = r1     // Catch:{ all -> 0x00e1 }
            int r7 = r5.f8366a     // Catch:{ all -> 0x00e1 }
            r5.f8374i = r7     // Catch:{ all -> 0x00e1 }
            r5.f8366a = r6     // Catch:{ all -> 0x00e1 }
        L_0x00df:
            monitor-exit(r5)
            return
        L_0x00e1:
            r6 = move-exception
            monitor-exit(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.j.A.a(long, int, long, int, c.e.a.a.e.q$a):void");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:9:0x000f, code lost:
        return r1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized boolean a(long r8) {
        /*
            r7 = this;
            monitor-enter(r7)
            int r0 = r7.f8374i     // Catch:{ all -> 0x004a }
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L_0x0010
            long r3 = r7.m     // Catch:{ all -> 0x004a }
            int r0 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r0 <= 0) goto L_0x000e
            r1 = 1
        L_0x000e:
            monitor-exit(r7)
            return r1
        L_0x0010:
            long r3 = r7.m     // Catch:{ all -> 0x004a }
            int r0 = r7.f8377l     // Catch:{ all -> 0x004a }
            long r5 = r7.c(r0)     // Catch:{ all -> 0x004a }
            long r3 = java.lang.Math.max(r3, r5)     // Catch:{ all -> 0x004a }
            int r0 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r0 < 0) goto L_0x0022
            monitor-exit(r7)
            return r1
        L_0x0022:
            int r0 = r7.f8374i     // Catch:{ all -> 0x004a }
            int r1 = r7.f8374i     // Catch:{ all -> 0x004a }
            int r1 = r1 - r2
            int r1 = r7.d(r1)     // Catch:{ all -> 0x004a }
        L_0x002b:
            int r3 = r7.f8377l     // Catch:{ all -> 0x004a }
            if (r0 <= r3) goto L_0x0042
            long[] r3 = r7.f8371f     // Catch:{ all -> 0x004a }
            r4 = r3[r1]     // Catch:{ all -> 0x004a }
            int r3 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r3 < 0) goto L_0x0042
            int r0 = r0 + -1
            int r1 = r1 + -1
            r3 = -1
            if (r1 != r3) goto L_0x002b
            int r1 = r7.f8366a     // Catch:{ all -> 0x004a }
            int r1 = r1 - r2
            goto L_0x002b
        L_0x0042:
            int r8 = r7.f8375j     // Catch:{ all -> 0x004a }
            int r8 = r8 + r0
            r7.b(r8)     // Catch:{ all -> 0x004a }
            monitor-exit(r7)
            return r2
        L_0x004a:
            r8 = move-exception
            monitor-exit(r7)
            goto L_0x004e
        L_0x004d:
            throw r8
        L_0x004e:
            goto L_0x004d
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.j.A.a(long):boolean");
    }

    public final int a(int i2, int i3, long j2, boolean z) {
        int i4 = i2;
        int i5 = -1;
        for (int i6 = 0; i6 < i3 && this.f8371f[i4] <= j2; i6++) {
            if (!z || (this.f8370e[i4] & 1) != 0) {
                i5 = i6;
            }
            i4++;
            if (i4 == this.f8366a) {
                i4 = 0;
            }
        }
        return i5;
    }

    public final long a(int i2) {
        this.m = Math.max(this.m, c(i2));
        this.f8374i -= i2;
        this.f8375j += i2;
        this.f8376k += i2;
        int i3 = this.f8376k;
        int i4 = this.f8366a;
        if (i3 >= i4) {
            this.f8376k = i3 - i4;
        }
        this.f8377l -= i2;
        if (this.f8377l < 0) {
            this.f8377l = 0;
        }
        if (this.f8374i != 0) {
            return this.f8368c[this.f8376k];
        }
        int i5 = this.f8376k;
        if (i5 == 0) {
            i5 = this.f8366a;
        }
        int i6 = i5 - 1;
        return this.f8368c[i6] + ((long) this.f8369d[i6]);
    }
}
