package org.a;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Collection;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.Set;

public class c {
    public static final Object NULL = new a((byte) 0);
    private final Map<String, Object> map;

    static final class a {
        /* access modifiers changed from: protected */
        public final Object clone() {
            return this;
        }

        public final boolean equals(Object obj) {
            return obj == null || obj == this;
        }

        public final int hashCode() {
            return 0;
        }

        public final String toString() {
            return "null";
        }

        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }
    }

    public c() {
        this.map = new HashMap();
    }

    public c(c cVar, String[] strArr) {
        this(strArr.length);
        for (int i = 0; i < strArr.length; i++) {
            try {
                putOnce(strArr[i], cVar.opt(strArr[i]));
            } catch (Exception unused) {
            }
        }
    }

    public c(g gVar) throws b {
        this();
        if (gVar.nextClean() == '{') {
            while (true) {
                char nextClean = gVar.nextClean();
                if (nextClean == 0) {
                    throw gVar.syntaxError("A JSONObject text must end with '}'");
                } else if (nextClean != '}') {
                    gVar.back();
                    String obj = gVar.nextValue().toString();
                    if (gVar.nextClean() == ':') {
                        if (obj != null) {
                            if (opt(obj) == null) {
                                Object nextValue = gVar.nextValue();
                                if (nextValue != null) {
                                    put(obj, nextValue);
                                }
                            } else {
                                throw gVar.syntaxError("Duplicate key \"" + obj + "\"");
                            }
                        }
                        char nextClean2 = gVar.nextClean();
                        if (nextClean2 == ',' || nextClean2 == ';') {
                            if (gVar.nextClean() != '}') {
                                gVar.back();
                            } else {
                                return;
                            }
                        } else if (nextClean2 != '}') {
                            throw gVar.syntaxError("Expected a ',' or '}'");
                        } else {
                            return;
                        }
                    } else {
                        throw gVar.syntaxError("Expected a ':' after a key");
                    }
                } else {
                    return;
                }
            }
        } else {
            throw gVar.syntaxError("A JSONObject text must begin with '{'");
        }
    }

    public c(Map<?, ?> map2) {
        if (map2 == null) {
            this.map = new HashMap();
            return;
        }
        this.map = new HashMap(map2.size());
        for (Map.Entry next : map2.entrySet()) {
            Object value = next.getValue();
            if (value != null) {
                this.map.put(String.valueOf(next.getKey()), wrap(value));
            }
        }
    }

    public c(Object obj) {
        this();
        populateMap(obj);
    }

    public c(Object obj, String[] strArr) {
        this(strArr.length);
        Class<?> cls = obj.getClass();
        for (String str : strArr) {
            try {
                putOpt(str, cls.getField(str).get(obj));
            } catch (Exception unused) {
            }
        }
    }

    public c(String str) throws b {
        this(new g(str));
    }

    public c(String str, Locale locale) throws b {
        this();
        ResourceBundle bundle = ResourceBundle.getBundle(str, locale, Thread.currentThread().getContextClassLoader());
        Enumeration<String> keys = bundle.getKeys();
        while (keys.hasMoreElements()) {
            String nextElement = keys.nextElement();
            if (nextElement != null) {
                String str2 = nextElement;
                String[] split = str2.split("\\.");
                int length = split.length - 1;
                c cVar = this;
                for (int i = 0; i < length; i++) {
                    String str3 = split[i];
                    c optJSONObject = cVar.optJSONObject(str3);
                    if (optJSONObject == null) {
                        optJSONObject = new c();
                        cVar.put(str3, (Object) optJSONObject);
                    }
                    cVar = optJSONObject;
                }
                cVar.put(split[length], (Object) bundle.getString(str2));
            }
        }
    }

    protected c(int i) {
        this.map = new HashMap(i);
    }

    public c accumulate(String str, Object obj) throws b {
        testValidity(obj);
        Object opt = opt(str);
        if (opt == null) {
            if (obj instanceof a) {
                obj = new a().put(obj);
            }
            put(str, obj);
        } else if (opt instanceof a) {
            ((a) opt).put(obj);
        } else {
            put(str, (Object) new a().put(opt).put(obj));
        }
        return this;
    }

    public c append(String str, Object obj) throws b {
        testValidity(obj);
        Object opt = opt(str);
        if (opt == null) {
            put(str, (Object) new a().put(obj));
        } else if (opt instanceof a) {
            put(str, (Object) ((a) opt).put(obj));
        } else {
            throw new b("JSONObject[" + str + "] is not a JSONArray.");
        }
        return this;
    }

    public static String doubleToString(double d) {
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            return "null";
        }
        String d2 = Double.toString(d);
        if (d2.indexOf(46) > 0 && d2.indexOf(101) < 0 && d2.indexOf(69) < 0) {
            while (d2.endsWith("0")) {
                d2 = d2.substring(0, d2.length() - 1);
            }
            if (d2.endsWith(".")) {
                d2 = d2.substring(0, d2.length() - 1);
            }
        }
        return d2;
    }

    public Object get(String str) throws b {
        if (str != null) {
            Object opt = opt(str);
            if (opt != null) {
                return opt;
            }
            throw new b("JSONObject[" + quote(str) + "] not found.");
        }
        throw new b("Null key.");
    }

    public <E extends Enum<E>> E getEnum(Class<E> cls, String str) throws b {
        E optEnum = optEnum(cls, str);
        if (optEnum != null) {
            return optEnum;
        }
        throw new b("JSONObject[" + quote(str) + "] is not an enum of type " + quote(cls.getSimpleName()) + ".");
    }

    public boolean getBoolean(String str) throws b {
        Object obj = get(str);
        if (!obj.equals(Boolean.FALSE)) {
            boolean z = obj instanceof String;
            if (!z || !((String) obj).equalsIgnoreCase("false")) {
                if (obj.equals(Boolean.TRUE) || (z && ((String) obj).equalsIgnoreCase("true"))) {
                    return true;
                }
                throw new b("JSONObject[" + quote(str) + "] is not a Boolean.");
            }
        }
        return false;
    }

    public BigInteger getBigInteger(String str) throws b {
        try {
            return new BigInteger(get(str).toString());
        } catch (Exception e) {
            throw new b("JSONObject[" + quote(str) + "] could not be converted to BigInteger.", e);
        }
    }

    public BigDecimal getBigDecimal(String str) throws b {
        Object obj = get(str);
        if (obj instanceof BigDecimal) {
            return (BigDecimal) obj;
        }
        try {
            return new BigDecimal(obj.toString());
        } catch (Exception e) {
            throw new b("JSONObject[" + quote(str) + "] could not be converted to BigDecimal.", e);
        }
    }

    public double getDouble(String str) throws b {
        Object obj = get(str);
        try {
            if (obj instanceof Number) {
                return ((Number) obj).doubleValue();
            }
            return Double.parseDouble(obj.toString());
        } catch (Exception e) {
            throw new b("JSONObject[" + quote(str) + "] is not a number.", e);
        }
    }

    public float getFloat(String str) throws b {
        Object obj = get(str);
        try {
            if (obj instanceof Number) {
                return ((Number) obj).floatValue();
            }
            return Float.parseFloat(obj.toString());
        } catch (Exception e) {
            throw new b("JSONObject[" + quote(str) + "] is not a number.", e);
        }
    }

    public Number getNumber(String str) throws b {
        Object obj = get(str);
        try {
            if (obj instanceof Number) {
                return (Number) obj;
            }
            return stringToNumber(obj.toString());
        } catch (Exception e) {
            throw new b("JSONObject[" + quote(str) + "] is not a number.", e);
        }
    }

    public int getInt(String str) throws b {
        Object obj = get(str);
        try {
            if (obj instanceof Number) {
                return ((Number) obj).intValue();
            }
            return Integer.parseInt((String) obj);
        } catch (Exception e) {
            throw new b("JSONObject[" + quote(str) + "] is not an int.", e);
        }
    }

    public a getJSONArray(String str) throws b {
        Object obj = get(str);
        if (obj instanceof a) {
            return (a) obj;
        }
        throw new b("JSONObject[" + quote(str) + "] is not a JSONArray.");
    }

    public c getJSONObject(String str) throws b {
        Object obj = get(str);
        if (obj instanceof c) {
            return (c) obj;
        }
        throw new b("JSONObject[" + quote(str) + "] is not a JSONObject.");
    }

    public long getLong(String str) throws b {
        Object obj = get(str);
        try {
            if (obj instanceof Number) {
                return ((Number) obj).longValue();
            }
            return Long.parseLong((String) obj);
        } catch (Exception e) {
            throw new b("JSONObject[" + quote(str) + "] is not a long.", e);
        }
    }

    public static String[] getNames(c cVar) {
        int length = cVar.length();
        if (length == 0) {
            return null;
        }
        return (String[]) cVar.keySet().toArray(new String[length]);
    }

    public static String[] getNames(Object obj) {
        if (obj == null) {
            return null;
        }
        Field[] fields = obj.getClass().getFields();
        int length = fields.length;
        if (length == 0) {
            return null;
        }
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            strArr[i] = fields[i].getName();
        }
        return strArr;
    }

    public String getString(String str) throws b {
        Object obj = get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        throw new b("JSONObject[" + quote(str) + "] not a string.");
    }

    public boolean has(String str) {
        return this.map.containsKey(str);
    }

    public c increment(String str) throws b {
        Object opt = opt(str);
        if (opt == null) {
            put(str, 1);
        } else if (opt instanceof BigInteger) {
            put(str, (Object) ((BigInteger) opt).add(BigInteger.ONE));
        } else if (opt instanceof BigDecimal) {
            put(str, (Object) ((BigDecimal) opt).add(BigDecimal.ONE));
        } else if (opt instanceof Integer) {
            put(str, ((Integer) opt).intValue() + 1);
        } else if (opt instanceof Long) {
            put(str, ((Long) opt).longValue() + 1);
        } else if (opt instanceof Double) {
            put(str, ((Double) opt).doubleValue() + 1.0d);
        } else if (opt instanceof Float) {
            put(str, ((Float) opt).floatValue() + 1.0f);
        } else {
            throw new b("Unable to increment [" + quote(str) + "].");
        }
        return this;
    }

    public boolean isNull(String str) {
        return NULL.equals(opt(str));
    }

    public Iterator<String> keys() {
        return keySet().iterator();
    }

    public Set<String> keySet() {
        return this.map.keySet();
    }

    /* access modifiers changed from: protected */
    public Set<Map.Entry<String, Object>> entrySet() {
        return this.map.entrySet();
    }

    public int length() {
        return this.map.size();
    }

    public a names() {
        if (this.map.isEmpty()) {
            return null;
        }
        return new a((Collection<?>) this.map.keySet());
    }

    public static String numberToString(Number number) throws b {
        if (number != null) {
            testValidity(number);
            String obj = number.toString();
            if (obj.indexOf(46) <= 0 || obj.indexOf(101) >= 0 || obj.indexOf(69) >= 0) {
                return obj;
            }
            while (obj.endsWith("0")) {
                obj = obj.substring(0, obj.length() - 1);
            }
            return obj.endsWith(".") ? obj.substring(0, obj.length() - 1) : obj;
        }
        throw new b("Null pointer");
    }

    public Object opt(String str) {
        if (str == null) {
            return null;
        }
        return this.map.get(str);
    }

    public <E extends Enum<E>> E optEnum(Class<E> cls, String str) {
        return optEnum(cls, str, null);
    }

    public <E extends Enum<E>> E optEnum(Class<E> cls, String str, E e) {
        try {
            E opt = opt(str);
            if (NULL.equals(opt)) {
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

    public boolean optBoolean(String str) {
        return optBoolean(str, false);
    }

    public boolean optBoolean(String str, boolean z) {
        Object opt = opt(str);
        if (NULL.equals(opt)) {
            return z;
        }
        if (opt instanceof Boolean) {
            return ((Boolean) opt).booleanValue();
        }
        try {
            return getBoolean(str);
        } catch (Exception unused) {
            return z;
        }
    }

    public BigDecimal optBigDecimal(String str, BigDecimal bigDecimal) {
        Object opt = opt(str);
        if (NULL.equals(opt)) {
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

    public BigInteger optBigInteger(String str, BigInteger bigInteger) {
        Object opt = opt(str);
        if (NULL.equals(opt)) {
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
            if (isDecimalNotation(obj)) {
                return new BigDecimal(obj).toBigInteger();
            }
            return new BigInteger(obj);
        } catch (Exception unused) {
            return bigInteger;
        }
    }

    public double optDouble(String str) {
        return optDouble(str, Double.NaN);
    }

    public double optDouble(String str, double d) {
        Object opt = opt(str);
        if (NULL.equals(opt)) {
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

    public float optFloat(String str) {
        return optFloat(str, Float.NaN);
    }

    public float optFloat(String str, float f) {
        Object opt = opt(str);
        if (NULL.equals(opt)) {
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

    public int optInt(String str) {
        return optInt(str, 0);
    }

    public int optInt(String str, int i) {
        Object opt = opt(str);
        if (NULL.equals(opt)) {
            return i;
        }
        if (opt instanceof Number) {
            return ((Number) opt).intValue();
        }
        if (opt instanceof String) {
            try {
                return new BigDecimal((String) opt).intValue();
            } catch (Exception unused) {
            }
        }
        return i;
    }

    public a optJSONArray(String str) {
        Object opt = opt(str);
        if (opt instanceof a) {
            return (a) opt;
        }
        return null;
    }

    public c optJSONObject(String str) {
        Object opt = opt(str);
        if (opt instanceof c) {
            return (c) opt;
        }
        return null;
    }

    public long optLong(String str) {
        return optLong(str, 0);
    }

    public long optLong(String str, long j) {
        Object opt = opt(str);
        if (NULL.equals(opt)) {
            return j;
        }
        if (opt instanceof Number) {
            return ((Number) opt).longValue();
        }
        if (opt instanceof String) {
            try {
                return new BigDecimal((String) opt).longValue();
            } catch (Exception unused) {
            }
        }
        return j;
    }

    public Number optNumber(String str) {
        return optNumber(str, null);
    }

    public Number optNumber(String str, Number number) {
        Object opt = opt(str);
        if (NULL.equals(opt)) {
            return number;
        }
        if (opt instanceof Number) {
            return (Number) opt;
        }
        if (opt instanceof String) {
            try {
                return stringToNumber((String) opt);
            } catch (Exception unused) {
            }
        }
        return number;
    }

    public String optString(String str) {
        return optString(str, "");
    }

    public String optString(String str, String str2) {
        Object opt = opt(str);
        return NULL.equals(opt) ? str2 : opt.toString();
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* JADX WARNING: Removed duplicated region for block: B:47:? A[ExcHandler: IllegalAccessException | IllegalArgumentException | InvocationTargetException (unused java.lang.Throwable), SYNTHETIC, Splitter:B:44:0x00cd] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void populateMap(java.lang.Object r11) {
        /*
            r10 = this;
            java.lang.Class r0 = r11.getClass()
            java.lang.ClassLoader r1 = r0.getClassLoader()
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L_0x000e
            r1 = 1
            goto L_0x000f
        L_0x000e:
            r1 = 0
        L_0x000f:
            if (r1 == 0) goto L_0x0016
            java.lang.reflect.Method[] r0 = r0.getMethods()
            goto L_0x001a
        L_0x0016:
            java.lang.reflect.Method[] r0 = r0.getDeclaredMethods()
        L_0x001a:
            int r1 = r0.length
            r4 = 0
        L_0x001c:
            if (r4 >= r1) goto L_0x00d6
            r5 = r0[r4]
            int r6 = r5.getModifiers()
            boolean r7 = java.lang.reflect.Modifier.isPublic(r6)
            if (r7 == 0) goto L_0x00d2
            boolean r6 = java.lang.reflect.Modifier.isStatic(r6)
            if (r6 != 0) goto L_0x00d2
            java.lang.Class[] r6 = r5.getParameterTypes()
            int r6 = r6.length
            if (r6 != 0) goto L_0x00d2
            boolean r6 = r5.isBridge()
            if (r6 != 0) goto L_0x00d2
            java.lang.Class r6 = r5.getReturnType()
            java.lang.Class r7 = java.lang.Void.TYPE
            if (r6 == r7) goto L_0x00d2
            java.lang.String r6 = r5.getName()
            java.lang.String r7 = "get"
            boolean r7 = r6.startsWith(r7)
            if (r7 == 0) goto L_0x0067
            java.lang.String r7 = "getClass"
            boolean r7 = r7.equals(r6)
            if (r7 != 0) goto L_0x00d2
            java.lang.String r7 = "getDeclaringClass"
            boolean r7 = r7.equals(r6)
            if (r7 != 0) goto L_0x00d2
            r7 = 3
            java.lang.String r6 = r6.substring(r7)
            goto L_0x0074
        L_0x0067:
            java.lang.String r7 = "is"
            boolean r7 = r6.startsWith(r7)
            if (r7 == 0) goto L_0x00d2
            r7 = 2
            java.lang.String r6 = r6.substring(r7)
        L_0x0074:
            int r7 = r6.length()
            if (r7 <= 0) goto L_0x00d2
            char r7 = r6.charAt(r2)
            boolean r7 = java.lang.Character.isUpperCase(r7)
            if (r7 == 0) goto L_0x00d2
            int r7 = r6.length()
            if (r7 != r3) goto L_0x0091
            java.util.Locale r7 = java.util.Locale.ROOT
            java.lang.String r6 = r6.toLowerCase(r7)
            goto L_0x00b8
        L_0x0091:
            char r7 = r6.charAt(r3)
            boolean r7 = java.lang.Character.isUpperCase(r7)
            if (r7 != 0) goto L_0x00b8
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = r6.substring(r2, r3)
            java.util.Locale r9 = java.util.Locale.ROOT
            java.lang.String r8 = r8.toLowerCase(r9)
            r7.append(r8)
            java.lang.String r6 = r6.substring(r3)
            r7.append(r6)
            java.lang.String r6 = r7.toString()
        L_0x00b8:
            java.lang.Object[] r7 = new java.lang.Object[r2]     // Catch:{  }
            java.lang.Object r5 = r5.invoke(r11, r7)     // Catch:{  }
            if (r5 == 0) goto L_0x00d2
            java.util.Map<java.lang.String, java.lang.Object> r7 = r10.map     // Catch:{  }
            java.lang.Object r8 = wrap(r5)     // Catch:{  }
            r7.put(r6, r8)     // Catch:{  }
            boolean r6 = r5 instanceof java.io.Closeable     // Catch:{  }
            if (r6 == 0) goto L_0x00d2
            java.io.Closeable r5 = (java.io.Closeable) r5     // Catch:{ IllegalAccessException | IllegalArgumentException | InvocationTargetException -> 0x00d2, IllegalAccessException | IllegalArgumentException | InvocationTargetException -> 0x00d2, IllegalAccessException | IllegalArgumentException | InvocationTargetException -> 0x00d2 }
            r5.close()     // Catch:{ IllegalAccessException | IllegalArgumentException | InvocationTargetException -> 0x00d2, IllegalAccessException | IllegalArgumentException | InvocationTargetException -> 0x00d2, IllegalAccessException | IllegalArgumentException | InvocationTargetException -> 0x00d2 }
        L_0x00d2:
            int r4 = r4 + 1
            goto L_0x001c
        L_0x00d6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.a.c.populateMap(java.lang.Object):void");
    }

    public c put(String str, boolean z) throws b {
        put(str, (Object) z ? Boolean.TRUE : Boolean.FALSE);
        return this;
    }

    public c put(String str, Collection<?> collection) throws b {
        put(str, (Object) new a(collection));
        return this;
    }

    public c put(String str, double d) throws b {
        put(str, (Object) Double.valueOf(d));
        return this;
    }

    public c put(String str, float f) throws b {
        put(str, (Object) Float.valueOf(f));
        return this;
    }

    public c put(String str, int i) throws b {
        put(str, (Object) Integer.valueOf(i));
        return this;
    }

    public c put(String str, long j) throws b {
        put(str, (Object) Long.valueOf(j));
        return this;
    }

    public c put(String str, Map<?, ?> map2) throws b {
        put(str, (Object) new c(map2));
        return this;
    }

    public c put(String str, Object obj) throws b {
        if (str != null) {
            if (obj != null) {
                testValidity(obj);
                this.map.put(str, obj);
            } else {
                remove(str);
            }
            return this;
        }
        throw new NullPointerException("Null key.");
    }

    public c putOnce(String str, Object obj) throws b {
        if (!(str == null || obj == null)) {
            if (opt(str) == null) {
                put(str, obj);
            } else {
                throw new b("Duplicate key \"" + str + "\"");
            }
        }
        return this;
    }

    public c putOpt(String str, Object obj) throws b {
        if (!(str == null || obj == null)) {
            put(str, obj);
        }
        return this;
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

    public static String quote(String str) {
        String obj;
        StringWriter stringWriter = new StringWriter();
        synchronized (stringWriter.getBuffer()) {
            try {
                obj = quote(str, stringWriter).toString();
            } catch (IOException unused) {
                return "";
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    public static Writer quote(String str, Writer writer) throws IOException {
        if (str == null || str.length() == 0) {
            writer.write("\"\"");
            return writer;
        }
        int length = str.length();
        writer.write(34);
        int i = 0;
        char c = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt == 12) {
                writer.write("\\f");
            } else if (charAt != 13) {
                if (charAt != '\"') {
                    if (charAt == '/') {
                        if (c == '<') {
                            writer.write(92);
                        }
                        writer.write(charAt);
                    } else if (charAt != '\\') {
                        switch (charAt) {
                            case 8:
                                writer.write("\\b");
                                continue;
                            case 9:
                                writer.write("\\t");
                                continue;
                            case 10:
                                writer.write("\\n");
                                continue;
                            default:
                                if (charAt < ' ' || ((charAt >= 128 && charAt < 160) || (charAt >= 8192 && charAt < 8448))) {
                                    writer.write("\\u");
                                    String hexString = Integer.toHexString(charAt);
                                    writer.write("0000", 0, 4 - hexString.length());
                                    writer.write(hexString);
                                    continue;
                                }
                        }
                        writer.write(charAt);
                    }
                }
                writer.write(92);
                writer.write(charAt);
            } else {
                writer.write("\\r");
            }
            i++;
            c = charAt;
        }
        writer.write(34);
        return writer;
    }

    public Object remove(String str) {
        return this.map.remove(str);
    }

    public boolean similar(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        try {
            if (!keySet().equals(((c) obj).keySet())) {
                return false;
            }
            for (Map.Entry next : entrySet()) {
                Object value = next.getValue();
                Object obj2 = ((c) obj).get((String) next.getKey());
                if (value != obj2) {
                    if (value == null) {
                        return false;
                    }
                    if (value instanceof c) {
                        if (!((c) value).similar(obj2)) {
                            return false;
                        }
                    } else if (value instanceof a) {
                        if (!((a) value).similar(obj2)) {
                            return false;
                        }
                    } else if (!value.equals(obj2)) {
                        return false;
                    }
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    protected static boolean isDecimalNotation(String str) {
        return str.indexOf(46) >= 0 || str.indexOf(101) >= 0 || str.indexOf(69) >= 0 || "-0".equals(str);
    }

    protected static Number stringToNumber(String str) throws NumberFormatException {
        char charAt = str.charAt(0);
        if ((charAt < '0' || charAt > '9') && charAt != '-') {
            throw new NumberFormatException("val [" + str + "] is not a valid number.");
        } else if (!isDecimalNotation(str)) {
            BigInteger bigInteger = new BigInteger(str);
            if (bigInteger.bitLength() <= 31) {
                return Integer.valueOf(bigInteger.intValue());
            }
            return bigInteger.bitLength() <= 63 ? Long.valueOf(bigInteger.longValue()) : bigInteger;
        } else if (str.length() > 14) {
            return new BigDecimal(str);
        } else {
            Double valueOf = Double.valueOf(str);
            if (valueOf.isInfinite() || valueOf.isNaN()) {
                return new BigDecimal(str);
            }
            return valueOf;
        }
    }

    public static Object stringToValue(String str) {
        if (str.equals("")) {
            return str;
        }
        if (str.equalsIgnoreCase("true")) {
            return Boolean.TRUE;
        }
        if (str.equalsIgnoreCase("false")) {
            return Boolean.FALSE;
        }
        if (str.equalsIgnoreCase("null")) {
            return NULL;
        }
        char charAt = str.charAt(0);
        if ((charAt >= '0' && charAt <= '9') || charAt == '-') {
            try {
                if (isDecimalNotation(str)) {
                    Double valueOf = Double.valueOf(str);
                    if (valueOf.isInfinite() || valueOf.isNaN()) {
                        return str;
                    }
                    return valueOf;
                }
                Long valueOf2 = Long.valueOf(str);
                if (str.equals(valueOf2.toString())) {
                    return valueOf2.longValue() == ((long) valueOf2.intValue()) ? Integer.valueOf(valueOf2.intValue()) : valueOf2;
                }
            } catch (Exception unused) {
            }
        }
        return str;
    }

    public static void testValidity(Object obj) throws b {
        if (obj == null) {
            return;
        }
        if (obj instanceof Double) {
            Double d = (Double) obj;
            if (d.isInfinite() || d.isNaN()) {
                throw new b("JSON does not allow non-finite numbers.");
            }
        } else if (obj instanceof Float) {
            Float f = (Float) obj;
            if (f.isInfinite() || f.isNaN()) {
                throw new b("JSON does not allow non-finite numbers.");
            }
        }
    }

    public a toJSONArray(a aVar) throws b {
        if (aVar == null || aVar.length() == 0) {
            return null;
        }
        a aVar2 = new a();
        for (int i = 0; i < aVar.length(); i++) {
            aVar2.put(opt(aVar.getString(i)));
        }
        return aVar2;
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

    public static String valueToString(Object obj) throws b {
        return h.valueToString(obj);
    }

    public static Object wrap(Object obj) {
        if (obj == null) {
            try {
                return NULL;
            } catch (Exception unused) {
                return null;
            }
        } else {
            if (!(obj instanceof c) && !(obj instanceof a) && !NULL.equals(obj) && !(obj instanceof f) && !(obj instanceof Byte) && !(obj instanceof Character) && !(obj instanceof Short) && !(obj instanceof Integer) && !(obj instanceof Long) && !(obj instanceof Boolean) && !(obj instanceof Float) && !(obj instanceof Double) && !(obj instanceof String) && !(obj instanceof BigInteger) && !(obj instanceof BigDecimal)) {
                if (!(obj instanceof Enum)) {
                    if (obj instanceof Collection) {
                        return new a((Collection<?>) (Collection) obj);
                    }
                    if (obj.getClass().isArray()) {
                        return new a(obj);
                    }
                    if (obj instanceof Map) {
                        return new c((Map<?, ?>) (Map) obj);
                    }
                    Package packageR = obj.getClass().getPackage();
                    String name = packageR != null ? packageR.getName() : "";
                    if (!name.startsWith("java.") && !name.startsWith("javax.")) {
                        if (obj.getClass().getClassLoader() != null) {
                            return new c(obj);
                        }
                    }
                    obj = obj.toString();
                }
            }
            return obj;
        }
    }

    public Writer write(Writer writer) throws b {
        return write(writer, 0, 0);
    }

    static final Writer writeValue(Writer writer, Object obj, int i, int i2) throws b, IOException {
        if (obj == null || obj.equals(null)) {
            writer.write("null");
        } else if (obj instanceof f) {
            try {
                String jSONString = ((f) obj).toJSONString();
                writer.write(jSONString != null ? jSONString.toString() : quote(obj.toString()));
            } catch (Exception e) {
                throw new b((Throwable) e);
            }
        } else if (obj instanceof Number) {
            String numberToString = numberToString((Number) obj);
            try {
                new BigDecimal(numberToString);
                writer.write(numberToString);
            } catch (NumberFormatException unused) {
                quote(numberToString, writer);
            }
        } else if (obj instanceof Boolean) {
            writer.write(obj.toString());
        } else if (obj instanceof Enum) {
            writer.write(quote(((Enum) obj).name()));
        } else if (obj instanceof c) {
            ((c) obj).write(writer, i, i2);
        } else if (obj instanceof a) {
            ((a) obj).write(writer, i, i2);
        } else if (obj instanceof Map) {
            new c((Map<?, ?>) (Map) obj).write(writer, i, i2);
        } else if (obj instanceof Collection) {
            new a((Collection<?>) (Collection) obj).write(writer, i, i2);
        } else if (obj.getClass().isArray()) {
            new a(obj).write(writer, i, i2);
        } else {
            quote(obj.toString(), writer);
        }
        return writer;
    }

    static final void indent(Writer writer, int i) throws IOException {
        for (int i2 = 0; i2 < i; i2++) {
            writer.write(32);
        }
    }

    public Writer write(Writer writer, int i, int i2) throws b {
        String str;
        String str2;
        boolean z = false;
        try {
            int length = length();
            writer.write(123);
            if (length == 1) {
                Map.Entry next = entrySet().iterator().next();
                str2 = (String) next.getKey();
                writer.write(quote(str2));
                writer.write(58);
                if (i > 0) {
                    writer.write(32);
                }
                writeValue(writer, next.getValue(), i, i2);
            } else if (length != 0) {
                int i3 = i2 + i;
                for (Map.Entry next2 : entrySet()) {
                    if (z) {
                        writer.write(44);
                    }
                    if (i > 0) {
                        writer.write(10);
                    }
                    indent(writer, i3);
                    str = (String) next2.getKey();
                    writer.write(quote(str));
                    writer.write(58);
                    if (i > 0) {
                        writer.write(32);
                    }
                    writeValue(writer, next2.getValue(), i, i3);
                    z = true;
                }
                if (i > 0) {
                    writer.write(10);
                }
                indent(writer, i2);
            }
            writer.write(125);
            return writer;
        } catch (Exception e) {
            throw new b("Unable to write JSONObject value for key: ".concat(String.valueOf(str)), e);
        } catch (Exception e2) {
            throw new b("Unable to write JSONObject value for key: ".concat(String.valueOf(str2)), e2);
        } catch (IOException e3) {
            throw new b((Throwable) e3);
        }
    }

    public Map<String, Object> toMap() {
        Object obj;
        HashMap hashMap = new HashMap();
        for (Map.Entry next : entrySet()) {
            if (next.getValue() == null || NULL.equals(next.getValue())) {
                obj = null;
            } else if (next.getValue() instanceof c) {
                obj = ((c) next.getValue()).toMap();
            } else {
                obj = next.getValue() instanceof a ? ((a) next.getValue()).toList() : next.getValue();
            }
            hashMap.put(next.getKey(), obj);
        }
        return hashMap;
    }
}
