package b.i.i;

import android.text.SpannableStringBuilder;
import java.util.Locale;

/* compiled from: BidiFormatter */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final d f2708a = e.f2742c;

    /* renamed from: b  reason: collision with root package name */
    public static final String f2709b = Character.toString(8206);

    /* renamed from: c  reason: collision with root package name */
    public static final String f2710c = Character.toString(8207);

    /* renamed from: d  reason: collision with root package name */
    public static final a f2711d = new a(false, 2, f2708a);

    /* renamed from: e  reason: collision with root package name */
    public static final a f2712e = new a(true, 2, f2708a);

    /* renamed from: f  reason: collision with root package name */
    public final boolean f2713f;

    /* renamed from: g  reason: collision with root package name */
    public final int f2714g;

    /* renamed from: h  reason: collision with root package name */
    public final d f2715h;

    /* renamed from: b.i.i.a$a  reason: collision with other inner class name */
    /* compiled from: BidiFormatter */
    public static final class C0030a {

        /* renamed from: a  reason: collision with root package name */
        public boolean f2716a;

        /* renamed from: b  reason: collision with root package name */
        public int f2717b;

        /* renamed from: c  reason: collision with root package name */
        public d f2718c;

        public C0030a() {
            b(a.a(Locale.getDefault()));
        }

        public static a a(boolean z) {
            return z ? a.f2712e : a.f2711d;
        }

        public final void b(boolean z) {
            this.f2716a = z;
            this.f2718c = a.f2708a;
            this.f2717b = 2;
        }

        public a a() {
            if (this.f2717b == 2 && this.f2718c == a.f2708a) {
                return a(this.f2716a);
            }
            return new a(this.f2716a, this.f2717b, this.f2718c);
        }
    }

    /* compiled from: BidiFormatter */
    private static class b {

        /* renamed from: a  reason: collision with root package name */
        public static final byte[] f2719a = new byte[1792];

        /* renamed from: b  reason: collision with root package name */
        public final CharSequence f2720b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f2721c;

        /* renamed from: d  reason: collision with root package name */
        public final int f2722d;

        /* renamed from: e  reason: collision with root package name */
        public int f2723e;

        /* renamed from: f  reason: collision with root package name */
        public char f2724f;

        static {
            for (int i2 = 0; i2 < 1792; i2++) {
                f2719a[i2] = Character.getDirectionality(i2);
            }
        }

        public b(CharSequence charSequence, boolean z) {
            this.f2720b = charSequence;
            this.f2721c = z;
            this.f2722d = charSequence.length();
        }

        public static byte a(char c2) {
            return c2 < 1792 ? f2719a[c2] : Character.getDirectionality(c2);
        }

        public byte b() {
            this.f2724f = this.f2720b.charAt(this.f2723e);
            if (Character.isHighSurrogate(this.f2724f)) {
                int codePointAt = Character.codePointAt(this.f2720b, this.f2723e);
                this.f2723e += Character.charCount(codePointAt);
                return Character.getDirectionality(codePointAt);
            }
            this.f2723e++;
            byte a2 = a(this.f2724f);
            if (this.f2721c) {
                char c2 = this.f2724f;
                if (c2 == '<') {
                    a2 = h();
                } else if (c2 == '&') {
                    a2 = f();
                }
            }
            return a2;
        }

        public int c() {
            this.f2723e = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            while (this.f2723e < this.f2722d && i2 == 0) {
                byte b2 = b();
                if (b2 != 0) {
                    if (b2 == 1 || b2 == 2) {
                        if (i4 == 0) {
                            return 1;
                        }
                    } else if (b2 != 9) {
                        switch (b2) {
                            case 14:
                            case 15:
                                i4++;
                                i3 = -1;
                                continue;
                            case 16:
                            case 17:
                                i4++;
                                i3 = 1;
                                continue;
                            case 18:
                                i4--;
                                i3 = 0;
                                continue;
                        }
                    }
                } else if (i4 == 0) {
                    return -1;
                }
                i2 = i4;
            }
            if (i2 == 0) {
                return 0;
            }
            if (i3 != 0) {
                return i3;
            }
            while (this.f2723e > 0) {
                switch (a()) {
                    case 14:
                    case 15:
                        if (i2 == i4) {
                            return -1;
                        }
                        break;
                    case 16:
                    case 17:
                        if (i2 == i4) {
                            return 1;
                        }
                        break;
                    case 18:
                        i4++;
                        continue;
                }
                i4--;
            }
            return 0;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:18:0x002b, code lost:
            r2 = r2 - 1;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public int d() {
            /*
                r7 = this;
                int r0 = r7.f2722d
                r7.f2723e = r0
                r0 = 0
                r1 = 0
                r2 = 0
            L_0x0007:
                int r3 = r7.f2723e
                if (r3 <= 0) goto L_0x003b
                byte r3 = r7.a()
                r4 = -1
                if (r3 == 0) goto L_0x0034
                r5 = 1
                if (r3 == r5) goto L_0x002e
                r6 = 2
                if (r3 == r6) goto L_0x002e
                r6 = 9
                if (r3 == r6) goto L_0x0007
                switch(r3) {
                    case 14: goto L_0x0028;
                    case 15: goto L_0x0028;
                    case 16: goto L_0x0025;
                    case 17: goto L_0x0025;
                    case 18: goto L_0x0022;
                    default: goto L_0x001f;
                }
            L_0x001f:
                if (r1 != 0) goto L_0x0007
                goto L_0x0039
            L_0x0022:
                int r2 = r2 + 1
                goto L_0x0007
            L_0x0025:
                if (r1 != r2) goto L_0x002b
                return r5
            L_0x0028:
                if (r1 != r2) goto L_0x002b
                return r4
            L_0x002b:
                int r2 = r2 + -1
                goto L_0x0007
            L_0x002e:
                if (r2 != 0) goto L_0x0031
                return r5
            L_0x0031:
                if (r1 != 0) goto L_0x0007
                goto L_0x0039
            L_0x0034:
                if (r2 != 0) goto L_0x0037
                return r4
            L_0x0037:
                if (r1 != 0) goto L_0x0007
            L_0x0039:
                r1 = r2
                goto L_0x0007
            L_0x003b:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: b.i.i.a.b.d():int");
        }

        public final byte e() {
            char c2;
            int i2 = this.f2723e;
            do {
                int i3 = this.f2723e;
                if (i3 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f2720b;
                int i4 = i3 - 1;
                this.f2723e = i4;
                this.f2724f = charSequence.charAt(i4);
                c2 = this.f2724f;
                if (c2 == '&') {
                    return 12;
                }
            } while (c2 != ';');
            this.f2723e = i2;
            this.f2724f = ';';
            return 13;
        }

        public final byte f() {
            char charAt;
            do {
                int i2 = this.f2723e;
                if (i2 >= this.f2722d) {
                    break;
                }
                CharSequence charSequence = this.f2720b;
                this.f2723e = i2 + 1;
                charAt = charSequence.charAt(i2);
                this.f2724f = charAt;
            } while (charAt != ';');
            return 12;
        }

        public final byte g() {
            char charAt;
            int i2 = this.f2723e;
            while (true) {
                int i3 = this.f2723e;
                if (i3 <= 0) {
                    break;
                }
                CharSequence charSequence = this.f2720b;
                int i4 = i3 - 1;
                this.f2723e = i4;
                this.f2724f = charSequence.charAt(i4);
                char c2 = this.f2724f;
                if (c2 == '<') {
                    return 12;
                }
                if (c2 == '>') {
                    break;
                } else if (c2 == '\"' || c2 == '\'') {
                    char c3 = this.f2724f;
                    do {
                        int i5 = this.f2723e;
                        if (i5 <= 0) {
                            break;
                        }
                        CharSequence charSequence2 = this.f2720b;
                        int i6 = i5 - 1;
                        this.f2723e = i6;
                        charAt = charSequence2.charAt(i6);
                        this.f2724f = charAt;
                    } while (charAt != c3);
                }
            }
            this.f2723e = i2;
            this.f2724f = '>';
            return 13;
        }

        public final byte h() {
            char charAt;
            int i2 = this.f2723e;
            while (true) {
                int i3 = this.f2723e;
                if (i3 < this.f2722d) {
                    CharSequence charSequence = this.f2720b;
                    this.f2723e = i3 + 1;
                    this.f2724f = charSequence.charAt(i3);
                    char c2 = this.f2724f;
                    if (c2 == '>') {
                        return 12;
                    }
                    if (c2 == '\"' || c2 == '\'') {
                        char c3 = this.f2724f;
                        do {
                            int i4 = this.f2723e;
                            if (i4 >= this.f2722d) {
                                break;
                            }
                            CharSequence charSequence2 = this.f2720b;
                            this.f2723e = i4 + 1;
                            charAt = charSequence2.charAt(i4);
                            this.f2724f = charAt;
                        } while (charAt != c3);
                    }
                } else {
                    this.f2723e = i2;
                    this.f2724f = '<';
                    return 13;
                }
            }
        }

        public byte a() {
            this.f2724f = this.f2720b.charAt(this.f2723e - 1);
            if (Character.isLowSurrogate(this.f2724f)) {
                int codePointBefore = Character.codePointBefore(this.f2720b, this.f2723e);
                this.f2723e -= Character.charCount(codePointBefore);
                return Character.getDirectionality(codePointBefore);
            }
            this.f2723e--;
            byte a2 = a(this.f2724f);
            if (this.f2721c) {
                char c2 = this.f2724f;
                if (c2 == '>') {
                    a2 = g();
                } else if (c2 == ';') {
                    a2 = e();
                }
            }
            return a2;
        }
    }

    public a(boolean z, int i2, d dVar) {
        this.f2713f = z;
        this.f2714g = i2;
        this.f2715h = dVar;
    }

    public static a a() {
        return new C0030a().a();
    }

    public boolean b() {
        return (this.f2714g & 2) != 0;
    }

    public CharSequence c(CharSequence charSequence) {
        return a(charSequence, this.f2715h, true);
    }

    public final String a(CharSequence charSequence, d dVar) {
        boolean isRtl = dVar.isRtl(charSequence, 0, charSequence.length());
        if (this.f2713f || (!isRtl && b(charSequence) != 1)) {
            return (!this.f2713f || (isRtl && b(charSequence) != -1)) ? "" : f2710c;
        }
        return f2709b;
    }

    public final String b(CharSequence charSequence, d dVar) {
        boolean isRtl = dVar.isRtl(charSequence, 0, charSequence.length());
        if (this.f2713f || (!isRtl && a(charSequence) != 1)) {
            return (!this.f2713f || (isRtl && a(charSequence) != -1)) ? "" : f2710c;
        }
        return f2709b;
    }

    public static int b(CharSequence charSequence) {
        return new b(charSequence, false).d();
    }

    public CharSequence a(CharSequence charSequence, d dVar, boolean z) {
        if (charSequence == null) {
            return null;
        }
        boolean isRtl = dVar.isRtl(charSequence, 0, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (b() && z) {
            spannableStringBuilder.append(b(charSequence, isRtl ? e.f2741b : e.f2740a));
        }
        if (isRtl != this.f2713f) {
            spannableStringBuilder.append(isRtl ? (char) 8235 : 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append(8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        if (z) {
            spannableStringBuilder.append(a(charSequence, isRtl ? e.f2741b : e.f2740a));
        }
        return spannableStringBuilder;
    }

    public static boolean a(Locale locale) {
        return f.b(locale) == 1;
    }

    public static int a(CharSequence charSequence) {
        return new b(charSequence, false).c();
    }
}
