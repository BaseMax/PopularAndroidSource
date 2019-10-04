package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.m;
import c.e.d.p;
import c.e.d.q;
import c.e.d.r;
import c.e.d.t;
import com.google.gson.stream.JsonToken;
import java.io.Reader;
import java.util.Iterator;
import java.util.Map;

/* renamed from: c.e.d.b.a.d  reason: case insensitive filesystem */
/* compiled from: JsonTreeReader */
public final class C1010d extends b {
    public static final Reader q = new C1009c();
    public static final Object r = new Object();
    public Object[] s = new Object[32];
    public int t = 0;
    public String[] u = new String[32];
    public int[] v = new int[32];

    public C1010d(p pVar) {
        super(q);
        a((Object) pVar);
    }

    private String B() {
        return " at path " + getPath();
    }

    public boolean C() {
        a(JsonToken.BOOLEAN);
        boolean j2 = ((t) S()).j();
        int i2 = this.t;
        if (i2 > 0) {
            int[] iArr = this.v;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
        return j2;
    }

    public double D() {
        JsonToken K = K();
        if (K == JsonToken.NUMBER || K == JsonToken.STRING) {
            double l2 = ((t) R()).l();
            if (A() || (!Double.isNaN(l2) && !Double.isInfinite(l2))) {
                S();
                int i2 = this.t;
                if (i2 > 0) {
                    int[] iArr = this.v;
                    int i3 = i2 - 1;
                    iArr[i3] = iArr[i3] + 1;
                }
                return l2;
            }
            throw new NumberFormatException("JSON forbids NaN and infinities: " + l2);
        }
        throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + K + B());
    }

