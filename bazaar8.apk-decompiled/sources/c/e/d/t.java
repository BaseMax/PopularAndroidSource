package c.e.d;

import c.e.d.b.C1006a;
import com.google.gson.internal.LazilyParsedNumber;
import java.math.BigInteger;

/* compiled from: JsonPrimitive */
public final class t extends p {

    /* renamed from: a  reason: collision with root package name */
    public static final Class<?>[] f11874a = {Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class};

    /* renamed from: b  reason: collision with root package name */
    public Object f11875b;

    public t(Boolean bool) {
        b(bool);
    }

    public int a() {
        return p() ? n().intValue() : Integer.parseInt(e());
    }

    public void b(Object obj) {
        if (obj instanceof Character) {
            this.f11875b = String.valueOf(((Character) obj).charValue());
            return;
        }
        C1006a.a((obj instanceof Number) || a(obj));
        this.f11875b = obj;
    }

    public String e() {
        if (p()) {
            return n().toString();
        }
        if (o()) {
            return k().toString();
        }
        return (String) this.f11875b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || t.class != obj.getClass()) {
            return false;
        }
        t tVar = (t) obj;
        if (this.f11875b == null) {
            if (tVar.f11875b != null) {
                z = false;
            }
            return z;
        } else if (a(this) && a(tVar)) {
            if (n().longValue() != tVar.n().longValue()) {
                z = false;
            }
            return z;
        } else if (!(this.f11875b instanceof Number) || !(tVar.f11875b instanceof Number)) {
            return this.f11875b.equals(tVar.f11875b);
        } else {
            double doubleValue = n().doubleValue();
            double doubleValue2 = tVar.n().doubleValue();
            if (doubleValue != doubleValue2 && (!Double.isNaN(doubleValue) || !Double.isNaN(doubleValue2))) {
                z = false;
            }
            return z;
        }
    }

    public int hashCode() {
        long doubleToLongBits;
        if (this.f11875b == null) {
            return 31;
        }
        if (a(this)) {
            doubleToLongBits = n().longValue();
        } else {
            Object obj = this.f11875b;
            if (!(obj instanceof Number)) {
                return obj.hashCode();
            }
            doubleToLongBits = Double.doubleToLongBits(n().doubleValue());
        }
        return (int) ((doubleToLongBits >>> 32) ^ doubleToLongBits);
    }

    public boolean j() {
        if (o()) {
            return k().booleanValue();
        }
        return Boolean.parseBoolean(e());
    }

    public Boolean k() {
        return (Boolean) this.f11875b;
    }

    public double l() {
        return p() ? n().doubleValue() : Double.parseDouble(e());
    }

    public long m() {
        return p() ? n().longValue() : Long.parseLong(e());
    }

    public Number n() {
        Object obj = this.f11875b;
        return obj instanceof String ? new LazilyParsedNumber((String) obj) : (Number) obj;
    }

    public boolean o() {
        return this.f11875b instanceof Boolean;
    }

    public boolean p() {
        return this.f11875b instanceof Number;
    }

    public boolean q() {
        return this.f11875b instanceof String;
    }

    public static boolean a(Object obj) {
        if (obj instanceof String) {
            return true;
        }
        Class<?> cls = obj.getClass();
        for (Class<?> isAssignableFrom : f11874a) {
            if (isAssignableFrom.isAssignableFrom(cls)) {
                return true;
            }
        }
        return false;
    }

    public t(Number number) {
        b(number);
    }

    public t(String str) {
        b(str);
    }

    public static boolean a(t tVar) {
        Object obj = tVar.f11875b;
        if (!(obj instanceof Number)) {
            return false;
        }
        Number number = (Number) obj;
        if ((number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
            return true;
        }
        return false;
    }

    public t(Object obj) {
        b(obj);
    }
}
