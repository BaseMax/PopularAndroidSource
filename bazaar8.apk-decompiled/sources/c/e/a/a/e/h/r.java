package c.e.a.a.e.h;

import android.util.SparseArray;
import c.e.a.a.e.h.J;
import c.e.a.a.e.i;
import c.e.a.a.e.q;
import c.e.a.a.o.C0739g;
import c.e.a.a.o.t;
import c.e.a.a.o.v;
import c.e.a.a.o.w;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: H264Reader */
public final class r implements o {

    /* renamed from: a  reason: collision with root package name */
    public final E f8178a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f8179b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f8180c;

    /* renamed from: d  reason: collision with root package name */
    public final w f8181d = new w(7, 128);

    /* renamed from: e  reason: collision with root package name */
    public final w f8182e = new w(8, 128);

    /* renamed from: f  reason: collision with root package name */
    public final w f8183f = new w(6, 128);

    /* renamed from: g  reason: collision with root package name */
    public long f8184g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean[] f8185h = new boolean[3];

    /* renamed from: i  reason: collision with root package name */
    public String f8186i;

    /* renamed from: j  reason: collision with root package name */
    public q f8187j;

    /* renamed from: k  reason: collision with root package name */
    public a f8188k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f8189l;
    public long m;
    public boolean n;
    public final v o = new v();

    /* compiled from: H264Reader */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final q f8190a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f8191b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f8192c;

        /* renamed from: d  reason: collision with root package name */
        public final SparseArray<t.b> f8193d = new SparseArray<>();

        /* renamed from: e  reason: collision with root package name */
        public final SparseArray<t.a> f8194e = new SparseArray<>();

        /* renamed from: f  reason: collision with root package name */
        public final w f8195f = new w(this.f8196g, 0, 0);

        /* renamed from: g  reason: collision with root package name */
        public byte[] f8196g = new byte[128];

        /* renamed from: h  reason: collision with root package name */
        public int f8197h;

        /* renamed from: i  reason: collision with root package name */
        public int f8198i;

        /* renamed from: j  reason: collision with root package name */
        public long f8199j;

        /* renamed from: k  reason: collision with root package name */
        public boolean f8200k;

        /* renamed from: l  reason: collision with root package name */
        public long f8201l;
        public C0108a m = new C0108a();
        public C0108a n = new C0108a();
        public boolean o;
        public long p;
        public long q;
        public boolean r;

        /* renamed from: c.e.a.a.e.h.r$a$a  reason: collision with other inner class name */
        /* compiled from: H264Reader */
        private static final class C0108a {

            /* renamed from: a  reason: collision with root package name */
            public boolean f8202a;

            /* renamed from: b  reason: collision with root package name */
            public boolean f8203b;

            /* renamed from: c  reason: collision with root package name */
            public t.b f8204c;

            /* renamed from: d  reason: collision with root package name */
            public int f8205d;

            /* renamed from: e  reason: collision with root package name */
            public int f8206e;

            /* renamed from: f  reason: collision with root package name */
            public int f8207f;

            /* renamed from: g  reason: collision with root package name */
            public int f8208g;

            /* renamed from: h  reason: collision with root package name */
            public boolean f8209h;

            /* renamed from: i  reason: collision with root package name */
            public boolean f8210i;

            /* renamed from: j  reason: collision with root package name */
            public boolean f8211j;

            /* renamed from: k  reason: collision with root package name */
            public boolean f8212k;

            /* renamed from: l  reason: collision with root package name */
            public int f8213l;
            public int m;
            public int n;
            public int o;
            public int p;

            public C0108a() {
            }

            public boolean b() {
                if (this.f8203b) {
                    int i2 = this.f8206e;
                    if (i2 == 7 || i2 == 2) {
                        return true;
                    }
                }
                return false;
            }

            public void a() {
                this.f8203b = false;
                this.f8202a = false;
            }

            public void a(int i2) {
                this.f8206e = i2;
                this.f8203b = true;
            }

