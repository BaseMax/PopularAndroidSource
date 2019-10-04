package c.e.d.d;

import c.e.d.b.s;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.MalformedJsonException;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;

/* compiled from: JsonReader */
public class b implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    public static final char[] f11819a = ")]}'\n".toCharArray();

    /* renamed from: b  reason: collision with root package name */
    public final Reader f11820b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f11821c = false;

    /* renamed from: d  reason: collision with root package name */
    public final char[] f11822d = new char[1024];

    /* renamed from: e  reason: collision with root package name */
    public int f11823e = 0;

    /* renamed from: f  reason: collision with root package name */
    public int f11824f = 0;

    /* renamed from: g  reason: collision with root package name */
    public int f11825g = 0;

    /* renamed from: h  reason: collision with root package name */
    public int f11826h = 0;

    /* renamed from: i  reason: collision with root package name */
    public int f11827i = 0;

    /* renamed from: j  reason: collision with root package name */
    public long f11828j;

    /* renamed from: k  reason: collision with root package name */
    public int f11829k;

    /* renamed from: l  reason: collision with root package name */
    public String f11830l;
    public int[] m = new int[32];
    public int n = 0;
    public String[] o;
    public int[] p;

    static {
        s.f11807a = new a();
    }

    public b(Reader reader) {
        int[] iArr = this.m;
        int i2 = this.n;
        this.n = i2 + 1;
        iArr[i2] = 6;
        this.o = new String[32];
        this.p = new int[32];
        if (reader != null) {
            this.f11820b = reader;
            return;
        }
        throw new NullPointerException("in == null");
    }

    public final boolean A() {
        return this.f11821c;
    }

    public String B() {
        return " at line " + (this.f11825g + 1) + " column " + ((this.f11823e - this.f11826h) + 1) + " path " + getPath();
    }

    public boolean C() {
        int i2 = this.f11827i;
        if (i2 == 0) {
            i2 = w();
        }
        if (i2 == 5) {
            this.f11827i = 0;
            int[] iArr = this.p;
            int i3 = this.n - 1;
            iArr[i3] = iArr[i3] + 1;
            return true;
        } else if (i2 == 6) {
            this.f11827i = 0;
            int[] iArr2 = this.p;
            int i4 = this.n - 1;
            iArr2[i4] = iArr2[i4] + 1;
            return false;
        } else {
            throw new IllegalStateException("Expected a boolean but was " + K() + B());
        }
    }

    public double D() {
        int i2 = this.f11827i;
        if (i2 == 0) {
            i2 = w();
        }
        if (i2 == 15) {
            this.f11827i = 0;
            int[] iArr = this.p;
            int i3 = this.n - 1;
            iArr[i3] = iArr[i3] + 1;
            return (double) this.f11828j;
        }
        if (i2 == 16) {
            this.f11830l = new String(this.f11822d, this.f11823e, this.f11829k);
            this.f11823e += this.f11829k;
        } else if (i2 == 8 || i2 == 9) {
            this.f11830l = b(i2 == 8 ? '\'' : '\"');
        } else if (i2 == 10) {
            this.f11830l = J();
        } else if (i2 != 11) {
            throw new IllegalStateException("Expected a double but was " + K() + B());
        }
        this.f11827i = 11;
        double parseDouble = Double.parseDouble(this.f11830l);
        if (this.f11821c || (!Double.isNaN(parseDouble) && !Double.isInfinite(parseDouble))) {
            this.f11830l = null;
            this.f11827i = 0;
            int[] iArr2 = this.p;
            int i4 = this.n - 1;
            iArr2[i4] = iArr2[i4] + 1;
            return parseDouble;
        }
        throw new MalformedJsonException("JSON forbids NaN and infinities: " + parseDouble + B());
    }

    public int E() {
        int i2 = this.f11827i;
        if (i2 == 0) {
            i2 = w();
        }
        if (i2 == 15) {
            long j2 = this.f11828j;
            int i3 = (int) j2;
            if (j2 == ((long) i3)) {
                this.f11827i = 0;
                int[] iArr = this.p;
                int i4 = this.n - 1;
                iArr[i4] = iArr[i4] + 1;
                return i3;
            }
            throw new NumberFormatException("Expected an int but was " + this.f11828j + B());
        }
        if (i2 == 16) {
            this.f11830l = new String(this.f11822d, this.f11823e, this.f11829k);
            this.f11823e += this.f11829k;
        } else if (i2 == 8 || i2 == 9 || i2 == 10) {
            if (i2 == 10) {
                this.f11830l = J();
            } else {
                this.f11830l = b(i2 == 8 ? '\'' : '\"');
            }
            try {
                int parseInt = Integer.parseInt(this.f11830l);
                this.f11827i = 0;
                int[] iArr2 = this.p;
                int i5 = this.n - 1;
                iArr2[i5] = iArr2[i5] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        } else {
            throw new IllegalStateException("Expected an int but was " + K() + B());
        }
        this.f11827i = 11;
        double parseDouble = Double.parseDouble(this.f11830l);
        int i6 = (int) parseDouble;
        if (((double) i6) == parseDouble) {
            this.f11830l = null;
            this.f11827i = 0;
            int[] iArr3 = this.p;
            int i7 = this.n - 1;
            iArr3[i7] = iArr3[i7] + 1;
            return i6;
        }
        throw new NumberFormatException("Expected an int but was " + this.f11830l + B());
    }

    public long F() {
        int i2 = this.f11827i;
        if (i2 == 0) {
            i2 = w();
        }
        if (i2 == 15) {
            this.f11827i = 0;
            int[] iArr = this.p;
            int i3 = this.n - 1;
            iArr[i3] = iArr[i3] + 1;
            return this.f11828j;
        }
        if (i2 == 16) {
            this.f11830l = new String(this.f11822d, this.f11823e, this.f11829k);
            this.f11823e += this.f11829k;
        } else if (i2 == 8 || i2 == 9 || i2 == 10) {
            if (i2 == 10) {
                this.f11830l = J();
            } else {
                this.f11830l = b(i2 == 8 ? '\'' : '\"');
            }
            try {
                long parseLong = Long.parseLong(this.f11830l);
                this.f11827i = 0;
                int[] iArr2 = this.p;
                int i4 = this.n - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return parseLong;
            } catch (NumberFormatException unused) {
            }
        } else {
            throw new IllegalStateException("Expected a long but was " + K() + B());
        }
        this.f11827i = 11;
        double parseDouble = Double.parseDouble(this.f11830l);
        long j2 = (long) parseDouble;
        if (((double) j2) == parseDouble) {
            this.f11830l = null;
            this.f11827i = 0;
            int[] iArr3 = this.p;
            int i5 = this.n - 1;
            iArr3[i5] = iArr3[i5] + 1;
            return j2;
        }
        throw new NumberFormatException("Expected a long but was " + this.f11830l + B());
    }

    public String G() {
        String str;
        int i2 = this.f11827i;
        if (i2 == 0) {
            i2 = w();
        }
        if (i2 == 14) {
            str = J();
        } else if (i2 == 12) {
            str = b('\'');
        } else if (i2 == 13) {
            str = b('\"');
        } else {
            throw new IllegalStateException("Expected a name but was " + K() + B());
        }
        this.f11827i = 0;
        this.o[this.n - 1] = str;
        return str;
    }

    public void H() {
        int i2 = this.f11827i;
        if (i2 == 0) {
            i2 = w();
        }
        if (i2 == 7) {
            this.f11827i = 0;
            int[] iArr = this.p;
            int i3 = this.n - 1;
            iArr[i3] = iArr[i3] + 1;
            return;
        }
        throw new IllegalStateException("Expected null but was " + K() + B());
    }

    public String I() {
        String str;
        int i2 = this.f11827i;
        if (i2 == 0) {
            i2 = w();
        }
        if (i2 == 10) {
            str = J();
        } else if (i2 == 8) {
            str = b('\'');
        } else if (i2 == 9) {
            str = b('\"');
        } else if (i2 == 11) {
            str = this.f11830l;
            this.f11830l = null;
        } else if (i2 == 15) {
            str = Long.toString(this.f11828j);
        } else if (i2 == 16) {
            str = new String(this.f11822d, this.f11823e, this.f11829k);
            this.f11823e += this.f11829k;
        } else {
            throw new IllegalStateException("Expected a string but was " + K() + B());
        }
        this.f11827i = 0;
        int[] iArr = this.p;
        int i3 = this.n - 1;
        iArr[i3] = iArr[i3] + 1;
        return str;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:32:0x004b, code lost:
        u();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String J() {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
            r2 = r1
        L_0x0003:
            r1 = 0
        L_0x0004:
            int r3 = r6.f11823e
            int r4 = r3 + r1
            int r5 = r6.f11824f
            if (r4 >= r5) goto L_0x004f
            char[] r4 = r6.f11822d
            int r3 = r3 + r1
            char r3 = r4[r3]
            r4 = 9
            if (r3 == r4) goto L_0x005d
            r4 = 10
            if (r3 == r4) goto L_0x005d
            r4 = 12
            if (r3 == r4) goto L_0x005d
            r4 = 13
            if (r3 == r4) goto L_0x005d
            r4 = 32
            if (r3 == r4) goto L_0x005d
            r4 = 35
            if (r3 == r4) goto L_0x004b
            r4 = 44
            if (r3 == r4) goto L_0x005d
            r4 = 47
            if (r3 == r4) goto L_0x004b
            r4 = 61
            if (r3 == r4) goto L_0x004b
            r4 = 123(0x7b, float:1.72E-43)
            if (r3 == r4) goto L_0x005d
            r4 = 125(0x7d, float:1.75E-43)
            if (r3 == r4) goto L_0x005d
            r4 = 58
            if (r3 == r4) goto L_0x005d
            r4 = 59
            if (r3 == r4) goto L_0x004b
            switch(r3) {
                case 91: goto L_0x005d;
                case 92: goto L_0x004b;
                case 93: goto L_0x005d;
                default: goto L_0x0048;
            }
        L_0x0048:
            int r1 = r1 + 1
            goto L_0x0004
        L_0x004b:
            r6.u()
            goto L_0x005d
        L_0x004f:
            char[] r3 = r6.f11822d
            int r3 = r3.length
            if (r1 >= r3) goto L_0x005f
            int r3 = r1 + 1
            boolean r3 = r6.b((int) r3)
            if (r3 == 0) goto L_0x005d
            goto L_0x0004
        L_0x005d:
            r0 = r1
            goto L_0x007f
        L_0x005f:
            if (r2 != 0) goto L_0x006c
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r3 = 16
            int r3 = java.lang.Math.max(r1, r3)
            r2.<init>(r3)
        L_0x006c:
            char[] r3 = r6.f11822d
            int r4 = r6.f11823e
            r2.append(r3, r4, r1)
            int r3 = r6.f11823e
            int r3 = r3 + r1
            r6.f11823e = r3
            r1 = 1
            boolean r1 = r6.b((int) r1)
            if (r1 != 0) goto L_0x0003
        L_0x007f:
            if (r2 != 0) goto L_0x008b
            java.lang.String r1 = new java.lang.String
            char[] r2 = r6.f11822d
            int r3 = r6.f11823e
            r1.<init>(r2, r3, r0)
            goto L_0x0096
        L_0x008b:
            char[] r1 = r6.f11822d
            int r3 = r6.f11823e
            r2.append(r1, r3, r0)
            java.lang.String r1 = r2.toString()
        L_0x0096:
            int r2 = r6.f11823e
            int r2 = r2 + r0
            r6.f11823e = r2
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.d.d.b.J():java.lang.String");
    }

    public JsonToken K() {
        int i2 = this.f11827i;
        if (i2 == 0) {
            i2 = w();
        }
        switch (i2) {
            case 1:
                return JsonToken.BEGIN_OBJECT;
            case 2:
                return JsonToken.END_OBJECT;
            case 3:
                return JsonToken.BEGIN_ARRAY;
            case 4:
                return JsonToken.END_ARRAY;
            case 5:
            case 6:
                return JsonToken.BOOLEAN;
            case 7:
                return JsonToken.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonToken.STRING;
            case 12:
            case 13:
            case 14:
                return JsonToken.NAME;
            case 15:
            case 16:
                return JsonToken.NUMBER;
            case 17:
                return JsonToken.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public final int L() {
        String str;
        String str2;
        int i2;
        char c2 = this.f11822d[this.f11823e];
        if (c2 == 't' || c2 == 'T') {
            i2 = 5;
            str2 = "true";
            str = "TRUE";
        } else if (c2 == 'f' || c2 == 'F') {
            i2 = 6;
            str2 = "false";
            str = "FALSE";
        } else if (c2 != 'n' && c2 != 'N') {
            return 0;
        } else {
            i2 = 7;
            str2 = "null";
            str = "NULL";
        }
        int length = str2.length();
        for (int i3 = 1; i3 < length; i3++) {
            if (this.f11823e + i3 >= this.f11824f && !b(i3 + 1)) {
                return 0;
            }
            char c3 = this.f11822d[this.f11823e + i3];
            if (c3 != str2.charAt(i3) && c3 != str.charAt(i3)) {
                return 0;
            }
        }
        if ((this.f11823e + length < this.f11824f || b(length + 1)) && a(this.f11822d[this.f11823e + length])) {
            return 0;
        }
        this.f11823e += length;
        this.f11827i = i2;
        return i2;
    }

    public final int M() {
        char c2;
        char[] cArr = this.f11822d;
        int i2 = this.f11823e;
        int i3 = 0;
        int i4 = this.f11824f;
        int i5 = 0;
        char c3 = 0;
        boolean z = true;
        long j2 = 0;
        boolean z2 = false;
        while (true) {
            if (i2 + i5 == i4) {
                if (i5 == cArr.length) {
                    return i3;
                }
                if (!b(i5 + 1)) {
                    break;
                }
                i2 = this.f11823e;
                i4 = this.f11824f;
            }
            c2 = cArr[i2 + i5];
            if (c2 == '+') {
                i3 = 0;
                if (c3 != 5) {
                    return 0;
                }
            } else if (c2 == 'E' || c2 == 'e') {
                i3 = 0;
                if (c3 != 2 && c3 != 4) {
                    return 0;
                }
                c3 = 5;
                i5++;
            } else {
                if (c2 == '-') {
                    i3 = 0;
                    if (c3 == 0) {
                        c3 = 1;
                        z2 = true;
                    } else if (c3 != 5) {
                        return 0;
                    }
                } else if (c2 == '.') {
                    i3 = 0;
                    if (c3 != 2) {
                        return 0;
                    }
                    c3 = 3;
                } else if (c2 >= '0' && c2 <= '9') {
                    if (c3 == 1 || c3 == 0) {
                        j2 = (long) (-(c2 - '0'));
                        i3 = 0;
                        c3 = 2;
                    } else {
                        if (c3 == 2) {
                            if (j2 == 0) {
                                return 0;
                            }
                            long j3 = (10 * j2) - ((long) (c2 - '0'));
                            boolean z3 = j2 > -922337203685477580L || (j2 == -922337203685477580L && j3 < j2);
                            j2 = j3;
                            z = z3 & z;
                        } else if (c3 == 3) {
                            i3 = 0;
                            c3 = 4;
                        } else if (c3 == 5 || c3 == 6) {
                            i3 = 0;
                            c3 = 7;
                        }
                        i3 = 0;
                    }
                }
                i5++;
            }
            c3 = 6;
            i5++;
        }
        if (a(c2)) {
            return 0;
        }
        if (c3 == 2 && z && ((j2 != Long.MIN_VALUE || z2) && (j2 != 0 || !z2))) {
            if (!z2) {
                j2 = -j2;
            }
            this.f11828j = j2;
            this.f11823e += i5;
            this.f11827i = 15;
            return 15;
        } else if (c3 != 2 && c3 != 4 && c3 != 7) {
            return 0;
        } else {
            this.f11829k = i5;
            this.f11827i = 16;
            return 16;
        }
    }

    public final char N() {
        int i2;
        int i3;
        if (this.f11823e != this.f11824f || b(1)) {
            char[] cArr = this.f11822d;
            int i4 = this.f11823e;
            this.f11823e = i4 + 1;
            char c2 = cArr[i4];
            if (c2 == 10) {
                this.f11825g++;
                this.f11826h = this.f11823e;
            } else if (!(c2 == '\"' || c2 == '\'' || c2 == '/' || c2 == '\\')) {
                if (c2 == 'b') {
                    return 8;
                }
                if (c2 == 'f') {
                    return 12;
                }
                if (c2 == 'n') {
                    return 10;
                }
                if (c2 == 'r') {
                    return 13;
                }
                if (c2 == 't') {
                    return 9;
                }
                if (c2 != 'u') {
                    f("Invalid escape sequence");
                    throw null;
                } else if (this.f11823e + 4 <= this.f11824f || b(4)) {
                    char c3 = 0;
                    int i5 = this.f11823e;
                    int i6 = i5 + 4;
                    while (i5 < i6) {
                        char c4 = this.f11822d[i5];
                        char c5 = (char) (c3 << 4);
                        if (c4 < '0' || c4 > '9') {
                            if (c4 >= 'a' && c4 <= 'f') {
                                i2 = c4 - 'a';
                            } else if (c4 < 'A' || c4 > 'F') {
                                throw new NumberFormatException("\\u" + new String(this.f11822d, this.f11823e, 4));
                            } else {
                                i2 = c4 - 'A';
                            }
                            i3 = i2 + 10;
                        } else {
                            i3 = c4 - '0';
                        }
                        c3 = (char) (c5 + i3);
                        i5++;
                    }
                    this.f11823e += 4;
                    return c3;
                } else {
                    f("Unterminated escape sequence");
                    throw null;
                }
            }
            return c2;
        }
        f("Unterminated escape sequence");
        throw null;
    }

    public final void O() {
        char c2;
        do {
            if (this.f11823e < this.f11824f || b(1)) {
                char[] cArr = this.f11822d;
                int i2 = this.f11823e;
                this.f11823e = i2 + 1;
                c2 = cArr[i2];
                if (c2 == 10) {
                    this.f11825g++;
                    this.f11826h = this.f11823e;
                    return;
                }
            } else {
                return;
            }
        } while (c2 != 13);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0048, code lost:
        u();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void P() {
        /*
            r4 = this;
        L_0x0000:
            r0 = 0
        L_0x0001:
            int r1 = r4.f11823e
            int r2 = r1 + r0
            int r3 = r4.f11824f
            if (r2 >= r3) goto L_0x0051
            char[] r2 = r4.f11822d
            int r1 = r1 + r0
            char r1 = r2[r1]
            r2 = 9
            if (r1 == r2) goto L_0x004b
            r2 = 10
            if (r1 == r2) goto L_0x004b
            r2 = 12
            if (r1 == r2) goto L_0x004b
            r2 = 13
            if (r1 == r2) goto L_0x004b
            r2 = 32
            if (r1 == r2) goto L_0x004b
            r2 = 35
            if (r1 == r2) goto L_0x0048
            r2 = 44
            if (r1 == r2) goto L_0x004b
            r2 = 47
            if (r1 == r2) goto L_0x0048
            r2 = 61
            if (r1 == r2) goto L_0x0048
            r2 = 123(0x7b, float:1.72E-43)
            if (r1 == r2) goto L_0x004b
            r2 = 125(0x7d, float:1.75E-43)
            if (r1 == r2) goto L_0x004b
            r2 = 58
            if (r1 == r2) goto L_0x004b
            r2 = 59
            if (r1 == r2) goto L_0x0048
            switch(r1) {
                case 91: goto L_0x004b;
                case 92: goto L_0x0048;
                case 93: goto L_0x004b;
                default: goto L_0x0045;
            }
        L_0x0045:
            int r0 = r0 + 1
            goto L_0x0001
        L_0x0048:
            r4.u()
        L_0x004b:
            int r1 = r4.f11823e
            int r1 = r1 + r0
            r4.f11823e = r1
            return
        L_0x0051:
            int r1 = r1 + r0
            r4.f11823e = r1
            r0 = 1
            boolean r0 = r4.b((int) r0)
            if (r0 != 0) goto L_0x0000
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.d.d.b.P():void");
    }

    public void Q() {
        int i2 = 0;
        do {
            int i3 = this.f11827i;
            if (i3 == 0) {
                i3 = w();
            }
            if (i3 == 3) {
                c(1);
            } else if (i3 == 1) {
                c(3);
            } else {
                if (i3 == 4) {
                    this.n--;
                } else if (i3 == 2) {
                    this.n--;
                } else if (i3 == 14 || i3 == 10) {
                    P();
                    this.f11827i = 0;
                } else if (i3 == 8 || i3 == 12) {
                    c('\'');
                    this.f11827i = 0;
                } else if (i3 == 9 || i3 == 13) {
                    c('\"');
                    this.f11827i = 0;
                } else {
                    if (i3 == 16) {
                        this.f11823e += this.f11829k;
                    }
                    this.f11827i = 0;
                }
                i2--;
                this.f11827i = 0;
            }
            i2++;
            this.f11827i = 0;
        } while (i2 != 0);
        int[] iArr = this.p;
        int i4 = this.n;
        int i5 = i4 - 1;
        iArr[i5] = iArr[i5] + 1;
        this.o[i4 - 1] = "null";
    }

    public final boolean a(char c2) {
        if (!(c2 == 9 || c2 == 10 || c2 == 12 || c2 == 13 || c2 == ' ')) {
            if (c2 != '#') {
                if (c2 != ',') {
                    if (!(c2 == '/' || c2 == '=')) {
                        if (!(c2 == '{' || c2 == '}' || c2 == ':')) {
                            if (c2 != ';') {
                                switch (c2) {
                                    case '[':
                                    case ']':
                                        break;
                                    case '\\':
                                        break;
                                    default:
                                        return true;
                                }
                            }
                        }
                    }
                }
            }
            u();
        }
        return false;
    }

    public final void b(boolean z) {
        this.f11821c = z;
    }

    public final void c(char c2) {
        char[] cArr = this.f11822d;
        do {
            int i2 = this.f11823e;
            int i3 = this.f11824f;
            while (i2 < i3) {
                int i4 = i2 + 1;
                char c3 = cArr[i2];
                if (c3 == c2) {
                    this.f11823e = i4;
                    return;
                } else if (c3 == '\\') {
                    this.f11823e = i4;
                    N();
                    i2 = this.f11823e;
                    i3 = this.f11824f;
                } else {
                    if (c3 == 10) {
                        this.f11825g++;
                        this.f11826h = i4;
                    }
                    i2 = i4;
                }
            }
            this.f11823e = i2;
        } while (b(1));
        f("Unterminated string");
        throw null;
    }

    public void close() {
        this.f11827i = 0;
        this.m[0] = 8;
        this.n = 1;
        this.f11820b.close();
    }

    public final boolean e(String str) {
        int length = str.length();
        while (true) {
            int i2 = 0;
            if (this.f11823e + length > this.f11824f && !b(length)) {
                return false;
            }
            char[] cArr = this.f11822d;
            int i3 = this.f11823e;
            if (cArr[i3] == 10) {
                this.f11825g++;
                this.f11826h = i3 + 1;
            } else {
                while (i2 < length) {
                    if (this.f11822d[this.f11823e + i2] == str.charAt(i2)) {
                        i2++;
                    }
                }
                return true;
            }
            this.f11823e++;
        }
    }

    public final IOException f(String str) {
        throw new MalformedJsonException(str + B());
    }

    public String getPath() {
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int i2 = this.n;
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = this.m[i3];
            if (i4 == 1 || i4 == 2) {
                sb.append('[');
                sb.append(this.p[i3]);
                sb.append(']');
            } else if (i4 == 3 || i4 == 4 || i4 == 5) {
                sb.append('.');
                String[] strArr = this.o;
                if (strArr[i3] != null) {
                    sb.append(strArr[i3]);
                }
            }
        }
        return sb.toString();
    }

    public void s() {
        int i2 = this.f11827i;
        if (i2 == 0) {
            i2 = w();
        }
        if (i2 == 3) {
            c(1);
            this.p[this.n - 1] = 0;
            this.f11827i = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_ARRAY but was " + K() + B());
    }

    public void t() {
        int i2 = this.f11827i;
        if (i2 == 0) {
            i2 = w();
        }
        if (i2 == 1) {
            c(3);
            this.f11827i = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_OBJECT but was " + K() + B());
    }

    public String toString() {
        return getClass().getSimpleName() + B();
    }

    public final void u() {
        if (!this.f11821c) {
            f("Use JsonReader.setLenient(true) to accept malformed JSON");
            throw null;
        }
    }

    public final void v() {
        a(true);
        this.f11823e--;
        int i2 = this.f11823e;
        char[] cArr = f11819a;
        if (i2 + cArr.length <= this.f11824f || b(cArr.length)) {
            int i3 = 0;
            while (true) {
                char[] cArr2 = f11819a;
                if (i3 >= cArr2.length) {
                    this.f11823e += cArr2.length;
                    return;
                } else if (this.f11822d[this.f11823e + i3] == cArr2[i3]) {
                    i3++;
                } else {
                    return;
                }
            }
        }
    }

    public int w() {
        int[] iArr = this.m;
        int i2 = this.n;
        int i3 = iArr[i2 - 1];
        if (i3 == 1) {
            iArr[i2 - 1] = 2;
        } else if (i3 == 2) {
            int a2 = a(true);
            if (a2 != 44) {
                if (a2 == 59) {
                    u();
                } else if (a2 == 93) {
                    this.f11827i = 4;
                    return 4;
                } else {
                    f("Unterminated array");
                    throw null;
                }
            }
        } else if (i3 == 3 || i3 == 5) {
            this.m[this.n - 1] = 4;
            if (i3 == 5) {
                int a3 = a(true);
                if (a3 != 44) {
                    if (a3 == 59) {
                        u();
                    } else if (a3 == 125) {
                        this.f11827i = 2;
                        return 2;
                    } else {
                        f("Unterminated object");
                        throw null;
                    }
                }
            }
            int a4 = a(true);
            if (a4 == 34) {
                this.f11827i = 13;
                return 13;
            } else if (a4 == 39) {
                u();
                this.f11827i = 12;
                return 12;
            } else if (a4 != 125) {
                u();
                this.f11823e--;
                if (a((char) a4)) {
                    this.f11827i = 14;
                    return 14;
                }
                f("Expected name");
                throw null;
            } else if (i3 != 5) {
                this.f11827i = 2;
                return 2;
            } else {
                f("Expected name");
                throw null;
            }
        } else if (i3 == 4) {
            iArr[i2 - 1] = 5;
            int a5 = a(true);
            if (a5 != 58) {
                if (a5 == 61) {
                    u();
                    if (this.f11823e < this.f11824f || b(1)) {
                        char[] cArr = this.f11822d;
                        int i4 = this.f11823e;
                        if (cArr[i4] == '>') {
                            this.f11823e = i4 + 1;
                        }
                    }
                } else {
                    f("Expected ':'");
                    throw null;
                }
            }
        } else if (i3 == 6) {
            if (this.f11821c) {
                v();
            }
            this.m[this.n - 1] = 7;
        } else if (i3 == 7) {
            if (a(false) == -1) {
                this.f11827i = 17;
                return 17;
            }
            u();
            this.f11823e--;
        } else if (i3 == 8) {
            throw new IllegalStateException("JsonReader is closed");
        }
        int a6 = a(true);
        if (a6 == 34) {
            this.f11827i = 9;
            return 9;
        } else if (a6 != 39) {
            if (!(a6 == 44 || a6 == 59)) {
                if (a6 == 91) {
                    this.f11827i = 3;
                    return 3;
                } else if (a6 != 93) {
                    if (a6 != 123) {
                        this.f11823e--;
                        int L = L();
                        if (L != 0) {
                            return L;
                        }
                        int M = M();
                        if (M != 0) {
                            return M;
                        }
                        if (a(this.f11822d[this.f11823e])) {
                            u();
                            this.f11827i = 10;
                            return 10;
                        }
                        f("Expected value");
                        throw null;
                    }
                    this.f11827i = 1;
                    return 1;
                } else if (i3 == 1) {
                    this.f11827i = 4;
                    return 4;
                }
            }
            if (i3 == 1 || i3 == 2) {
                u();
                this.f11823e--;
                this.f11827i = 7;
                return 7;
            }
            f("Unexpected value");
            throw null;
        } else {
            u();
            this.f11827i = 8;
            return 8;
        }
    }

    public void x() {
        int i2 = this.f11827i;
        if (i2 == 0) {
            i2 = w();
        }
        if (i2 == 4) {
            this.n--;
            int[] iArr = this.p;
            int i3 = this.n - 1;
            iArr[i3] = iArr[i3] + 1;
            this.f11827i = 0;
            return;
        }
        throw new IllegalStateException("Expected END_ARRAY but was " + K() + B());
    }

    public void y() {
        int i2 = this.f11827i;
        if (i2 == 0) {
            i2 = w();
        }
        if (i2 == 2) {
            this.n--;
            String[] strArr = this.o;
            int i3 = this.n;
            strArr[i3] = null;
            int[] iArr = this.p;
            int i4 = i3 - 1;
            iArr[i4] = iArr[i4] + 1;
            this.f11827i = 0;
            return;
        }
        throw new IllegalStateException("Expected END_OBJECT but was " + K() + B());
    }

    public boolean z() {
        int i2 = this.f11827i;
        if (i2 == 0) {
            i2 = w();
        }
        return (i2 == 2 || i2 == 4) ? false : true;
    }

    public final int a(boolean z) {
        char[] cArr = this.f11822d;
        int i2 = this.f11823e;
        int i3 = this.f11824f;
        while (true) {
            if (i2 == i3) {
                this.f11823e = i2;
                if (b(1)) {
                    i2 = this.f11823e;
                    i3 = this.f11824f;
                } else if (!z) {
                    return -1;
                } else {
                    throw new EOFException("End of input" + B());
                }
            }
            int i4 = i2 + 1;
            char c2 = cArr[i2];
            if (c2 == 10) {
                this.f11825g++;
                this.f11826h = i4;
            } else if (!(c2 == ' ' || c2 == 13 || c2 == 9)) {
                if (c2 == '/') {
                    this.f11823e = i4;
                    if (i4 == i3) {
                        this.f11823e--;
                        boolean b2 = b(2);
                        this.f11823e++;
                        if (!b2) {
                            return c2;
                        }
                    }
                    u();
                    int i5 = this.f11823e;
                    char c3 = cArr[i5];
                    if (c3 == '*') {
                        this.f11823e = i5 + 1;
                        if (e("*/")) {
                            i2 = this.f11823e + 2;
                            i3 = this.f11824f;
                        } else {
                            f("Unterminated comment");
                            throw null;
                        }
                    } else if (c3 != '/') {
                        return c2;
                    } else {
                        this.f11823e = i5 + 1;
                        O();
                        i2 = this.f11823e;
                        i3 = this.f11824f;
                    }
                } else if (c2 == '#') {
                    this.f11823e = i4;
                    u();
                    O();
                    i2 = this.f11823e;
                    i3 = this.f11824f;
                } else {
                    this.f11823e = i4;
                    return c2;
                }
            }
            i2 = i4;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:23:0x005c, code lost:
        if (r2 != null) goto L_0x006c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x005e, code lost:
        r2 = new java.lang.StringBuilder(java.lang.Math.max((r3 - r5) * 2, 16));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x006c, code lost:
        r2.append(r0, r5, r3 - r5);
        r10.f11823e = r3;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String b(char r11) {
        /*
            r10 = this;
            char[] r0 = r10.f11822d
            r1 = 0
            r2 = r1
        L_0x0004:
            int r3 = r10.f11823e
            int r4 = r10.f11824f
        L_0x0008:
            r5 = r3
        L_0x0009:
            r6 = 16
            r7 = 1
            if (r3 >= r4) goto L_0x005c
            int r8 = r3 + 1
            char r3 = r0[r3]
            if (r3 != r11) goto L_0x0028
            r10.f11823e = r8
            int r8 = r8 - r5
            int r8 = r8 - r7
            if (r2 != 0) goto L_0x0020
            java.lang.String r11 = new java.lang.String
            r11.<init>(r0, r5, r8)
            return r11
        L_0x0020:
            r2.append(r0, r5, r8)
            java.lang.String r11 = r2.toString()
            return r11
        L_0x0028:
            r9 = 92
            if (r3 != r9) goto L_0x004f
            r10.f11823e = r8
            int r8 = r8 - r5
            int r8 = r8 - r7
            if (r2 != 0) goto L_0x0040
            int r2 = r8 + 1
            int r2 = r2 * 2
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            int r2 = java.lang.Math.max(r2, r6)
            r3.<init>(r2)
            r2 = r3
        L_0x0040:
            r2.append(r0, r5, r8)
            char r3 = r10.N()
            r2.append(r3)
            int r3 = r10.f11823e
            int r4 = r10.f11824f
            goto L_0x0008
        L_0x004f:
            r6 = 10
            if (r3 != r6) goto L_0x005a
            int r3 = r10.f11825g
            int r3 = r3 + r7
            r10.f11825g = r3
            r10.f11826h = r8
        L_0x005a:
            r3 = r8
            goto L_0x0009
        L_0x005c:
            if (r2 != 0) goto L_0x006c
            int r2 = r3 - r5
            int r2 = r2 * 2
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            int r2 = java.lang.Math.max(r2, r6)
            r4.<init>(r2)
            r2 = r4
        L_0x006c:
            int r4 = r3 - r5
            r2.append(r0, r5, r4)
            r10.f11823e = r3
            boolean r3 = r10.b((int) r7)
            if (r3 == 0) goto L_0x007a
            goto L_0x0004
        L_0x007a:
            java.lang.String r11 = "Unterminated string"
            r10.f(r11)
            goto L_0x0081
        L_0x0080:
            throw r1
        L_0x0081:
            goto L_0x0080
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.d.d.b.b(char):java.lang.String");
    }

    public final void c(int i2) {
        int i3 = this.n;
        int[] iArr = this.m;
        if (i3 == iArr.length) {
            int[] iArr2 = new int[(i3 * 2)];
            int[] iArr3 = new int[(i3 * 2)];
            String[] strArr = new String[(i3 * 2)];
            System.arraycopy(iArr, 0, iArr2, 0, i3);
            System.arraycopy(this.p, 0, iArr3, 0, this.n);
            System.arraycopy(this.o, 0, strArr, 0, this.n);
            this.m = iArr2;
            this.p = iArr3;
            this.o = strArr;
        }
        int[] iArr4 = this.m;
        int i4 = this.n;
        this.n = i4 + 1;
        iArr4[i4] = i2;
    }

    public final boolean b(int i2) {
        char[] cArr = this.f11822d;
        int i3 = this.f11826h;
        int i4 = this.f11823e;
        this.f11826h = i3 - i4;
        int i5 = this.f11824f;
        if (i5 != i4) {
            this.f11824f = i5 - i4;
            System.arraycopy(cArr, i4, cArr, 0, this.f11824f);
        } else {
            this.f11824f = 0;
        }
        this.f11823e = 0;
        do {
            Reader reader = this.f11820b;
            int i6 = this.f11824f;
            int read = reader.read(cArr, i6, cArr.length - i6);
            if (read == -1) {
                return false;
            }
            this.f11824f += read;
            if (this.f11825g == 0) {
                int i7 = this.f11826h;
                if (i7 == 0 && this.f11824f > 0 && cArr[0] == 65279) {
                    this.f11823e++;
                    this.f11826h = i7 + 1;
                    i2++;
                }
            }
        } while (this.f11824f < i2);
        return true;
    }
}
