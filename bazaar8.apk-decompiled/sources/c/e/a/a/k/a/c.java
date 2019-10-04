package c.e.a.a.k.a;

import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import c.e.a.a.k.e;
import c.e.a.a.k.i;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.p;
import c.e.a.a.o.u;
import c.e.a.a.o.v;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: Cea708Decoder */
public final class c extends f {

    /* renamed from: g  reason: collision with root package name */
    public final v f9082g = new v();

    /* renamed from: h  reason: collision with root package name */
    public final u f9083h = new u();

    /* renamed from: i  reason: collision with root package name */
    public final int f9084i;

    /* renamed from: j  reason: collision with root package name */
    public final a[] f9085j;

    /* renamed from: k  reason: collision with root package name */
    public a f9086k;

    /* renamed from: l  reason: collision with root package name */
    public List<c.e.a.a.k.b> f9087l;
    public List<c.e.a.a.k.b> m;
    public b n;
    public int o;

    /* compiled from: Cea708Decoder */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final int f9088a = a(2, 2, 2, 0);

        /* renamed from: b  reason: collision with root package name */
        public static final int f9089b = a(0, 0, 0, 0);

        /* renamed from: c  reason: collision with root package name */
        public static final int f9090c = a(0, 0, 0, 3);

        /* renamed from: d  reason: collision with root package name */
        public static final int[] f9091d = {0, 0, 0, 0, 0, 2, 0};

        /* renamed from: e  reason: collision with root package name */
        public static final int[] f9092e = {0, 0, 0, 0, 0, 0, 2};

        /* renamed from: f  reason: collision with root package name */
        public static final int[] f9093f = {3, 3, 3, 3, 3, 3, 1};

        /* renamed from: g  reason: collision with root package name */
        public static final boolean[] f9094g = {false, false, false, true, true, true, false};

        /* renamed from: h  reason: collision with root package name */
        public static final int[] f9095h;

        /* renamed from: i  reason: collision with root package name */
        public static final int[] f9096i = {0, 1, 2, 3, 4, 3, 4};

        /* renamed from: j  reason: collision with root package name */
        public static final int[] f9097j = {0, 0, 0, 0, 0, 3, 3};

        /* renamed from: k  reason: collision with root package name */
        public static final int[] f9098k;
        public int A;
        public int B;
        public int C;
        public int D;
        public int E;
        public int F;
        public int G;

        /* renamed from: l  reason: collision with root package name */
        public final List<SpannableString> f9099l = new ArrayList();
        public final SpannableStringBuilder m = new SpannableStringBuilder();
        public boolean n;
        public boolean o;
        public int p;
        public boolean q;
        public int r;
        public int s;
        public int t;
        public int u;
        public boolean v;
        public int w;
        public int x;
        public int y;
        public int z;

        static {
            int i2 = f9089b;
            int i3 = f9090c;
            f9095h = new int[]{i2, i3, i2, i2, i3, i2, i2};
            f9098k = new int[]{i2, i2, i2, i2, i2, i3, i3};
        }

        public a() {
            h();
        }

        public void a(boolean z2) {
            this.o = z2;
        }

        public void b(int i2, int i3, int i4) {
            if (this.C != -1) {
                int i5 = this.D;
                if (i5 != i2) {
                    this.m.setSpan(new ForegroundColorSpan(i5), this.C, this.m.length(), 33);
                }
            }
            if (i2 != f9088a) {
                this.C = this.m.length();
                this.D = i2;
            }
            if (this.E != -1) {
                int i6 = this.F;
                if (i6 != i3) {
                    this.m.setSpan(new BackgroundColorSpan(i6), this.E, this.m.length(), 33);
                }
            }
            if (i3 != f9089b) {
                this.E = this.m.length();
                this.F = i3;
            }
        }

