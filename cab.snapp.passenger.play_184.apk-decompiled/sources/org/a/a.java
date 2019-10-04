package org.a;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Array;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class a implements Iterable<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<Object> f8717a;

    public a() {
        this.f8717a = new ArrayList<>();
    }

    public a(g gVar) throws b {
        this();
        if (gVar.nextClean() == '[') {
            char nextClean = gVar.nextClean();
            if (nextClean == 0) {
                throw gVar.syntaxError("Expected a ',' or ']'");
            } else if (nextClean != ']') {
                gVar.back();
                while (true) {
                    if (gVar.nextClean() == ',') {
                        gVar.back();
                        this.f8717a.add(c.NULL);
                    } else {
                        gVar.back();
                        this.f8717a.add(gVar.nextValue());
                    }
                    char nextClean2 = gVar.nextClean();
                    if (nextClean2 == 0) {
                        throw gVar.syntaxError("Expected a ',' or ']'");
                    } else if (nextClean2 == ',') {
                        char nextClean3 = gVar.nextClean();
                        if (nextClean3 == 0) {
                            throw gVar.syntaxError("Expected a ',' or ']'");
                        } else if (nextClean3 != ']') {
                            gVar.back();
                        } else {
                            return;
                        }
                    } else if (nextClean2 != ']') {
                        throw gVar.syntaxError("Expected a ',' or ']'");
                    } else {
                        return;
                    }
                }
            }
        } else {
            throw gVar.syntaxError("A JSONArray text must start with '['");
        }
    }

    public a(String str) throws b {
        this(new g(str));
    }

    public a(Collection<?> collection) {
        if (collection == null) {
            this.f8717a = new ArrayList<>();
            return;
        }
        this.f8717a = new ArrayList<>(collection.size());
        for (Object wrap : collection) {
            this.f8717a.add(c.wrap(wrap));
        }
    }

    public a(Object obj) throws b {
        this();
        if (obj.getClass().isArray()) {
            int length = Array.getLength(obj);
            this.f8717a.ensureCapacity(length);
            for (int i = 0; i < length; i++) {
                put(c.wrap(Array.get(obj, i)));
            }
            return;
        }
        throw new b("JSONArray initial value should be a string or collection or array.");
    }

    public Iterator<Object> iterator() {
        return this.f8717a.iterator();
    }

    public Object get(int i) throws b {
        Object opt = opt(i);
        if (opt != null) {
            return opt;
        }
        throw new b("JSONArray[" + i + "] not found.");
    }

    public boolean getBoolean(int i) throws b {
        Object obj = get(i);
        if (!obj.equals(Boolean.FALSE)) {
            boolean z = obj instanceof String;
            if (!z || !((String) obj).equalsIgnoreCase("false")) {
                if (obj.equals(Boolean.TRUE) || (z && ((String) obj).equalsIgnoreCase("true"))) {
                    return true;
                }
                throw new b("JSONArray[" + i + "] is not a boolean.");
            }
        }
        return false;
    }

    public double getDouble(int i) throws b {
        Object obj = get(i);
        try {
            if (obj instanceof Number) {
                return ((Number) obj).doubleValue();
            }
            return Double.parseDouble((String) obj);
        } catch (Exception e) {
            throw new b("JSONArray[" + i + "] is not a number.", e);
        }
    }

    public float getFloat(int i) throws b {
        Object obj = get(i);
        try {
            if (obj instanceof Number) {
                return ((Number) obj).floatValue();
            }
            return Float.parseFloat(obj.toString());
        } catch (Exception e) {
            throw new b("JSONArray[" + i + "] is not a number.", e);
        }
    }

    public Number getNumber(int i) throws b {
        Object obj = get(i);
        try {
            if (obj instanceof Number) {
                return (Number) obj;
            }
            return c.stringToNumber(obj.toString());
        } catch (Exception e) {
            throw new b("JSONArray[" + i + "] is not a number.", e);
        }
    }

    public <E extends Enum<E>> E getEnum(Class<E> cls, int i) throws b {
        E optEnum = optEnum(cls, i);
        if (optEnum != null) {
            return optEnum;
        }
        throw new b("JSONArray[" + i + "] is not an enum of type " + c.quote(cls.getSimpleName()) + ".");
    }

    public BigDecimal getBigDecimal(int i) throws b {
        try {
            return new BigDecimal(get(i).toString());
        } catch (Exception e) {
            throw new b("JSONArray[" + i + "] could not convert to BigDecimal.", e);
        }
    }

    public BigInteger getBigInteger(int i) throws b {
        try {
            return new BigInteger(get(i).toString());
        } catch (Exception e) {
            throw new b("JSONArray[" + i + "] could not convert to BigInteger.", e);
        }
    }

    public int getInt(int i) throws b {
        Object obj = get(i);
        try {
            if (obj instanceof Number) {
                return ((Number) obj).intValue();
            }
            return Integer.parseInt((String) obj);
        } catch (Exception e) {
            throw new b("JSONArray[" + i + "] is not a number.", e);
        }
    }

    public a getJSONArray(int i) throws b {
        Object obj = get(i);
        if (obj instanceof a) {
            return (a) obj;
        }
        throw new b("JSONArray[" + i + "] is not a JSONArray.");
    }

    public c getJSONObject(int i) throws b {
        Object obj = get(i);
        if (obj instanceof c) {
            return (c) obj;
        }
        throw new b("JSONArray[" + i + "] is not a JSONObject.");
    }

    public long getLong(int i) throws b {
        Object obj = get(i);
        try {
            if (obj instanceof Number) {
                return ((Number) obj).longValue();
            }
            return Long.parseLong((String) obj);
        } catch (Exception e) {
            throw new b("JSONArray[" + i + "] is not a number.", e);
        }
    }

    public String getString(int i) throws b {
        Object obj = get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        throw new b("JSONArray[" + i + "] not a string.");
    }

    public boolean isNull(int i) {
        return c.NULL.equals(opt(i));
    }

    public String join(String str) throws b {
        int length = length();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length; i++) {
            if (i > 0) {
                sb.append(str);
            }
            sb.append(c.valueToString(this.f8717a.get(i)));
        }
        return sb.toString();
    }

    public int length() {
        return this.f8717a.size();
    }

    public Object opt(int i) {
        if (i < 0 || i >= length()) {
            return null;
        }
        return this.f8717a.get(i);
    }

    public boolean optBoolean(int i) {
        return optBoolean(i, false);
    }

    public boolean optBoolean(int i, boolean z) {
        try {
            return getBoolean(i);
        } catch (Exception unused) {
            return z;
        }
    }

    public double optDouble(int i) {
        return optDouble(i, Double.NaN);
    }

    public double optDouble(int i, double d) {
        Object opt = opt(i);
        if (c.NULL.equals(opt)) {
            return d;
        }
        if (opt instanceof Number) {
            return ((Number) opt).doubleValue();
        }
        if (opt instanceof String) {
            try {
                return Double.parseDouble((String) opt);
            } catch (Exception unused) {
            }
        }
        return d;
    }

    public float optFloat(int i) {
        return optFloat(i, Float.NaN);
    }

    public float optFloat(int i, float f) {
        Object opt = opt(i);
        if (c.NULL.equals(opt)) {
            return f;
        }
        if (opt instanceof Number) {
            return ((Number) opt).floatValue();
        }
        if (opt instanceof String) {
            try {
                return Float.parseFloat((String) opt);
            } catch (Exception unused) {
            }
        }
        return f;
    }

    public int optInt(int i) {
        return optInt(i, 0);
    }

    public int optInt(int i, int i2) {
        Object opt = opt(i);
        if (c.NULL.equals(opt)) {
            return i2;
        }
        if (opt instanceof Number) {
            return ((Number) opt).intValue();
        }
        if (opt instanceof String) {
            try {
                return new BigDecimal(opt.toString()).intValue();
            } catch (Exception unused) {
            }
        }
        return i2;
    }

    public <E extends Enum<E>> E optEnum(Class<E> cls, int i) {
        return optEnum(cls, i, null);
    }

    public <E extends Enum<E>> E optEnum(Class<E> cls, int i, E e) {
        try {
            E opt = opt(i);
            if (c.NULL.equals(opt)) {
                return e;
            }
            if (cls.isAssignableFrom(opt.getClass())) {
                return (Enum) opt;
            }
            return Enum.valueOf(cls, opt.toString());
        } catch (IllegalArgumentException | NullPointerException unused) {
            return e;
        }
    }

    public BigInteger optBigInteger(int i, BigInteger bigInteger) {
        Object opt = opt(i);
        if (c.NULL.equals(opt)) {
            return bigInteger;
        }
        if (opt instanceof BigInteger) {
            return (BigInteger) opt;
        }
        if (opt instanceof BigDecimal) {
            return ((BigDecimal) opt).toBigInteger();
        }
        if ((opt instanceof Double) || (opt instanceof Float)) {
            return new BigDecimal(((Number) opt).doubleValue()).toBigInteger();
        }
        if ((opt instanceof Long) || (opt instanceof Integer) || (opt instanceof Short) || (opt instanceof Byte)) {
            return BigInteger.valueOf(((Number) opt).longValue());
        }
        try {
            String obj = opt.toString();
            if (c.isDecimalNotation(obj)) {
                return new BigDecimal(obj).toBigInteger();
            }
            return new BigInteger(obj);
        } catch (Exception unused) {
            return bigInteger;
        }
    }

    public BigDecimal optBigDecimal(int i, BigDecimal bigDecimal) {
        Object opt = opt(i);
        if (c.NULL.equals(opt)) {
            return bigDecimal;
        }
        if (opt instanceof BigDecimal) {
            return (BigDecimal) opt;
        }
        if (opt instanceof BigInteger) {
            return new BigDecimal((BigInteger) opt);
        }
        if ((opt instanceof Double) || (opt instanceof Float)) {
            return new BigDecimal(((Number) opt).doubleValue());
        }
        if ((opt instanceof Long) || (opt instanceof Integer) || (opt instanceof Short) || (opt instanceof Byte)) {
            return new BigDecimal(((Number) opt).longValue());
        }
        try {
            return new BigDecimal(opt.toString());
        } catch (Exception unused) {
            return bigDecimal;
        }
    }

    public a optJSONArray(int i) {
        Object opt = opt(i);
        if (opt instanceof a) {
            return (a) opt;
        }
        return null;
    }

    public c optJSONObject(int i) {
        Object opt = opt(i);
        if (opt instanceof c) {
            return (c) opt;
        }
        return null;
    }

    public long optLong(int i) {
        return optLong(i, 0);
    }

    public long optLong(int i, long j) {
        Object opt = opt(i);
        if (c.NULL.equals(opt)) {
            return j;
        }
        if (opt instanceof Number) {
            return ((Number) opt).longValue();
        }
        if (opt instanceof String) {
            try {
                return new BigDecimal(opt.toString()).longValue();
            } catch (Exception unused) {
            }
        }
        return j;
    }

    public Number optNumber(int i) {
        return optNumber(i, null);
    }

    public Number optNumber(int i, Number number) {
        Object opt = opt(i);
        if (c.NULL.equals(opt)) {
            return number;
        }
        if (opt instanceof Number) {
            return (Number) opt;
        }
        if (opt instanceof String) {
            try {
                return c.stringToNumber((String) opt);
            } catch (Exception unused) {
            }
        }
        return number;
    }

    public String optString(int i) {
        return optString(i, "");
    }

    public String optString(int i, String str) {
        Object opt = opt(i);
        if (c.NULL.equals(opt)) {
            return str;
        }
        return opt.toString();
    }

    public a put(boolean z) {
        put((Object) z ? Boolean.TRUE : Boolean.FALSE);
        return this;
    }

    public a put(Collection<?> collection) {
        put((Object) new a(collection));
        return this;
    }

    public a put(double d) throws b {
        Double valueOf = Double.valueOf(d);
        c.testValidity(valueOf);
        put((Object) valueOf);
        return this;
    }

    public a put(int i) {
        put((Object) Integer.valueOf(i));
        return this;
    }

    public a put(long j) {
        put((Object) new Long(j));
        return this;
    }

    public a put(Map<?, ?> map) {
        put((Object) new c(map));
        return this;
    }

    public a put(Object obj) {
        this.f8717a.add(obj);
        return this;
    }

    public a put(int i, boolean z) throws b {
        put(i, (Object) z ? Boolean.TRUE : Boolean.FALSE);
        return this;
    }

    public a put(int i, Collection<?> collection) throws b {
        put(i, (Object) new a(collection));
        return this;
    }

    public a put(int i, double d) throws b {
        put(i, (Object) Double.valueOf(d));
        return this;
    }

    public a put(int i, int i2) throws b {
        put(i, (Object) Integer.valueOf(i2));
        return this;
    }

    public a put(int i, long j) throws b {
        put(i, (Object) new Long(j));
        return this;
    }

    public a put(int i, Map<?, ?> map) throws b {
        put(i, (Object) new c(map));
        return this;
    }

    public a put(int i, Object obj) throws b {
        c.testValidity(obj);
        if (i >= 0) {
            if (i < length()) {
                this.f8717a.set(i, obj);
            } else if (i == length()) {
                put(obj);
            } else {
                this.f8717a.ensureCapacity(i + 1);
                while (i != length()) {
                    put(c.NULL);
                }
                put(obj);
            }
            return this;
        }
        throw new b("JSONArray[" + i + "] not found.");
    }

    public Object query(String str) {
        return query(new d(str));
    }

    public Object query(d dVar) {
        return dVar.queryFrom(this);
    }

    public Object optQuery(String str) {
        return optQuery(new d(str));
    }

    public Object optQuery(d dVar) {
        try {
            return dVar.queryFrom(this);
        } catch (e unused) {
            return null;
        }
    }

    public Object remove(int i) {
        if (i < 0 || i >= length()) {
            return null;
        }
        return this.f8717a.remove(i);
    }

    public boolean similar(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        int length = length();
        a aVar = (a) obj;
        if (length != aVar.length()) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            Object obj2 = this.f8717a.get(i);
            Object obj3 = aVar.f8717a.get(i);
            if (obj2 != obj3) {
                if (obj2 == null) {
                    return false;
                }
                if (obj2 instanceof c) {
                    if (!((c) obj2).similar(obj3)) {
                        return false;
                    }
                } else if (obj2 instanceof a) {
                    if (!((a) obj2).similar(obj3)) {
                        return false;
                    }
                } else if (!obj2.equals(obj3)) {
                    return false;
                }
            }
        }
        return true;
    }

    public c toJSONObject(a aVar) throws b {
        if (aVar == null || aVar.length() == 0 || length() == 0) {
            return null;
        }
        c cVar = new c(aVar.length());
        for (int i = 0; i < aVar.length(); i++) {
            cVar.put(aVar.getString(i), opt(i));
        }
        return cVar;
    }

    public String toString() {
        try {
            return toString(0);
        } catch (Exception unused) {
            return null;
        }
    }

    public String toString(int i) throws b {
        String obj;
        StringWriter stringWriter = new StringWriter();
        synchronized (stringWriter.getBuffer()) {
            obj = write(stringWriter, i, 0).toString();
        }
        return obj;
    }

    public Writer write(Writer writer) throws b {
        return write(writer, 0, 0);
    }

    public Writer write(Writer writer, int i, int i2) throws b {
        int i3;
        try {
            int length = length();
            writer.write(91);
            i3 = 0;
            if (length == 1) {
                c.writeValue(writer, this.f8717a.get(0), i, i2);
            } else if (length != 0) {
                int i4 = i2 + i;
                boolean z = false;
                while (i3 < length) {
                    if (z) {
                        writer.write(44);
                    }
                    if (i > 0) {
                        writer.write(10);
                    }
                    c.indent(writer, i4);
                    c.writeValue(writer, this.f8717a.get(i3), i, i4);
                    i3++;
                    z = true;
                }
                if (i > 0) {
                    writer.write(10);
                }
                c.indent(writer, i2);
            }
            writer.write(93);
            return writer;
        } catch (Exception e) {
            throw new b("Unable to write JSONArray value at index: ".concat(String.valueOf(i3)), e);
        } catch (Exception e2) {
            throw new b("Unable to write JSONArray value at index: 0", e2);
        } catch (IOException e3) {
            throw new b((Throwable) e3);
        }
    }

    public List<Object> toList() {
        ArrayList arrayList = new ArrayList(this.f8717a.size());
        Iterator<Object> it = this.f8717a.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (next == null || c.NULL.equals(next)) {
                arrayList.add(null);
            } else if (next instanceof a) {
                arrayList.add(((a) next).toList());
            } else if (next instanceof c) {
                arrayList.add(((c) next).toMap());
            } else {
                arrayList.add(next);
            }
        }
        return arrayList;
    }
}
