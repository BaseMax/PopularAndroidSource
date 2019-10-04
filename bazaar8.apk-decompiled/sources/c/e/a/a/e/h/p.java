package c.e.a.a.e.h;

import android.util.Pair;
import c.e.a.a.e.h.J;
import c.e.a.a.e.i;
import c.e.a.a.e.q;
import c.e.a.a.o.t;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.Format;
import java.util.Arrays;

/* compiled from: H262Reader */
public final class p implements o {

    /* renamed from: a  reason: collision with root package name */
    public static final double[] f8161a = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* renamed from: b  reason: collision with root package name */
    public String f8162b;

    /* renamed from: c  reason: collision with root package name */
    public q f8163c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f8164d;

    /* renamed from: e  reason: collision with root package name */
    public long f8165e;

    /* renamed from: f  reason: collision with root package name */
    public final L f8166f;

    /* renamed from: g  reason: collision with root package name */
    public final v f8167g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean[] f8168h;

    /* renamed from: i  reason: collision with root package name */
    public final a f8169i;

    /* renamed from: j  reason: collision with root package name */
    public final w f8170j;

    /* renamed from: k  reason: collision with root package name */
    public long f8171k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f8172l;
    public long m;
    public long n;
    public long o;
    public boolean p;
    public boolean q;

    /* compiled from: H262Reader */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final byte[] f8173a = {0, 0, 1};

        /* renamed from: b  reason: collision with root package name */
        public boolean f8174b;

        /* renamed from: c  reason: collision with root package name */
        public int f8175c;

        /* renamed from: d  reason: collision with root package name */
        public int f8176d;

        /* renamed from: e  reason: collision with root package name */
        public byte[] f8177e;

        public a(int i2) {
            this.f8177e = new byte[i2];
        }

        public void a() {
            this.f8174b = false;
            this.f8175c = 0;
            this.f8176d = 0;
        }

        public boolean a(int i2, int i3) {
            if (this.f8174b) {
                this.f8175c -= i3;
                if (this.f8176d == 0 && i2 == 181) {
                    this.f8176d = this.f8175c;
                } else {
                    this.f8174b = false;
                    return true;
                }
            } else if (i2 == 179) {
                this.f8174b = true;
            }
            byte[] bArr = f8173a;
            a(bArr, 0, bArr.length);
            return false;
        }