        public SpannableString c() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.m);
            int length = spannableStringBuilder.length();
            if (length > 0) {
                if (this.A != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.A, length, 33);
                }
                if (this.B != -1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), this.B, length, 33);
                }
                if (this.C != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(this.D), this.C, length, 33);
                }
                if (this.E != -1) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(this.F), this.E, length, 33);
                }
            }
            return new SpannableString(spannableStringBuilder);
        }

        public void d() {
            this.f9099l.clear();
            this.m.clear();
            this.A = -1;
            this.B = -1;
            this.C = -1;
            this.E = -1;
            this.G = 0;
        }

        public boolean e() {
            return this.n;
        }

        public boolean f() {
            return !e() || (this.f9099l.isEmpty() && this.m.length() == 0);
        }

        public boolean g() {
            return this.o;
        }

        public void h() {
            d();
            this.n = false;
            this.o = false;
            this.p = 4;
            this.q = false;
            this.r = 0;
            this.s = 0;
            this.t = 0;
            this.u = 15;
            this.v = true;
            this.w = 0;
            this.x = 0;
            this.y = 0;
            int i2 = f9089b;
            this.z = i2;
            this.D = f9088a;
            this.F = i2;
        }

        public void a(boolean z2, boolean z3, boolean z4, int i2, boolean z5, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            boolean z6 = z3;
            int i10 = i8;
            int i11 = i9;
            this.n = true;
            this.o = z2;
            this.v = z6;
            this.p = i2;
            this.q = z5;
            this.r = i3;
            this.s = i4;
            this.t = i7;
            int i12 = i5 + 1;
            if (this.u != i12) {
                this.u = i12;
                while (true) {
                    if ((!z6 || this.f9099l.size() < this.u) && this.f9099l.size() < 15) {
                        break;
                    }
                    this.f9099l.remove(0);
                }
            }
            if (!(i10 == 0 || this.x == i10)) {
                this.x = i10;
                int i13 = i10 - 1;
                a(f9095h[i13], f9090c, f9094g[i13], 0, f9092e[i13], f9093f[i13], f9091d[i13]);
            }
            if (i11 != 0 && this.y != i11) {
                this.y = i11;
                int i14 = i11 - 1;
                a(0, 1, 1, false, false, f9097j[i14], f9096i[i14]);
                b(f9088a, f9098k[i14], f9089b);
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:20:0x0065  */
        /* JADX WARNING: Removed duplicated region for block: B:21:0x0070  */
        /* JADX WARNING: Removed duplicated region for block: B:24:0x0091  */
        /* JADX WARNING: Removed duplicated region for block: B:25:0x0093  */
        /* JADX WARNING: Removed duplicated region for block: B:31:0x009f  */
        /* JADX WARNING: Removed duplicated region for block: B:32:0x00a1  */
        /* JADX WARNING: Removed duplicated region for block: B:38:0x00ad  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public c.e.a.a.k.a.b b() {
            /*
                r15 = this;
                boolean r0 = r15.f()
                if (r0 == 0) goto L_0x0008
                r0 = 0
                return r0
            L_0x0008:
                android.text.SpannableStringBuilder r2 = new android.text.SpannableStringBuilder
                r2.<init>()
                r0 = 0
                r1 = 0
            L_0x000f:
                java.util.List<android.text.SpannableString> r3 = r15.f9099l
                int r3 = r3.size()
                if (r1 >= r3) goto L_0x002a
                java.util.List<android.text.SpannableString> r3 = r15.f9099l
                java.lang.Object r3 = r3.get(r1)
                java.lang.CharSequence r3 = (java.lang.CharSequence) r3
                r2.append(r3)
                r3 = 10
                r2.append(r3)
                int r1 = r1 + 1
                goto L_0x000f
            L_0x002a:
                android.text.SpannableString r1 = r15.c()
                r2.append(r1)
                int r1 = r15.w
                r3 = 2
                r4 = 3
                r5 = 1
                if (r1 == 0) goto L_0x005e
                if (r1 == r5) goto L_0x005b
                if (r1 == r3) goto L_0x0058
                if (r1 != r4) goto L_0x003f
                goto L_0x005e
            L_0x003f:
                java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "Unexpected justification value: "
                r1.append(r2)
                int r2 = r15.w
                r1.append(r2)
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                throw r0
            L_0x0058:
                android.text.Layout$Alignment r1 = android.text.Layout.Alignment.ALIGN_CENTER
                goto L_0x0060
            L_0x005b:
                android.text.Layout$Alignment r1 = android.text.Layout.Alignment.ALIGN_OPPOSITE
                goto L_0x0060
            L_0x005e:
                android.text.Layout$Alignment r1 = android.text.Layout.Alignment.ALIGN_NORMAL
            L_0x0060:
                r6 = r1
                boolean r1 = r15.q
                if (r1 == 0) goto L_0x0070
                int r1 = r15.s
                float r1 = (float) r1
                r7 = 1120272384(0x42c60000, float:99.0)
                float r1 = r1 / r7
                int r8 = r15.r
                float r8 = (float) r8
                float r8 = r8 / r7
                goto L_0x007d
            L_0x0070:
                int r1 = r15.s
                float r1 = (float) r1
                r7 = 1129381888(0x43510000, float:209.0)
                float r1 = r1 / r7
                int r7 = r15.r
                float r7 = (float) r7
                r8 = 1116995584(0x42940000, float:74.0)
                float r8 = r7 / r8
            L_0x007d:
                r7 = 1063675494(0x3f666666, float:0.9)
                float r1 = r1 * r7
                r9 = 1028443341(0x3d4ccccd, float:0.05)
                float r10 = r1 + r9
                float r8 = r8 * r7
                float r7 = r8 + r9
                int r1 = r15.t
                int r8 = r1 % 3
                if (r8 != 0) goto L_0x0093
                r8 = 0
                goto L_0x0099
            L_0x0093:
                int r1 = r1 % r4
                if (r1 != r5) goto L_0x0098
                r8 = 1
                goto L_0x0099
            L_0x0098:
                r8 = 2
            L_0x0099:
                int r1 = r15.t
                int r9 = r1 / 3
                if (r9 != 0) goto L_0x00a1
                r9 = 0
                goto L_0x00a7
            L_0x00a1:
                int r1 = r1 / r4
                if (r1 != r5) goto L_0x00a6
                r9 = 1
                goto L_0x00a7
            L_0x00a6:
                r9 = 2
            L_0x00a7:
                int r1 = r15.z
                int r3 = f9089b
                if (r1 == r3) goto L_0x00ae
                r0 = 1
            L_0x00ae:
                c.e.a.a.k.a.b r13 = new c.e.a.a.k.a.b
                r5 = 0
                r11 = 1
                int r12 = r15.z
                int r14 = r15.p
                r1 = r13
                r3 = r6
                r4 = r7
                r6 = r8
                r7 = r10
                r8 = r9
                r9 = r11
                r10 = r0
                r11 = r12
                r12 = r14
                r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)
                return r13
            */
            throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.k.a.c.a.b():c.e.a.a.k.a.b");
        }

        public void a(int i2, int i3, boolean z2, int i4, int i5, int i6, int i7) {
            this.z = i2;
            this.w = i7;
        }

        public void a(int i2, int i3, int i4, boolean z2, boolean z3, int i5, int i6) {
            if (this.A != -1) {
                if (!z2) {
                    this.m.setSpan(new StyleSpan(2), this.A, this.m.length(), 33);
                    this.A = -1;
                }
            } else if (z2) {
                this.A = this.m.length();
            }
            if (this.B != -1) {
                if (!z3) {
                    this.m.setSpan(new UnderlineSpan(), this.B, this.m.length(), 33);
                    this.B = -1;
                }
            } else if (z3) {
                this.B = this.m.length();
            }
        }

        public void a(int i2, int i3) {
            if (this.G != i2) {
                a(10);
            }
            this.G = i2;
        }

        public void a() {
            int length = this.m.length();
            if (length > 0) {
                this.m.delete(length - 1, length);
            }
        }

        public void a(char c2) {
            if (c2 == 10) {
                this.f9099l.add(c());
                this.m.clear();
                if (this.A != -1) {
                    this.A = 0;
                }
                if (this.B != -1) {
                    this.B = 0;
                }
                if (this.C != -1) {
                    this.C = 0;
                }
                if (this.E != -1) {
                    this.E = 0;
                }
                while (true) {
                    if ((this.v && this.f9099l.size() >= this.u) || this.f9099l.size() >= 15) {
                        this.f9099l.remove(0);
                    } else {
                        return;
                    }
                }
            } else {
                this.m.append(c2);
            }
        }

        public static int a(int i2, int i3, int i4) {
            return a(i2, i3, i4, 0);
        }

        /* JADX WARNING: Removed duplicated region for block: B:11:0x0024  */
        /* JADX WARNING: Removed duplicated region for block: B:12:0x0027  */
        /* JADX WARNING: Removed duplicated region for block: B:14:0x002a  */
        /* JADX WARNING: Removed duplicated region for block: B:15:0x002d  */
        /* JADX WARNING: Removed duplicated region for block: B:17:0x0030  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public static int a(int r4, int r5, int r6, int r7) {
            /*
                r0 = 4
                r1 = 0
                c.e.a.a.o.C0737e.a(r4, r1, r0)
                c.e.a.a.o.C0737e.a(r5, r1, r0)
                c.e.a.a.o.C0737e.a(r6, r1, r0)
                c.e.a.a.o.C0737e.a(r7, r1, r0)
                r0 = 1
                r2 = 255(0xff, float:3.57E-43)
                if (r7 == 0) goto L_0x001b
                if (r7 == r0) goto L_0x001b
                r3 = 2
                if (r7 == r3) goto L_0x0020
                r3 = 3
                if (r7 == r3) goto L_0x001e
            L_0x001b:
                r7 = 255(0xff, float:3.57E-43)
                goto L_0x0022
            L_0x001e:
                r7 = 0
                goto L_0x0022
            L_0x0020:
                r7 = 127(0x7f, float:1.78E-43)
            L_0x0022:
                if (r4 <= r0) goto L_0x0027
                r4 = 255(0xff, float:3.57E-43)
                goto L_0x0028
            L_0x0027:
                r4 = 0
            L_0x0028:
                if (r5 <= r0) goto L_0x002d
                r5 = 255(0xff, float:3.57E-43)
                goto L_0x002e
            L_0x002d:
                r5 = 0
            L_0x002e:
                if (r6 <= r0) goto L_0x0032
                r1 = 255(0xff, float:3.57E-43)
            L_0x0032:
                int r4 = android.graphics.Color.argb(r7, r4, r5, r1)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.k.a.c.a.a(int, int, int, int):int");
        }
    }

    /* compiled from: Cea708Decoder */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f9100a;

        /* renamed from: b  reason: collision with root package name */
        public final int f9101b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f9102c;

        /* renamed from: d  reason: collision with root package name */
        public int f9103d = 0;

        public b(int i2, int i3) {
            this.f9100a = i2;
            this.f9101b = i3;
            this.f9102c = new byte[((i3 * 2) - 1)];
        }
    }

    public c(int i2, List<byte[]> list) {
        this.f9084i = i2 == -1 ? 1 : i2;
        this.f9085j = new a[8];
        for (int i3 = 0; i3 < 8; i3++) {
            this.f9085j[i3] = new a();
        }
        this.f9086k = this.f9085j[0];
        m();
    }

    public void a(i iVar) {
        this.f9082g.a(iVar.f7545c.array(), iVar.f7545c.limit());
        while (this.f9082g.a() >= 3) {
            int u = this.f9082g.u() & 7;
            int i2 = u & 3;
            boolean z = false;
            boolean z2 = (u & 4) == 4;
            byte u2 = (byte) this.f9082g.u();
            byte u3 = (byte) this.f9082g.u();
            if ((i2 == 2 || i2 == 3) && z2) {
                if (i2 == 3) {
                    f();
                    int i3 = (u2 & 192) >> 6;
                    byte b2 = u2 & 63;
                    if (b2 == 0) {
                        b2 = 64;
                    }
                    this.n = new b(i3, b2);
                    b bVar = this.n;
                    byte[] bArr = bVar.f9102c;
                    int i4 = bVar.f9103d;
                    bVar.f9103d = i4 + 1;
                    bArr[i4] = u3;
                } else {
                    if (i2 == 2) {
                        z = true;
                    }
                    C0737e.a(z);
                    b bVar2 = this.n;
                    if (bVar2 == null) {
                        p.b("Cea708Decoder", "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                    } else {
                        byte[] bArr2 = bVar2.f9102c;
                        int i5 = bVar2.f9103d;
                        bVar2.f9103d = i5 + 1;
                        bArr2[i5] = u2;
                        int i6 = bVar2.f9103d;
                        bVar2.f9103d = i6 + 1;
                        bArr2[i6] = u3;
                    }
                }
                b bVar3 = this.n;
                if (bVar3.f9103d == (bVar3.f9101b * 2) - 1) {
                    f();
                }
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0093, code lost:
        if (r2 > 8) goto L_0x0117;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x009b, code lost:
        if (r4.f9083h.f() == false) goto L_0x00a6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x009d, code lost:
        r4.f9085j[8 - r2].h();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x00a6, code lost:
        r2 = r2 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00c5, code lost:
        if (r2 > 8) goto L_0x0117;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00cd, code lost:
        if (r4.f9083h.f() == false) goto L_0x00d9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00cf, code lost:
        r4.f9085j[8 - r2].a(false);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x00d9, code lost:
        r2 = r2 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00f3, code lost:
        if (r2 > 8) goto L_0x0117;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00fb, code lost:
        if (r4.f9083h.f() == false) goto L_0x0106;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x00fd, code lost:
        r4.f9085j[8 - r2].d();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x0106, code lost:
        r2 = r2 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:85:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:87:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:89:?, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void b(int r5) {
        /*
            r4 = this;
            r0 = 16
            r1 = 8
            r2 = 1
            switch(r5) {
                case 128: goto L_0x0109;
                case 129: goto L_0x0109;
                case 130: goto L_0x0109;
                case 131: goto L_0x0109;
                case 132: goto L_0x0109;
                case 133: goto L_0x0109;
                case 134: goto L_0x0109;
                case 135: goto L_0x0109;
                case 136: goto L_0x00f3;
                case 137: goto L_0x00dc;
                case 138: goto L_0x00c5;
                case 139: goto L_0x00a9;
                case 140: goto L_0x0093;
                case 141: goto L_0x008c;
                case 142: goto L_0x0117;
                case 143: goto L_0x0087;
                case 144: goto L_0x0073;
                case 145: goto L_0x005d;
                case 146: goto L_0x0049;
                case 147: goto L_0x0008;
                case 148: goto L_0x0008;
                case 149: goto L_0x0008;
                case 150: goto L_0x0008;
                case 151: goto L_0x0033;
                case 152: goto L_0x0020;
                case 153: goto L_0x0020;
                case 154: goto L_0x0020;
                case 155: goto L_0x0020;
                case 156: goto L_0x0020;
                case 157: goto L_0x0020;
                case 158: goto L_0x0020;
                case 159: goto L_0x0020;
                default: goto L_0x0008;
            }
        L_0x0008:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Invalid C1 command: "
            r0.append(r1)
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            java.lang.String r0 = "Cea708Decoder"
            c.e.a.a.o.p.d(r0, r5)
            goto L_0x0117
        L_0x0020:
            int r5 = r5 + -152
            r4.e(r5)
            int r0 = r4.o
            if (r0 == r5) goto L_0x0117
            r4.o = r5
            c.e.a.a.k.a.c$a[] r0 = r4.f9085j
            r5 = r0[r5]
            r4.f9086k = r5
            goto L_0x0117
        L_0x0033:
            c.e.a.a.k.a.c$a r5 = r4.f9086k
            boolean r5 = r5.e()
            if (r5 != 0) goto L_0x0044
            c.e.a.a.o.u r5 = r4.f9083h
            r0 = 32
            r5.c(r0)
            goto L_0x0117
        L_0x0044:
            r4.k()
            goto L_0x0117
        L_0x0049:
            c.e.a.a.k.a.c$a r5 = r4.f9086k
            boolean r5 = r5.e()
            if (r5 != 0) goto L_0x0058
            c.e.a.a.o.u r5 = r4.f9083h
            r5.c(r0)
            goto L_0x0117
        L_0x0058:
            r4.j()
            goto L_0x0117
        L_0x005d:
            c.e.a.a.k.a.c$a r5 = r4.f9086k
            boolean r5 = r5.e()
            if (r5 != 0) goto L_0x006e
            c.e.a.a.o.u r5 = r4.f9083h
            r0 = 24
            r5.c(r0)
            goto L_0x0117
        L_0x006e:
            r4.i()
            goto L_0x0117
        L_0x0073:
            c.e.a.a.k.a.c$a r5 = r4.f9086k
            boolean r5 = r5.e()
            if (r5 != 0) goto L_0x0082
            c.e.a.a.o.u r5 = r4.f9083h
            r5.c(r0)
            goto L_0x0117
        L_0x0082:
            r4.h()
            goto L_0x0117
        L_0x0087:
            r4.m()
            goto L_0x0117
        L_0x008c:
            c.e.a.a.o.u r5 = r4.f9083h
            r5.c(r1)
            goto L_0x0117
        L_0x0093:
            if (r2 > r1) goto L_0x0117
            c.e.a.a.o.u r5 = r4.f9083h
            boolean r5 = r5.f()
            if (r5 == 0) goto L_0x00a6
            c.e.a.a.k.a.c$a[] r5 = r4.f9085j
            int r0 = 8 - r2
            r5 = r5[r0]
            r5.h()
        L_0x00a6:
            int r2 = r2 + 1
            goto L_0x0093
        L_0x00a9:
            r5 = 1
        L_0x00aa:
            if (r5 > r1) goto L_0x0117
            c.e.a.a.o.u r0 = r4.f9083h
            boolean r0 = r0.f()
            if (r0 == 0) goto L_0x00c2
            c.e.a.a.k.a.c$a[] r0 = r4.f9085j
            int r3 = 8 - r5
            r0 = r0[r3]
            boolean r3 = r0.g()
            r3 = r3 ^ r2
            r0.a((boolean) r3)
        L_0x00c2:
            int r5 = r5 + 1
            goto L_0x00aa
        L_0x00c5:
            if (r2 > r1) goto L_0x0117
            c.e.a.a.o.u r5 = r4.f9083h
            boolean r5 = r5.f()
            if (r5 == 0) goto L_0x00d9
            c.e.a.a.k.a.c$a[] r5 = r4.f9085j
            int r0 = 8 - r2
            r5 = r5[r0]
            r0 = 0
            r5.a((boolean) r0)
        L_0x00d9:
            int r2 = r2 + 1
            goto L_0x00c5
        L_0x00dc:
            r5 = 1
        L_0x00dd:
            if (r5 > r1) goto L_0x0117
            c.e.a.a.o.u r0 = r4.f9083h
            boolean r0 = r0.f()
            if (r0 == 0) goto L_0x00f0
            c.e.a.a.k.a.c$a[] r0 = r4.f9085j
            int r3 = 8 - r5
            r0 = r0[r3]
            r0.a((boolean) r2)
        L_0x00f0:
            int r5 = r5 + 1
            goto L_0x00dd
        L_0x00f3:
            if (r2 > r1) goto L_0x0117
            c.e.a.a.o.u r5 = r4.f9083h
            boolean r5 = r5.f()
            if (r5 == 0) goto L_0x0106
            c.e.a.a.k.a.c$a[] r5 = r4.f9085j
            int r0 = 8 - r2
            r5 = r5[r0]
            r5.d()
        L_0x0106:
            int r2 = r2 + 1
            goto L_0x00f3
        L_0x0109:
            int r5 = r5 + -128
            int r0 = r4.o
            if (r0 == r5) goto L_0x0117
            r4.o = r5
            c.e.a.a.k.a.c$a[] r0 = r4.f9085j
            r5 = r0[r5]
            r4.f9086k = r5
        L_0x0117:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.k.a.c.b(int):void");
    }

    public final void c(int i2) {
        if (i2 > 7) {
            if (i2 <= 15) {
                this.f9083h.c(8);
            } else if (i2 <= 23) {
                this.f9083h.c(16);
            } else if (i2 <= 31) {
                this.f9083h.c(24);
            }
        }
    }

    public e d() {
        List<c.e.a.a.k.b> list = this.f9087l;
        this.m = list;
        return new g(list);
    }

    public boolean e() {
        return this.f9087l != this.m;
    }

    public final void f() {
        if (this.n != null) {
            l();
            this.n = null;
        }
    }

    public void flush() {
        super.flush();
        this.f9087l = null;
        this.m = null;
        this.o = 0;
        this.f9086k = this.f9085j[this.o];
        m();
        this.n = null;
    }

    public final void g(int i2) {
        this.f9086k.a((char) (i2 & 255));
    }

    public final void h(int i2) {
        if (i2 == 32) {
            this.f9086k.a(' ');
        } else if (i2 == 33) {
            this.f9086k.a(160);
        } else if (i2 == 37) {
            this.f9086k.a(8230);
        } else if (i2 == 42) {
            this.f9086k.a(352);
        } else if (i2 == 44) {
            this.f9086k.a(338);
        } else if (i2 == 63) {
            this.f9086k.a(376);
        } else if (i2 == 57) {
            this.f9086k.a(8482);
        } else if (i2 == 58) {
            this.f9086k.a(353);
        } else if (i2 == 60) {
            this.f9086k.a(339);
        } else if (i2 != 61) {
            switch (i2) {
                case 48:
                    this.f9086k.a(9608);
                    return;
                case 49:
                    this.f9086k.a(8216);
                    return;
                case 50:
                    this.f9086k.a(8217);
                    return;
                case 51:
                    this.f9086k.a(8220);
                    return;
                case 52:
                    this.f9086k.a(8221);
                    return;
                case 53:
                    this.f9086k.a(8226);
                    return;
                default:
                    switch (i2) {
                        case 118:
                            this.f9086k.a(8539);
                            return;
                        case 119:
                            this.f9086k.a(8540);
                            return;
                        case 120:
                            this.f9086k.a(8541);
                            return;
                        case 121:
                            this.f9086k.a(8542);
                            return;
                        case 122:
                            this.f9086k.a(9474);
                            return;
                        case 123:
                            this.f9086k.a(9488);
                            return;
                        case 124:
                            this.f9086k.a(9492);
                            return;
                        case 125:
                            this.f9086k.a(9472);
                            return;
                        case 126:
                            this.f9086k.a(9496);
                            return;
                        case 127:
                            this.f9086k.a(9484);
                            return;
                        default:
                            p.d("Cea708Decoder", "Invalid G2 character: " + i2);
                            return;
                    }
            }
        } else {
            this.f9086k.a(8480);
        }
    }

    public final void i(int i2) {
        if (i2 == 160) {
            this.f9086k.a(13252);
            return;
        }
        p.d("Cea708Decoder", "Invalid G3 character: " + i2);
        this.f9086k.a('_');
    }

    public final void j() {
        this.f9083h.c(4);
        int a2 = this.f9083h.a(4);
        this.f9083h.c(2);
        this.f9086k.a(a2, this.f9083h.a(6));
    }

    public final void k() {
        int a2 = a.a(this.f9083h.a(2), this.f9083h.a(2), this.f9083h.a(2), this.f9083h.a(2));
        int a3 = this.f9083h.a(2);
        int a4 = a.a(this.f9083h.a(2), this.f9083h.a(2), this.f9083h.a(2));
        if (this.f9083h.f()) {
            a3 |= 4;
        }
        boolean f2 = this.f9083h.f();
        int a5 = this.f9083h.a(2);
        int a6 = this.f9083h.a(2);
        int a7 = this.f9083h.a(2);
        this.f9083h.c(8);
        this.f9086k.a(a2, a4, f2, a3, a5, a6, a7);
    }

    public final void l() {
        b bVar = this.n;
        int i2 = bVar.f9103d;
        if (i2 != (bVar.f9101b * 2) - 1) {
            p.d("Cea708Decoder", "DtvCcPacket ended prematurely; size is " + ((this.n.f9101b * 2) - 1) + ", but current index is " + this.n.f9103d + " (sequence number " + this.n.f9100a + "); ignoring packet");
            return;
        }
        this.f9083h.a(bVar.f9102c, i2);
        int a2 = this.f9083h.a(3);
        int a3 = this.f9083h.a(5);
        if (a2 == 7) {
            this.f9083h.c(2);
            a2 = this.f9083h.a(6);
            if (a2 < 7) {
                p.d("Cea708Decoder", "Invalid extended service number: " + a2);
            }
        }
        if (a3 == 0) {
            if (a2 != 0) {
                p.d("Cea708Decoder", "serviceNumber is non-zero (" + a2 + ") when blockSize is 0");
            }
        } else if (a2 == this.f9084i) {
            boolean z = false;
            while (this.f9083h.b() > 0) {
                int a4 = this.f9083h.a(8);
                if (a4 == 16) {
                    int a5 = this.f9083h.a(8);
                    if (a5 <= 31) {
                        c(a5);
                    } else if (a5 <= 127) {
                        h(a5);
                    } else if (a5 <= 159) {
                        d(a5);
                    } else if (a5 <= 255) {
                        i(a5);
                    } else {
                        p.d("Cea708Decoder", "Invalid extended command: " + a5);
                    }
                } else if (a4 <= 31) {
                    a(a4);
                } else if (a4 <= 127) {
                    f(a4);
                } else if (a4 <= 159) {
                    b(a4);
                } else if (a4 <= 255) {
                    g(a4);
                } else {
                    p.d("Cea708Decoder", "Invalid base command: " + a4);
                }
                z = true;
            }
            if (z) {
                this.f9087l = g();
            }
        }
    }

    public final void m() {
        for (int i2 = 0; i2 < 8; i2++) {
            this.f9085j[i2].h();
        }
    }

    public final void e(int i2) {
        a aVar = this.f9085j[i2];
        this.f9083h.c(2);
        boolean f2 = this.f9083h.f();
        boolean f3 = this.f9083h.f();
        boolean f4 = this.f9083h.f();
        int a2 = this.f9083h.a(3);
        boolean f5 = this.f9083h.f();
        int a3 = this.f9083h.a(7);
        int a4 = this.f9083h.a(8);
        int a5 = this.f9083h.a(4);
        int a6 = this.f9083h.a(4);
        this.f9083h.c(2);
        int a7 = this.f9083h.a(6);
        this.f9083h.c(2);
        aVar.a(f2, f3, f4, a2, f5, a3, a4, a6, a7, a5, this.f9083h.a(3), this.f9083h.a(3));
    }

    public final List<c.e.a.a.k.b> g() {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < 8; i2++) {
            if (!this.f9085j[i2].f() && this.f9085j[i2].g()) {
                arrayList.add(this.f9085j[i2].b());
            }
        }
        Collections.sort(arrayList);
        return Collections.unmodifiableList(arrayList);
    }

    public final void d(int i2) {
        if (i2 <= 135) {
            this.f9083h.c(32);
        } else if (i2 <= 143) {
            this.f9083h.c(40);
        } else if (i2 <= 159) {
            this.f9083h.c(2);
            this.f9083h.c(this.f9083h.a(6) * 8);
        }
    }

    public final void f(int i2) {
        if (i2 == 127) {
            this.f9086k.a(9835);
        } else {
            this.f9086k.a((char) (i2 & 255));
        }
    }

    public final void i() {
        int a2 = a.a(this.f9083h.a(2), this.f9083h.a(2), this.f9083h.a(2), this.f9083h.a(2));
        int a3 = a.a(this.f9083h.a(2), this.f9083h.a(2), this.f9083h.a(2), this.f9083h.a(2));
        this.f9083h.c(2);
        this.f9086k.b(a2, a3, a.a(this.f9083h.a(2), this.f9083h.a(2), this.f9083h.a(2)));
    }

    public final void a(int i2) {
        if (i2 == 0) {
            return;
        }
        if (i2 == 3) {
            this.f9087l = g();
        } else if (i2 != 8) {
            switch (i2) {
                case 12:
                    m();
                    return;
                case 13:
                    this.f9086k.a(10);
                    return;
                case 14:
                    return;
                default:
                    if (i2 >= 17 && i2 <= 23) {
                        p.d("Cea708Decoder", "Currently unsupported COMMAND_EXT1 Command: " + i2);
                        this.f9083h.c(8);
                        return;
                    } else if (i2 < 24 || i2 > 31) {
                        p.d("Cea708Decoder", "Invalid C0 command: " + i2);
                        return;
                    } else {
                        p.d("Cea708Decoder", "Currently unsupported COMMAND_P16 Command: " + i2);
                        this.f9083h.c(16);
                        return;
                    }
            }
        } else {
            this.f9086k.a();
        }
    }

    public final void h() {
        this.f9086k.a(this.f9083h.a(4), this.f9083h.a(2), this.f9083h.a(2), this.f9083h.f(), this.f9083h.f(), this.f9083h.a(3), this.f9083h.a(3));
    }
}
