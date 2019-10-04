package c.e.a.a.k.a;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import c.e.a.a.k.b;
import c.e.a.a.k.e;
import c.e.a.a.k.i;
import c.e.a.a.o.p;
import c.e.a.a.o.v;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: Cea608Decoder */
public final class a extends f {

    /* renamed from: g  reason: collision with root package name */
    public static final int[] f9065g = {11, 1, 3, 12, 14, 5, 7, 9};

    /* renamed from: h  reason: collision with root package name */
    public static final int[] f9066h = {0, 4, 8, 12, 16, 20, 24, 28};

    /* renamed from: i  reason: collision with root package name */
    public static final int[] f9067i = {-1, -16711936, -16776961, -16711681, -65536, -256, -65281};

    /* renamed from: j  reason: collision with root package name */
    public static final int[] f9068j = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, 247, 209, 241, 9632};

    /* renamed from: k  reason: collision with root package name */
    public static final int[] f9069k = {174, 176, 189, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, 251};

    /* renamed from: l  reason: collision with root package name */
    public static final int[] f9070l = {193, 201, 211, 218, 220, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, 192, 194, 199, 200, 202, 203, 235, 206, 207, 239, 212, 217, 249, 219, 171, 187};
    public static final int[] m = {195, 227, 205, 204, 236, 210, 242, 213, 245, 123, 125, 92, 94, 95, 124, 126, 196, 228, 214, 246, 223, 165, 164, 9474, 197, 229, 216, 248, 9484, 9488, 9492, 9496};
    public static final boolean[] n = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};
    public byte A;
    public byte B;
    public int C = 0;
    public final v o = new v();
    public final int p;
    public final int q;
    public final int r;
    public final ArrayList<C0114a> s = new ArrayList<>();
    public C0114a t = new C0114a(0, 4);
    public List<b> u;
    public List<b> v;
    public int w;
    public int x;
    public boolean y;
    public boolean z;

    /* renamed from: c.e.a.a.k.a.a$a  reason: collision with other inner class name */
    /* compiled from: Cea608Decoder */
    private static class C0114a {

        /* renamed from: a  reason: collision with root package name */
        public final List<C0115a> f9071a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        public final List<SpannableString> f9072b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        public final StringBuilder f9073c = new StringBuilder();

        /* renamed from: d  reason: collision with root package name */
        public int f9074d;

        /* renamed from: e  reason: collision with root package name */
        public int f9075e;

        /* renamed from: f  reason: collision with root package name */
        public int f9076f;

        /* renamed from: g  reason: collision with root package name */
        public int f9077g;

        /* renamed from: h  reason: collision with root package name */
        public int f9078h;

        /* renamed from: c.e.a.a.k.a.a$a$a  reason: collision with other inner class name */
        /* compiled from: Cea608Decoder */
        private static class C0115a {

            /* renamed from: a  reason: collision with root package name */
            public final int f9079a;

            /* renamed from: b  reason: collision with root package name */
            public final boolean f9080b;

            /* renamed from: c  reason: collision with root package name */
            public int f9081c;

            public C0115a(int i2, boolean z, int i3) {
                this.f9079a = i2;
                this.f9080b = z;
                this.f9081c = i3;
            }
        }

        public C0114a(int i2, int i3) {
            b(i2);
            d(i3);
        }

        public void d(int i2) {
            this.f9078h = i2;
        }

        public void b(int i2) {
            this.f9077g = i2;
            this.f9071a.clear();
            this.f9072b.clear();
            this.f9073c.setLength(0);
            this.f9074d = 15;
            this.f9075e = 0;
            this.f9076f = 0;
        }

        public boolean c() {
            return this.f9071a.isEmpty() && this.f9072b.isEmpty() && this.f9073c.length() == 0;
        }

        public void d() {
            this.f9072b.add(b());
            this.f9073c.setLength(0);
            this.f9071a.clear();
            int min = Math.min(this.f9078h, this.f9074d);
            while (this.f9072b.size() >= min) {
                this.f9072b.remove(0);
            }
        }

        public void a(int i2, boolean z) {
            this.f9071a.add(new C0115a(i2, z, this.f9073c.length()));
        }

        public void a() {
            int length = this.f9073c.length();
            if (length > 0) {
                this.f9073c.delete(length - 1, length);
                int size = this.f9071a.size() - 1;
                while (size >= 0) {
                    C0115a aVar = this.f9071a.get(size);
                    if (aVar.f9081c == length) {
                        aVar.f9081c = r3 - 1;
                        size--;
                    } else {
                        return;
                    }
                }
            }
        }

        public void c(int i2) {
            this.f9077g = i2;
        }

        public final SpannableString b() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f9073c);
            int length = spannableStringBuilder.length();
            int i2 = 0;
            int i3 = -1;
            int i4 = -1;
            int i5 = 0;
            int i6 = -1;
            int i7 = -1;
            boolean z = false;
            while (i2 < this.f9071a.size()) {
                C0115a aVar = this.f9071a.get(i2);
                boolean z2 = aVar.f9080b;
                int i8 = aVar.f9079a;
                if (i8 != 8) {
                    boolean z3 = i8 == 7;
                    if (i8 != 7) {
                        i7 = a.f9067i[i8];
                    }
                    z = z3;
                }
                int i9 = aVar.f9081c;
                i2++;
                if (i9 != (i2 < this.f9071a.size() ? this.f9071a.get(i2).f9081c : length)) {
                    if (i3 != -1 && !z2) {
                        b(spannableStringBuilder, i3, i9);
                        i3 = -1;
                    } else if (i3 == -1 && z2) {
                        i3 = i9;
                    }
                    if (i4 != -1 && !z) {
                        a(spannableStringBuilder, i4, i9);
                        i4 = -1;
                    } else if (i4 == -1 && z) {
                        i4 = i9;
                    }
                    if (i7 != i6) {
                        a(spannableStringBuilder, i5, i9, i6);
                        i6 = i7;
                        i5 = i9;
                    }
                }
            }
            if (!(i3 == -1 || i3 == length)) {
                b(spannableStringBuilder, i3, length);
            }
            if (!(i4 == -1 || i4 == length)) {
                a(spannableStringBuilder, i4, length);
            }
            if (i5 != length) {
                a(spannableStringBuilder, i5, length, i6);
            }
            return new SpannableString(spannableStringBuilder);
        }

        public void a(char c2) {
            this.f9073c.append(c2);
        }

        public b a(int i2) {
            float f2;
            int i3;
            int i4;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i5 = 0; i5 < this.f9072b.size(); i5++) {
                spannableStringBuilder.append(this.f9072b.get(i5));
                spannableStringBuilder.append(10);
            }
            spannableStringBuilder.append(b());
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int i6 = this.f9075e + this.f9076f;
            int length = (32 - i6) - spannableStringBuilder.length();
            int i7 = i6 - length;
            if (i2 == Integer.MIN_VALUE) {
                if (this.f9077g != 2 || (Math.abs(i7) >= 3 && length >= 0)) {
                    i2 = (this.f9077g != 2 || i7 <= 0) ? 0 : 2;
                } else {
                    i2 = 1;
                }
            }
            if (i2 != 1) {
                if (i2 == 2) {
                    i6 = 32 - length;
                }
                f2 = ((((float) i6) / 32.0f) * 0.8f) + 0.1f;
            } else {
                f2 = 0.5f;
            }
            if (this.f9077g != 1) {
                i4 = this.f9074d;
                if (i4 <= 7) {
                    i3 = 0;
                    b bVar = new b(spannableStringBuilder, Layout.Alignment.ALIGN_NORMAL, (float) i4, 1, i3, f2, i2, Float.MIN_VALUE);
                    return bVar;
                }
            }
            i4 = (this.f9074d - 15) - 2;
            i3 = 2;
            b bVar2 = new b(spannableStringBuilder, Layout.Alignment.ALIGN_NORMAL, (float) i4, 1, i3, f2, i2, Float.MIN_VALUE);
            return bVar2;
        }

        public static void a(SpannableStringBuilder spannableStringBuilder, int i2, int i3) {
            spannableStringBuilder.setSpan(new StyleSpan(2), i2, i3, 33);
        }

        public static void b(SpannableStringBuilder spannableStringBuilder, int i2, int i3) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i2, i3, 33);
        }

        public static void a(SpannableStringBuilder spannableStringBuilder, int i2, int i3, int i4) {
            if (i4 != -1) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(i4), i2, i3, 33);
            }
        }
    }

    public a(String str, int i2) {
        this.p = "application/x-mp4-cea-608".equals(str) ? 2 : 3;
        if (i2 == 1) {
            this.r = 0;
            this.q = 0;
        } else if (i2 == 2) {
            this.r = 1;
            this.q = 0;
        } else if (i2 == 3) {
            this.r = 0;
            this.q = 1;
        } else if (i2 != 4) {
            p.d("Cea608Decoder", "Invalid channel. Defaulting to CC1.");
            this.r = 0;
            this.q = 0;
        } else {
            this.r = 1;
            this.q = 1;
        }
        a(0);
        h();
    }

    public static int a(byte b2) {
        return (b2 >> 3) & 1;
    }

    public static boolean b(byte b2, byte b3) {
        return (b2 & 247) == 17 && (b3 & 240) == 32;
    }

    public static char c(byte b2) {
        return (char) f9070l[b2 & 31];
    }

    public static boolean c(byte b2, byte b3) {
        return (b2 & 246) == 20 && (b3 & 240) == 32;
    }

    public static boolean d(byte b2, byte b3) {
        return (b2 & 240) == 16 && (b3 & 192) == 64;
    }

    public static boolean e(byte b2, byte b3) {
        return (b2 & 247) == 23 && b3 >= 33 && b3 <= 35;
    }

    public static boolean h(byte b2) {
        return (b2 & 240) == 16;
    }

    public void a() {
    }

    public void a(i iVar) {
        byte b2;
        this.o.a(iVar.f7545c.array(), iVar.f7545c.limit());
        boolean z2 = false;
        while (true) {
            int a2 = this.o.a();
            int i2 = this.p;
            if (a2 < i2) {
                break;
            }
            if (i2 == 2) {
                b2 = -4;
            } else {
                b2 = (byte) this.o.u();
            }
            int u2 = this.o.u();
            int u3 = this.o.u();
            if ((b2 & 2) == 0 && (b2 & 1) == this.q) {
                byte b3 = (byte) (u2 & 127);
                byte b4 = (byte) (u3 & 127);
                if (b3 != 0 || b4 != 0) {
                    boolean z3 = this.z;
                    this.z = false;
                    boolean z4 = this.y;
                    this.y = (b2 & 4) == 4;
                    if (this.y) {
                        boolean[] zArr = n;
                        if (!zArr[u2] || !zArr[u3]) {
                            h();
                        } else if ((b3 & 247) == 17 && (b4 & 240) == 48) {
                            if (a(b3) == this.r) {
                                this.t.a(e(b4));
                            }
                        } else if ((b3 & 246) == 18 && (b4 & 224) == 32) {
                            if (a(b3) == this.r) {
                                this.t.a();
                                if ((b3 & 1) == 0) {
                                    this.t.a(c(b4));
                                } else {
                                    this.t.a(d(b4));
                                }
                            }
                        } else if ((b3 & 224) == 0) {
                            a(b3, b4, z3);
                        } else if (this.C == this.r) {
                            this.t.a(b(b3));
                            if ((b4 & 224) != 0) {
                                this.t.a(b(b4));
                            }
                        }
                    } else if (z4) {
                        h();
                    }
                    z2 = true;
                }
            }
        }
        if (z2) {
            int i3 = this.w;
            if (i3 == 1 || i3 == 3) {
                this.u = g();
            }
        }
    }

    public final void b(int i2) {
        this.x = i2;
        this.t.d(i2);
    }

    public e d() {
        List<b> list = this.u;
        this.v = list;
        return new g(list);
    }

    public boolean e() {
        return this.u != this.v;
    }

    public void flush() {
        super.flush();
        this.u = null;
        this.v = null;
        a(0);
        b(4);
        h();
        this.y = false;
        this.z = false;
        this.A = 0;
        this.B = 0;
        this.C = 0;
    }

    public final void g(byte b2) {
        if (b2 == 32) {
            a(2);
        } else if (b2 != 41) {
            switch (b2) {
                case 37:
                    a(1);
                    b(2);
                    return;
                case 38:
                    a(1);
                    b(3);
                    return;
                case 39:
                    a(1);
                    b(4);
                    return;
                default:
                    int i2 = this.w;
                    if (i2 != 0) {
                        if (b2 != 33) {
                            if (b2 != 36) {
                                switch (b2) {
                                    case 44:
                                        this.u = Collections.emptyList();
                                        int i3 = this.w;
                                        if (i3 == 1 || i3 == 3) {
                                            h();
                                            break;
                                        }
                                    case 45:
                                        if (i2 == 1 && !this.t.c()) {
                                            this.t.d();
                                            break;
                                        }
                                    case 46:
                                        h();
                                        break;
                                    case 47:
                                        this.u = g();
                                        h();
                                        break;
                                }
                            }
                        } else {
                            this.t.a();
                        }
                        return;
                    }
                    return;
            }
        } else {
            a(3);
        }
    }

    public final void h() {
        this.t.b(this.w);
        this.s.clear();
        this.s.add(this.t);
    }

    public static char e(byte b2) {
        return (char) f9069k[b2 & 15];
    }

    public final void f(byte b2) {
        this.t.a(' ');
        this.t.a((b2 >> 1) & 7, (b2 & 1) == 1);
    }

    public static char b(byte b2) {
        return (char) f9068j[(b2 & Byte.MAX_VALUE) - 32];
    }

    public static char d(byte b2) {
        return (char) m[b2 & 31];
    }

    public final List<b> g() {
        int size = this.s.size();
        ArrayList arrayList = new ArrayList(size);
        int i2 = 2;
        for (int i3 = 0; i3 < size; i3++) {
            b a2 = this.s.get(i3).a(Integer.MIN_VALUE);
            arrayList.add(a2);
            if (a2 != null) {
                i2 = Math.min(i2, a2.f9121h);
            }
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i4 = 0; i4 < size; i4++) {
            b bVar = (b) arrayList.get(i4);
            if (bVar != null) {
                if (bVar.f9121h != i2) {
                    bVar = this.s.get(i4).a(i2);
                }
                arrayList2.add(bVar);
            }
        }
        return arrayList2;
    }

    public final void a(byte b2, byte b3, boolean z2) {
        this.C = a(b2);
        if (h(b2)) {
            if (!z2 || this.A != b2 || this.B != b3) {
                this.z = true;
                this.A = b2;
                this.B = b3;
            } else {
                return;
            }
        }
        if (this.C == this.r) {
            if (b(b2, b3)) {
                f(b3);
            } else if (d(b2, b3)) {
                a(b2, b3);
            } else if (e(b2, b3)) {
                int unused = this.t.f9076f = b3 - 32;
            } else if (c(b2, b3)) {
                g(b3);
            }
        }
    }

    public final void a(byte b2, byte b3) {
        int i2 = f9065g[b2 & 7];
        boolean z2 = false;
        if ((b3 & 32) != 0) {
            i2++;
        }
        if (i2 != this.t.f9074d) {
            if (this.w != 1 && !this.t.c()) {
                this.t = new C0114a(this.w, this.x);
                this.s.add(this.t);
            }
            int unused = this.t.f9074d = i2;
        }
        boolean z3 = (b3 & 16) == 16;
        if ((b3 & 1) == 1) {
            z2 = true;
        }
        int i3 = (b3 >> 1) & 7;
        this.t.a(z3 ? 8 : i3, z2);
        if (z3) {
            int unused2 = this.t.f9075e = f9066h[i3];
        }
    }

    public final void a(int i2) {
        int i3 = this.w;
        if (i3 != i2) {
            this.w = i2;
            if (i2 == 3) {
                for (int i4 = 0; i4 < this.s.size(); i4++) {
                    this.s.get(i4).c(i2);
                }
                return;
            }
            h();
            if (i3 == 3 || i2 == 1 || i2 == 0) {
                this.u = Collections.emptyList();
            }
        }
    }
}