            public void a(t.b bVar, int i2, int i3, int i4, int i5, boolean z, boolean z2, boolean z3, boolean z4, int i6, int i7, int i8, int i9, int i10) {
                this.f8204c = bVar;
                this.f8205d = i2;
                this.f8206e = i3;
                this.f8207f = i4;
                this.f8208g = i5;
                this.f8209h = z;
                this.f8210i = z2;
                this.f8211j = z3;
                this.f8212k = z4;
                this.f8213l = i6;
                this.m = i7;
                this.n = i8;
                this.o = i9;
                this.p = i10;
                this.f8202a = true;
                this.f8203b = true;
            }

            public final boolean a(C0108a aVar) {
                if (this.f8202a) {
                    if (!aVar.f8202a || this.f8207f != aVar.f8207f || this.f8208g != aVar.f8208g || this.f8209h != aVar.f8209h) {
                        return true;
                    }
                    if (this.f8210i && aVar.f8210i && this.f8211j != aVar.f8211j) {
                        return true;
                    }
                    int i2 = this.f8205d;
                    int i3 = aVar.f8205d;
                    if (i2 != i3 && (i2 == 0 || i3 == 0)) {
                        return true;
                    }
                    if (this.f8204c.f9628k == 0 && aVar.f8204c.f9628k == 0 && (this.m != aVar.m || this.n != aVar.n)) {
                        return true;
                    }
                    if (this.f8204c.f9628k == 1 && aVar.f8204c.f9628k == 1 && (this.o != aVar.o || this.p != aVar.p)) {
                        return true;
                    }
                    boolean z = this.f8212k;
                    boolean z2 = aVar.f8212k;
                    if (z != z2) {
                        return true;
                    }
                    if (z && z2 && this.f8213l != aVar.f8213l) {
                        return true;
                    }
                }
                return false;
            }
        }

        public a(q qVar, boolean z, boolean z2) {
            this.f8190a = qVar;
            this.f8191b = z;
            this.f8192c = z2;
            b();
        }

        public boolean a() {
            return this.f8192c;
        }

        public void b() {
            this.f8200k = false;
            this.o = false;
            this.n.a();
        }

        public void a(t.b bVar) {
            this.f8193d.append(bVar.f9621d, bVar);
        }

        public void a(t.a aVar) {
            this.f8194e.append(aVar.f9615a, aVar);
        }

        public void a(long j2, int i2, long j3) {
            this.f8198i = i2;
            this.f8201l = j3;
            this.f8199j = j2;
            if (!this.f8191b || this.f8198i != 1) {
                if (this.f8192c) {
                    int i3 = this.f8198i;
                    if (!(i3 == 5 || i3 == 1 || i3 == 2)) {
                        return;
                    }
                } else {
                    return;
                }
            }
            C0108a aVar = this.m;
            this.m = this.n;
            this.n = aVar;
            this.n.a();
            this.f8197h = 0;
            this.f8200k = true;
        }

