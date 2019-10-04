package org.a;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Collection;
import java.util.Map;

public final class h {

    /* renamed from: a  reason: collision with root package name */
    protected char f8722a = 'i';

    /* renamed from: b  reason: collision with root package name */
    protected Appendable f8723b;
    private boolean c = false;
    private final c[] d = new c[200];
    private int e = 0;

    public h(Appendable appendable) {
        this.f8723b = appendable;
    }

    private h a(String str) throws b {
        if (str != null) {
            char c2 = this.f8722a;
            if (c2 == 'o' || c2 == 'a') {
                try {
                    if (this.c && this.f8722a == 'a') {
                        this.f8723b.append(',');
                    }
                    this.f8723b.append(str);
                    if (this.f8722a == 'o') {
                        this.f8722a = 'k';
                    }
                    this.c = true;
                    return this;
                } catch (IOException e2) {
                    throw new b((Throwable) e2);
                }
            } else {
                throw new b("Value out of sequence.");
            }
        } else {
            throw new b("Null pointer");
        }
    }

    public final h array() throws b {
        char c2 = this.f8722a;
        if (c2 == 'i' || c2 == 'o' || c2 == 'a') {
            a((c) null);
            a("[");
            this.c = false;
            return this;
        }
        throw new b("Misplaced array.");
    }

    private h a(char c2, char c3) throws b {
        char c4 = 'a';
        if (this.f8722a != c2) {
            throw new b(c2 == 'a' ? "Misplaced endArray." : "Misplaced endObject.");
        }
        int i = this.e;
        if (i > 0) {
            if ((this.d[i - 1] == null ? 'a' : 'k') == c2) {
                this.e--;
                int i2 = this.e;
                if (i2 == 0) {
                    c4 = 'd';
                } else if (this.d[i2 - 1] != null) {
                    c4 = 'k';
                }
                this.f8722a = c4;
                try {
                    this.f8723b.append(c3);
                    this.c = true;
                    return this;
                } catch (IOException e2) {
                    throw new b((Throwable) e2);
                }
            } else {
                throw new b("Nesting error.");
            }
        } else {
            throw new b("Nesting error.");
        }
    }

    public final h endArray() throws b {
        return a('a', ']');
    }

    public final h endObject() throws b {
        return a('k', '}');
    }

    public final h key(String str) throws b {
        if (str == null) {
            throw new b("Null key.");
        } else if (this.f8722a == 'k') {
            try {
                c cVar = this.d[this.e - 1];
                if (!cVar.has(str)) {
                    cVar.put(str, true);
                    if (this.c) {
                        this.f8723b.append(',');
                    }
                    this.f8723b.append(c.quote(str));
                    this.f8723b.append(':');
                    this.c = false;
                    this.f8722a = 'o';
                    return this;
                }
                throw new b("Duplicate key \"" + str + "\"");
            } catch (IOException e2) {
                throw new b((Throwable) e2);
            }
        } else {
            throw new b("Misplaced key.");
        }
    }

    public final h object() throws b {
        if (this.f8722a == 'i') {
            this.f8722a = 'o';
        }
        char c2 = this.f8722a;
        if (c2 == 'o' || c2 == 'a') {
            a("{");
            a(new c());
            this.c = false;
            return this;
        }
        throw new b("Misplaced object.");
    }

    private void a(c cVar) throws b {
        int i = this.e;
        if (i < 200) {
            this.d[i] = cVar;
            this.f8722a = cVar == null ? 'a' : 'k';
            this.e++;
            return;
        }
        throw new b("Nesting too deep.");
    }

    public static String valueToString(Object obj) throws b {
        if (obj == null || obj.equals(null)) {
            return "null";
        }
        if (obj instanceof f) {
            try {
                String jSONString = ((f) obj).toJSONString();
                if (jSONString instanceof String) {
                    return jSONString;
                }
                throw new b("Bad value from toJSONString: ".concat(String.valueOf(jSONString)));
            } catch (Exception e2) {
                throw new b((Throwable) e2);
            }
        } else if (obj instanceof Number) {
            String numberToString = c.numberToString((Number) obj);
            try {
                new BigDecimal(numberToString);
                return numberToString;
            } catch (NumberFormatException unused) {
                return c.quote(numberToString);
            }
        } else if ((obj instanceof Boolean) || (obj instanceof c) || (obj instanceof a)) {
            return obj.toString();
        } else {
            if (obj instanceof Map) {
                return new c((Map<?, ?>) (Map) obj).toString();
            }
            if (obj instanceof Collection) {
                return new a((Collection<?>) (Collection) obj).toString();
            }
            if (obj.getClass().isArray()) {
                return new a(obj).toString();
            }
            if (obj instanceof Enum) {
                return c.quote(((Enum) obj).name());
            }
            return c.quote(obj.toString());
        }
    }

    public final h value(boolean z) throws b {
        return a(z ? "true" : "false");
    }

    public final h value(double d2) throws b {
        return value((Object) Double.valueOf(d2));
    }

    public final h value(long j) throws b {
        return a(Long.toString(j));
    }

    public final h value(Object obj) throws b {
        return a(valueToString(obj));
    }
}
