package c.e.d.d;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;

/* compiled from: JsonWriter */
public class c implements Closeable, Flushable {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f11831a = new String[128];

    /* renamed from: b  reason: collision with root package name */
    public static final String[] f11832b;

    /* renamed from: c  reason: collision with root package name */
    public final Writer f11833c;

    /* renamed from: d  reason: collision with root package name */
    public int[] f11834d = new int[32];

    /* renamed from: e  reason: collision with root package name */
    public int f11835e = 0;

    /* renamed from: f  reason: collision with root package name */
    public String f11836f;

    /* renamed from: g  reason: collision with root package name */
    public String f11837g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f11838h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f11839i;

    /* renamed from: j  reason: collision with root package name */
    public String f11840j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f11841k;

    static {
        for (int i2 = 0; i2 <= 31; i2++) {
            f11831a[i2] = String.format("\\u%04x", new Object[]{Integer.valueOf(i2)});
        }
        String[] strArr = f11831a;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        f11832b = (String[]) strArr.clone();
        String[] strArr2 = f11832b;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public c(Writer writer) {
        b(6);
        this.f11837g = ":";
        this.f11841k = true;
        if (writer != null) {
            this.f11833c = writer;
            return;
        }
        throw new NullPointerException("out == null");
    }

    public boolean A() {
        return this.f11838h;
    }

    public final void B() {
        if (this.f11836f != null) {
            this.f11833c.write("\n");
            int i2 = this.f11835e;
            for (int i3 = 1; i3 < i2; i3++) {
                this.f11833c.write(this.f11836f);
            }
        }
    }

    public c C() {
        if (this.f11840j != null) {
            if (this.f11841k) {
                E();
            } else {
                this.f11840j = null;
                return this;
            }
        }
        t();
        this.f11833c.write("null");
        return this;
    }

    public final int D() {
        int i2 = this.f11835e;
        if (i2 != 0) {
            return this.f11834d[i2 - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    public final void E() {
        if (this.f11840j != null) {
            s();
            g(this.f11840j);
            this.f11840j = null;
        }
    }

    public final void a(boolean z) {
        this.f11839i = z;
    }

    public final void b(boolean z) {
        this.f11838h = z;
    }

    public final void c(boolean z) {
        this.f11841k = z;
    }

    public void close() {
        this.f11833c.close();
        int i2 = this.f11835e;
        if (i2 > 1 || (i2 == 1 && this.f11834d[i2 - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f11835e = 0;
    }

    public c d(boolean z) {
        E();
        t();
        this.f11833c.write(z ? "true" : "false");
        return this;
    }

    public c e(String str) {
        if (str == null) {
            throw new NullPointerException("name == null");
        } else if (this.f11840j != null) {
            throw new IllegalStateException();
        } else if (this.f11835e != 0) {
            this.f11840j = str;
            return this;
        } else {
            throw new IllegalStateException("JsonWriter is closed.");
        }
    }

    public final void f(String str) {
        if (str.length() == 0) {
            this.f11836f = null;
            this.f11837g = ":";
            return;
        }
        this.f11836f = str;
        this.f11837g = ": ";
    }

    public void flush() {
        if (this.f11835e != 0) {
            this.f11833c.flush();
            return;
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    public final void g(String str) {
        String str2;
        String[] strArr = this.f11839i ? f11832b : f11831a;
        this.f11833c.write("\"");
        int length = str.length();
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            char charAt = str.charAt(i3);
            if (charAt < 128) {
                str2 = strArr[charAt];
                if (str2 == null) {
                }
            } else if (charAt == 8232) {
                str2 = "\\u2028";
            } else if (charAt == 8233) {
                str2 = "\\u2029";
            }
            if (i2 < i3) {
                this.f11833c.write(str, i2, i3 - i2);
            }
            this.f11833c.write(str2);
            i2 = i3 + 1;
        }
        if (i2 < length) {
            this.f11833c.write(str, i2, length - i2);
        }
        this.f11833c.write("\"");
    }

    public c h(String str) {
        if (str == null) {
            return C();
        }
        E();
        t();
        g(str);
        return this;
    }

    public final void s() {
        int D = D();
        if (D == 5) {
            this.f11833c.write(44);
        } else if (D != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        B();
        c(4);
    }

    public final void t() {
        int D = D();
        if (D == 1) {
            c(2);
            B();
        } else if (D == 2) {
            this.f11833c.append(',');
            B();
        } else if (D != 4) {
            if (D != 6) {
                if (D != 7) {
                    throw new IllegalStateException("Nesting problem.");
                } else if (!this.f11838h) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            c(7);
        } else {
            this.f11833c.append(this.f11837g);
            c(5);
        }
    }

    public c u() {
        E();
        b(1, "[");
        return this;
    }

    public c v() {
        E();
        b(3, "{");
        return this;
    }

    public c w() {
        a(1, 2, "]");
        return this;
    }

    public c x() {
        a(3, 5, "}");
        return this;
    }

    public final boolean y() {
        return this.f11841k;
    }

    public final boolean z() {
        return this.f11839i;
    }

    public final c a(int i2, int i3, String str) {
        int D = D();
        if (D != i3 && D != i2) {
            throw new IllegalStateException("Nesting problem.");
        } else if (this.f11840j == null) {
            this.f11835e--;
            if (D == i3) {
                B();
            }
            this.f11833c.write(str);
            return this;
        } else {
            throw new IllegalStateException("Dangling name: " + this.f11840j);
        }
    }

    public final c b(int i2, String str) {
        t();
        b(i2);
        this.f11833c.write(str);
        return this;
    }

    public final void c(int i2) {
        this.f11834d[this.f11835e - 1] = i2;
    }

    public final void b(int i2) {
        int i3 = this.f11835e;
        int[] iArr = this.f11834d;
        if (i3 == iArr.length) {
            int[] iArr2 = new int[(i3 * 2)];
            System.arraycopy(iArr, 0, iArr2, 0, i3);
            this.f11834d = iArr2;
        }
        int[] iArr3 = this.f11834d;
        int i4 = this.f11835e;
        this.f11835e = i4 + 1;
        iArr3[i4] = i2;
    }

    public c h(long j2) {
        E();
        t();
        this.f11833c.write(Long.toString(j2));
        return this;
    }

    public c a(Boolean bool) {
        if (bool == null) {
            return C();
        }
        E();
        t();
        this.f11833c.write(bool.booleanValue() ? "true" : "false");
        return this;
    }

    public c a(Number number) {
        if (number == null) {
            return C();
        }
        E();
        String obj = number.toString();
        if (this.f11838h || (!obj.equals("-Infinity") && !obj.equals("Infinity") && !obj.equals("NaN"))) {
            t();
            this.f11833c.append(obj);
            return this;
        }
        throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
    }
}