        /* JADX WARNING: Removed duplicated region for block: B:51:0x0101  */
        /* JADX WARNING: Removed duplicated region for block: B:52:0x0104  */
        /* JADX WARNING: Removed duplicated region for block: B:54:0x0108  */
        /* JADX WARNING: Removed duplicated region for block: B:58:0x011a  */
        /* JADX WARNING: Removed duplicated region for block: B:61:0x0120  */
        /* JADX WARNING: Removed duplicated region for block: B:72:0x0150  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void a(byte[] r24, int r25, int r26) {
            /*
                r23 = this;
                r0 = r23
                r1 = r25
                boolean r2 = r0.f8200k
                if (r2 != 0) goto L_0x0009
                return
            L_0x0009:
                int r2 = r26 - r1
                byte[] r3 = r0.f8196g
                int r4 = r3.length
                int r5 = r0.f8197h
                int r6 = r5 + r2
                r7 = 2
                if (r4 >= r6) goto L_0x001e
                int r5 = r5 + r2
                int r5 = r5 * 2
                byte[] r3 = java.util.Arrays.copyOf(r3, r5)
                r0.f8196g = r3
            L_0x001e:
                byte[] r3 = r0.f8196g
                int r4 = r0.f8197h
                r5 = r24
                java.lang.System.arraycopy(r5, r1, r3, r4, r2)
                int r1 = r0.f8197h
                int r1 = r1 + r2
                r0.f8197h = r1
                c.e.a.a.o.w r1 = r0.f8195f
                byte[] r2 = r0.f8196g
                int r3 = r0.f8197h
                r4 = 0
                r1.a(r2, r4, r3)
                c.e.a.a.o.w r1 = r0.f8195f
                r2 = 8
                boolean r1 = r1.a(r2)
                if (r1 != 0) goto L_0x0041
                return
            L_0x0041:
                c.e.a.a.o.w r1 = r0.f8195f
                r1.g()
                c.e.a.a.o.w r1 = r0.f8195f
                int r10 = r1.b(r7)
                c.e.a.a.o.w r1 = r0.f8195f
                r2 = 5
                r1.d(r2)
                c.e.a.a.o.w r1 = r0.f8195f
                boolean r1 = r1.b()
                if (r1 != 0) goto L_0x005b
                return
            L_0x005b:
                c.e.a.a.o.w r1 = r0.f8195f
                r1.f()
                c.e.a.a.o.w r1 = r0.f8195f
                boolean r1 = r1.b()
                if (r1 != 0) goto L_0x0069
                return
            L_0x0069:
                c.e.a.a.o.w r1 = r0.f8195f
                int r11 = r1.f()
                boolean r1 = r0.f8192c
                if (r1 != 0) goto L_0x007b
                r0.f8200k = r4
                c.e.a.a.e.h.r$a$a r1 = r0.n
                r1.a((int) r11)
                return
            L_0x007b:
                c.e.a.a.o.w r1 = r0.f8195f
                boolean r1 = r1.b()
                if (r1 != 0) goto L_0x0084
                return
            L_0x0084:
                c.e.a.a.o.w r1 = r0.f8195f
                int r13 = r1.f()
                android.util.SparseArray<c.e.a.a.o.t$a> r1 = r0.f8194e
                int r1 = r1.indexOfKey(r13)
                if (r1 >= 0) goto L_0x0095
                r0.f8200k = r4
                return
            L_0x0095:
                android.util.SparseArray<c.e.a.a.o.t$a> r1 = r0.f8194e
                java.lang.Object r1 = r1.get(r13)
                c.e.a.a.o.t$a r1 = (c.e.a.a.o.t.a) r1
                android.util.SparseArray<c.e.a.a.o.t$b> r3 = r0.f8193d
                int r5 = r1.f9616b
                java.lang.Object r3 = r3.get(r5)
                r9 = r3
                c.e.a.a.o.t$b r9 = (c.e.a.a.o.t.b) r9
                boolean r3 = r9.f9625h
                if (r3 == 0) goto L_0x00ba
                c.e.a.a.o.w r3 = r0.f8195f
                boolean r3 = r3.a(r7)
                if (r3 != 0) goto L_0x00b5
                return
            L_0x00b5:
                c.e.a.a.o.w r3 = r0.f8195f
                r3.d(r7)
            L_0x00ba:
                c.e.a.a.o.w r3 = r0.f8195f
                int r5 = r9.f9627j
                boolean r3 = r3.a(r5)
                if (r3 != 0) goto L_0x00c5
                return
            L_0x00c5:
                c.e.a.a.o.w r3 = r0.f8195f
                int r5 = r9.f9627j
                int r12 = r3.b(r5)
                boolean r3 = r9.f9626i
                r5 = 1
                if (r3 != 0) goto L_0x00f9
                c.e.a.a.o.w r3 = r0.f8195f
                boolean r3 = r3.a(r5)
                if (r3 != 0) goto L_0x00db
                return
            L_0x00db:
                c.e.a.a.o.w r3 = r0.f8195f
                boolean r3 = r3.c()
                if (r3 == 0) goto L_0x00f7
                c.e.a.a.o.w r6 = r0.f8195f
                boolean r6 = r6.a(r5)
                if (r6 != 0) goto L_0x00ec
                return
            L_0x00ec:
                c.e.a.a.o.w r6 = r0.f8195f
                boolean r6 = r6.c()
                r14 = r3
                r16 = r6
                r15 = 1
                goto L_0x00fd
            L_0x00f7:
                r14 = r3
                goto L_0x00fa
            L_0x00f9:
                r14 = 0
            L_0x00fa:
                r15 = 0
                r16 = 0
            L_0x00fd:
                int r3 = r0.f8198i
                if (r3 != r2) goto L_0x0104
                r17 = 1
                goto L_0x0106
            L_0x0104:
                r17 = 0
            L_0x0106:
                if (r17 == 0) goto L_0x011a
                c.e.a.a.o.w r2 = r0.f8195f
                boolean r2 = r2.b()
                if (r2 != 0) goto L_0x0111
                return
            L_0x0111:
                c.e.a.a.o.w r2 = r0.f8195f
                int r2 = r2.f()
                r18 = r2
                goto L_0x011c
            L_0x011a:
                r18 = 0
            L_0x011c:
                int r2 = r9.f9628k
                if (r2 != 0) goto L_0x0150
                c.e.a.a.o.w r2 = r0.f8195f
                int r3 = r9.f9629l
                boolean r2 = r2.a(r3)
                if (r2 != 0) goto L_0x012b
                return
            L_0x012b:
                c.e.a.a.o.w r2 = r0.f8195f
                int r3 = r9.f9629l
                int r2 = r2.b(r3)
                boolean r1 = r1.f9617c
                if (r1 == 0) goto L_0x014d
                if (r14 != 0) goto L_0x014d
                c.e.a.a.o.w r1 = r0.f8195f
                boolean r1 = r1.b()
                if (r1 != 0) goto L_0x0142
                return
            L_0x0142:
                c.e.a.a.o.w r1 = r0.f8195f
                int r1 = r1.e()
                r20 = r1
                r19 = r2
                goto L_0x018e
            L_0x014d:
                r19 = r2
                goto L_0x018c
            L_0x0150:
                if (r2 != r5) goto L_0x018a
                boolean r2 = r9.m
                if (r2 != 0) goto L_0x018a
                c.e.a.a.o.w r2 = r0.f8195f
                boolean r2 = r2.b()
                if (r2 != 0) goto L_0x015f
                return
            L_0x015f:
                c.e.a.a.o.w r2 = r0.f8195f
                int r2 = r2.e()
                boolean r1 = r1.f9617c
                if (r1 == 0) goto L_0x0183
                if (r14 != 0) goto L_0x0183
                c.e.a.a.o.w r1 = r0.f8195f
                boolean r1 = r1.b()
                if (r1 != 0) goto L_0x0174
                return
            L_0x0174:
                c.e.a.a.o.w r1 = r0.f8195f
                int r1 = r1.e()
                r22 = r1
                r21 = r2
                r19 = 0
                r20 = 0
                goto L_0x0192
            L_0x0183:
                r21 = r2
                r19 = 0
                r20 = 0
                goto L_0x0190
            L_0x018a:
                r19 = 0
            L_0x018c:
                r20 = 0
            L_0x018e:
                r21 = 0
            L_0x0190:
                r22 = 0
            L_0x0192:
                c.e.a.a.e.h.r$a$a r8 = r0.n
                r8.a(r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22)
                r0.f8200k = r4
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.e.h.r.a.a(byte[], int, int):void");
        }

        public boolean a(long j2, int i2, boolean z, boolean z2) {
            boolean z3 = false;
            if (this.f8198i == 9 || (this.f8192c && this.n.a(this.m))) {
                if (z && this.o) {
                    a(i2 + ((int) (j2 - this.f8199j)));
                }
                this.p = this.f8199j;
                this.q = this.f8201l;
                this.r = false;
                this.o = true;
            }
            if (this.f8191b) {
                z2 = this.n.b();
            }
            boolean z4 = this.r;
            int i3 = this.f8198i;
            if (i3 == 5 || (z2 && i3 == 1)) {
                z3 = true;
            }
            this.r = z4 | z3;
            return this.r;
        }

        public final void a(int i2) {
            boolean z = this.r;
            int i3 = (int) (this.f8199j - this.p);
            this.f8190a.a(this.q, z ? 1 : 0, i3, i2, null);
        }
    }

    public r(E e2, boolean z, boolean z2) {
        this.f8178a = e2;
        this.f8179b = z;
        this.f8180c = z2;
    }

    public void a() {
        t.a(this.f8185h);
        this.f8181d.b();
        this.f8182e.b();
        this.f8183f.b();
        this.f8188k.b();
        this.f8184g = 0;
        this.n = false;
    }

    public void b() {
    }

    public void a(i iVar, J.d dVar) {
        dVar.a();
        this.f8186i = dVar.b();
        this.f8187j = iVar.a(dVar.c(), 2);
        this.f8188k = new a(this.f8187j, this.f8179b, this.f8180c);
        this.f8178a.a(iVar, dVar);
    }

    public void a(long j2, int i2) {
        this.m = j2;
        this.n |= (i2 & 2) != 0;
    }

    public void a(v vVar) {
        int c2 = vVar.c();
        int d2 = vVar.d();
        byte[] bArr = vVar.f9634a;
        this.f8184g += (long) vVar.a();
        this.f8187j.a(vVar, vVar.a());
        while (true) {
            int a2 = t.a(bArr, c2, d2, this.f8185h);
            if (a2 == d2) {
                a(bArr, c2, d2);
                return;
            }
            int b2 = t.b(bArr, a2);
            int i2 = a2 - c2;
            if (i2 > 0) {
                a(bArr, c2, a2);
            }
            int i3 = d2 - a2;
            long j2 = this.f8184g - ((long) i3);
            a(j2, i3, i2 < 0 ? -i2 : 0, this.m);
            a(j2, b2, this.m);
            c2 = a2 + 3;
        }
    }

    public final void a(long j2, int i2, long j3) {
        if (!this.f8189l || this.f8188k.a()) {
            this.f8181d.b(i2);
            this.f8182e.b(i2);
        }
        this.f8183f.b(i2);
        this.f8188k.a(j2, i2, j3);
    }

    public final void a(byte[] bArr, int i2, int i3) {
        if (!this.f8189l || this.f8188k.a()) {
            this.f8181d.a(bArr, i2, i3);
            this.f8182e.a(bArr, i2, i3);
        }
        this.f8183f.a(bArr, i2, i3);
        this.f8188k.a(bArr, i2, i3);
    }

    public final void a(long j2, int i2, int i3, long j3) {
        int i4 = i3;
        if (!this.f8189l || this.f8188k.a()) {
            this.f8181d.a(i4);
            this.f8182e.a(i4);
            if (!this.f8189l) {
                if (this.f8181d.a() && this.f8182e.a()) {
                    ArrayList arrayList = new ArrayList();
                    w wVar = this.f8181d;
                    arrayList.add(Arrays.copyOf(wVar.f8271d, wVar.f8272e));
                    w wVar2 = this.f8182e;
                    arrayList.add(Arrays.copyOf(wVar2.f8271d, wVar2.f8272e));
                    w wVar3 = this.f8181d;
                    t.b c2 = t.c(wVar3.f8271d, 3, wVar3.f8272e);
                    w wVar4 = this.f8182e;
                    t.a b2 = t.b(wVar4.f8271d, 3, wVar4.f8272e);
                    this.f8187j.a(Format.a(this.f8186i, "video/avc", C0739g.b(c2.f9618a, c2.f9619b, c2.f9620c), -1, -1, c2.f9622e, c2.f9623f, -1.0f, (List<byte[]>) arrayList, -1, c2.f9624g, (DrmInitData) null));
                    this.f8189l = true;
                    this.f8188k.a(c2);
                    this.f8188k.a(b2);
                    this.f8181d.b();
                    this.f8182e.b();
                }
            } else if (this.f8181d.a()) {
                w wVar5 = this.f8181d;
                this.f8188k.a(t.c(wVar5.f8271d, 3, wVar5.f8272e));
                this.f8181d.b();
            } else if (this.f8182e.a()) {
                w wVar6 = this.f8182e;
                this.f8188k.a(t.b(wVar6.f8271d, 3, wVar6.f8272e));
                this.f8182e.b();
            }
        }
        if (this.f8183f.a(i3)) {
            w wVar7 = this.f8183f;
            this.o.a(this.f8183f.f8271d, t.c(wVar7.f8271d, wVar7.f8272e));
            this.o.e(4);
            this.f8178a.a(j3, this.o);
        }
        if (this.f8188k.a(j2, i2, this.f8189l, this.n)) {
            this.n = false;
        }
    }
}