    public int E() {
        JsonToken K = K();
        if (K == JsonToken.NUMBER || K == JsonToken.STRING) {
            int a2 = ((t) R()).a();
            S();
            int i2 = this.t;
            if (i2 > 0) {
                int[] iArr = this.v;
                int i3 = i2 - 1;
                iArr[i3] = iArr[i3] + 1;
            }
            return a2;
        }
        throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + K + B());
    }

    public long F() {
        JsonToken K = K();
        if (K == JsonToken.NUMBER || K == JsonToken.STRING) {
            long m = ((t) R()).m();
            S();
            int i2 = this.t;
            if (i2 > 0) {
                int[] iArr = this.v;
                int i3 = i2 - 1;
                iArr[i3] = iArr[i3] + 1;
            }
            return m;
        }
        throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + K + B());
    }

    public String G() {
        a(JsonToken.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) R()).next();
        String str = (String) entry.getKey();
        this.u[this.t - 1] = str;
        a(entry.getValue());
        return str;
    }

    public void H() {
        a(JsonToken.NULL);
        S();
        int i2 = this.t;
        if (i2 > 0) {
            int[] iArr = this.v;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    public String I() {
        JsonToken K = K();
        if (K == JsonToken.STRING || K == JsonToken.NUMBER) {
            String e2 = ((t) S()).e();
            int i2 = this.t;
            if (i2 > 0) {
                int[] iArr = this.v;
                int i3 = i2 - 1;
                iArr[i3] = iArr[i3] + 1;
            }
            return e2;
        }
        throw new IllegalStateException("Expected " + JsonToken.STRING + " but was " + K + B());
    }

    public JsonToken K() {
        if (this.t == 0) {
            return JsonToken.END_DOCUMENT;
        }
        Object R = R();
        if (R instanceof Iterator) {
            boolean z = this.s[this.t - 2] instanceof r;
            Iterator it = (Iterator) R;
            if (!it.hasNext()) {
                return z ? JsonToken.END_OBJECT : JsonToken.END_ARRAY;
            } else if (z) {
                return JsonToken.NAME;
            } else {
                a(it.next());
                return K();
            }
        } else if (R instanceof r) {
            return JsonToken.BEGIN_OBJECT;
        } else {
            if (R instanceof m) {
                return JsonToken.BEGIN_ARRAY;
            }
            if (R instanceof t) {
                t tVar = (t) R;
                if (tVar.q()) {
                    return JsonToken.STRING;
                }
                if (tVar.o()) {
                    return JsonToken.BOOLEAN;
                }
                if (tVar.p()) {
                    return JsonToken.NUMBER;
                }
                throw new AssertionError();
            } else if (R instanceof q) {
                return JsonToken.NULL;
            } else {
                if (R == r) {
                    throw new IllegalStateException("JsonReader is closed");
                }
                throw new AssertionError();
            }
        }
    }

    public void Q() {
        if (K() == JsonToken.NAME) {
            G();
            this.u[this.t - 2] = "null";
        } else {
            S();
            if (this.t > 0) {
                this.u[r0 - 1] = "null";
            }
        }
        int i2 = this.t;
        if (i2 > 0) {
            int[] iArr = this.v;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    public final Object R() {
        return this.s[this.t - 1];
    }

    public final Object S() {
        Object[] objArr = this.s;
        int i2 = this.t - 1;
        this.t = i2;
        Object obj = objArr[i2];
        objArr[this.t] = null;
        return obj;
    }

    public void T() {
        a(JsonToken.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) R()).next();
        a(entry.getValue());
        a((Object) new t((String) entry.getKey()));
    }

    public final void a(JsonToken jsonToken) {
        if (K() != jsonToken) {
            throw new IllegalStateException("Expected " + jsonToken + " but was " + K() + B());
        }
    }

    public void close() {
        this.s = new Object[]{r};
        this.t = 1;
    }

    public String getPath() {
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int i2 = 0;
        while (i2 < this.t) {
            Object[] objArr = this.s;
            if (objArr[i2] instanceof m) {
                i2++;
                if (objArr[i2] instanceof Iterator) {
                    sb.append('[');
                    sb.append(this.v[i2]);
                    sb.append(']');
                }
            } else if (objArr[i2] instanceof r) {
                i2++;
                if (objArr[i2] instanceof Iterator) {
                    sb.append('.');
                    String[] strArr = this.u;
                    if (strArr[i2] != null) {
                        sb.append(strArr[i2]);
                    }
                }
            }
            i2++;
        }
        return sb.toString();
    }

    public void s() {
        a(JsonToken.BEGIN_ARRAY);
        a((Object) ((m) R()).iterator());
        this.v[this.t - 1] = 0;
    }

    public void t() {
        a(JsonToken.BEGIN_OBJECT);
        a((Object) ((r) R()).j().iterator());
    }

    public String toString() {
        return C1010d.class.getSimpleName();
    }

    public void x() {
        a(JsonToken.END_ARRAY);
        S();
        S();
        int i2 = this.t;
        if (i2 > 0) {
            int[] iArr = this.v;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    public void y() {
        a(JsonToken.END_OBJECT);
        S();
        S();
        int i2 = this.t;
        if (i2 > 0) {
            int[] iArr = this.v;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    public boolean z() {
        JsonToken K = K();
        return (K == JsonToken.END_OBJECT || K == JsonToken.END_ARRAY) ? false : true;
    }

    public final void a(Object obj) {
        int i2 = this.t;
        Object[] objArr = this.s;
        if (i2 == objArr.length) {
            Object[] objArr2 = new Object[(i2 * 2)];
            int[] iArr = new int[(i2 * 2)];
            String[] strArr = new String[(i2 * 2)];
            System.arraycopy(objArr, 0, objArr2, 0, i2);
            System.arraycopy(this.v, 0, iArr, 0, this.t);
            System.arraycopy(this.u, 0, strArr, 0, this.t);
            this.s = objArr2;
            this.v = iArr;
            this.u = strArr;
        }
        Object[] objArr3 = this.s;
        int i3 = this.t;
        this.t = i3 + 1;
        objArr3[i3] = obj;
    }
}