        public void a(byte[] bArr, int i2, int i3) {
            if (this.f8174b) {
                int i4 = i3 - i2;
                byte[] bArr2 = this.f8177e;
                int length = bArr2.length;
                int i5 = this.f8175c;
                if (length < i5 + i4) {
                    this.f8177e = Arrays.copyOf(bArr2, (i5 + i4) * 2);
                }
                System.arraycopy(bArr, i2, this.f8177e, this.f8175c, i4);
                this.f8175c += i4;
            }
        }
    }

    public p() {
        this(null);
    }

    public void a() {
        t.a(this.f8168h);
        this.f8169i.a();
        if (this.f8166f != null) {
            this.f8170j.b();
        }
        this.f8171k = 0;
        this.f8172l = false;
    }

    public void b() {
    }

    public p(L l2) {
        this.f8166f = l2;
        this.f8168h = new boolean[4];
        this.f8169i = new a(128);
        if (l2 != null) {
            this.f8170j = new w(178, 128);
            this.f8167g = new v();
            return;
        }
        this.f8170j = null;
        this.f8167g = null;
    }

    public void a(i iVar, J.d dVar) {
        dVar.a();
        this.f8162b = dVar.b();
        this.f8163c = iVar.a(dVar.c(), 2);
        L l2 = this.f8166f;
        if (l2 != null) {
            l2.a(iVar, dVar);
        }
    }

    public void a(long j2, int i2) {
        this.m = j2;
    }

    public void a(v vVar) {
        int i2;
        v vVar2 = vVar;
        int c2 = vVar.c();
        int d2 = vVar.d();
        byte[] bArr = vVar2.f9634a;
        this.f8171k += (long) vVar.a();
        this.f8163c.a(vVar2, vVar.a());
        while (true) {
            int a2 = t.a(bArr, c2, d2, this.f8168h);
            if (a2 == d2) {
                break;
            }
            int i3 = a2 + 3;
            byte b2 = vVar2.f9634a[i3] & 255;
            int i4 = a2 - c2;
            boolean z = false;
            if (!this.f8164d) {
                if (i4 > 0) {
                    this.f8169i.a(bArr, c2, a2);
                }
                if (this.f8169i.a(b2, i4 < 0 ? -i4 : 0)) {
                    Pair<Format, Long> a3 = a(this.f8169i, this.f8162b);
                    this.f8163c.a((Format) a3.first);
                    this.f8165e = ((Long) a3.second).longValue();
                    this.f8164d = true;
                }
            }
            if (this.f8166f != null) {
                if (i4 > 0) {
                    this.f8170j.a(bArr, c2, a2);
                    i2 = 0;
                } else {
                    i2 = -i4;
                }
                if (this.f8170j.a(i2)) {
                    w wVar = this.f8170j;
                    this.f8167g.a(this.f8170j.f8271d, t.c(wVar.f8271d, wVar.f8272e));
                    this.f8166f.a(this.o, this.f8167g);
                }
                if (b2 == 178 && vVar2.f9634a[a2 + 2] == 1) {
                    this.f8170j.b(b2);
                }
            }
            if (b2 == 0 || b2 == 179) {
                int i5 = d2 - a2;
                if (this.f8172l && this.q && this.f8164d) {
                    this.f8163c.a(this.o, this.p ? 1 : 0, ((int) (this.f8171k - this.n)) - i5, i5, null);
                }
                if (!this.f8172l || this.q) {
                    this.n = this.f8171k - ((long) i5);
                    long j2 = this.m;
                    if (j2 == -9223372036854775807L) {
                        j2 = this.f8172l ? this.o + this.f8165e : 0;
                    }
                    this.o = j2;
                    this.p = false;
                    this.m = -9223372036854775807L;
                    this.f8172l = true;
                }
                if (b2 == 0) {
                    z = true;
                }
                this.q = z;
            } else if (b2 == 184) {
                this.p = true;
            }
            c2 = i3;
        }
        if (!this.f8164d) {
            this.f8169i.a(bArr, c2, d2);
        }
        if (this.f8166f != null) {
            this.f8170j.a(bArr, c2, d2);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x006b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.util.Pair<com.google.android.exoplayer2.Format, java.lang.Long> a(c.e.a.a.e.h.p.a r20, java.lang.String r21) {
        /*
            r0 = r20
            byte[] r1 = r0.f8177e
            int r2 = r0.f8175c
            byte[] r1 = java.util.Arrays.copyOf(r1, r2)
            r2 = 4
            byte r3 = r1[r2]
            r3 = r3 & 255(0xff, float:3.57E-43)
            r4 = 5
            byte r5 = r1[r4]
            r5 = r5 & 255(0xff, float:3.57E-43)
            r6 = 6
            byte r6 = r1[r6]
            r6 = r6 & 255(0xff, float:3.57E-43)
            int r3 = r3 << r2
            int r7 = r5 >> 4
            r13 = r3 | r7
            r3 = r5 & 15
            int r3 = r3 << 8
            r14 = r3 | r6
            r3 = 7
            byte r5 = r1[r3]
            r5 = r5 & 240(0xf0, float:3.36E-43)
            int r5 = r5 >> r2
            r6 = 2
            if (r5 == r6) goto L_0x0043
            r6 = 3
            if (r5 == r6) goto L_0x003d
            if (r5 == r2) goto L_0x0037
            r2 = 1065353216(0x3f800000, float:1.0)
            r18 = 1065353216(0x3f800000, float:1.0)
            goto L_0x004c
        L_0x0037:
            int r2 = r14 * 121
            float r2 = (float) r2
            int r5 = r13 * 100
            goto L_0x0048
        L_0x003d:
            int r2 = r14 * 16
            float r2 = (float) r2
            int r5 = r13 * 9
            goto L_0x0048
        L_0x0043:
            int r2 = r14 * 4
            float r2 = (float) r2
            int r5 = r13 * 3
        L_0x0048:
            float r5 = (float) r5
            float r2 = r2 / r5
            r18 = r2
        L_0x004c:
            r10 = 0
            r11 = -1
            r12 = -1
            r15 = -1082130432(0xffffffffbf800000, float:-1.0)
            java.util.List r16 = java.util.Collections.singletonList(r1)
            r17 = -1
            r19 = 0
            java.lang.String r9 = "video/mpeg2"
            r8 = r21
            com.google.android.exoplayer2.Format r2 = com.google.android.exoplayer2.Format.a((java.lang.String) r8, (java.lang.String) r9, (java.lang.String) r10, (int) r11, (int) r12, (int) r13, (int) r14, (float) r15, (java.util.List<byte[]>) r16, (int) r17, (float) r18, (com.google.android.exoplayer2.drm.DrmInitData) r19)
            r5 = 0
            byte r3 = r1[r3]
            r3 = r3 & 15
            int r3 = r3 + -1
            if (r3 < 0) goto L_0x0098
            double[] r7 = f8161a
            int r8 = r7.length
            if (r3 >= r8) goto L_0x0098
            r5 = r7[r3]
            int r0 = r0.f8176d
            int r0 = r0 + 9
            byte r3 = r1[r0]
            r3 = r3 & 96
            int r3 = r3 >> r4
            byte r0 = r1[r0]
            r0 = r0 & 31
            if (r3 == r0) goto L_0x0091
            double r3 = (double) r3
            r7 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            java.lang.Double.isNaN(r3)
            double r3 = r3 + r7
            int r0 = r0 + 1
            double r0 = (double) r0
            java.lang.Double.isNaN(r0)
            double r3 = r3 / r0
            double r5 = r5 * r3
        L_0x0091:
            r0 = 4696837146684686336(0x412e848000000000, double:1000000.0)
            double r0 = r0 / r5
            long r5 = (long) r0
        L_0x0098:
            java.lang.Long r0 = java.lang.Long.valueOf(r5)
            android.util.Pair r0 = android.util.Pair.create(r2, r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.e.h.p.a(c.e.a.a.e.h.p$a, java.lang.String):android.util.Pair");
    }
}
